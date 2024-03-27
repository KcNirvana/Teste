codeunit 57003 PAQ
{
    var
        DimMgt: Codeunit DimensionManagement;
        NoSeriesMgt: Codeunit NoSeriesManagement;
        ApprovalsMgt: Codeunit "Approval Management";
        TotalsUpTodate: Boolean;
        PAQLineExist: Boolean;
        PostedPAQLineExist: Boolean;
        HideDialog: Boolean;
        MessageToShow: Text;
        ErrorMsg: Text[1024];
        Text002: Label 'PAQ posted with No. %1.';
        Text003: Label 'is not within your range of allowed posting dates';

    procedure SetHideDialog()
    begin
        HideDialog := true;
    end;

    procedure CreateContractAdjustPAQ(PurchaseHeader: Record "Purchase Header")
    var
        BudgetConfig: Record "Budget Configuration";
        PurchaseLines: Record "Purchase Line";
        PAQ: Record PAQ;
        PAQLines: Record "PAQ Lines";
        Consultation: Record Consultation;
        SourceCodeSetup: Record "Source Code Setup";
        LineNo: Integer;
    begin
        Clear(LineNo);

        Consultation.GET(PurchaseHeader."Consultation Code");
        BudgetConfig.GET;

        Clear(PAQ);
        PAQ.Init();
        PAQ.Validate("Consultation Code", Consultation."Consultation Code");
        PAQ.Validate(Type, "PAQ Type"::Decrease);
        PAQ.Validate("Section Code", Consultation."Section Code");
        PAQ.Validate("Department Code", Consultation."Department Code");
        case BudgetConfig."Adjustment Avay. Budget Date" of
            "Budget Config Date"::"Document Date":
                PAQ.Validate("PAQ Date", PurchaseHeader."Posting Date");
            "Budget Config Date"::"Work Date":
                PAQ.Validate("PAQ Date", WorkDate());
        end;
        PAQ.Validate("Vendor No.", PurchaseHeader."Buy-from Vendor No.");

        PAQ.Insert(true);
        PurchaseLines.Reset();
        PurchaseLines.SetRange("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SetRange("Consultation Code", PurchaseHeader."Consultation Code");
        PurchaseLines.SetFilter("Selection Code", '<>%1', '');
        PurchaseLines.SetFilter("Amount to Adjust Adj.", '<0');
        if PurchaseLines.FindSet() then
            repeat
                PurchaseLines."Amount to Adjudicate" := PurchaseLines."Amount to Adjust Adj.";
                LineNo += 10000;
                PAQLines.Init;
                PAQLines.Validate("PAQ Code", PAQ."PAQ Code");
                PAQLines.Validate("Line No.", LineNo);
                PAQLines.Validate("Requisition Code", PurchaseLines."Requisition Code");
                PAQLines.Validate("Requisition Line", PurchaseLines."Requisition Line");
                PAQLines.Validate("Line Type", PurchaseLines.Type.AsInteger());
                PAQLines.Validate("No.", PurchaseLines."No.");
                PAQLines.Validate(Description, PurchaseLines.Description);
                PAQLines.Validate("Location Code", PurchaseLines."Location Code");
                PAQLines.Validate("Consultation Code", PurchaseLines."Consultation Code");
                PAQLines.Validate("Currency Code", PurchaseLines."Currency Code");
                PAQLines."Quote No." := PurchaseLines."Document No.";
                PAQLines."Quote Line No." := PurchaseLines."Line No.";
                PAQLines.Validate(Quantity, 1);
                PAQLines.Validate("VAT %", PurchaseLines."VAT %");
                PAQLines.Validate("ND %", PurchaseLines."PTSS ND %");
                UpdateContractAmounts(PurchaseLines, PAQLines);
                PAQLines.Validate("PAQ Date", PAQ."PAQ Date");
                PAQLines.Validate("Consultation Code", PurchaseLines."Consultation Code");
                PAQLines.validate("Dimension Set ID", PurchaseLines."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(PAQLines."Dimension Set ID", PAQLines."Shortcut Dimension 1 Code", PAQLines."Shortcut Dimension 2 Code");
                PAQLines.Insert(true);
                PurchaseLines."Amount Adjudicated" += PurchaseLines."Amount to Adjust Adj.";
                PurchaseLines."Amount to Adjust Adj." := 0;
                PurchaseLines."Amount to Adjudicate" := 0;
                PurchaseLines.Modify;
            until PurchaseLines.Next() = 0;
        SendToApproval(PAQ);
    end;

    procedure CreateAdjustPAQ(var TempPurchaseLines: Record "Purchase Line" temporary)
    var
        BudgetConfig: Record "Budget Configuration";
        PurchaseHeader: Record "Purchase Header";
        PAQ: Record PAQ;
        PAQLines: Record "PAQ Lines";
        Consultation: Record Consultation;
        SourceCodeSetup: Record "Source Code Setup";
        LineNo: Integer;
        IncreasePAQ: Boolean;
        DecreasePAQ: Boolean;
    begin
        Clear(LineNo);
        Clear(IncreasePAQ);
        Clear(DecreasePAQ);

        Consultation.GET(TempPurchaseLines."Consultation Code");
        BudgetConfig.GET;

        CASE BudgetConfig."Budget Appropriation Method" OF
            "Budget Appropriation Method"::"Amount Without VAT":
                begin
                    IncreasePAQ := (TempPurchaseLines.Amount > 0) AND (TempPurchaseLines.Amount > BudgetConfig."Precision Round Difference");
                    DecreasePAQ := (TempPurchaseLines.Amount < 0) AND (TempPurchaseLines.Amount < BudgetConfig."Precision Round Difference");
                end;
            "Budget Appropriation Method"::"Amount With VAT":
                begin
                    IncreasePAQ := (TempPurchaseLines."Amount Including VAT" > 0) AND (TempPurchaseLines."Amount Including VAT" > BudgetConfig."Precision Round Difference");
                    DecreasePAQ := (TempPurchaseLines."Amount Including VAT" < 0) AND (TempPurchaseLines."Amount Including VAT" < BudgetConfig."Precision Round Difference");
                end;
            "Budget Appropriation Method"::"Cost Amount":
                begin
                    IncreasePAQ := (TempPurchaseLines."Cost Amount" > 0) AND (TempPurchaseLines."Cost Amount" > BudgetConfig."Precision Round Difference");
                    DecreasePAQ := (TempPurchaseLines."Cost Amount" < 0) AND (TempPurchaseLines."Cost Amount" < BudgetConfig."Precision Round Difference");
                end;
        end;
        if not IncreasePAQ and not DecreasePAQ then
            exit;

        PurchaseHeader := TempPurchaseLines.GetPurchHeader();

        Clear(PAQ);
        PAQ.Init();
        PAQ.Validate("Consultation Code", Consultation."Consultation Code");
        case true of
            IncreasePAQ:
                PAQ.Validate(Type, "PAQ Type"::Increase);
            DecreasePAQ:
                PAQ.Validate(Type, "PAQ Type"::Decrease);
        End;
        PAQ.Validate("Section Code", Consultation."Section Code");
        PAQ.Validate("Department Code", Consultation."Department Code");
        case BudgetConfig."Adjustment PAQ Date" of
            "Budget Config Date"::"Document Date":
                PAQ.Validate("PAQ Date", PurchaseHeader."Posting Date");
            "Budget Config Date"::"Work Date":
                PAQ.Validate("PAQ Date", WorkDate());
        end;
        PAQ.Validate("PAQ Date", PurchaseHeader."Posting Date");
        PAQ.validate("Vendor No.", PurchaseHeader."Buy-from Vendor No.");
        PAQ.Insert(true);

        LineNo += 10000;
        PAQLines.Init;
        PAQLines.Validate("PAQ Code", PAQ."PAQ Code");
        PAQLines.Validate("Line No.", LineNo);
        PAQLines.Validate("Requisition Code", TempPurchaseLines."Requisition Code");
        PAQLines.Validate("Requisition Line", TempPurchaseLines."Requisition Line");
        PAQLines.Validate("Line Type", TempPurchaseLines.Type.AsInteger());
        PAQLines.Validate("No.", TempPurchaseLines."No.");
        PAQLines.Validate(Description, TempPurchaseLines.Description);
        PAQLines.Validate("Location Code", TempPurchaseLines."Location Code");
        PAQLines.Validate("Consultation Code", TempPurchaseLines."Consultation Code");
        PAQLines.Validate("Currency Code", TempPurchaseLines."Currency Code");
        PAQLines."Quote No." := TempPurchaseLines."Document No.";
        PAQLines."Quote Line No." := TempPurchaseLines."Line No.";
        PAQLines.Validate(Quantity, 1);
        PAQLines.Validate("VAT %", TempPurchaseLines."VAT %");
        PAQLines.Validate("ND %", TempPurchaseLines."PTSS ND %");
        If DecreasePAQ then
            PAQLines.Validate("Unit Cost", TempPurchaseLines."Direct Unit Cost" * -1)
        else
            PAQLines.Validate("Unit Cost", TempPurchaseLines."Direct Unit Cost");
        PAQLines.Validate("Amount", TempPurchaseLines.Amount);
        PAQLines.Validate("Amount Including Vat", TempPurchaseLines."Amount Including VAT");
        PAQLines.Validate("Cost Amount", TempPurchaseLines."Cost Amount");
        PAQLines.Validate("PAQ Date", PAQ."PAQ Date");
        PAQLines.Validate("Consultation Code", TempPurchaseLines."Consultation Code");
        PAQLines.validate("Dimension Set ID", TempPurchaseLines."Dimension Set ID");
        DimMgt.UpdateGlobalDimFromDimSetID(PAQLines."Dimension Set ID", PAQLines."Shortcut Dimension 1 Code", PAQLines."Shortcut Dimension 2 Code");
        PAQLines.Insert(true);

        SendToApproval(PAQ);
    end;

    procedure CreateInvoiceAdjustPAQ(PurchaseHeader: Record "Purchase Header")
    var
        BudgetConfig: Record "Budget Configuration";
        PurchaseLines: Record "Purchase Line";
        TempPurchaseLines: Record "Purchase Line" temporary;
        PostedPAQ: Record "Posted PAQ";
        PostedPAQLines: Record "Posted PAQ Lines";
        PAQ: Record PAQ;
        PAQLines: Record "PAQ Lines";
        Consultation: Record Consultation;
        SourceCodeSetup: Record "Source Code Setup";
        LineNo: Integer;
    begin
        BudgetConfig.Get();
        Clear(LineNo);

        PurchaseLines.Reset();
        PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
        PurchaseLines.SETFILTER(Type, '<>%1', PurchaseLines.Type::" ");
        if PurchaseLines.FINDSET then begin
            Consultation.GET(PurchaseLines."Consultation Code");
            REPEAT
                TempPurchaseLines.INIT;
                TempPurchaseLines := PurchaseLines;
                TempPurchaseLines.INSERT;
            UNTIL PurchaseLines.NEXT = 0;

            PostedPAQ.Reset();
            PostedPAQ.SETRANGE("Consultation Code", Consultation."Consultation code");
            If PostedPAQ.FindSet() then
                repeat
                    PostedPAQLines.RESET;
                    PostedPAQLines.SETRANGE("PAQ Code", PostedPAQ."PAQ Code");
                    if PostedPAQLines.FINDSET then
                        REPEAT
                            TempPurchaseLines.RESET;
                            TempPurchaseLines.SETRANGE("Quote No.", PostedPAQLines."Quote No.");
                            TempPurchaseLines.SETRANGE("Quote Line No.", PostedPAQLines."Quote Line No.");
                            if TempPurchaseLines.FINDSET then
                                REPEAT
                                    TempPurchaseLines.Amount -= PostedPAQLines.GetPAQLineAmount();
                                    TempPurchaseLines."Amount Including VAT" -= PostedPAQLines."Amount Including VAT";
                                    TempPurchaseLines."Cost Amount" -= PostedPAQLines."Cost Amount";
                                    TempPurchaseLines.Modify();
                                UNTIL TempPurchaseLines.NEXT = 0;
                        UNTIL PostedPAQLines.NEXT = 0;
                until PostedPAQ.Next() = 0;
        end;

        TempPurchaseLines.RESET;
        TempPurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
        TempPurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
        TempPurchaseLines.SETFILTER(Type, '<>%1', TempPurchaseLines.Type::" ");
        case BudgetConfig."Budget Appropriation Method" of
            "Budget Appropriation Method"::"Amount Without VAT":
                TempPurchaseLines.SETFILTER(Amount, '<>0');
            "Budget Appropriation Method"::"Amount With VAT":
                TempPurchaseLines.SETFILTER("Amount Including VAT", '<>0');
            "Budget Appropriation Method"::"Cost Amount":
                TempPurchaseLines.SETFILTER("Cost Amount", '<>0');
        end;
        if TempPurchaseLines.FINDSET then begin
            Consultation.GET(TempPurchaseLines."Consultation Code");
            Clear(PAQ);
            PAQ.SetHideDialog();
            PAQ.Init();
            PAQ.Insert(true);
            PAQ.Validate("Consultation Code", Consultation."Consultation Code");
            PAQ.Validate(Type, "PAQ Type"::Decrease);
            PAQ.Validate("Section Code", Consultation."Section Code");
            PAQ.Validate("Department Code", Consultation."Department Code");
            PAQ.Validate("PAQ Date", PurchaseHeader."Posting Date");
            PAQ.Validate("Vendor No.", PurchaseHeader."Buy-from Vendor No.");
            PAQ.Validate("PAQ Description", Consultation.Description);
            PAQ.Modify(true);
            REPEAT
                LineNo += 10000;
                PAQLines.Init;
                PAQLines.Validate("PAQ Code", PAQ."PAQ Code");
                PAQLines.Validate("Line No.", LineNo);
                PAQLines.Validate("Requisition Code", TempPurchaseLines."Requisition Code");
                PAQLines.Validate("Requisition Line", TempPurchaseLines."Requisition Line");
                PAQLines.Validate("Line Type", TempPurchaseLines.Type.AsInteger());
                PAQLines.Validate("No.", TempPurchaseLines."No.");
                PAQLines.Validate(Description, TempPurchaseLines.Description);
                PAQLines.Validate("Location Code", TempPurchaseLines."Location Code");
                PAQLines.Validate("Consultation Code", TempPurchaseLines."Consultation Code");
                PAQLines.Validate("Currency Code", TempPurchaseLines."Currency Code");
                PAQLines."Quote No." := PurchaseLines."Document No.";
                PAQLines."Quote Line No." := PurchaseLines."Line No.";
                PAQLines.Validate(Quantity, 1);
                PAQLines.Validate("VAT %", TempPurchaseLines."VAT %");
                PAQLines.Validate("ND %", TempPurchaseLines."PTSS ND %");
                PAQLines.Validate("Unit Cost", TempPurchaseLines.Amount);
                PAQLines.Validate("Amount", TempPurchaseLines.Amount);
                PAQLines.Validate("Amount Including Vat", TempPurchaseLines."Amount Including VAT");
                PAQLines.Validate("Cost Amount", TempPurchaseLines."Cost Amount");
                PAQLines.Validate("PAQ Date", PAQ."PAQ Date");
                PAQLines.Validate("Consultation Code", TempPurchaseLines."Consultation Code");
                PAQLines.validate("Dimension Set ID", TempPurchaseLines."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(PAQLines."Dimension Set ID", PAQLines."Shortcut Dimension 1 Code", PAQLines."Shortcut Dimension 2 Code");
                PAQLines.Insert(true);
            UNTIL TempPurchaseLines.NEXT = 0;
        end;
        SetHideDialog();
        SendToApproval(PAQ);
    end;

    procedure GetTotalPostedPAQ(var PostedPAQLine: Record "Posted PAQ Lines"; var TotalPostedPAQHeader: Record "Posted PAQ")
    begin
        if not PostedPAQLineExist then
            PostedPAQLineExist := not PostedPAQLine.ISEMPTY;
        if not PostedPAQLineExist OR
           (TotalPostedPAQHeader."PAQ Code" <> PostedPAQLine."PAQ Code") then begin
            Clear(TotalPostedPAQHeader);
            if PostedPAQLine."PAQ Code" <> '' then
                if TotalPostedPAQHeader.GET(PostedPAQLine."PAQ Code") then;
        end;
    end;

    procedure PostedPAQCheckIfDocumentChanged(var PostedPAQLine: Record "Posted PAQ Lines"; var xPostedPAQLine: Record "Posted PAQ Lines")
    begin
        if (PostedPAQLine."Requisition Code" <> xPostedPAQLine."Requisition Code") or
           (PostedPAQLine.Amount <> xPostedPAQLine.Amount) or
           (PostedPAQLine."Amount Including VAT" <> xPostedPAQLine."Amount Including VAT") or
           (PostedPAQLine."Cost Amount" <> xPostedPAQLine."Cost Amount")
        then
            TotalsUpToDate := false;
    end;

    procedure PostedCalculatePAQSubPageTotals(var TotalPostedPAQHeader: Record "Posted PAQ"; var TotalPostedPAQLine: Record "Posted PAQ Lines"; var VATAmount: Decimal)
    var
        PostedPAQ2: Record "Posted PAQ Lines";
        TotalPostedPAQLine2: Record "Posted PAQ Lines";
    begin

        if TotalsUpToDate then
            exit;
        TotalsUpToDate := true;

        TotalPostedPAQLine2.Copy(TotalPostedPAQLine);
        TotalPostedPAQLine2.Reset();
        TotalPostedPAQLine2.SetRange("PAQ Code", TotalPostedPAQHeader."PAQ Code");

        TotalPostedPAQLine2.CalcSums(Amount, "Amount Including VAT", "Cost Amount");
        VATAmount := TotalPostedPAQLine2."Amount Including VAT" - TotalPostedPAQLine2.Amount;

        TotalPostedPAQLine := TotalPostedPAQLine2;
    end;

    procedure GetTotalPAQ(var PAQLine: Record "PAQ Lines"; var TotalPAQ: Record "PAQ")
    begin
        if not PAQLineExist then
            PAQLineExist := not PAQLine.ISEMPTY;
        if not PAQLineExist OR
           (TotalPAQ."PAQ Code" <> PAQLine."PAQ Code") then begin
            Clear(TotalPAQ);
            if PAQLine."PAQ Code" <> '' then
                if TotalPAQ.GET(PAQLine."PAQ Code") then;
        end;
    end;

    procedure PAQCheckIfDocumentChanged(var PAQLine: Record "PAQ Lines"; var xPAQLine: Record "PAQ Lines")
    begin
        if (PAQLine."Requisition Code" <> xPAQLine."Requisition Code") or
           (PAQLine.Amount <> xPAQLine.Amount) or
           (PAQLine."Amount Including VAT" <> xPAQLine."Amount Including VAT") or
           (PAQLine."Cost Amount" <> xPAQLine."Cost Amount")
        then
            TotalsUpToDate := false;
    end;

    procedure CalculatePAQSubPageTotals(var TotalPAQHeader: Record "PAQ"; var TotalPAQLine: Record "PAQ Lines"; var VATAmount: Decimal)
    var
        PAQLine2: Record "PAQ Lines";
        TotalPAQLine2: Record "PAQ Lines";
    begin

        if TotalsUpToDate then
            exit;
        TotalsUpToDate := true;

        TotalPAQLine2.Copy(TotalPAQLine);
        TotalPAQLine2.Reset();
        TotalPAQLine2.SetRange("PAQ Code", TotalPAQHeader."PAQ Code");

        TotalPAQLine2.CalcSums(Amount, "Amount Including VAT", "Cost Amount");
        VATAmount := TotalPAQLine2."Amount Including VAT" - TotalPAQLine2.Amount;

        TotalPAQLine := TotalPAQLine2;
    end;

    procedure ApprovePAQ(PAQ: Record "PAQ")
    var
        ApprovalEntry: Record "Aproval Entry";
        ApprovalsMgt: Codeunit "Approval Management";
    begin
        if PAQ.Status = PAQ.Status::Released then
            exit;

        ApprovalEntry.Reset();
        ApprovalEntry.SetRange("Record ID to Approve", PAQ.RecordId);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        if ApprovalEntry.FindFirst() then
            If not ApprovalsMgt.ApproveDocument(ApprovalEntry) then
                exit;

        PAQ.Validate(Status, "PAQ Status"::Released);
        PAQ.Modify(true);

        PostPAQ(PAQ);
        ShowMessage(MessageToShow);
    end;

    procedure RejectPAQ(PAQ: Record PAQ)
    var
        ApprovalEntry: Record "Aproval Entry";
        ApprovalsMgt: Codeunit "Approval Management";
        Text001: Label 'Adjudication %1 rejected with success.';
        Consultation: Record Consultation;
        QuoteLines: Record "Purchase Line";
    begin
        if PAQ.Status = PAQ.Status::Rejected then
            exit;

        ApprovalEntry.Reset();
        ApprovalEntry.SetRange("Record ID to Approve", PAQ.RecordId);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        if ApprovalEntry.FindFirst() then
            If not ApprovalsMgt.RejectDocument(ApprovalEntry) then
                exit;

        PAQ.Validate(Status, "PAQ Status"::Rejected);
        PAQ.Modify(true);

        PostPAQ(PAQ);
        ShowMessage(StrSubstNo(Text001, PAQ."PAQ Code"));
    end;

    procedure ReversePAQ(PostedPAQ: Record "Posted PAQ")
    var
        BudgetConfig: Record "Budget Configuration";
        Contract: Record Contract;
        Consultation: Record Consultation;
        lPostedPAQ: Record "Posted PAQ";
        lPostedPAQLines: Record "Posted PAQ Lines";
        lQuoteLines: Record "Purchase Line";
        lOrderLines: Record "Purchase Line";
        lPAQ: Record PAQ;
        lPAQLines: Record "PAQ Lines";

        Text001: Label 'You cant continue with this task.';
        Text002: Label 'The adjudication %1 that you want to reverse is in %2 %3.';
        Text004: Label 'You cant reverse adjudications for contract years different from %1.';
        Text005: Label 'You cant reverse contract adjudications because the contract %1 is in %2.';
        Text006: Label 'You cant reverse adjudication because of adjudications settlements.';
        Text007: Label 'You cant reverse adjudication because the amount is less then %1 in line %2 of %3.';
        Text008: Label 'You cant reverse adjudication with amounts in orders.';

    begin
        ValidatePermissions("PAQ Permissions"::Reverse);
        Consultation.Get(PostedPAQ."Consultation Code");
        PostedPAQ.TestField(Reversed, false);
        if PostedPAQ.Status <> PostedPAQ.Status::Released then
            Error(StrSubstNo(Text001 + Text002), PostedPAQ."PAQ Code", PostedPAQ.FieldCaption(Status), PostedPAQ.Status);
        if Consultation.IsContract then begin
            if Date2DMY(PostedPAQ."PAQ Date", 3) <> Date2DMY(WorkDate, 3) then
                Error(Text004, Date2DMY(WorkDate, 3));
            Contract.Get(Consultation."Contract No.");
            if Contract.Status <> Contract.Status::" " then
                Error(Text005, Contract."No.", Contract.Status);
            PostedPAQ.TestField(Type, "PAQ Type"::Original);
            lPostedPAQ.Reset;
            lPostedPAQ.SetRange("Consultation Code", Consultation."Consultation code");
            lPostedPAQ.SetRange(Type, lPostedPAQ.Type::Decrease);
            lPostedPAQ.SetRange(Reversed, false);
            if lPostedPAQ.FindFirst then
                Error(Text006);
            lPostedPAQLines.Reset;
            lPostedPAQLines.SetRange("PAQ Code", PostedPAQ."PAQ Code");
            if lPostedPAQLines.FindSet then
                repeat
                    if lQuoteLines.Get(lQuoteLines."Document Type"::Quote, lPostedPAQLines."Quote No.", lPostedPAQLines."Quote Line No.") then
                        if (lPostedPAQLines."Cost Amount") + lQuoteLines."Amount Adjudicated" < lQuoteLines."Amount Ordered" then
                            Error(Text007, lQuoteLines."Amount Ordered", lPostedPAQLines."Line No.", lPostedPAQLines."PAQ Code");
                until lPostedPAQLines.Next = 0;
        end else begin
            Clear(lOrderLines);
            lOrderLines.SetRange("Consultation Code", PostedPAQ."Consultation Code");
            lOrderLines.SetRange("Document Type", lOrderLines."Document Type"::Order);
            if lOrderLines.FindFirst then
                Error(Text008);
        end;

        Clear(lPAQ);
        lPAQ.Init;
        lPAQ.TransferFields(PostedPAQ);
        if BudgetConfig."Reverse Paq Date" = BudgetConfig."Reverse Paq Date"::"Work Date" then
            lPAQ."PAQ Date" := WorkDate
        else
            lPAQ."PAQ Date" := PostedPAQ."PAQ Date";
        lPAQ.Insert(true);
        case PostedPAQ.Type of
            "PAQ Type"::Decrease:
                lPAQ.Validate(Type, "PAQ Type"::Increase);
            "PAQ Type"::Original, "PAQ Type"::Increase:
                lPAQ.Validate(Type, "PAQ Type"::Decrease);
        End;
        lPAQ.Status := "PAQ Status"::Released;
        lPAQ.Reversed := true;
        lPAQ.Modify();

        lPostedPAQLines.Reset;
        lPostedPAQLines.SetRange("PAQ Code", PostedPAQ."PAQ Code");
        if lPostedPAQLines.FindSet then
            repeat
                Clear(lPAQLines);
                lPAQLines.Init();
                lPAQLines.TransferFields(lPostedPAQLines);
                lPAQLines."PAQ Code" := lPAQ."PAQ Code";
                lPAQLines."Unit Cost" := lPostedPAQLines."Unit Cost" * -1;
                lPAQLines."PAQ Date" := lPostedPAQ."PAQ Date";
                lPAQLines.Amount := lPostedPAQLines.Amount * -1;
                lPAQLines."Amount Including VAT" := lPostedPAQLines."Amount Including VAT" * -1;
                lPAQLines."Cost Amount" := lPostedPAQLines."Cost Amount" * -1;
                lPAQLines.Validate("Dimension Set ID", lPostedPAQLines."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(lPostedPAQLines."Dimension Set ID", lPAQLines."Shortcut Dimension 1 Code", lPAQLines."Shortcut Dimension 2 Code");
                lPAQLines.Insert(true);
                if Consultation.Get(lPostedPAQLines."Consultation Code") then begin
                    if Consultation.IsContract then begin
                        if lQuoteLines.Get(lQuoteLines."Document Type"::Quote, lPostedPAQLines."Quote No.", lPostedPAQLines."Quote Line No.") then begin
                            lQuoteLines."Amount Adjudicated" -= (lPAQLines."Cost Amount" * -1);
                            lQuoteLines.Modify(true);
                        end;
                    end;
                end;
            until lPostedPAQLines.Next = 0;
        PostPAQ(lPAQ);
        PostedPAQ.Reversed := true;
        PostedPAQ.Modify(true);
    end;

    procedure CreateContractPAQ(Consultation: Record Consultation)
    var
        PAQ: Record PAQ;
        PAQLines: Record "PAQ Lines";
        QuoteLines: Record "Purchase Line";
        LineNo: Integer;
        Text001: Label 'The adjudication %1 was created with success.';
    begin
        Clear(LineNo);
        Clear(PAQ);

        PAQ.Init();
        PAQ.Validate("Consultation Code", Consultation."Consultation Code");
        PAQ.Validate(Type, "PAQ Type"::Original);
        PAQ.Validate("Section Code", Consultation."Section Code");
        PAQ.Validate("Department Code", Consultation."Department Code");
        PAQ.Validate("PAQ Description", Consultation.Description);
        PAQ.Insert(true);

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter("Amount to Adjudicate", '>0');
        if QuoteLines.FindSet then begin
            PAQ."Vendor No." := QuoteLines."Buy-from Vendor No.";
            PAQ.Modify;
            repeat
                LineNo += 10000;
                PAQLines.Init;
                PAQLines.Validate("PAQ Code", PAQ."PAQ Code");
                PAQLines.Validate("Line No.", LineNo);
                PAQLines.Validate("Requisition Code", QuoteLines."Requisition Code");
                PAQLines.Validate("Requisition Line", QuoteLines."Requisition Line");
                PAQLines.Validate("Line Type", QuoteLines.Type.AsInteger());
                PAQLines.Validate("No.", QuoteLines."No.");
                PAQLines.Validate(Description, QuoteLines.Description);
                PAQLines.Validate("Location Code", QuoteLines."Location Code");
                PAQLines.Validate("Consultation Code", QuoteLines."Consultation Code");
                PAQLines.Validate("Currency Code", QuoteLines."Currency Code");
                PAQLines."Quote No." := QuoteLines."Document No.";
                PAQLines."Quote Line No." := QuoteLines."Line No.";
                PAQLines.Validate(Quantity, 1);
                PAQLines.Validate("VAT %", QuoteLines."VAT %");
                PAQLines.Validate("ND %", QuoteLines."PTSS ND %");
                UpdateContractAmounts(QuoteLines, PAQLines);
                PAQLines.Validate("PAQ Date", PAQ."PAQ Date");
                PAQLines.Validate("Consultation Code", QuoteLines."Consultation Code");
                PAQLines.validate("Dimension Set ID", QuoteLines."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(PAQLines."Dimension Set ID", PAQLines."Shortcut Dimension 1 Code", PAQLines."Shortcut Dimension 2 Code");
                PAQLines.Insert(true);
                QuoteLines."Amount Adjudicated" += QuoteLines."Amount to Adjudicate";
                QuoteLines."Amount to Adjudicate" := 0;
                QuoteLines.Modify;
            until QuoteLines.Next = 0;
        end;
        ShowMessage(StrSubstNo(Text001, PAQ."PAQ Code"));
        SendToApproval(PAQ);
    end;

    procedure CreatePAQ(Consultation: Record Consultation)
    var
        BudgetConfig: Record "Budget Configuration";
        PAQ: Record "PAQ";
        PAQLines: Record "PAQ Lines";
        QuoteHeader: Record "Purchase Header";
        QuoteLines: Record "Purchase Line";
        Currency: Record Currency;
        CurrExchRate: Record "Currency Exchange Rate";
        RequisitionLines: Record "Requisition Lines";
        CduBudget: Codeunit Budget;
        LineNo: Integer;
        Text001: Label 'The adjudication %1 was created with success.';
    begin
        Clear(LineNo);
        Clear(PAQ);

        PAQ.Init();
        PAQ.Validate("Consultation Code", Consultation."Consultation Code");
        PAQ.Validate(Type, "PAQ Type"::Original);
        PAQ.Validate("Section Code", Consultation."Section Code");
        PAQ.Validate("Department Code", Consultation."Department Code");
        PAQ.Validate("PAQ Description", Consultation.Description);
        PAQ.Insert(true);

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        if QuoteLines.FindSet then begin
            PAQ."Vendor No." := QuoteLines."Buy-from Vendor No.";
            PAQ.Modify;
            repeat
                LineNo += 10000;
                PAQLines.Init;
                PAQLines.Validate("PAQ Code", PAQ."PAQ Code");
                PAQLines.Validate("Line No.", LineNo);
                PAQLines.Validate("Requisition Code", QuoteLines."Requisition Code");
                PAQLines.Validate("Requisition Line", QuoteLines."Requisition Line");
                PAQLines.Validate("Line Type", QuoteLines.Type.AsInteger());
                PAQLines.Validate("No.", QuoteLines."No.");
                PAQLines.Validate(Description, QuoteLines.Description);
                PAQLines.Validate("Location Code", QuoteLines."Location Code");
                PAQLines.Validate("Consultation Code", QuoteLines."Consultation Code");
                PAQLines.Validate("Currency Code", QuoteLines."Currency Code");
                PAQLines."Quote No." := QuoteLines."Document No.";
                PAQLines."Quote Line No." := QuoteLines."Line No.";
                PAQLines.Validate(Quantity, QuoteLines.Quantity);
                PAQLines.Validate("VAT %", QuoteLines."VAT %");
                PAQLines.Validate("ND %", QuoteLines."PTSS ND %");
                if QuoteLines."Currency Code" <> '' then begin
                    Clear(QuoteHeader);
                    QuoteHeader.Get(QuoteLines."Document Type", QuoteLines."Document No.");
                    Currency.Get(QuoteHeader."Currency Code");
                    PAQLines."Currency Factor" := QuoteHeader."Currency Factor";
                    PAQLines.Validate("Unit Cost", Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", QuoteLines."Direct Unit Cost", QuoteHeader."Currency Factor"),
                                        Currency."Amount Rounding Precision"));
                    PAQLines.Validate("Amount", Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", QuoteLines.Amount, QuoteHeader."Currency Factor"),
                                        Currency."Amount Rounding Precision"));
                    PAQLines.Validate("Amount Including Vat", Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", QuoteLines."Amount Including VAT", QuoteHeader."Currency Factor"),
                                        Currency."Amount Rounding Precision"));
                    PAQLines.Validate("Cost Amount", Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", QuoteLines."Cost Amount", QuoteHeader."Currency Factor"),
                                        Currency."Amount Rounding Precision"));
                end else begin
                    PAQLines.Validate("Unit Cost", QuoteLines."Direct Unit Cost");
                    PAQLines.Validate("Amount", QuoteLines.Amount);
                    PAQLines.Validate("Amount Including Vat", QuoteLines."Amount Including VAT");
                    PAQLines.Validate("Cost Amount", QuoteLines."Cost Amount");
                end;

                PAQLines.Validate("PAQ Date", PAQ."PAQ Date");
                PAQLines.Validate("Consultation Code", QuoteLines."Consultation Code");
                PAQLines.validate("Dimension Set ID", QuoteLines."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(PAQLines."Dimension Set ID", PAQLines."Shortcut Dimension 1 Code", PAQLines."Shortcut Dimension 2 Code");
                PAQLines.Insert(true);
            until QuoteLines.Next = 0;
        end;

        CheckPAQLines(PAQ);
        ShowMessage(StrSubstNo(Text001, PAQ."PAQ Code"));
        SendToApproval(PAQ);
    end;

    procedure SendToApproval(pPAQ: Record "PAQ"): Boolean
    var
        BudgetConfig: Record "Budget Configuration";
        ApprovalEntry: Record "Aproval Entry";
        PAQ: Record "PAQ";
        TotalAmount: Decimal;
        RecRef: RecordRef;
        DocIsReleased: Boolean;
        Text001: Label 'An approval request has been sent.';
        Text002: Label '%1 %2 has been approved.';
    begin
        BudgetConfig.Get();
        PAQ.Get(pPAQ."PAQ Code");
        Clear(TotalAmount);
        TotalAmount := PAQ.GetPAQAmount();

        If PAQ.Type <> "PAQ Type"::Decrease then begin
            ApprovalsMgt.InsertApprovalRequest("Approval Entry Document Type"::Adjudication, PAQ.RecordId, PAQ."PAQ Code", PAQ."Section Code", TotalAmount,
                                                PAQ."PAQ Date", PAQ."Source Code");

            PAQ.Status := PAQ.Status::"Pending Approval";
            PAQ.Modify();

            RecRef.Get(PAQ.RecordId);
            ApprovalsMgt.FinishApprovalEntry(RecRef, DocIsReleased);
        end else
            DocIsReleased := true;

        If DocIsReleased then begin
            PAQ.Validate(Status, "PAQ Status"::Released);
            PAQ.Modify();
            Clear(MessageToShow);
            MessageToShow := StrSubstNo(Text002, PAQ.TableCaption, PAQ."PAQ Code");
            PostPAQ(PAQ);
        end else begin
            Clear(MessageToShow);
            MessageToShow := Text001;
        end;
        ShowMessage(MessageToShow);
    end;

    procedure CheckPAQCreationPossible(Consultation: Record Consultation): Boolean
    var
        Text001: Label 'You cant create adjudications without avaylables.';
    begin
        if Consultation.GetPostedAvaylableAmount() = 0 then
            ERROR(Text001, Consultation."Consultation code");

        ValidateAvayLastDate(Consultation);
        ValidateSelectionCode(Consultation);

        exit(true);
    end;

    procedure CheckContractPAQCreationPossible(Consultation: Record Consultation): Boolean
    var
        Contract: Record Contract;
        Text001: Label 'You cant create adjudications without avaylables.';
        Text002: Label 'You cant create contract adjudications because the contract %1 is in %2.';
    begin
        Contract.Get(Consultation."Contract No.");
        if Contract.Status <> Contract.Status::" " then
            Error(Text002, Contract."No.", Contract.Status);

        Consultation.Get(Consultation."Consultation Code");
        if Consultation.GetPostedAvaylableAmount() = 0 then
            ERROR(Text001, Consultation."Consultation code");


        ValidateAvayLastDate(Consultation);
        ValidateContractSelection(Consultation);
        exit(true);
    end;

    procedure LookupPAQ(PAQ: Record "PAQ")
    begin
        Page.RunModal(Page::"PAQ Card", PAQ, PAQ."PAQ Code");
    end;

    procedure OpenPAQApprovals(PAQ: Record "PAQ")
    begin
        ApprovalsMgt.OpenApprovals(PAQ.RecordId, Database::"PAQ", "Approval Entry Document Type"::Adjudication, PAQ."PAQ Code");
    end;

    procedure CancelPAQApproval(PAQ: Record "PAQ")
    var
        Text001: Label 'The approval request was canceled.';
    begin
        if ApprovalsMgt.CanCancelApprovalForRecord(PAQ.RecordId) then begin
            ApprovalsMgt.FindAndDeleteApprovalForRecord(PAQ.RecordId);

            PAQ.Status := "PAQ Status"::Open;
            PAQ.Modify();
            ShowMessage(Text001);
        end;
    end;

    procedure ValidatePermissions(PermissionType: Enum "PAQ Permissions")
    var
        BudgetPermissions: Record "Budget Permissions";
        PAQ: Record PAQ;
        Text001: Label 'You dont have permission to %1 %2';
    begin
        if HideDialog then
            exit;
        BudgetPermissions.GET(USERID, BudgetPermissions.Type::User);
        case PermissionType of
            PermissionType::Create:
                If not BudgetPermissions."Create PAQ" then
                    Error(Text001, PermissionType, PAQ.TableCaption);
            PermissionType::Modify:
                If not BudgetPermissions."Modify PAQ" then
                    Error(Text001, PermissionType, PAQ.TableCaption);
            PermissionType::Delete:
                If not BudgetPermissions."Delete PAQ" then
                    Error(Text001, PermissionType, PAQ.TableCaption);
            PermissionType::View:
                If not BudgetPermissions."View PAQ" then
                    Error(Text001, PermissionType, PAQ.TableCaption);
            PermissionType::Approve:
                If not BudgetPermissions."Approve PAQ" then
                    Error(Text001, PermissionType, PAQ.TableCaption);
            PermissionType::Reverse:
                If not BudgetPermissions."Reverse PAQ" then
                    Error(Text001, PermissionType, PAQ.TableCaption);
        end;
    end;

    local procedure PostPAQ(PAQ: Record PAQ)
    var
        PostedPAQ: Record "Posted PAQ";
        PostedPAQLines: Record "Posted PAQ Lines";
        PAQLines: Record "PAQ Lines";
        Consultation: Record Consultation;
        ApprovalDocType: Enum "Approval Entry Document Type";
        QuoteLines: Record "Purchase Line";
    begin
        if HideDialog then
            PAQ.SetHideDialog();
        if IsDateNotAllowed(PAQ."PAQ Date") then
            PAQ.FieldError("PAQ Date", Text003);
        if PAQ.Type <> PAQ.Type::Decrease then
            ValidatePermissions("PAQ Permissions"::Approve);

        Clear(PostedPAQ);
        PostedPAQ.Init;
        PostedPAQ.TransferFields(PAQ);
        PostedPAQ."PAQ Code Original" := PAQ."PAQ Code";
        if PAQ."Posting No." = '' then
            PostedPAQ."PAQ Code" := NoSeriesMgt.GetNextNo(Paq."Posting No. Series", 0D, true)
        else
            PostedPAQ."PAQ Code" := PAQ."Posting No.";

        PostedPAQ."Approved By" := UserId;
        PostedPAQ."Approved Date" := WorkDate;
        PostedPAQ.Insert(true);

        PAQLines.Reset;
        PAQLines.SetRange("PAQ Code", PAQ."PAQ Code");
        if PAQLines.FindSet() then begin
            repeat
                Clear(PostedPAQLines);
                PostedPAQLines.Init;
                PostedPAQLines.TransferFields(PAQLines);
                PostedPAQLines."PAQ Code" := PostedPAQ."PAQ Code";
                PostedPAQLines.Status := PostedPAQ.Status;
                PostedPAQLines."PAQ Date" := PostedPAQ."PAQ Date";
                PostedPAQLines.Validate("Dimension Set ID", PAQLines."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(PostedPAQLines."Dimension Set ID", PostedPAQLines."Shortcut Dimension 1 Code", PostedPAQLines."Shortcut Dimension 2 Code");
                PostedPAQLines.Insert(true);
                if PostedPAQ.Status = PostedPAQ.Status::Rejected then begin
                    If Consultation.get(PostedPAQLines."Consultation Code") and Consultation.IsContract then begin
                        if QuoteLines.Get(QuoteLines."Document Type"::Quote, PostedPAQLines."Quote No.", PostedPAQLines."Quote Line No.") then begin
                            QuoteLines."Amount Avaylabled" -= (PostedPAQLines.GetPAQLineAmount());
                            QuoteLines.Modify(true);
                        end;
                    end;
                end;
            until PAQLines.Next = 0;
        end;
        Clear(ErrorMsg);
        if PostedPAQ.Status = PostedPAQ.Status::Released then begin
            if PostToGL(PAQ, PostedPAQ."PAQ Code") then begin
                ApprovalsMgt.CopyApprovalEntry(DATABASE::PAQ, ApprovalDocType::Adjudication, PAQ."PAQ Code", Database::"Posted PAQ", PostedPAQ."PAQ Code");
                PAQ.Delete(true);
                Clear(MessageToShow);
                MessageToShow := StrSubstNo(Text002, PostedPAQ."PAQ Code");
            end else begin
                PAQ."Posting No." := PostedPAQ."PAQ Code";
                PAQ.Modify;
                PostedPAQ.Delete(true);
                Error(ErrorMsg);
            end;
        end else begin
            ApprovalsMgt.CopyApprovalEntry(DATABASE::PAQ, ApprovalDocType::Adjudication, PAQ."PAQ Code", Database::"Posted PAQ", PostedPAQ."PAQ Code");
            PAQ.Delete(true);
            Clear(MessageToShow);
            MessageToShow := StrSubstNo(Text002, PostedPAQ."PAQ Code");
        end;
    end;

    local procedure PostToGL(PAQ: Record PAQ; PostedDoc: Code[20]): Boolean
    var
        BudgetConfig: Record "Budget Configuration";
        Class0Setup: Record "Class 0 Setup";
        PAQLines: Record "PAQ Lines";
        GenJnlLine: Record "Gen. Journal Line";
        GenJnlBatch: Record "Gen. Journal Batch";
        Text001: Label 'Journal %1 Section %2 cant have default No. Series.';
        LineNo: Integer;
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
    begin
        BudgetConfig.Get;
        BudgetConfig.TestField("Original PAQ");
        BudgetConfig.TestField("PAQ Increase");
        BudgetConfig.TestField("PAQ Decrease");
        BudgetConfig.TestField("PAQ Template Diary");
        BudgetConfig.TestField("PAQ Batch Diary");

        GenJnlLine.Reset;
        GenJnlLine.SetRange("Journal Template Name", BudgetConfig."PAQ Template Diary");
        GenJnlLine.SetRange("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
        GenJnlLine.DeleteAll(true);

        GenJnlBatch.Reset();
        GenJnlBatch.SetRange("Journal Template Name", BudgetConfig."PAQ Template Diary");
        GenJnlBatch.SetRange(Name, BudgetConfig."PAQ Batch Diary");
        if GenJnlBatch.FindFirst then
            if (GenJnlBatch."No. Series" <> '') or (GenJnlBatch."Posting No. Series" <> '') then
                Error(StrSubstNo(Text001, GenJnlBatch."Journal Template Name", GenJnlBatch.Name));

        LineNo := 10000;

        PAQLines.Reset;
        PAQLines.SetRange("PAQ Code", PAQ."PAQ Code");
        PAQLines.SetFilter("No.", '<>%1', '');
        if PAQLines.FindSet then begin
            repeat
                Class0Setup.Reset;
                case PAQ.Type of
                    PAQ.Type::Original:
                        Class0Setup.SetRange("Regist type", BudgetConfig."Original PAQ");
                    PAQ.Type::Decrease:
                        Class0Setup.SetRange("Regist type", BudgetConfig."PAQ Decrease");
                    PAQ.Type::Increase:
                        Class0Setup.SetRange("Regist type", BudgetConfig."PAQ Increase");
                end;
                if Class0Setup.FindSet then begin
                    repeat
                        GenJnlLine.Init;
                        GenJnlLine."Line No." := LineNo;
                        GenJnlLine.Validate("Journal Template Name", BudgetConfig."PAQ Template Diary");
                        GenJnlLine.Validate("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                        GenJnlLine.Validate("Posting Date", PAQ."PAQ Date");
                        GenJnlLine.Validate("Account Type", GenJnlLine."Account Type"::"G/L Account");
                        GenJnlLine.Validate("Account No.", Class0Setup."Debt count");
                        GenJnlLine.Validate("Document Type", GenJnlLine."Document Type"::" ");
                        GenJnlLine.Validate("Document No.", PostedDoc);
                        GenJnlLine.Validate("Budget Appropriation Method", PAQ."Budget Appropriation Method");
                        GenJnlLine.Validate(Amount, Abs(PAQLines.GetPAQLineAmount));
                        GenJnlLine.Validate("Bal. Account Type", GenJnlLine."Bal. Account Type"::"G/L Account");
                        GenJnlLine.Validate("Bal. Account No.", Class0Setup."Credit count");
                        GenJnlLine.Validate("System-Created Entry", true);
                        GenJnlLine.Validate("Dimension Set ID", PAQLines."Dimension Set ID");
                        GenJnlLine.Validate("Source Code", PAQ."Source Code");
                        DimMgt.UpdateGlobalDimFromDimSetID(PAQLines."Dimension Set ID", GenJnlLine."Shortcut Dimension 1 Code", GenJnlLine."Shortcut Dimension 2 Code");
                        GenJnlLine.Insert(true);
                        GenJnlPostLine.RunWithCheck(GenJnlLine);
                        GenJnlLine.Delete();
                        LineNo += 10000;
                    until Class0Setup.Next = 0;
                end;
            until PAQLines.Next = 0;
        end;
        exit(true);
    end;

    local procedure CheckPAQLines(PAQ: Record PAQ)
    var
        PostedAvBudgetLines: Record "Posted Avaylable Budget Line";
        PostedAvBudget: Record "Posted Avaylable Budget";
        AvaylableBudget: Record "Avaylable Budget";
        AccountDimensions: Record "G/L Account Dimensions";
        DimSetEntry: Record "Dimension Set Entry";
        BudgetConfig: Record "Budget Configuration";
        PaqLines: Record "PAQ Lines";
        PostedPAQLines: Record "Posted PAQ Lines";
        lAmount: Decimal;
        lPaqAmount: Decimal;
        lAvayAmount: Decimal;
        lDim1Filter: Code[20];
        lDim2Filter: Code[20];
        lDim3Filter: Code[20];
        lDim4Filter: Code[20];
        lDim1FilterValue: Code[20];
        lDim2FilterValue: Code[20];
        lDim3FilterValue: Code[20];
        lDim4FilterValue: Code[20];
        txtDimensionsMessage: Text[1024];
        Text001: Label 'There is a difference between the avaylable amount (%1) and the adjudication amount (%2) from %3 in line %4 for the budget dimensions %5. ';
    begin
        Clear(txtDimensionsMessage);
        lPaqAmount := 0;

        BudgetConfig.Get();

        if (BudgetConfig.dim1 <> '') and BudgetConfig.Sd1 then
            lDim1Filter := BudgetConfig.dim1;
        if (BudgetConfig.dim2 <> '') and BudgetConfig.Sd2 then
            lDim2Filter := BudgetConfig.dim2;
        if (BudgetConfig.dim3 <> '') and BudgetConfig.Sd3 then
            lDim3Filter := BudgetConfig.dim3;
        if (BudgetConfig.dim4 <> '') and BudgetConfig.Sd4 then
            lDim4Filter := BudgetConfig.dim4;

        PaqLines.Reset();
        PaqLines.SetRange("PAQ Code", PAQ."PAQ Code");
        PaqLines.SetFilter("Line Type", '<>%1', PaqLines."Line Type"::" ");
        if PaqLines.FindSet() then
            repeat
                lPaqAmount := 0;
                lAvayAmount := 0;
                AccountDimensions.Reset();
                AccountDimensions.DeleteAll();

                Clear(lDim1FilterValue);
                Clear(lDim2FilterValue);
                Clear(lDim3FilterValue);
                Clear(lDim4FilterValue);

                //PAQ Actual
                AccountDimensions.Init();
                AccountDimensions."Tab Code" := Format(DATABASE::"PAQ Lines");
                AccountDimensions."Document No." := PaqLines."PAQ Code";
                AccountDimensions."Line No." := PaqLines."Line No.";
                AccountDimensions."Line Type" := PaqLines."Line Type";
                AccountDimensions."Line Orig. Doc." := PaqLines."Line No.";
                AccountDimensions."Requisition Code" := PaqLines."Requisition Code";
                AccountDimensions."Requisition Line" := PaqLines."Requisition Line";
                AccountDimensions.Quantity := PaqLines.Quantity;
                AccountDimensions."Line No" := Format(PaqLines."Line No.");
                AccountDimensions."Consultation Code" := PAQ."Consultation Code";
                AccountDimensions."Cost Amount" := PaqLines.GetPAQLineAmount();
                AccountDimensions."Doc. Type" := AccountDimensions."Doc. Type"::Adjudication;
                AccountDimensions."Original Amount" := PaqLines."Original Amount";
                DimSetEntry.Reset;
                DimSetEntry.SetRange("Dimension Set ID", PaqLines."Dimension Set ID");
                if DimSetEntry.FindSet then begin
                    repeat
                        if lDim1Filter = DimSetEntry."Dimension Code" then begin
                            AccountDimensions.Dimension1 := DimSetEntry."Dimension Code";
                            AccountDimensions."Dimension Value1" := DimSetEntry."Dimension Value Code";
                            lDim1FilterValue := DimSetEntry."Dimension Value Code";
                        end;
                        if lDim2Filter = DimSetEntry."Dimension Code" then begin
                            AccountDimensions.Dimension2 := DimSetEntry."Dimension Code";
                            AccountDimensions."Dimension Value2" := DimSetEntry."Dimension Value Code";
                            lDim2FilterValue := DimSetEntry."Dimension Value Code";
                        end;
                        if lDim3Filter = DimSetEntry."Dimension Code" then begin
                            AccountDimensions.Dimension3 := DimSetEntry."Dimension Code";
                            AccountDimensions."Dimension Value3" := DimSetEntry."Dimension Value Code";
                            lDim3FilterValue := DimSetEntry."Dimension Value Code";
                        end;
                        if lDim4Filter = DimSetEntry."Dimension Code" then begin
                            AccountDimensions.Dimension4 := DimSetEntry."Dimension Code";
                            AccountDimensions."Dimension Value4" := DimSetEntry."Dimension Value Code";
                            lDim4FilterValue := DimSetEntry."Dimension Value Code";
                        end;
                    until DimSetEntry.Next = 0;
                end;
                AccountDimensions.Insert();

                // PAQs Registadas
                PostedPAQLines.Reset();
                PostedPAQLines.SetRange("Requisition Code", PaqLines."Requisition Code");
                PostedPAQLines.SetRange("Requisition Line", PaqLines."Requisition Line");
                PostedPAQLines.SetRange(Status, PostedPAQLines.Status::Released);
                PostedPAQLines.SetFilter("Line Type", '<>%1', PaqLines."Line Type"::" ");
                if PostedPAQLines.FindSet then
                    repeat
                        AccountDimensions.Init();
                        AccountDimensions."Tab Code" := Format(DATABASE::"Posted PAQ Lines");
                        AccountDimensions."Document No." := PostedPAQLines."PAQ Code";
                        AccountDimensions."Line No." := PostedPAQLines."Line No.";
                        AccountDimensions."Line Type" := PostedPAQLines."Line Type";
                        AccountDimensions."Line Orig. Doc." := PostedPAQLines."Line No.";
                        AccountDimensions."Requisition Code" := PostedPAQLines."Requisition Code";
                        AccountDimensions."Requisition Line" := PostedPAQLines."Requisition Line";
                        AccountDimensions.Quantity := PostedPAQLines.Quantity;
                        AccountDimensions."Line No" := Format(PostedPAQLines."Line No.");
                        AccountDimensions."Consultation Code" := PostedPAQLines."Consultation Code";
                        AccountDimensions."Cost Amount" := PostedPAQLines.GetPAQLineAmount();
                        AccountDimensions."Doc. Type" := AccountDimensions."Doc. Type"::Adjudication;
                        AccountDimensions."Original Amount" := PostedPAQLines."Original Amount";

                        DimSetEntry.Reset;
                        DimSetEntry.SetRange("Dimension Set ID", PostedPAQLines."Dimension Set ID");
                        if DimSetEntry.FindSet then begin
                            repeat
                                if lDim1Filter = DimSetEntry."Dimension Code" then begin
                                    AccountDimensions.Dimension1 := DimSetEntry."Dimension Code";
                                    AccountDimensions."Dimension Value1" := DimSetEntry."Dimension Value Code";
                                    lDim1FilterValue := DimSetEntry."Dimension Value Code";
                                end;
                                if lDim2Filter = DimSetEntry."Dimension Code" then begin
                                    AccountDimensions.Dimension2 := DimSetEntry."Dimension Code";
                                    AccountDimensions."Dimension Value2" := DimSetEntry."Dimension Value Code";
                                    lDim2FilterValue := DimSetEntry."Dimension Value Code";
                                end;
                                if lDim3Filter = DimSetEntry."Dimension Code" then begin
                                    AccountDimensions.Dimension3 := DimSetEntry."Dimension Code";
                                    AccountDimensions."Dimension Value3" := DimSetEntry."Dimension Value Code";
                                    lDim3FilterValue := DimSetEntry."Dimension Value Code";
                                end;
                                if lDim4Filter = DimSetEntry."Dimension Code" then begin
                                    AccountDimensions.Dimension4 := DimSetEntry."Dimension Code";
                                    AccountDimensions."Dimension Value4" := DimSetEntry."Dimension Value Code";
                                    lDim4FilterValue := DimSetEntry."Dimension Value Code";
                                end;
                            until DimSetEntry.Next = 0;
                        end;
                        AccountDimensions.Insert();
                    until PostedPAQLines.Next() = 0;

                // Cabimentos registados
                PostedAvBudgetLines.Reset();
                PostedAvBudgetLines.SetRange("Requisition Code", PaqLines."Requisition Code");
                PostedAvBudgetLines.SetRange("Requisition Line", PaqLines."Requisition Line");
                PostedAvBudgetLines.SetRange(Status, PostedAvBudgetLines.Status::Released);
                PostedAvBudgetLines.SetFilter("Line Type", '<>%1', PostedAvBudgetLines."Line Type"::" ");
                if PostedAvBudgetLines.FindSet() then
                    repeat
                        AccountDimensions.Init();
                        AccountDimensions."Tab Code" := Format(DATABASE::"Posted Avaylable Budget Line");
                        AccountDimensions."Document No." := PostedAvBudgetLines."Avay Code";
                        AccountDimensions."Line No." := PostedAvBudgetLines."Line No.";
                        AccountDimensions."Line Type" := PostedAvBudgetLines."Line Type";
                        AccountDimensions."Requisition Code" := PostedAvBudgetLines."Requisition Code";
                        AccountDimensions."Requisition Line" := PostedAvBudgetLines."Requisition Line";
                        AccountDimensions.Quantity := PostedAvBudgetLines.Quantity;
                        AccountDimensions."Consultation Code" := PostedAvBudgetLines."Consultation Code";
                        AccountDimensions."Cost Amount" := PostedAvBudgetLines.GetAvayLineAmount();
                        AccountDimensions."Doc. Type" := AccountDimensions."Doc. Type"::"Avaylable Budget";
                        AccountDimensions."Original Amount" := AccountDimensions."Original Amount";

                        DimSetEntry.Reset;
                        DimSetEntry.SetRange("Dimension Set ID", PostedAvBudgetLines."Dimension Set ID");
                        if DimSetEntry.FindSet then begin
                            repeat
                                if lDim1Filter = DimSetEntry."Dimension Code" then begin
                                    AccountDimensions.Dimension1 := DimSetEntry."Dimension Code";
                                    AccountDimensions."Dimension Value1" := DimSetEntry."Dimension Value Code";
                                    lDim1FilterValue := DimSetEntry."Dimension Value Code";
                                end;
                                if lDim2Filter = DimSetEntry."Dimension Code" then begin
                                    AccountDimensions.Dimension2 := DimSetEntry."Dimension Code";
                                    AccountDimensions."Dimension Value2" := DimSetEntry."Dimension Value Code";
                                    lDim2FilterValue := DimSetEntry."Dimension Value Code";
                                end;
                                if lDim3Filter = DimSetEntry."Dimension Code" then begin
                                    AccountDimensions.Dimension3 := DimSetEntry."Dimension Code";
                                    AccountDimensions."Dimension Value3" := DimSetEntry."Dimension Value Code";
                                    lDim3FilterValue := DimSetEntry."Dimension Value Code";
                                end;
                                if lDim4Filter = DimSetEntry."Dimension Code" then begin
                                    AccountDimensions.Dimension4 := DimSetEntry."Dimension Code";
                                    AccountDimensions."Dimension Value4" := DimSetEntry."Dimension Value Code";
                                    lDim4FilterValue := DimSetEntry."Dimension Value Code";
                                end;
                            until DimSetEntry.Next = 0;
                        end;
                        AccountDimensions.Insert();
                    until PostedAvBudgetLines.Next() = 0;

                //Valor Adjudicado
                AccountDimensions.Reset();
                AccountDimensions.SetRange(Dimension1, lDim1Filter);
                AccountDimensions.SetRange(Dimension2, lDim2Filter);
                AccountDimensions.SetRange(Dimension3, lDim3Filter);
                AccountDimensions.SetRange(Dimension4, lDim4Filter);
                AccountDimensions.SetRange("Dimension Value1", lDim1FilterValue);
                AccountDimensions.SetRange("Dimension Value2", lDim2FilterValue);
                AccountDimensions.SetRange("Dimension Value3", lDim3FilterValue);
                AccountDimensions.SetRange("Dimension Value4", lDim4FilterValue);
                AccountDimensions.SetRange("Requisition Code", PaqLines."Requisition Code");
                AccountDimensions.SetRange("Requisition Line", PaqLines."Requisition Line");
                AccountDimensions.SetRange("Doc. Type", AccountDimensions."Doc. Type"::Adjudication);
                if AccountDimensions.FindSet then
                    repeat
                        lPaqAmount += AccountDimensions."Cost Amount";
                    until AccountDimensions.Next() = 0;
                //Valor Cabimentado
                AccountDimensions.Reset();
                AccountDimensions.SetRange(Dimension1, lDim1Filter);
                AccountDimensions.SetRange(Dimension2, lDim2Filter);
                AccountDimensions.SetRange(Dimension3, lDim3Filter);
                AccountDimensions.SetRange(Dimension4, lDim4Filter);
                AccountDimensions.SetRange("Dimension Value1", lDim1FilterValue);
                AccountDimensions.SetRange("Dimension Value2", lDim2FilterValue);
                AccountDimensions.SetRange("Dimension Value3", lDim3FilterValue);
                AccountDimensions.SetRange("Dimension Value4", lDim4FilterValue);
                AccountDimensions.SetRange("Requisition Code", PaqLines."Requisition Code");
                AccountDimensions.SetRange("Requisition Line", PaqLines."Requisition Line");
                AccountDimensions.SetRange("Doc. Type", AccountDimensions."Doc. Type"::"Avaylable Budget");
                if AccountDimensions.FindSet then
                    repeat
                        lAvayAmount += AccountDimensions."Cost Amount";
                    until AccountDimensions.Next() = 0;

                txtDimensionsMessage := lDim1FilterValue;
                if lDim2FilterValue <> '' then begin
                    if txtDimensionsMessage = '' then
                        txtDimensionsMessage := lDim2FilterValue
                    else
                        txtDimensionsMessage := txtDimensionsMessage + ' / ' + lDim2FilterValue;
                end;
                if lDim3FilterValue <> '' then begin
                    if txtDimensionsMessage = '' then
                        txtDimensionsMessage := lDim3FilterValue
                    else
                        txtDimensionsMessage := txtDimensionsMessage + ' / ' + lDim3FilterValue;
                end;
                if lDim4FilterValue <> '' then begin
                    if txtDimensionsMessage = '' then
                        txtDimensionsMessage := lDim4FilterValue
                    else
                        txtDimensionsMessage := txtDimensionsMessage + ' / ' + lDim4FilterValue;
                end;

                if Abs((lPaqAmount - lAvayAmount)) > BudgetConfig."Precision Round Difference" then
                    Error(Text001, Format(lAvayAmount), Format(lPaqAmount), Format(((lPaqAmount) - lAvayAmount)),
                          PaqLines."Line No.", txtDimensionsMessage);
            until PaqLines.Next() = 0;
    end;

    local procedure UpdateContractAmounts(QuoteLines: Record "Purchase Line"; var PAQLines: Record "PAQ Lines")
    var
        BudgetApropriationMethod: Enum "Budget Appropriation Method";
        QuoteHeader: Record "Purchase Header";
        Currency: Record Currency;
        CurrExchRate: Record "Currency Exchange Rate";
        VATPostingSetup: Record "VAT Posting Setup";
    begin
        BudgetApropriationMethod := PAQLines.GetBudgetAppropriationMethod();
        QuoteLines.GetPurchHeader(QuoteHeader, Currency);

        case BudgetApropriationMethod of
            BudgetApropriationMethod::"Cost Amount":
                begin
                    PAQLines."Cost Amount" := QuoteLines."Amount to Adjudicate";
                    if (QuoteLines."VAT %" + QuoteLines."PTSS ND %" <> 0) then
                        PAQLines.Amount := Round(PAQLines."Cost Amount" / Round(1 + ((QuoteLines."VAT %" + QuoteLines."PTSS ND %") / 100), Currency."Amount Rounding Precision", Currency.VATRoundingDirection), Currency."Amount Rounding Precision");
                    if (QuoteLines."VAT %" + QuoteLines."PTSS ND %" = 0) AND (QuoteLines."VAT Calculation Type" = QuoteLines."VAT Calculation Type"::"Reverse Charge VAT") then begin
                        if VATPostingSetup.GET(QuoteLines."VAT Bus. Posting Group", QuoteLines."VAT Prod. Posting Group") then begin
                            PAQLines.Amount += Round(PAQLines."Cost Amount" / Round(1 + (QuoteLines."PTSS ND %" / 100), Currency."Amount Rounding Precision", Currency.VATRoundingDirection), Currency."Amount Rounding Precision");
                        end;
                    end;
                    PAQLines."Amount Including VAT" := Round(PAQLines.Amount + (PAQLines.Amount * ((QuoteLines."VAT %" + QuoteLines."PTSS ND %") / 100)), Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                    If QuoteLines."Currency Code" <> '' then begin
                        PAQLines.Amount := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", PAQLines.Amount, QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        PAQLines."Amount Including VAT" := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", PAQLines."Amount Including VAT", QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        PAQLines."Cost Amount" := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", PAQLines."Cost Amount", QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                    end;
                end;
            BudgetApropriationMethod::"Amount Without VAT":
                begin
                    PAQLines.Amount := QuoteLines."Amount to Adjudicate";
                    PAQLines."Amount Including VAT" := Round(PAQLines.Amount + PAQLines.Amount * (QuoteLines."VAT %" + QuoteLines."PTSS ND %") / 100, Currency."Amount Rounding Precision");
                    PAQLines."Cost Amount" := QuoteLines."Amount to Adjudicate";
                    if (QuoteLines."VAT %" + QuoteLines."PTSS ND %" <> 0) then
                        PAQLines."Cost Amount" += ROUND((PAQLines."Amount Including VAT" - PAQLines.Amount) / (QuoteLines."VAT %" + QuoteLines."PTSS ND %") * QuoteLines."PTSS ND %", Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                    if (QuoteLines."VAT %" + QuoteLines."PTSS ND %" = 0) AND (QuoteLines."VAT Calculation Type" = QuoteLines."VAT Calculation Type"::"Reverse Charge VAT") then begin
                        if VATPostingSetup.GET(QuoteLines."VAT Bus. Posting Group", QuoteLines."VAT Prod. Posting Group") then begin
                            PAQLines."Cost Amount" += ROUND(PAQLines.Amount * (VATPostingSetup."PTSS VAT N.D. %") / 100, Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                        end;
                    end;
                    If QuoteLines."Currency Code" <> '' then begin
                        PAQLines.Amount := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", PAQLines.Amount, QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        PAQLines."Amount Including VAT" := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", PAQLines."Amount Including VAT", QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        PAQLines."Cost Amount" := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", PAQLines."Cost Amount", QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                    end;
                end;
            BudgetApropriationMethod::"Amount With VAT":
                begin
                    PAQLines."Amount Including VAT" := QuoteLines."Amount to Adjudicate";
                    PAQLines.Amount := Round(PAQLines."Amount Including VAT" / (1 * QuoteLines."VAT %" / 100), Currency."Amount Rounding Precision");
                    PAQLines."Cost Amount" := PAQLines.Amount;
                    if (QuoteLines."VAT %" + QuoteLines."PTSS ND %" <> 0) then
                        PAQLines."Cost Amount" += ROUND((PAQLines."Amount Including VAT" - PAQLines.Amount) / (QuoteLines."VAT %" + QuoteLines."PTSS ND %") * QuoteLines."PTSS ND %", Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                    if (QuoteLines."VAT %" + QuoteLines."PTSS ND %" = 0) AND (QuoteLines."VAT Calculation Type" = QuoteLines."VAT Calculation Type"::"Reverse Charge VAT") then begin
                        if VATPostingSetup.GET(QuoteLines."VAT Bus. Posting Group", QuoteLines."VAT Prod. Posting Group") then begin
                            PAQLines."Cost Amount" += ROUND(PAQLines.Amount * (VATPostingSetup."PTSS VAT N.D. %") / 100, Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                        end;
                    end;
                    if QuoteLines."Currency Code" <> '' then begin
                        PAQLines.Amount := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", PAQLines.Amount, QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        PAQLines."Amount Including VAT" := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", PAQLines."Amount Including VAT", QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        PAQLines."Cost Amount" := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", PAQLines."Cost Amount", QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                    end;
                end;
        end;
        PAQLines.Validate("Unit Cost", Round((PAQLines.Amount / PAQLines.Quantity), Currency."Amount Rounding Precision", Currency.VATRoundingDirection));
    end;

    local procedure IsDateNotAllowed(PostingDate: Date) DateIsNotAllowed: Boolean
    var
        UserSetupManagement: Codeunit "User Setup Management";
        SetupRecordID: RecordID;
    begin
        DateIsNotAllowed := not UserSetupManagement.IsPostingDateValidWithSetup(PostingDate, SetupRecordID);
        exit(DateIsNotAllowed);
    end;

    local procedure ValidateContractSelection(Consultation: Record "Consultation")
    var
        QuoteLines: Record "Purchase Line";
        Text001: Label 'There are no winning quotes.';
        Text002: Label 'There is nothing to adjudicate.';
        Text003: Label 'You cant adjudicate for contract years different from %1.';
    begin
        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        if QuoteLines.IsEmpty then
            Error(Text001);

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        QuoteLines.SetFilter("Amount To Adjudicate", '>0');
        if QuoteLines.IsEmpty then
            Error(Text002);

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        QuoteLines.SetFilter("Amount To Adjudicate", '>0');
        QuoteLines.SetFilter("Contract Year", '<>%1', Date2DMY(WorkDate, 3));
        if not QuoteLines.IsEmpty then
            Error(Text003, Date2DMY(WorkDate, 3));
    end;

    local procedure ValidateSelectionCode(Consultation: Record "Consultation")
    var
        QuoteLines: Record "Purchase Line";
        Text001: Label 'There are no winning quotes.';
    begin
        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        if QuoteLines.IsEmpty then
            Error(Text001);
    end;

    local procedure ValidateAvayLastDate(Consultation: Record "Consultation")
    var
        PostedAvaylableBudget: Record "Posted Avaylable Budget";
        Text001: Label 'You cant create adjudications before %1.';
    begin
        PostedAvaylableBudget.Reset;
        PostedAvaylableBudget.SetRange("Consultation Code", Consultation."Consultation Code");
        if PostedAvaylableBudget.FindLast then
            if WorkDate() < PostedAvaylableBudget."Avay Date" then
                Error(Text001, PostedAvaylableBudget."Avay Date");
    end;

    local procedure ShowMessage(TxtMessage: Text)
    begin
        if not HideDialog then
            Message(TxtMessage);
    end;
}


