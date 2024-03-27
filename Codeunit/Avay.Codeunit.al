codeunit 57002 AvaylableBudget
{
    var
        DimMgt: Codeunit DimensionManagement;
        NoSeriesMgt: Codeunit NoSeriesManagement;
        ApprovalsMgt: Codeunit "Approval Management";
        TotalsUpTodate: Boolean;
        AvaylableLineExist: Boolean;
        PostedAvaylableLineExist: Boolean;
        HideDialog: Boolean;
        MessageToShow: Text;
        ErrorMsg: Text[1024];
        Text001: Label 'Error on posting.';
        Text002: Label 'Avaylable budget posted with No. %1.';
        Text003: Label 'is not within your range of allowed posting dates';

    procedure SetHideDialog()
    begin
        HideDialog := true;
    end;

    procedure CreateContractAdjustAvay(PurchaseHeader: Record "Purchase Header")
    var
        BudgetConfig: Record "Budget Configuration";
        PurchaseLines: Record "Purchase Line";
        AvaylableBudget: Record "Avaylable Budget";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        Consultation: Record Consultation;
        SourceCodeSetup: Record "Source Code Setup";
        LineNo: Integer;
    begin
        Clear(LineNo);

        Consultation.GET(PurchaseHeader."Consultation Code");
        BudgetConfig.GET;

        Clear(AvaylableBudget);
        AvaylableBudget.Init();
        AvaylableBudget.Validate("Consultation Code", Consultation."Consultation Code");
        AvaylableBudget.Validate(Type, "Avaylable Budget Type"::Decrease);
        AvaylableBudget.Validate("Section Code", Consultation."Section Code");
        AvaylableBudget.Validate("Department Code", Consultation."Department Code");
        case BudgetConfig."Adjustment Avay. Budget Date" of
            "Budget Config Date"::"Document Date":
                AvaylableBudget.Validate("Avay Date", PurchaseHeader."Posting Date");
            "Budget Config Date"::"Work Date":
                AvaylableBudget.Validate("Avay Date", WorkDate());
        end;
        AvaylableBudget.Validate("Created By Quote", false);
        AvaylableBudget.Validate("Vendor No.", PurchaseHeader."Buy-from Vendor No.");

        AvaylableBudget.Insert(true);
        PurchaseLines.Reset();
        PurchaseLines.SetRange("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SetRange("Consultation Code", PurchaseHeader."Consultation Code");
        PurchaseLines.SetFilter("Selection Code", '<>%1', '');
        PurchaseLines.SetFilter("Amount to Adjust Avay", '<0');
        if PurchaseLines.FindSet() then
            repeat
                PurchaseLines."Amount to Avay" := PurchaseLines."Amount to Adjust Avay";
                LineNo += 10000;
                AvaylableBudgetLines.Init;
                AvaylableBudgetLines.Validate("Avay Code", AvaylableBudget."Avay Code");
                AvaylableBudgetLines.Validate("Line No.", LineNo);
                AvaylableBudgetLines.Validate("Requisition Code", PurchaseLines."Requisition Code");
                AvaylableBudgetLines.Validate("Requisition Line", PurchaseLines."Requisition Line");
                AvaylableBudgetLines.Validate("Line Type", PurchaseLines.Type.AsInteger());
                AvaylableBudgetLines.Validate("No.", PurchaseLines."No.");
                AvaylableBudgetLines.Validate(Description, PurchaseLines.Description);
                AvaylableBudgetLines.Validate("Location Code", PurchaseLines."Location Code");
                AvaylableBudgetLines.Validate("Consultation Code", PurchaseLines."Consultation Code");
                AvaylableBudgetLines.Validate("Currency Code", PurchaseLines."Currency Code");
                AvaylableBudgetLines."Quote No." := PurchaseLines."Document No.";
                AvaylableBudgetLines."Quote Line No." := PurchaseLines."Line No.";
                AvaylableBudgetLines.Validate(Quantity, 1);
                AvaylableBudgetLines.Validate("VAT %", PurchaseLines."VAT %");
                AvaylableBudgetLines.Validate("ND %", PurchaseLines."PTSS ND %");
                UpdateContractAmounts(PurchaseLines, AvaylableBudgetLines);
                AvaylableBudgetLines.Validate("Avay Date", AvaylableBudget."Avay Date");
                AvaylableBudgetLines.Validate("Consultation Code", PurchaseLines."Consultation Code");
                AvaylableBudgetLines.validate("Dimension Set ID", PurchaseLines."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(AvaylableBudgetLines."Dimension Set ID", AvaylableBudgetLines."Shortcut Dimension 1 Code", AvaylableBudgetLines."Shortcut Dimension 2 Code");
                AvaylableBudgetLines.Insert(true);
                PurchaseLines."Amount Avaylabled" += PurchaseLines."Amount to Adjust Avay";
                PurchaseLines."Amount to Adjust Avay" := 0;
                PurchaseLines."Amount to Avay" := 0;
                PurchaseLines.Modify;
            until PurchaseLines.Next() = 0;
        SendToApproval(AvaylableBudget);
    end;

    procedure CreateAdjustAvay(var TempPurchaseLines: Record "Purchase Line" temporary)
    var
        BudgetConfig: Record "Budget Configuration";
        PurchaseLines: Record "Purchase Line";
        PurchaseHeader: Record "Purchase Header";
        AvaylableBudget: Record "Avaylable Budget";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        Consultation: Record Consultation;
        SourceCodeSetup: Record "Source Code Setup";
        LineNo: Integer;
        IncreaseAvay: Boolean;
        DecreaseAvay: Boolean;
    begin
        Clear(LineNo);
        Clear(IncreaseAvay);
        Clear(DecreaseAvay);

        Consultation.GET(TempPurchaseLines."Consultation Code");
        BudgetConfig.GET;

        CASE BudgetConfig."Budget Appropriation Method" OF
            "Budget Appropriation Method"::"Amount Without VAT":
                begin
                    IncreaseAvay := (TempPurchaseLines.Amount > 0) AND (TempPurchaseLines.Amount > BudgetConfig."Precision Round Difference");
                    DecreaseAvay := (TempPurchaseLines.Amount < 0) AND (TempPurchaseLines.Amount < BudgetConfig."Precision Round Difference");
                end;
            "Budget Appropriation Method"::"Amount With VAT":
                begin
                    IncreaseAvay := (TempPurchaseLines."Amount Including VAT" > 0) AND (TempPurchaseLines."Amount Including VAT" > BudgetConfig."Precision Round Difference");
                    DecreaseAvay := (TempPurchaseLines."Amount Including VAT" < 0) AND (TempPurchaseLines."Amount Including VAT" < BudgetConfig."Precision Round Difference");
                end;
            "Budget Appropriation Method"::"Cost Amount":
                begin
                    IncreaseAvay := (TempPurchaseLines."Cost Amount" > 0) AND (TempPurchaseLines."Cost Amount" > BudgetConfig."Precision Round Difference");
                    DecreaseAvay := (TempPurchaseLines."Cost Amount" < 0) AND (TempPurchaseLines."Cost Amount" < BudgetConfig."Precision Round Difference");
                end;
        end;
        if not IncreaseAvay and not DecreaseAvay then
            exit;

        PurchaseHeader := TempPurchaseLines.GetPurchHeader();

        Clear(AvaylableBudget);
        AvaylableBudget.Init();
        AvaylableBudget.Validate("Consultation Code", Consultation."Consultation Code");
        case true of
            IncreaseAvay:
                AvaylableBudget.Validate(Type, "Avaylable Budget Type"::Increase);
            DecreaseAvay:
                AvaylableBudget.Validate(Type, "Avaylable Budget Type"::Decrease);
        End;
        AvaylableBudget.Validate("Section Code", Consultation."Section Code");
        AvaylableBudget.Validate("Department Code", Consultation."Department Code");
        case BudgetConfig."Adjustment Avay. Budget Date" of
            "Budget Config Date"::"Document Date":
                AvaylableBudget.Validate("Avay Date", PurchaseHeader."Posting Date");
            "Budget Config Date"::"Work Date":
                AvaylableBudget.Validate("Avay Date", WorkDate());
        end;
        AvaylableBudget.Validate("Created By Quote", false);
        AvaylableBudget.Validate("Vendor No.", PurchaseHeader."Buy-from Vendor No.");
        AvaylableBudget.Insert(true);

        LineNo += 10000;
        AvaylableBudgetLines.Init;
        AvaylableBudgetLines.Validate("Avay Code", AvaylableBudget."Avay Code");
        AvaylableBudgetLines.Validate("Line No.", LineNo);
        AvaylableBudgetLines.Validate("Requisition Code", TempPurchaseLines."Requisition Code");
        AvaylableBudgetLines.Validate("Requisition Line", TempPurchaseLines."Requisition Line");
        AvaylableBudgetLines.Validate("Line Type", TempPurchaseLines.Type.AsInteger());
        AvaylableBudgetLines.Validate("No.", TempPurchaseLines."No.");
        AvaylableBudgetLines.Validate(Description, TempPurchaseLines.Description);
        AvaylableBudgetLines.Validate("Location Code", TempPurchaseLines."Location Code");
        AvaylableBudgetLines.Validate("Consultation Code", TempPurchaseLines."Consultation Code");
        AvaylableBudgetLines.Validate("Currency Code", TempPurchaseLines."Currency Code");
        AvaylableBudgetLines."Quote No." := TempPurchaseLines."Document No.";
        AvaylableBudgetLines."Quote Line No." := TempPurchaseLines."Line No.";
        AvaylableBudgetLines.Validate(Quantity, 1);
        AvaylableBudgetLines.Validate("VAT %", TempPurchaseLines."VAT %");
        AvaylableBudgetLines.Validate("ND %", TempPurchaseLines."PTSS ND %");
        If DecreaseAvay then
            AvaylableBudgetLines.Validate("Unit Cost", TempPurchaseLines."Direct Unit Cost" * -1)
        else
            AvaylableBudgetLines.Validate("Unit Cost", TempPurchaseLines."Direct Unit Cost");
        AvaylableBudgetLines.Validate("Amount", TempPurchaseLines.Amount);
        AvaylableBudgetLines.Validate("Amount Including Vat", TempPurchaseLines."Amount Including VAT");
        AvaylableBudgetLines.Validate("Cost Amount", TempPurchaseLines."Cost Amount");
        AvaylableBudgetLines.Validate("Avay Date", AvaylableBudget."Avay Date");
        AvaylableBudgetLines.Validate("Consultation Code", TempPurchaseLines."Consultation Code");
        AvaylableBudgetLines.validate("Dimension Set ID", TempPurchaseLines."Dimension Set ID");
        DimMgt.UpdateGlobalDimFromDimSetID(AvaylableBudgetLines."Dimension Set ID", AvaylableBudgetLines."Shortcut Dimension 1 Code", AvaylableBudgetLines."Shortcut Dimension 2 Code");
        AvaylableBudgetLines.Insert(true);

        SendToApproval(AvaylableBudget);
    end;

    procedure CreateInvoiceAdjustBudget(PurchaseHeader: Record "Purchase Header")
    var
        BudgetConfig: Record "Budget Configuration";
        PurchaseLines: Record "Purchase Line";
        TempPurchaseLines: Record "Purchase Line" temporary;
        PostedAvaylableBudget: Record "Posted Avaylable Budget";
        PostedAvaylableBudgetLines: Record "Posted Avaylable Budget Line";
        AvaylableBudget: Record "Avaylable Budget";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        Consultation: Record Consultation;
        SourceCodeSetup: Record "Source Code Setup";
        LineNo: Integer;
    begin
        BudgetConfig.Get();
        Clear(LineNo);

        PurchaseLines.RESET;
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

            PostedAvaylableBudget.Reset();
            PostedAvaylableBudget.SETRANGE("Consultation Code", Consultation."Consultation code");
            If PostedAvaylableBudget.FindSet() then
                repeat
                    PostedAvaylableBudgetLines.RESET;
                    PostedAvaylableBudgetLines.SETRANGE("Avay Code", PostedAvaylableBudget."Avay Code");
                    if PostedAvaylableBudgetLines.FINDSET then
                        REPEAT
                            TempPurchaseLines.RESET;
                            TempPurchaseLines.SETRANGE("Quote No.", PostedAvaylableBudgetLines."Quote No.");
                            TempPurchaseLines.SETRANGE("Quote Line No.", PostedAvaylableBudgetLines."Quote Line No.");
                            if TempPurchaseLines.FINDSET then
                                REPEAT
                                    TempPurchaseLines.Amount -= PostedAvaylableBudgetLines.Amount;
                                    TempPurchaseLines."Amount Including VAT" -= PostedAvaylableBudgetLines."Amount Including VAT";
                                    TempPurchaseLines."Cost Amount" -= PostedAvaylableBudgetLines."Cost Amount";
                                    TempPurchaseLines.Modify();
                                UNTIL TempPurchaseLines.NEXT = 0;
                        UNTIL PostedAvaylableBudgetLines.NEXT = 0;
                until PostedAvaylableBudget.Next() = 0;
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
            Clear(AvaylableBudget);
            AvaylableBudget.SetHideDialog();
            AvaylableBudget.Init();
            AvaylableBudget.Insert(true);
            AvaylableBudget.Validate("Consultation Code", Consultation."Consultation Code");
            AvaylableBudget.Validate(Type, "Avaylable Budget Type"::Decrease);
            AvaylableBudget.Validate("Section Code", Consultation."Section Code");
            AvaylableBudget.Validate("Department Code", Consultation."Department Code");
            AvaylableBudget.Validate("Avay Date", PurchaseHeader."Posting Date");
            AvaylableBudget.validate("Created By Quote", false);
            AvaylableBudget.validate("Vendor No.", PurchaseHeader."Buy-from Vendor No.");
            AvaylableBudget.Modify(true);
            REPEAT
                LineNo += 10000;
                AvaylableBudgetLines.Init;
                AvaylableBudgetLines.Validate("Avay Code", AvaylableBudget."Avay Code");
                AvaylableBudgetLines.Validate("Line No.", LineNo);
                AvaylableBudgetLines.Validate("Requisition Code", TempPurchaseLines."Requisition Code");
                AvaylableBudgetLines.Validate("Requisition Line", TempPurchaseLines."Requisition Line");
                AvaylableBudgetLines.Validate("Line Type", TempPurchaseLines.Type.AsInteger());
                AvaylableBudgetLines.Validate("Line No.", LineNo);
                AvaylableBudgetLines.Validate("No.", TempPurchaseLines."No.");
                AvaylableBudgetLines.Validate(Description, TempPurchaseLines.Description);
                AvaylableBudgetLines.Validate("Location Code", TempPurchaseLines."Location Code");
                AvaylableBudgetLines.Validate("Consultation Code", TempPurchaseLines."Consultation Code");
                AvaylableBudgetLines.Validate("Currency Code", TempPurchaseLines."Currency Code");
                AvaylableBudgetLines."Quote No." := TempPurchaseLines."Quote No.";
                AvaylableBudgetLines."Quote Line No." := TempPurchaseLines."Quote Line No.";
                AvaylableBudgetLines.Validate(Quantity, 1);
                AvaylableBudgetLines.Validate("VAT %", TempPurchaseLines."VAT %");
                AvaylableBudgetLines.Validate("ND %", TempPurchaseLines."PTSS ND %");
                AvaylableBudgetLines.Validate("Unit Cost", TempPurchaseLines.Amount);
                AvaylableBudgetLines.Validate("Amount", TempPurchaseLines.Amount);
                AvaylableBudgetLines.Validate("Amount Including Vat", TempPurchaseLines."Amount Including VAT");
                AvaylableBudgetLines.Validate("Cost Amount", TempPurchaseLines."Cost Amount");
                AvaylableBudgetLines.Validate("Avay Date", AvaylableBudget."Avay Date");
                AvaylableBudgetLines.Validate("Consultation Code", TempPurchaseLines."Consultation Code");
                AvaylableBudgetLines.validate("Dimension Set ID", TempPurchaseLines."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(AvaylableBudgetLines."Dimension Set ID", AvaylableBudgetLines."Shortcut Dimension 1 Code", AvaylableBudgetLines."Shortcut Dimension 2 Code");
                AvaylableBudgetLines.Insert(true);
            UNTIL TempPurchaseLines.NEXT = 0;
        end;
        SetHideDialog();
        SendToApproval(AvaylableBudget);
    end;

    procedure GetTotalPostedAvayBudget(var PostedAvaylableBudgetLine: Record "Posted Avaylable Budget Line"; var TotalPostedAvaylableHeader: Record "Posted Avaylable Budget")
    begin
        if not PostedAvaylableLineExist then
            PostedAvaylableLineExist := not PostedAvaylableBudgetLine.ISEMPTY;
        if not PostedAvaylableLineExist OR
           (TotalPostedAvaylableHeader."Avay Code" <> PostedAvaylableBudgetLine."Avay Code") then begin
            Clear(TotalPostedAvaylableHeader);
            if PostedAvaylableBudgetLine."Avay Code" <> '' then
                if TotalPostedAvaylableHeader.GET(PostedAvaylableBudgetLine."Avay Code") then;
        end;
    end;

    procedure PostedAvayBudgetCheckIfDocumentChanged(var PostedAvaylableBudgetLine: Record "Posted Avaylable Budget Line"; var xPostedAvaylableBudgetLine: Record "Posted Avaylable Budget Line")
    begin
        if (PostedAvaylableBudgetLine."Requisition Code" <> xPostedAvaylableBudgetLine."Requisition Code") or
           (PostedAvaylableBudgetLine.Amount <> xPostedAvaylableBudgetLine.Amount) or
           (PostedAvaylableBudgetLine."Amount Including VAT" <> xPostedAvaylableBudgetLine."Amount Including VAT") or
           (PostedAvaylableBudgetLine."Cost Amount" <> xPostedAvaylableBudgetLine."Cost Amount")
        then
            TotalsUpToDate := false;
    end;

    procedure PostedCalculateAvayBudgetSubPageTotals(var TotalPostedAvaylableHeader: Record "Posted Avaylable Budget"; var TotalPostedAvaylableLine: Record "Posted Avaylable Budget Line"; var VATAmount: Decimal)
    var
        PostedAvaylableLine2: Record "Posted Avaylable Budget Line";
        TotalPostedAvaylableLine2: Record "Posted Avaylable Budget Line";
    begin

        if TotalsUpToDate then
            exit;
        TotalsUpToDate := true;

        TotalPostedAvaylableLine2.Copy(TotalPostedAvaylableLine);
        TotalPostedAvaylableLine2.Reset();
        TotalPostedAvaylableLine2.SetRange("Avay Code", TotalPostedAvaylableHeader."Avay Code");

        TotalPostedAvaylableLine2.CalcSums(Amount, "Amount Including VAT", "Cost Amount");
        VATAmount := TotalPostedAvaylableLine2."Amount Including VAT" - TotalPostedAvaylableLine2.Amount;

        TotalPostedAvaylableLine := TotalPostedAvaylableLine2;
    end;

    procedure GetTotalAvayBudget(var AvaylableBudgetLine: Record "Avaylable Budget Line"; var TotalAvaylableHeader: Record "Avaylable Budget")
    begin
        if not AvaylableLineExist then
            AvaylableLineExist := not AvaylableBudgetLine.ISEMPTY;
        if not AvaylableLineExist OR
           (TotalAvaylableHeader."Avay Code" <> AvaylableBudgetLine."Avay Code") then begin
            Clear(TotalAvaylableHeader);
            if AvaylableBudgetLine."Avay Code" <> '' then
                if TotalAvaylableHeader.GET(AvaylableBudgetLine."Avay Code") then;
        end;
    end;

    procedure AvayBudgetCheckIfDocumentChanged(var AvaylableBudgetLine: Record "Avaylable Budget Line"; var xAvaylableBudgetLine: Record "Avaylable Budget Line")
    begin
        if (AvaylableBudgetLine."Requisition Code" <> xAvaylableBudgetLine."Requisition Code") or
           (AvaylableBudgetLine.Amount <> xAvaylableBudgetLine.Amount) or
           (AvaylableBudgetLine."Amount Including VAT" <> xAvaylableBudgetLine."Amount Including VAT") or
           (AvaylableBudgetLine."Cost Amount" <> xAvaylableBudgetLine."Cost Amount")
        then
            TotalsUpToDate := false;
    end;

    procedure CalculateAvayBudgetSubPageTotals(var TotalAvaylableHeader: Record "Avaylable Budget"; var TotalAvaylableLine: Record "Avaylable Budget Line"; var VATAmount: Decimal)
    var
        AvaylableLine2: Record "Avaylable Budget Line";
        TotalAvaylableLine2: Record "Avaylable Budget Line";
    begin

        if TotalsUpToDate then
            exit;
        TotalsUpToDate := true;

        TotalAvaylableLine2.Copy(TotalAvaylableLine);
        TotalAvaylableLine2.Reset();
        TotalAvaylableLine2.SetRange("Avay Code", TotalAvaylableHeader."Avay Code");

        TotalAvaylableLine2.CalcSums(Amount, "Amount Including VAT", "Cost Amount");
        VATAmount := TotalAvaylableLine2."Amount Including VAT" - TotalAvaylableLine2.Amount;

        TotalAvaylableLine := TotalAvaylableLine2;
    end;

    procedure ReverseAvaylableBudget(PostedAvaylableBudget: Record "Posted Avaylable Budget")
    var
        BudgetConfig: Record "Budget Configuration";
        AvaylableBudget: Record "Avaylable Budget";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        PostedAvaylableBudgetLines: Record "Posted Avaylable Budget Line";
        Consultation: Record Consultation;
        QuoteLines: Record "Purchase Line";
        LineNo: Integer;
    begin
        ValidatePermissions("Avay Permissions"::Reverse);
        Consultation.Get(PostedAvaylableBudget."Consultation Code");
        PostedAvaylableBudget.TestField(Reversed, false);
        If Consultation.IsContract then begin
            ValidateContractPAQExist(PostedAvaylableBudget);
            CheckContractBlocked(PostedAvaylableBudget);
        end else
            ValidatePAQExist(PostedAvaylableBudget);

        BudgetConfig.Get();
        BudgetConfig.TestField("Avaylable Budget Nos.");

        AvaylableBudget.Init();
        AvaylableBudget.TransferFields(PostedAvaylableBudget);
        case BudgetConfig."Reverse Avaylable Budget Date" of
            "Budget Config Date"::"Document Date":
                AvaylableBudget."Avay Date" := PostedAvaylableBudget."Avay Date";
            "Budget Config Date"::"Work Date":
                AvaylableBudget."Avay Date" := WorkDate();
        end;
        AvaylableBudget.Insert(true);
        case PostedAvaylableBudget.Type of
            "Avaylable Budget Type"::Decrease:
                AvaylableBudget.Validate(Type, "Avaylable Budget Type"::Increase);
            "Avaylable Budget Type"::Original, "Avaylable Budget Type"::Increase:
                AvaylableBudget.Validate(Type, "Avaylable Budget Type"::Decrease);
        End;
        AvaylableBudget.Status := "Avaylable Budget Status"::Released;
        AvaylableBudget.Reversed := true;
        AvaylableBudget.Modify();

        PostedAvaylableBudgetLines.Reset;
        PostedAvaylableBudgetLines.SetRange("Avay Code", PostedAvaylableBudget."Avay Code");
        if PostedAvaylableBudgetLines.FindSet then
            repeat
                LineNo += 10000;
                AvaylableBudgetLines.Init();
                AvaylableBudgetLines.TransferFields(PostedAvaylableBudgetLines);
                AvaylableBudgetLines."Line No." := LineNo;
                AvaylableBudgetLines."Avay Code" := AvaylableBudget."Avay Code";
                AvaylableBudgetLines."Unit Cost" := PostedAvaylableBudgetLines."Unit Cost" * -1;
                AvaylableBudgetLines."Avay Date" := AvaylableBudget."Avay Date";
                AvaylableBudgetLines.Amount := PostedAvaylableBudgetLines.Amount * -1;
                AvaylableBudgetLines."Amount Including VAT" := PostedAvaylableBudgetLines."Amount Including VAT" * -1;
                AvaylableBudgetLines."Cost Amount" := PostedAvaylableBudgetLines."Cost Amount" * -1;
                AvaylableBudgetLines.Validate("Dimension Set ID", PostedAvaylableBudgetLines."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(PostedAvaylableBudgetLines."Dimension Set ID", AvaylableBudgetLines."Shortcut Dimension 1 Code", AvaylableBudgetLines."Shortcut Dimension 2 Code");
                AvaylableBudgetLines.Insert();
                If Consultation.IsContract then begin
                    if QuoteLines.Get(QuoteLines."Document Type"::Quote, AvaylableBudgetLines."Quote No.", AvaylableBudgetLines."Quote Line No.") then begin
                        QuoteLines."Amount Avaylabled" -= (AvaylableBudgetLines."Cost Amount" * -1);
                        QuoteLines.Modify(true);
                    end;
                end;
            until PostedAvaylableBudgetLines.Next = 0;

        PostAvaylable(AvaylableBudget);
        PostedAvaylableBudget.Reversed := true;
        PostedAvaylableBudget.Modify(true);
    end;

    procedure SendToApproval(pAvaylableBudget: Record "Avaylable Budget"): Boolean
    var
        BudgetConfig: Record "Budget Configuration";
        ApprovalEntry: Record "Aproval Entry";
        AvaylableBudget: Record "Avaylable Budget";
        TotalAmount: Decimal;
        RecRef: RecordRef;
        DocIsReleased: Boolean;
        Text001: Label 'An approval request has been sent.';
        Text002: Label '%1 %2 has been approved.';
    begin
        BudgetConfig.Get();
        AvaylableBudget.Get(pAvaylableBudget."Avay Code");
        Clear(TotalAmount);
        TotalAmount := AvaylableBudget.GetAvayBudgetAmount();

        If AvaylableBudget.Type <> "Avaylable Budget Type"::Decrease then begin
            ApprovalsMgt.InsertApprovalRequest("Approval Entry Document Type"::"Avaylable Budget", AvaylableBudget.RecordId, AvaylableBudget."Avay Code",
                                                AvaylableBudget."Section Code", TotalAmount, AvaylableBudget."Avay Date", AvaylableBudget."Source Code");

            AvaylableBudget.Status := AvaylableBudget.Status::"Pending Approval";
            AvaylableBudget.Modify();

            RecRef.Get(AvaylableBudget.RecordId);
            ApprovalsMgt.FinishApprovalEntry(RecRef, DocIsReleased);
        end else
            DocIsReleased := true;

        If DocIsReleased then begin
            AvaylableBudget.Validate(Status, "Avaylable Budget Status"::Released);
            AvaylableBudget.Modify();
            Clear(MessageToShow);
            MessageToShow := StrSubstNo(Text002, AvaylableBudget.TableCaption, AvaylableBudget."Avay Code");
            PostAvaylable(AvaylableBudget);
        end else begin
            Clear(MessageToShow);
            MessageToShow := Text001;
        end;
        ShowMessage(MessageToShow);
    end;

    procedure ApproveAvaylableBudget(AvaylableBudget: Record "Avaylable Budget")
    var
        ApprovalEntry: Record "Aproval Entry";
        ApprovalMgt: Codeunit "Approval Management";
    begin
        if AvaylableBudget.Status = AvaylableBudget.Status::Released then
            exit;

        ApprovalEntry.Reset();
        ApprovalEntry.SetRange("Record ID to Approve", AvaylableBudget.RecordId);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        if ApprovalEntry.FindFirst() then
            If not ApprovalMgt.ApproveDocument(ApprovalEntry) then
                exit;

        AvaylableBudget.Validate(Status, "Avaylable Budget Status"::Released);
        AvaylableBudget.Modify(true);

        PostAvaylable(AvaylableBudget);
        ShowMessage(MessageToShow);
    end;

    procedure RejectAvaylableBudget(AvaylableBudget: Record "Avaylable Budget")
    var
        ApprovalEntry: Record "Aproval Entry";
        ApprovalMgt: Codeunit "Approval Management";
        Text001: Label 'Avaylable budget %1 rejected with success.';
    begin
        if AvaylableBudget.Status = AvaylableBudget.Status::Rejected then
            exit;

        ApprovalEntry.Reset();
        ApprovalEntry.SetRange("Record ID to Approve", AvaylableBudget.RecordId);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        if ApprovalEntry.FindFirst() then
            If not ApprovalMgt.RejectDocument(ApprovalEntry) then
                exit;

        AvaylableBudget.Validate(Status, "Avaylable Budget Status"::Rejected);
        AvaylableBudget.Modify(true);

        PostAvaylable(AvaylableBudget);
        ShowMessage(StrSubstNo(AvaylableBudget."Avay Code"));
    end;

    procedure CreateAvaylableBudget(Consultation: Record Consultation)
    var
        BudgetConfig: Record "Budget Configuration";
        AvaylableBudget: Record "Avaylable Budget";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        QuoteHeader: Record "Purchase Header";
        QuoteLines: Record "Purchase Line";
        Currency: Record Currency;
        CurrExchRate: Record "Currency Exchange Rate";
        RequisitionLines: Record "Requisition Lines";
        CduBudget: Codeunit Budget;
        LineNo: Integer;
        Text001: Label 'The avaylable %1 was created with success.';
    begin
        Clear(LineNo);
        Clear(AvaylableBudget);
        AvaylableBudget.Init();
        AvaylableBudget.Validate("Consultation Code", Consultation."Consultation Code");
        AvaylableBudget.Validate(Type, "Avaylable Budget Type"::Original);
        AvaylableBudget.Validate("Section Code", Consultation."Section Code");
        AvaylableBudget.Validate("Department Code", Consultation."Department Code");
        AvaylableBudget.validate("Created By Quote", true);
        AvaylableBudget.Insert(true);

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        if QuoteLines.FindSet then begin
            AvaylableBudget."Vendor No." := QuoteLines."Buy-from Vendor No.";
            AvaylableBudget.Modify;
            repeat
                LineNo += 10000;
                AvaylableBudgetLines.Init;
                AvaylableBudgetLines.Validate("Avay Code", AvaylableBudget."Avay Code");
                AvaylableBudgetLines.Validate("Line No.", LineNo);
                AvaylableBudgetLines.Validate("Requisition Code", QuoteLines."Requisition Code");
                AvaylableBudgetLines.Validate("Requisition Line", QuoteLines."Requisition Line");
                AvaylableBudgetLines.Validate("Line Type", QuoteLines.Type.AsInteger());
                AvaylableBudgetLines.Validate("No.", QuoteLines."No.");
                AvaylableBudgetLines.Validate(Description, QuoteLines.Description);
                AvaylableBudgetLines.Validate("Location Code", QuoteLines."Location Code");
                AvaylableBudgetLines.Validate("Consultation Code", QuoteLines."Consultation Code");
                AvaylableBudgetLines.Validate("Currency Code", QuoteLines."Currency Code");
                AvaylableBudgetLines."Quote No." := QuoteLines."Document No.";
                AvaylableBudgetLines."Quote Line No." := QuoteLines."Line No.";
                AvaylableBudgetLines.Validate(Quantity, QuoteLines.Quantity);
                AvaylableBudgetLines.Validate("VAT %", QuoteLines."VAT %");
                AvaylableBudgetLines.Validate("ND %", QuoteLines."PTSS ND %");
                if QuoteLines."Currency Code" <> '' then begin
                    Clear(QuoteHeader);
                    QuoteHeader.Get(QuoteLines."Document Type", QuoteLines."Document No.");
                    Currency.Get(QuoteHeader."Currency Code");
                    AvaylableBudgetLines."Currency Factor" := QuoteHeader."Currency Factor";
                    AvaylableBudgetLines.Validate("Unit Cost", Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", QuoteLines."Direct Unit Cost", QuoteHeader."Currency Factor"),
                                                    Currency."Amount Rounding Precision"));
                    AvaylableBudgetLines.Validate("Amount", Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", QuoteLines.Amount, QuoteHeader."Currency Factor"),
                                                    Currency."Amount Rounding Precision"));
                    AvaylableBudgetLines.Validate("Amount Including Vat", Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", QuoteLines."Amount Including VAT", QuoteHeader."Currency Factor"),
                                                    Currency."Amount Rounding Precision"));
                    AvaylableBudgetLines.Validate("Cost Amount", Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", QuoteLines."Cost Amount", QuoteHeader."Currency Factor"),
                                                    Currency."Amount Rounding Precision"));
                end else begin
                    AvaylableBudgetLines.Validate("Unit Cost", QuoteLines."Direct Unit Cost");
                    AvaylableBudgetLines.Validate("Amount", QuoteLines.Amount);
                    AvaylableBudgetLines.Validate("Amount Including Vat", QuoteLines."Amount Including VAT");
                    AvaylableBudgetLines.Validate("Cost Amount", QuoteLines."Cost Amount");
                end;
                AvaylableBudgetLines.Validate("Avay Date", AvaylableBudget."Avay Date");
                AvaylableBudgetLines.Validate("Consultation Code", QuoteLines."Consultation Code");
                AvaylableBudgetLines.Validate("Dimension Set ID", QuoteLines."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(AvaylableBudgetLines."Dimension Set ID", AvaylableBudgetLines."Shortcut Dimension 1 Code", AvaylableBudgetLines."Shortcut Dimension 2 Code");
                if RequisitionLines.Get(AvaylableBudgetLines."Requisition Code", AvaylableBudgetLines."Requisition Line") then
                    AvaylableBudgetLines."Requisition Observations" := RequisitionLines.Observations;
                AvaylableBudgetLines.Insert(true);
            until QuoteLines.Next = 0;
        end;
        CduBudget.CalcDocumentsDotation("Budget Dotation Document Type"::"Avaylable Budget", AvaylableBudget."Avay Code");
        Clear(MessageToShow);
        MessageToShow := StrSubstNo(Text001, AvaylableBudget."Avay Code");
        SendToApproval(AvaylableBudget);
    end;

    procedure CreateContractAvaylableBudget(Consultation: Record Consultation)
    var
        BudgetConfig: Record "Budget Configuration";
        AvaylableBudget: Record "Avaylable Budget";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        QuoteHeader: Record "Purchase Header";
        QuoteLines: Record "Purchase Line";
        Currency: Record Currency;
        CurrExchRate: Record "Currency Exchange Rate";
        RequisitionLines: Record "Requisition Lines";
        CduBudget: Codeunit Budget;
        LineNo: Integer;
        Text001: Label 'The avaylable %1 was created with success.';
    begin
        Clear(LineNo);
        Clear(AvaylableBudget);
        AvaylableBudget.Init();
        AvaylableBudget.Validate("Consultation Code", Consultation."Consultation Code");
        AvaylableBudget.Validate(Type, "Avaylable Budget Type"::Original);
        AvaylableBudget.Validate("Section Code", Consultation."Section Code");
        AvaylableBudget.Validate("Department Code", Consultation."Department Code");
        AvaylableBudget.validate("Created By Quote", true);
        AvaylableBudget.Insert(true);

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter("Amount to Avay", '>0');
        if QuoteLines.FindSet then begin
            AvaylableBudget."Vendor No." := QuoteLines."Buy-from Vendor No.";
            AvaylableBudget.Modify;
            repeat
                LineNo += 10000;
                AvaylableBudgetLines.Init;
                AvaylableBudgetLines.Validate("Avay Code", AvaylableBudget."Avay Code");
                AvaylableBudgetLines.Validate("Line No.", LineNo);
                AvaylableBudgetLines.Validate("Requisition Code", QuoteLines."Requisition Code");
                AvaylableBudgetLines.Validate("Requisition Line", QuoteLines."Requisition Line");
                AvaylableBudgetLines.Validate("Line Type", QuoteLines.Type.AsInteger());
                AvaylableBudgetLines.Validate("No.", QuoteLines."No.");
                AvaylableBudgetLines.Validate(Description, QuoteLines.Description);
                AvaylableBudgetLines.Validate("Location Code", QuoteLines."Location Code");
                AvaylableBudgetLines.Validate("Consultation Code", QuoteLines."Consultation Code");
                AvaylableBudgetLines.Validate("Currency Code", QuoteLines."Currency Code");
                AvaylableBudgetLines."Quote No." := QuoteLines."Document No.";
                AvaylableBudgetLines."Quote Line No." := QuoteLines."Line No.";
                AvaylableBudgetLines.Validate(Quantity, 1);
                AvaylableBudgetLines.Validate("VAT %", QuoteLines."VAT %");
                AvaylableBudgetLines.Validate("ND %", QuoteLines."PTSS ND %");
                UpdateContractAmounts(QuoteLines, AvaylableBudgetLines);
                AvaylableBudgetLines.Validate("Avay Date", AvaylableBudget."Avay Date");
                AvaylableBudgetLines.Validate("Consultation Code", QuoteLines."Consultation Code");
                AvaylableBudgetLines.validate("Dimension Set ID", QuoteLines."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(AvaylableBudgetLines."Dimension Set ID", AvaylableBudgetLines."Shortcut Dimension 1 Code", AvaylableBudgetLines."Shortcut Dimension 2 Code");
                if RequisitionLines.Get(AvaylableBudgetLines."Requisition Code", AvaylableBudgetLines."Requisition Line") then
                    AvaylableBudgetLines."Requisition Observations" := RequisitionLines.Observations;
                AvaylableBudgetLines.Insert(true);
                QuoteLines."Amount Avaylabled" += QuoteLines."Amount to Avay";
                QuoteLines."Amount to Avay" := 0;
                QuoteLines.Modify;
            until QuoteLines.Next = 0;
        end;
        CduBudget.CalcDocumentsDotation("Budget Dotation Document Type"::"Avaylable Budget", AvaylableBudget."Avay Code");
        ShowMessage(StrSubstNo(Text001, AvaylableBudget."Avay Code"));
        SendToApproval(AvaylableBudget);
    end;

    procedure CheckAvayCreationPossible(Consultation: Record Consultation): Boolean
    var
        Text001: Label 'You cant perform this operation. The consultation %1 has %2 pending avaylables.';
    begin
        Consultation.CalcFields("Pending Avaylable Budgets");
        if Consultation."Pending Avaylable Budgets" <> 0 then
            ERROR(Text001, Consultation."Consultation code", Consultation."Pending Avaylable Budgets");
        ValidateSelectionCode(Consultation);
        ValidateQuoteEqualDimensions(Consultation);
        ValidateAvailableDotation(Consultation);
        ValidateQuoteAvayBudgets(Consultation);
        exit(true);
    end;

    procedure CheckContractAvayCreationPossible(Consultation: Record Consultation): Boolean
    var
        Text001: Label 'You cant perform this operation. The consultation %1 has %2 pending avaylables.';
        Text002: Label 'You cant create contract avaylable budgets because the contract %1 is in %2.';
        Contract: Record Contract;
    begin
        Contract.Get(Consultation."Contract No.");
        if Contract.Status <> Contract.Status::" " then
            Error(Text002, Contract."No.", Contract.Status);

        ValidateContractSelection(Consultation);
        ValidateContractQuoteEqualDimensions(Consultation);
        ValidateContractAvailableDotation(Consultation);
        ValidateContractQuoteAvayBudgets(Consultation);
        exit(true);
    end;

    procedure LookupAvaylableBudget(AvaylableBudget: Record "Avaylable Budget")
    begin
        Page.RunModal(Page::"Avaylable Budget", AvaylableBudget, AvaylableBudget."Avay Code");
    end;

    procedure OpenAvaylableApprovals(AvaylableBudget: Record "Avaylable Budget")
    begin
        ApprovalsMgt.OpenApprovals(AvaylableBudget.RecordId, Database::"Avaylable Budget", "Approval Entry Document Type"::"Avaylable Budget", AvaylableBudget."Avay Code");
    end;

    procedure CancelAvayApproval(AvaylableBudget: Record "Avaylable Budget")
    var
        Text001: Label 'The approval request was canceled.';
    begin
        if ApprovalsMgt.CanCancelApprovalForRecord(AvaylableBudget.RecordId) then begin
            ApprovalsMgt.FindAndDeleteApprovalForRecord(AvaylableBudget.RecordId);

            AvaylableBudget.Status := "Avaylable Budget Status"::Open;
            AvaylableBudget.Modify();
            ShowMessage(Text001);
        end;
    end;

    procedure ValidatePermissions(PermissionType: Enum "Avay Permissions")
    var
        BudgetPermissions: Record "Budget Permissions";
        AvaylableBudget: Record "Avaylable Budget";
        Text001: Label 'You dont have permission to %1 %2';
    begin
        if HideDialog then
            exit;
        BudgetPermissions.GET(USERID, BudgetPermissions.Type::User);
        case PermissionType of
            PermissionType::Create:
                If not BudgetPermissions."Create Avaylable Budget" then
                    Error(Text001, PermissionType, AvaylableBudget.TableCaption);
            PermissionType::Modify:
                If not BudgetPermissions."Modify Avaylable Budget" then
                    Error(Text001, PermissionType, AvaylableBudget.TableCaption);
            PermissionType::Delete:
                If not BudgetPermissions."Delete Avaylable Budget" then
                    Error(Text001, PermissionType, AvaylableBudget.TableCaption);
            PermissionType::View:
                If not BudgetPermissions."View Avaylable Budget" then
                    Error(Text001, PermissionType, AvaylableBudget.TableCaption);
            PermissionType::Approve:
                If not BudgetPermissions."Approve Avaylable Budget" then
                    Error(Text001, PermissionType, AvaylableBudget.TableCaption);
            PermissionType::Reverse:
                If not BudgetPermissions."Reverse Avaylable Budget" then
                    Error(Text001, PermissionType, AvaylableBudget.TableCaption);
        end;
    end;

    local procedure PostAvaylable(AvaylableBudget: Record "Avaylable Budget")
    var
        PostedAvaylableBudget: Record "Posted Avaylable Budget";
        PostedAvaylableBudgetLines: Record "Posted Avaylable Budget Line";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        Consultation: Record Consultation;
        QuoteLines: Record "Purchase Line";
        CduBudget: Codeunit Budget;
        ApprovalDocType: Enum "Approval Entry Document Type";
        LineNo: Integer;
        Text001: Label 'There is no dotation avaylable for requisition %1 line %2.';
    begin
        if HideDialog then
            AvaylableBudget.SetHideDialog();
        if IsDateNotAllowed(AvaylableBudget."Avay Date") then
            AvaylableBudget.FieldError("Avay Date", Text003);
        if AvaylableBudget.Type <> AvaylableBudget.Type::Decrease then
            ValidatePermissions("Avay Permissions"::Approve);

        CduBudget.CalcDocumentsDotation("Budget Dotation Document Type"::"Avaylable Budget", AvaylableBudget."Avay Code");

        Clear(PostedAvaylableBudget);
        PostedAvaylableBudget.Init;
        PostedAvaylableBudget.TransferFields(AvaylableBudget);
        PostedAvaylableBudget."Avay Code Original" := AvaylableBudget."Avay Code";
        if AvaylableBudget."Posting No." = '' then
            PostedAvaylableBudget."Avay Code" := NoSeriesMgt.GetNextNo(AvaylableBudget."Posting No. Series", 0D, true)
        else
            PostedAvaylableBudget."Avay Code" := AvaylableBudget."Posting No.";
        PostedAvaylableBudget."Approved By" := UserId;
        PostedAvaylableBudget."Approved Date" := WorkDate;
        PostedAvaylableBudget.Insert(true);

        AvaylableBudgetLines.Reset;
        AvaylableBudgetLines.SetRange("Avay Code", AvaylableBudget."Avay Code");
        if AvaylableBudgetLines.FindSet() then begin
            repeat
                if (AvaylableBudget.Type <> AvaylableBudget.Type::Decrease) And (AvaylableBudget.Status = "Avaylable Budget Status"::Released) then
                    If AvaylableBudgetLines."End Avaylable Dotation" < 0 then
                        Error(Text001, AvaylableBudgetLines."Requisition Code", AvaylableBudgetLines."Requisition Line");

                LineNo += 10000;
                PostedAvaylableBudgetLines.Init;
                PostedAvaylableBudgetLines.TransferFields(AvaylableBudgetLines);
                PostedAvaylableBudgetLines."Line No." := LineNo;
                PostedAvaylableBudgetLines."Avay Code" := PostedAvaylableBudget."Avay Code";
                PostedAvaylableBudgetLines.Status := PostedAvaylableBudget.Status;
                PostedAvaylableBudgetLines.Validate("Dimension Set ID", AvaylableBudgetLines."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(PostedAvaylableBudgetLines."Dimension Set ID", PostedAvaylableBudgetLines."Shortcut Dimension 1 Code", PostedAvaylableBudgetLines."Shortcut Dimension 2 Code");
                PostedAvaylableBudgetLines.Insert(true);
                if PostedAvaylableBudget.Status = PostedAvaylableBudget.Status::Rejected then begin
                    If Consultation.get(PostedAvaylableBudgetLines."Consultation Code") and Consultation.IsContract then begin
                        if QuoteLines.Get(QuoteLines."Document Type"::Quote, PostedAvaylableBudgetLines."Quote No.", PostedAvaylableBudgetLines."Quote Line No.") then begin
                            QuoteLines."Amount Avaylabled" -= (PostedAvaylableBudgetLines.GetAvayLineAmount());
                            QuoteLines.Modify(true);
                        end;
                    end;
                end;
            until AvaylableBudgetLines.Next = 0;

            Clear(ErrorMsg);
            if PostedAvaylableBudget.Status = PostedAvaylableBudget.Status::Released then begin
                if PostToGL(AvaylableBudget, PostedAvaylableBudget."Avay Code") then begin
                    ApprovalsMgt.CopyApprovalEntry(DATABASE::"Avaylable Budget", ApprovalDocType::"Avaylable Budget", AvaylableBudget."Avay Code", DATABASE::"Posted Avaylable Budget", PostedAvaylableBudget."Avay Code");
                    AvaylableBudget.Delete(true);
                    Clear(MessageToShow);
                    MessageToShow := StrSubstNo(Text002, PostedAvaylableBudget."Avay Code");
                end else begin
                    AvaylableBudget."Posting No." := PostedAvaylableBudget."Avay Code";
                    AvaylableBudget.Modify;
                    PostedAvaylableBudget.Delete(true);
                    Error(ErrorMsg);
                end;
            end else begin
                ApprovalsMgt.CopyApprovalEntry(DATABASE::"Avaylable Budget", ApprovalDocType::"Avaylable Budget", AvaylableBudget."Avay Code", DATABASE::"Posted Avaylable Budget", PostedAvaylableBudget."Avay Code");
                AvaylableBudget.Delete(true);
                Clear(MessageToShow);
                MessageToShow := StrSubstNo(Text002, PostedAvaylableBudget."Avay Code");
            end;
        end;
    end;

    local procedure PostToGL(AvaylableBudget: Record "Avaylable Budget"; PostedDoc: Code[20]): Boolean
    var
        BudgetConfig: Record "Budget Configuration";
        Class0Setup: Record "Class 0 Setup";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        GenJnlLine: Record "Gen. Journal Line";
        GenJnlBatch: Record "Gen. Journal Batch";
        Text001: Label 'Journal %1 Section %2 cant have default No. Series.';
        LineNo: Integer;
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
    begin
        BudgetConfig.Get;
        BudgetConfig.TestField("Original Avaylable Budget");
        BudgetConfig.TestField("Avaylable Budget Increase");
        BudgetConfig.TestField("Avaylable Budget Decrease");
        BudgetConfig.TestField("Avaylable Budget Diary");
        BudgetConfig.TestField("Avaylable Budget Batch");

        GenJnlLine.Reset;
        GenJnlLine.SetRange("Journal Template Name", BudgetConfig."Avaylable Budget Diary");
        GenJnlLine.SetRange("Journal Batch Name", BudgetConfig."Avaylable Budget Batch");
        GenJnlLine.DeleteAll(true);

        GenJnlBatch.Reset();
        GenJnlBatch.SetRange("Journal Template Name", BudgetConfig."Avaylable Budget Diary");
        GenJnlBatch.SetRange(Name, BudgetConfig."Avaylable Budget Batch");
        if GenJnlBatch.FindFirst then
            if (GenJnlBatch."No. Series" <> '') or (GenJnlBatch."Posting No. Series" <> '') then
                Error(StrSubstNo(Text001, GenJnlBatch."Journal Template Name", GenJnlBatch.Name));

        LineNo := 10000;

        AvaylableBudgetLines.Reset;
        AvaylableBudgetLines.SetRange("Avay Code", AvaylableBudget."Avay Code");
        AvaylableBudgetLines.SetFilter("No.", '<>%1', '');
        if AvaylableBudgetLines.FindSet then begin
            repeat
                Class0Setup.Reset;
                case AvaylableBudget.Type of
                    AvaylableBudget.Type::Original:
                        Class0Setup.SetRange("Regist type", BudgetConfig."Original Avaylable Budget");
                    AvaylableBudget.Type::Decrease:
                        Class0Setup.SetRange("Regist type", BudgetConfig."Avaylable Budget Decrease");
                    AvaylableBudget.Type::Increase:
                        Class0Setup.SetRange("Regist type", BudgetConfig."Avaylable Budget Increase");
                end;
                if Class0Setup.FindSet then begin
                    repeat
                        GenJnlLine.Init;
                        GenJnlLine."Line No." := LineNo;
                        GenJnlLine.Validate("Journal Template Name", BudgetConfig."Avaylable Budget Diary");
                        GenJnlLine.Validate("Journal Batch Name", BudgetConfig."Avaylable Budget Batch");
                        GenJnlLine.Validate("Posting Date", AvaylableBudget."Avay Date");
                        GenJnlLine.Validate("Account Type", GenJnlLine."Account Type"::"G/L Account");
                        GenJnlLine.Validate("Account No.", Class0Setup."Debt count");
                        GenJnlLine.Validate("Document Type", GenJnlLine."Document Type"::" ");
                        GenJnlLine.Validate("Document No.", PostedDoc);
                        GenJnlLine.Validate("Budget Appropriation Method", AvaylableBudget."Budget Appropriation Method");
                        GenJnlLine.Validate(Amount, Abs(AvaylableBudgetLines.GetAvayLineAmount()));
                        GenJnlLine.Validate("Bal. Account Type", GenJnlLine."Bal. Account Type"::"G/L Account");
                        GenJnlLine.Validate("Bal. Account No.", Class0Setup."Credit count");
                        GenJnlLine.Validate("System-Created Entry", true);
                        GenJnlLine.Validate("Dimension Set ID", AvaylableBudgetLines."Dimension Set ID");
                        GenJnlLine.Validate("Source Code", AvaylableBudget."Source Code");
                        DimMgt.UpdateGlobalDimFromDimSetID(AvaylableBudgetLines."Dimension Set ID", GenJnlLine."Shortcut Dimension 1 Code", GenJnlLine."Shortcut Dimension 2 Code");
                        GenJnlLine.Insert(true);
                        GenJnlPostLine.RunWithCheck(GenJnlLine);
                        GenJnlLine.Delete();
                        LineNo += 10000;
                    until Class0Setup.Next = 0;
                end;
            until AvaylableBudgetLines.Next = 0;
        end;
        exit(true);
    end;

    local procedure UpdateContractAmounts(QuoteLines: Record "Purchase Line"; var AvaylableBudgetLines: Record "Avaylable Budget Line")
    var
        BudgetApropriationMethod: Enum "Budget Appropriation Method";
        QuoteHeader: Record "Purchase Header";
        Currency: Record Currency;
        CurrExchRate: Record "Currency Exchange Rate";
        VATPostingSetup: Record "VAT Posting Setup";
    begin
        BudgetApropriationMethod := AvaylableBudgetLines.GetBudgetAppropriationMethod();
        QuoteLines.GetPurchHeader(QuoteHeader, Currency);
        case BudgetApropriationMethod of
            BudgetApropriationMethod::"Cost Amount":
                begin
                    AvaylableBudgetLines."Cost Amount" := QuoteLines."Amount to Avay";
                    if (QuoteLines."VAT %" + QuoteLines."PTSS ND %" <> 0) then
                        AvaylableBudgetLines.Amount := Round(AvaylableBudgetLines."Cost Amount" / Round(1 + ((QuoteLines."VAT %" + QuoteLines."PTSS ND %") / 100), Currency."Amount Rounding Precision", Currency.VATRoundingDirection), Currency."Amount Rounding Precision");
                    if (QuoteLines."VAT %" + QuoteLines."PTSS ND %" = 0) AND (QuoteLines."VAT Calculation Type" = QuoteLines."VAT Calculation Type"::"Reverse Charge VAT") then begin
                        if VATPostingSetup.GET(QuoteLines."VAT Bus. Posting Group", QuoteLines."VAT Prod. Posting Group") then begin
                            AvaylableBudgetLines.Amount += Round(AvaylableBudgetLines."Cost Amount" / Round(1 + (QuoteLines."PTSS ND %" / 100), Currency."Amount Rounding Precision", Currency.VATRoundingDirection), Currency."Amount Rounding Precision");
                        end;
                    end;
                    AvaylableBudgetLines."Amount Including VAT" := Round(AvaylableBudgetLines.Amount + (AvaylableBudgetLines.Amount * ((QuoteLines."VAT %" + QuoteLines."PTSS ND %") / 100)), Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                    if QuoteLines."Currency Code" <> '' then begin
                        AvaylableBudgetLines.Amount := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", AvaylableBudgetLines.Amount, QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        AvaylableBudgetLines."Amount Including VAT" := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", AvaylableBudgetLines."Amount Including VAT", QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        AvaylableBudgetLines."Cost Amount" := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", AvaylableBudgetLines."Cost Amount", QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                    end;
                end;
            BudgetApropriationMethod::"Amount Without VAT":
                begin
                    AvaylableBudgetLines.Amount := QuoteLines."Amount to Avay";
                    AvaylableBudgetLines."Amount Including VAT" := Round(AvaylableBudgetLines.Amount + AvaylableBudgetLines.Amount * (QuoteLines."VAT %" + QuoteLines."PTSS ND %") / 100, Currency."Amount Rounding Precision");
                    AvaylableBudgetLines."Cost Amount" := QuoteLines."Amount to Avay";
                    if (QuoteLines."VAT %" + QuoteLines."PTSS ND %" <> 0) then
                        AvaylableBudgetLines."Cost Amount" += ROUND((AvaylableBudgetLines."Amount Including VAT" - AvaylableBudgetLines.Amount) / (QuoteLines."VAT %" + QuoteLines."PTSS ND %") * QuoteLines."PTSS ND %", Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                    if (QuoteLines."VAT %" + QuoteLines."PTSS ND %" = 0) AND (QuoteLines."VAT Calculation Type" = QuoteLines."VAT Calculation Type"::"Reverse Charge VAT") then begin
                        if VATPostingSetup.GET(QuoteLines."VAT Bus. Posting Group", QuoteLines."VAT Prod. Posting Group") then begin
                            AvaylableBudgetLines."Cost Amount" += ROUND(AvaylableBudgetLines.Amount * (VATPostingSetup."PTSS VAT N.D. %") / 100, Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                        end;
                    end;
                    If QuoteLines."Currency Code" <> '' then begin
                        AvaylableBudgetLines.Amount := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", AvaylableBudgetLines.Amount, QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        AvaylableBudgetLines."Amount Including VAT" := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", AvaylableBudgetLines."Amount Including VAT", QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        AvaylableBudgetLines."Cost Amount" := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", AvaylableBudgetLines."Cost Amount", QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                    end;
                end;
            BudgetApropriationMethod::"Amount With VAT":
                begin
                    AvaylableBudgetLines."Amount Including VAT" := QuoteLines."Amount to Avay";
                    AvaylableBudgetLines.Amount := Round(AvaylableBudgetLines."Amount Including VAT" / (1 * QuoteLines."VAT %" / 100), Currency."Amount Rounding Precision");
                    AvaylableBudgetLines."Cost Amount" := AvaylableBudgetLines.Amount;
                    if (QuoteLines."VAT %" + QuoteLines."PTSS ND %" <> 0) then
                        AvaylableBudgetLines."Cost Amount" += ROUND((AvaylableBudgetLines."Amount Including VAT" - AvaylableBudgetLines.Amount) / (QuoteLines."VAT %" + QuoteLines."PTSS ND %") * QuoteLines."PTSS ND %", Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                    if (QuoteLines."VAT %" + QuoteLines."PTSS ND %" = 0) AND (QuoteLines."VAT Calculation Type" = QuoteLines."VAT Calculation Type"::"Reverse Charge VAT") then begin
                        if VATPostingSetup.GET(QuoteLines."VAT Bus. Posting Group", QuoteLines."VAT Prod. Posting Group") then begin
                            AvaylableBudgetLines."Cost Amount" += ROUND(AvaylableBudgetLines.Amount * (VATPostingSetup."PTSS VAT N.D. %") / 100, Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                        end;
                    end;
                    If QuoteLines."Currency Code" <> '' then begin
                        AvaylableBudgetLines.Amount := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", AvaylableBudgetLines.Amount, QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        AvaylableBudgetLines."Amount Including VAT" := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", AvaylableBudgetLines."Amount Including VAT", QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        AvaylableBudgetLines."Cost Amount" := Round(CurrExchRate.ExchangeAmtFCYToLCY(QuoteHeader."Posting Date", QuoteHeader."Currency Code", AvaylableBudgetLines."Cost Amount", QuoteHeader."Currency Factor"), Currency."Amount Rounding Precision");
                    end;
                end;
        end;
        AvaylableBudgetLines.Validate("Unit Cost", Round((AvaylableBudgetLines.Amount / AvaylableBudgetLines.Quantity), Currency."Amount Rounding Precision", Currency.VATRoundingDirection));
    end;

    local procedure CheckContractBlocked(PostedAvaylableBudget: Record "Posted Avaylable Budget")
    var
        Contract: Record Contract;
        Consultation: Record Consultation;
        Text001: Label 'You cant reverse contract avaylable budgets because the contract %1 is in %2.';
    begin
        if Consultation.Get(PostedAvaylableBudget."Consultation Code") then
            if Consultation.IsContract then begin
                Contract.Get(Consultation."Contract No.");
                if Contract.Status <> Contract.Status::" " then
                    Error(Text001, Contract."No.", Contract.Status);
            end;
    end;

    local procedure ValidateQuoteAvayBudgets(Consultation: Record Consultation)
    var
        PostAvaylableBudgetLine: Record "Posted Avaylable Budget Line";
        QuoteLines: Record "Purchase Line";
        QuoteValue: Decimal;
        AvayValue: Decimal;
        Text001: Label 'There is no amount for new avaylable budgets.';
    begin
        Clear(QuoteValue);
        Clear(AvayValue);
        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        QuoteLines.CalcSums(Amount, "Amount Including VAT", "Cost Amount");
        QuoteValue := QuoteLines.GetPurchLineAmount();

        PostAvaylableBudgetLine.Reset;
        PostAvaylableBudgetLine.SetRange("Consultation Code", Consultation."Consultation code");
        PostAvaylableBudgetLine.CalcSums(Amount, "Amount Including Vat", "Cost Amount");
        AvayValue := PostAvaylableBudgetLine.GetAvayLineAmount();

        if (AvayValue <> 0) and (QuoteValue >= AvayValue) then
            Error(Text001);
    end;

    local procedure ValidateContractQuoteAvayBudgets(Consultation: Record Consultation)
    var
        PostAvaylableBudgetLine: Record "Posted Avaylable Budget Line";
        QuoteLines: Record "Purchase Line";
        QuoteValue: Decimal;
        AvayValue: Decimal;
        QuoteTotalValue: Decimal;
        Text001: Label 'There is no amount for new avaylable budgets.';
    begin
        Clear(QuoteValue);
        Clear(AvayValue);
        Clear(QuoteTotalValue);

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        QuoteLines.CalcSums(Amount, "Amount Including VAT", "Cost Amount");
        QuoteTotalValue := QuoteLines.GetPurchLineAmount();

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        QuoteLines.SetFilter("Amount to Avay", '>0');
        QuoteLines.CalcSums(Amount, "Amount Including VAT", "Cost Amount");
        QuoteValue := QuoteLines.GetPurchLineAmount();

        PostAvaylableBudgetLine.Reset;
        PostAvaylableBudgetLine.SetRange("Consultation Code", Consultation."Consultation code");
        PostAvaylableBudgetLine.CalcSums(Amount, "Amount Including Vat", "Cost Amount");
        AvayValue := PostAvaylableBudgetLine.GetAvayLineAmount();

        if (AvayValue <> 0) and (QuoteValue + AvayValue >= QuoteTotalValue) then
            Error(Text001);
    end;

    local procedure ValidateAvailableDotation(Consultation: Record Consultation)
    var
        QuoteLines: Record "Purchase Line";
        BudgetConfig: Record "Budget Configuration";
        TempGLDimensions: Record "G/L Account Dimensions" temporary;
        DimSetEntry: Record "Dimension Set Entry";
        CduBudget: Codeunit Budget;
        QuoteValue: Decimal;
        DotationValue: Decimal;
        DimFilter1: Code[20];
        DimFilter2: Code[20];
        DimFilter3: Code[20];
        DimFilter4: Code[20];
        TempPeriodInitDate: Date;
        TempPeriodEndDate: Date;
        LineNo: Integer;
        Text001: Label 'There is no dotation for this consultation.';
    begin
        BudgetConfig.Get();
        Clear(QuoteValue);
        Clear(DotationValue);
        Clear(TempGLDimensions);

        TempPeriodInitDate := CalcDate('<-CY>', WorkDate);
        TempPeriodEndDate := WorkDate;
        LineNo := 1;

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        if QuoteLines.FindSet then
            repeat
                Clear(DimFilter1);
                Clear(DimFilter2);
                Clear(DimFilter3);
                Clear(DimFilter4);
                DimSetEntry.Reset;
                DimSetEntry.SetRange("Dimension Set ID", QuoteLines."Dimension Set ID");
                if DimSetEntry.FindSet then
                    repeat
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim1) and (BudgetConfig.Sd1 = true) then
                            DimFilter1 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim2) and (BudgetConfig.Sd2 = true) then
                            DimFilter2 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim3) and (BudgetConfig.Sd3 = true) then
                            DimFilter3 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim4) and (BudgetConfig.Sd4 = true) then
                            DimFilter4 := DimSetEntry."Dimension Value Code";
                    until DimSetEntry.Next = 0;

                DotationValue := CduBudget.GetDotation(TempPeriodInitDate, TempPeriodEndDate, Dimfilter1, Dimfilter2, Dimfilter3, Dimfilter4);
                QuoteValue := QuoteLines.GetPurchLineAmount();

                TempGLDimensions.Reset;
                TempGLDimensions.SetRange(Dimension1, Dimfilter1);
                TempGLDimensions.SetRange(Dimension2, Dimfilter2);
                TempGLDimensions.SetRange(Dimension3, Dimfilter3);
                TempGLDimensions.SetRange(Dimension4, Dimfilter4);
                if TempGLDimensions.FindFirst then begin
                    TempGLDimensions."Cost Amount" += QuoteValue;
                    TempGLDimensions.Modify;
                end else begin
                    TempGLDimensions.Init;
                    TempGLDimensions."Line No." := LineNo;
                    TempGLDimensions.Dimension1 := dimfilter1;
                    TempGLDimensions.Dimension2 := dimfilter2;
                    TempGLDimensions.Dimension3 := dimfilter3;
                    TempGLDimensions.Dimension4 := dimfilter4;
                    TempGLDimensions."Amount Without VAT" := DotationValue;
                    TempGLDimensions."Cost Amount" := QuoteValue;
                    TempGLDimensions.Insert;
                    LineNo += 1;
                end;
            until QuoteLines.Next = 0;

        TempGLDimensions.Reset;
        if TempGLDimensions.FindSet then
            repeat
                if TempGLDimensions."Cost Amount" > TempGLDimensions."Amount Without VAT" then
                    Error(Text001);
            until TempGLDimensions.Next = 0;
    end;

    local procedure ValidateContractAvailableDotation(Consultation: Record Consultation)
    var
        QuoteLines: Record "Purchase Line";
        BudgetConfig: Record "Budget Configuration";
        TempGLDimensions: Record "G/L Account Dimensions" temporary;
        DimSetEntry: Record "Dimension Set Entry";
        CduBudget: Codeunit Budget;
        QuoteValue: Decimal;
        DotationValue: Decimal;
        DimFilter1: Code[20];
        DimFilter2: Code[20];
        DimFilter3: Code[20];
        DimFilter4: Code[20];
        TempPeriodInitDate: Date;
        TempPeriodEndDate: Date;
        LineNo: Integer;
        Text001: Label 'There is no dotation for this consultation.';
    begin
        Clear(QuoteValue);
        Clear(DotationValue);
        Clear(TempGLDimensions);
        BudgetConfig.Get();
        TempPeriodInitDate := CalcDate('<-CY>', WorkDate);
        TempPeriodEndDate := WorkDate;
        LineNo := 1;

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        QuoteLines.SetFilter("Amount to Avay", '>0');
        if QuoteLines.FindSet then
            repeat
                Clear(DimFilter1);
                Clear(DimFilter2);
                Clear(DimFilter3);
                Clear(DimFilter4);
                DimSetEntry.Reset;
                DimSetEntry.SetRange("Dimension Set ID", QuoteLines."Dimension Set ID");
                if DimSetEntry.FindSet then
                    repeat
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim1) and (BudgetConfig.Sd1 = true) then
                            DimFilter1 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim2) and (BudgetConfig.Sd2 = true) then
                            DimFilter2 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim3) and (BudgetConfig.Sd3 = true) then
                            DimFilter3 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim4) and (BudgetConfig.Sd4 = true) then
                            DimFilter4 := DimSetEntry."Dimension Value Code";
                    until DimSetEntry.Next = 0;

                DotationValue := CduBudget.GetDotation(TempPeriodInitDate, TempPeriodEndDate, Dimfilter1, Dimfilter2, Dimfilter3, Dimfilter4);
                QuoteValue := QuoteLines."Amount to Avay";

                TempGLDimensions.Reset;
                TempGLDimensions.SetRange(Dimension1, Dimfilter1);
                TempGLDimensions.SetRange(Dimension2, Dimfilter2);
                TempGLDimensions.SetRange(Dimension3, Dimfilter3);
                TempGLDimensions.SetRange(Dimension4, Dimfilter4);
                if TempGLDimensions.FindFirst then begin
                    TempGLDimensions."Cost Amount" += QuoteValue;
                    TempGLDimensions.Modify;
                end else begin
                    TempGLDimensions.Init;
                    TempGLDimensions."Line No." := LineNo;
                    TempGLDimensions.Dimension1 := dimfilter1;
                    TempGLDimensions.Dimension2 := dimfilter2;
                    TempGLDimensions.Dimension3 := dimfilter3;
                    TempGLDimensions.Dimension4 := dimfilter4;
                    TempGLDimensions."Amount Without VAT" := DotationValue;
                    TempGLDimensions."Cost Amount" := QuoteValue;
                    TempGLDimensions.Insert;
                    LineNo += 1;
                end;
            until QuoteLines.Next = 0;

        TempGLDimensions.Reset;
        if TempGLDimensions.FindSet then
            repeat
                if TempGLDimensions."Cost Amount" > TempGLDimensions."Amount Without VAT" then
                    Error(Text001);
            until TempGLDimensions.Next = 0;
    end;

    local procedure ValidateQuoteEqualDimensions(Consultation: Record "Consultation")
    var
        BudgetConfig: Record "Budget Configuration";
        QuoteLines: Record "Purchase Line";
        DimSetEntry: Record "Dimension Set Entry";
        Dimension: array[4, 2] of Code[20];
        i: Integer;
        TempDimSetEntry: Record "Dimension Set Entry" temporary;
        Text001: Label 'The dimensions are not equal in every line.';
    begin
        Clear(i);
        BudgetConfig.Get;
        if not BudgetConfig."Equal Dimensions By Document" then
            exit;
        if not ((BudgetConfig."Dim Validation 1" <> '') or (BudgetConfig."Dim Validation 2" <> '') or (BudgetConfig."Dim Validation 3" <> '') or (BudgetConfig."Dim Validation 4" <> '')) then
            exit;

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        if QuoteLines.FindFirst then begin
            Clear(DimSetEntry);
            DimSetEntry.SetRange("Dimension Set ID", QuoteLines."Dimension Set ID");
            if DimSetEntry.FindSet then
                repeat
                    i += 1;
                    if DimSetEntry."Dimension Code" in [BudgetConfig."Dim Validation 1", BudgetConfig."Dim Validation 2", BudgetConfig."Dim Validation 3", BudgetConfig."Dim Validation 4"] then begin
                        Dimension[i, 1] := DimSetEntry."Dimension Code";
                        Dimension[i, 2] := DimSetEntry."Dimension Value Code";
                    end;
                until DimSetEntry.Next = 0;
        end;

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        if QuoteLines.FindSet then
            repeat
                for i := 1 to ArrayLen(Dimension, 1) do begin
                    if Dimension[i, 1] <> '' then begin
                        Clear(DimSetEntry);
                        DimSetEntry.SetRange("Dimension Set ID", QuoteLines."Dimension Set ID");
                        DimSetEntry.SetRange("Dimension Code", Dimension[i, 1]);
                        if DimSetEntry.Findfirst then begin
                            if Dimension[i, 2] <> DimSetEntry."Dimension Value Code" then
                                Error(Text001);
                        end else
                            Error(Text001);
                    end;
                end;
            until QuoteLines.Next = 0;
    end;

    local procedure ValidateContractQuoteEqualDimensions(Consultation: Record "Consultation")
    var
        BudgetConfig: Record "Budget Configuration";
        QuoteLines: Record "Purchase Line";
        DimSetEntry: Record "Dimension Set Entry";
        Dimension: array[4, 3] of Code[20];
        i: Integer;
        QuoteYears: Record Integer temporary;
        TempDimSetEntry: Record "Dimension Set Entry" temporary;
        Text001: Label 'The dimensions are not equal in every line of contract year %1.';
    begin
        Clear(i);
        BudgetConfig.Get;
        if not BudgetConfig."Equal Dimensions By Document" then
            exit;
        if not ((BudgetConfig."Dim Validation 1" <> '') or (BudgetConfig."Dim Validation 2" <> '') or (BudgetConfig."Dim Validation 3" <> '') or (BudgetConfig."Dim Validation 4" <> '')) then
            exit;

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        If QuoteLines.FindSet() then
            repeat
                QuoteYears.Init();
                QuoteYears.Number := QuoteLines."Contract Year";
                If QuoteYears.Insert() then;
            until QuoteLines.Next() = 0;

        QuoteYears.Reset();
        If QuoteYears.FindSet() then
            repeat
                QuoteLines.Reset;
                QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
                QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
                QuoteLines.SetRange("Contract Year", QuoteYears.Number);
                QuoteLines.SetFilter("Selection Code", '<>%1', '');
                QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
                if QuoteLines.FindFirst then begin
                    Clear(i);
                    Clear(DimSetEntry);
                    DimSetEntry.SetRange("Dimension Set ID", QuoteLines."Dimension Set ID");
                    if DimSetEntry.FindSet then
                        repeat
                            i += 1;
                            if DimSetEntry."Dimension Code" in [BudgetConfig."Dim Validation 1", BudgetConfig."Dim Validation 2", BudgetConfig."Dim Validation 3", BudgetConfig."Dim Validation 4"] then begin
                                Dimension[i, 1] := DimSetEntry."Dimension Code";
                                Dimension[i, 2] := DimSetEntry."Dimension Value Code";
                                Dimension[i, 3] := Format(QuoteLines."Contract Year");
                            end;
                        until DimSetEntry.Next = 0;
                end;

                QuoteLines.Reset;
                QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
                QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
                QuoteLines.SetRange("Contract Year", QuoteYears.Number);
                QuoteLines.SetFilter("Selection Code", '<>%1', '');
                QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
                if QuoteLines.FindSet then
                    repeat
                        for i := 1 to ArrayLen(Dimension, 1) do begin
                            if Dimension[i, 1] <> '' then begin
                                Clear(DimSetEntry);
                                DimSetEntry.SetRange("Dimension Set ID", QuoteLines."Dimension Set ID");
                                DimSetEntry.SetRange("Dimension Code", Dimension[i, 1]);
                                if DimSetEntry.Findfirst then begin
                                    if Dimension[i, 2] <> DimSetEntry."Dimension Value Code" then
                                        Error(Text001, QuoteYears.Number);
                                end else
                                    Error(Text001, QuoteYears.Number);
                            end;
                        end;
                    until QuoteLines.Next = 0;
            until QuoteYears.Next() = 0;
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

    local procedure ValidateContractSelection(Consultation: Record "Consultation")
    var
        QuoteLines: Record "Purchase Line";
        Text001: Label 'There are no winning quotes.';
        Text002: Label 'There is nothing to avay.';
        Text003: Label 'You cant avay for contract years different from %1.';
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
        QuoteLines.SetFilter("Amount To Avay", '>0');
        if QuoteLines.IsEmpty then
            Error(Text002);

        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        QuoteLines.SetFilter("Amount To Avay", '>0');
        QuoteLines.SetFilter("Contract Year", '<>%1', Date2DMY(WorkDate, 3));
        if not QuoteLines.IsEmpty then
            Error(Text003, Date2DMY(WorkDate, 3));
    end;

    local procedure ValidatePAQExist(PostedAvaylableBudget: Record "Posted Avaylable Budget")
    var
        Consultation: Record Consultation;
        PostedAvaylableBudgetLines: Record "Posted Avaylable Budget Line";
        PostedPAQ: Record "Posted PAQ";
        PostedPAQLines: Record "Posted PAQ Lines";
        Text001: Label 'You cant reverse avaylable budget %1 because it has associated adjudications.';
    begin
        Consultation.Get(PostedAvaylableBudget."Consultation Code");
        PostedPAQ.Reset();
        PostedPAQ.SetRange("Consultation Code", PostedAvaylableBudget."Consultation Code");
        PostedPAQ.SetRange(Reversed, false);
        PostedPAQ.SetFilter(Status, '<>%1', "PAQ Status"::Rejected);
        if PostedPAQ.FindSet then
            repeat
                PostedAvaylableBudgetLines.Reset();
                PostedAvaylableBudgetLines.SetRange("Avay Code", PostedAvaylableBudget."Avay Code");
                if PostedAvaylableBudgetLines.FindSet then
                    repeat
                        PostedPAQLines.SetRange("PAQ Code", PostedPAQ."PAQ Code");
                        PostedPAQLines.SetRange("Requisition Code", PostedAvaylableBudgetLines."Requisition Code");
                        PostedPAQLines.SetRange("Requisition Line", PostedAvaylableBudgetLines."Requisition Line");
                        if PostedPAQLines.FindFirst then
                            Error(Text001, PostedAvaylableBudgetLines."Avay Code");
                    until PostedAvaylableBudgetLines.Next = 0;
            until PostedPAQ.Next = 0;
    end;

    local procedure ValidateContractPAQExist(PostedAvaylableBudget: Record "Posted Avaylable Budget")
    var
        PostedAvaylableBudgetLines: Record "Posted Avaylable Budget Line";
        PostedAvaylableBudget2: Record "Posted Avaylable Budget";
        Consultation: Record Consultation;
        QuoteLines: Record "Purchase Line";
        Text001: Label 'You cant reverse avaylable budgets for contract years different from %1.';
        Text002: Label 'You cant reverse avaylable because of avaylables settlements.';
        Text003: Label 'You cant reverse avaylable budgets because the amount is less than %1 on line %2 of %3.';
    begin
        Consultation.Get(PostedAvaylableBudget."Consultation Code");
        if Date2DMY(PostedAvaylableBudget."Avay Date", 3) <> Date2DMY(WorkDate, 3) then
            Error(Text001, Date2DMY(WorkDate, 3));

        PostedAvaylableBudget.TestField(Type, "Avaylable Budget Type"::Original);
        PostedAvaylableBudget2.Reset;
        PostedAvaylableBudget2.SetRange("Consultation Code", Consultation."Consultation code");
        PostedAvaylableBudget2.SetRange(Type, "Avaylable Budget Type"::Decrease);
        PostedAvaylableBudget2.SetRange(Reversed, false);
        if not PostedAvaylableBudget2.IsEmpty then
            Error(Text002);

        PostedAvaylableBudgetLines.Reset;
        PostedAvaylableBudgetLines.SetRange("Avay Code", PostedAvaylableBudget."Avay Code");
        if PostedAvaylableBudgetLines.FindSet then
            repeat
                if QuoteLines.Get(QuoteLines."Document Type"::Quote, PostedAvaylableBudgetLines."Quote No.", PostedAvaylableBudgetLines."Quote Line No.") then
                    if (-PostedAvaylableBudgetLines."Cost Amount") + QuoteLines."Amount Avaylabled" < QuoteLines."Amount Adjudicated" then
                        Error(Text003, QuoteLines."Amount Adjudicated", PostedAvaylableBudgetLines."Line No.", PostedAvaylableBudgetLines."Avay Code");
            until PostedAvaylableBudgetLines.Next = 0;
    end;

    local procedure IsDateNotAllowed(PostingDate: Date) DateIsNotAllowed: Boolean
    var
        UserSetupManagement: Codeunit "User Setup Management";
        SetupRecordID: RecordID;
    begin
        DateIsNotAllowed := not UserSetupManagement.IsPostingDateValidWithSetup(PostingDate, SetupRecordID);
        exit(DateIsNotAllowed);
    end;

    local procedure ShowMessage(TxtMessage: Text)
    begin
        if not HideDialog then
            Message(TxtMessage);
    end;
}

