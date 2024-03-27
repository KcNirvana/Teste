codeunit 57005 Consultation
{
    var
        DimMgt: Codeunit DimensionManagement;


    procedure CreateContractAdjustAvayPAQ(PurchaseHeader: Record "Purchase Header"; SelectionType: Enum "Contract Quote Adjustments")
    var
        CduAvay: Codeunit AvaylableBudget;
        CduPAQ: Codeunit PAQ;
    begin
        CheckContractAvayPAQAdjustPossible(PurchaseHeader, SelectionType);

        case SelectionType of
            SelectionType::"Avaylable Budgets":
                CduAvay.CreateContractAdjustAvay(PurchaseHeader);
            SelectionType::Adjudications:
                CduPAQ.CreateContractAdjustPAQ(PurchaseHeader);
        End;
    end;


    procedure CreateAdjustAvayPAQ(PurchaseHeader: Record "Purchase Header")
    var
        BudgetConfig: Record "Budget Configuration";
        Consultation: Record Consultation;
        PurchaseLines: Record "Purchase Line";
        GLAccountDim: Record "G/L Account Dimensions";
        QuoteLines: Record "Purchase Line";
        PurchaseLines2: Record "Purchase Line";
        AmountInvoiced: Decimal;
        AmountCredited: Decimal;
        AmountAvaylabled: Decimal;
        AmountAdjudicated: Decimal;
        Quantity: Decimal;
        PurchLineAmount: Decimal;
        LineAmount: Decimal;
        OrderQuantity: Decimal;
        AdjustAmounts: Boolean;
        Text001: Label 'The quantity %1 from line %2 in order %3 is inferior to quantity %4 from line %5 in quote %6. This is a partial order. Do you want to adjust the quantities?';
        Text002: Label 'You cant adjust avays/adjudications with orders already created.';
    begin
        CheckAvayPAQAdjustPossible(PurchaseHeader);

        BudgetConfig.Get;
        PurchaseHeader.CalcFields("Associated Orders");

        PurchaseLines.Reset();
        PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
        IF PurchaseHeader."Document Type" = PurchaseHeader."Document Type"::Quote THEN
            PurchaseLines.SETFILTER("Selection Code", '<>%1', '');
        PurchaseLines.SETFILTER("No.", '<>%1', '');
        IF PurchaseLines.FindSet() THEN
            REPEAT
                CLEAR(AmountInvoiced);
                CLEAR(AmountCredited);
                CLEAR(AmountAvaylabled);
                CLEAR(AmountAdjudicated);
                CLEAR(Quantity);
                Clear(LineAmount);
                Clear(OrderQuantity);
                Clear(AdjustAmounts);

                Consultation.get(PurchaseLines."Consultation Code");
                Consultation.TestField(IsContract, false);

                GetPurchaseLineAmounts(PurchaseLines, AmountInvoiced, AmountCredited, AmountAvaylabled, AmountAdjudicated, Quantity);
                IF PurchaseLines."Document Type" = PurchaseLines."Document Type"::Order THEN begin
                    QuoteLines.RESET;
                    QuoteLines.SETRANGE("Document Type", PurchaseLines."Document Type"::Quote);
                    QuoteLines.SETRANGE("Requisition Code", PurchaseLines."Requisition Code");
                    QuoteLines.SETRANGE("Requisition Line", PurchaseLines."Requisition Line");
                    QuoteLines.SETFILTER("Selection Code", '<>%1', '');
                    IF QuoteLines.FINDFIRST THEN
                        IF QuoteLines.Quantity > PurchaseLines.Quantity THEN
                            IF NOT CONFIRM(Text001, true, PurchaseLines.Quantity, PurchaseLines."Line No.", PurchaseLines."Document No.", QuoteLines.Quantity, QuoteLines."Line No.", QuoteLines."Document No.") THEN
                                EXIT;
                    PurchLineAmount := GLAccountDim.GetCompareOrderAmounts(PurchaseLines)
                end ELSE
                    PurchLineAmount := PurchaseLines.GetPurchLineAmount();

                PurchaseLines2.RESET;
                PurchaseLines2.SETRANGE("Document Type", PurchaseLines."Document Type");
                PurchaseLines2.SETRANGE("Document No.", PurchaseLines."No.");
                PurchaseLines2.SetRange("Requisition Code", PurchaseLines."Requisition Code");
                PurchaseLines2.SetRange("Requisition Line", PurchaseLines."Requisition Line");
                PurchaseLines2.Setfilter("Line No.", '<>%1', PurchaseLines."Line No.");
                IF PurchaseLines2.FINDSET THEN
                    REPEAT
                        PurchLineAmount += PurchaseLines2.GetPurchLineAmount();
                    UNTIL PurchaseLines2.NEXT = 0;

                IF PurchaseLines."Document Type" = PurchaseLines."Document Type"::Invoice THEN
                    Quantity += PurchaseLines.Quantity;

                LineAmount := PurchLineAmount + AmountInvoiced - AmountCredited;
                OrderQuantity := PurchaseLines.Quantity;
                case true of
                    LineAmount > (AmountAvaylabled + BudgetConfig."Precision Round Difference"):
                        AdjustAmounts := true;
                    LineAmount > (AmountAdjudicated + BudgetConfig."Precision Round Difference"):
                        AdjustAmounts := true;
                    (LineAmount < AmountAdjudicated) and (Quantity = OrderQuantity):
                        AdjustAmounts := true;
                    (PurchaseLines."Document Type" = PurchaseLines."Document Type"::Quote) And (PurchaseHeader."Associated Orders" = 0):
                        AdjustAmounts := true;
                    (PurchaseLines."Document Type" = PurchaseLines."Document Type"::Quote) And (PurchaseHeader."Associated Orders" <> 0):
                        Error(Text002);
                End;

                If AdjustAmounts or (PurchaseLines."Document Type" = PurchaseLines."Document Type"::Order) then begin
                    ValidateAvailableDotation(Consultation);
                    InsertAvayPAQAdjusts(PurchaseLines);
                end;
            UNTIL PurchaseLines.NEXT = 0;
    end;

    local procedure ValidateAvailableDotation(Consultation: Record Consultation)
    var
        QuoteLines: Record "Purchase Line";
        PostedAvaylableLines: Record "Posted Avaylable Budget Line";
        BudgetConfig: Record "Budget Configuration";
        TempGLDimensions: Record "G/L Account Dimensions" temporary;
        DimSetEntry: Record "Dimension Set Entry";
        CduBudget: Codeunit Budget;
        QuoteValue: Decimal;
        DotationValue: Decimal;
        AvaylableAmount: Decimal;

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

                PostedAvaylableLines.Reset();
                PostedAvaylableLines.SETRANGE("Consultation Code", Consultation."Consultation Code");
                PostedAvaylableLines.SETRANGE("Quote No.", QuoteLines."Document No.");
                PostedAvaylableLines.SETRANGE("Quote Line No.", QuoteLines."Line No.");
                PostedAvaylableLines.CalcSums(Amount, "Amount Including VAT", "Cost Amount");
                AvaylableAmount := PostedAvaylableLines.GetAvayLineAmount();

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
                    TempGLDimensions."Cost Amount" := (QuoteValue - AvaylableAmount);
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
        PostedAvaylableLines: Record "Posted Avaylable Budget Line";
        BudgetConfig: Record "Budget Configuration";
        TempGLDimensions: Record "G/L Account Dimensions" temporary;
        DimSetEntry: Record "Dimension Set Entry";
        CduBudget: Codeunit Budget;
        QuoteValue: Decimal;
        DotationValue: Decimal;
        AvaylableAmount: Decimal;

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

                PostedAvaylableLines.Reset();
                PostedAvaylableLines.SETRANGE("Consultation Code", Consultation."Consultation Code");
                PostedAvaylableLines.SETRANGE("Quote No.", QuoteLines."Document No.");
                PostedAvaylableLines.SETRANGE("Quote Line No.", QuoteLines."Line No.");
                PostedAvaylableLines.CalcSums(Amount, "Amount Including VAT", "Cost Amount");

                AvaylableAmount := PostedAvaylableLines.GetAvayLineAmount();
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

    local procedure CheckAvayPAQAdjustPossible(PurchaseHeader: Record "Purchase Header")
    var
        Consultation: Record Consultation;
        PurchaseLines: Record "Purchase Line";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        PostedAvayAmount: Decimal;
        Text001: Label 'is not within your range of allowed posting dates';
        Text002: Label 'There is no avaylable amount to be adjusted on quote %1 of consultation %2.';
        Text003: Label 'There is already avaylables created for line %1.';
    begin
        ValidatePermissions("Consultation Permissions"::"Adjust Avay/PAQ");
        Consultation.GET(PurchaseHeader."Consultation Code");
        Consultation.TestField(IsContract, false);

        if IsDateNotAllowed(PurchaseHeader."Posting Date") then
            PurchaseHeader.FieldError("Posting Date", Text001);

        If PurchaseHeader."Document Type" = "Purchase Document Type"::Quote then begin
            PostedAvayAmount := Consultation.GetPostedAvaylableAmount();
            If PostedAvayAmount = 0 then
                Error(Text002, PurchaseHeader."Consultation Code", PurchaseHeader."No.");
        end;

        PurchaseLines.RESET;
        PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
        IF PurchaseHeader."Document Type" = PurchaseHeader."Document Type"::Quote THEN
            PurchaseLines.SETFILTER("Selection Code", '<>%1', '');
        PurchaseLines.SETFILTER("No.", '<>%1', '');
        IF PurchaseLines.FindSet() THEN
            repeat
                AvaylableBudgetLines.Reset();
                AvaylableBudgetLines.SETRANGE("Consultation Code", PurchaseLines."Consultation Code");
                AvaylableBudgetLines.SETRANGE("Requisition Code", PurchaseLines."Requisition Code");
                AvaylableBudgetLines.SETRANGE("Requisition Line", PurchaseLines."Requisition Line");
                IF not AvaylableBudgetLines.IsEmpty THEN
                    ERROR(Text003, PurchaseLines."Line No.");
            until PurchaseLines.Next() = 0;
    end;

    local procedure CheckContractAvayPAQAdjustPossible(PurchaseHeader: Record "Purchase Header"; SelectionType: Enum "Contract Quote Adjustments")
    var
        Consultation: Record Consultation;
        Contract: Record Contract;
        PurchaseLines: Record "Purchase Line";
        Text001: Label 'is not within your range of allowed posting dates';
        Text002: Label 'There is nothing to adjust.';
        Text003: Label 'You cant adjust for contract years different from %1.';
    begin
        ValidatePermissions("Consultation Permissions"::"Adjust Avay/PAQ");
        Consultation.GET(PurchaseHeader."Consultation Code");
        Consultation.TestField(IsContract);

        if IsDateNotAllowed(PurchaseHeader."Posting Date") then
            PurchaseHeader.FieldError("Posting Date", Text001);

        Contract.Get(Consultation."Contract No.");
        Contract.TestField(Status, Contract.Status::" ");

        ValidateSelectionCode(Consultation);

        PurchaseLines.RESET;
        PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
        PurchaseLines.SetRange("Consultation Code", PurchaseHeader."Consultation Code");
        PurchaseLines.SETFILTER("Selection Code", '<>%1', '');
        case SelectionType of
            SelectionType::"Avaylable Budgets":
                PurchaseLines.SetFilter("Amount to Adjust Avay", '<0');
            SelectionType::Adjudications:
                PurchaseLines.SetFilter("Amount to Adjust Adj.", '<0');
        end;
        if PurchaseLines.IsEmpty then
            Error(Text002);

        PurchaseLines.RESET;
        PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
        PurchaseLines.SetRange("Consultation Code", PurchaseHeader."Consultation Code");
        PurchaseLines.SETFILTER("Selection Code", '<>%1', '');
        case SelectionType of
            SelectionType::"Avaylable Budgets":
                PurchaseLines.SetFilter("Amount to Adjust Avay", '<0');
            SelectionType::Adjudications:
                PurchaseLines.SetFilter("Amount to Adjust Adj.", '<0');
        end;
        PurchaseLines.SetFilter("Contract Year", '<>%1', Date2DMY(WorkDate, 3));
        if not PurchaseLines.IsEmpty then
            Error(Text003, Date2DMY(WorkDate, 3));

    end;

    local procedure InsertAvayPAQAdjusts(pPurchaseLines: Record "Purchase Line")
    var
        BudgetConfig: Record "Budget Configuration";
        PurchaseLines: Record "Purchase Line";
        GLAccountDim: Record "G/L Account Dimensions" temporary;
        GLAccountDim2: Record "G/L Account Dimensions" temporary;
        PurchInvLines: Record "Purch. Inv. Line";
        PurchCrMemoLines: Record "Purch. Cr. Memo Line";
        PostedAvaylableBudgetLines: Record "Posted Avaylable Budget Line";
        PostedPAQLines: Record "Posted PAQ Lines";
        PurchaseLinesCompare: Record "Purchase Line";
        PurchHeader: Record "Purchase Header";
        TempPurchaseLine: Record "Purchase Line" temporary;
        CduAvay: Codeunit AvaylableBudget;
        CduPAQ: Codeunit PAQ;
        DifferenceAmount: Decimal;
        AmountInvoiced: Decimal;
        AmountCredited: Decimal;
        AmountAvaylabled: Decimal;
        AmountAdjudicated: Decimal;
        Quantity: Decimal;

    begin
        BudgetConfig.Get();

        PurchaseLines.Reset();
        PurchaseLines.SetRange("Document Type", pPurchaseLines."Document Type");
        PurchaseLines.SetRange("Document No.", pPurchaseLines."Document No.");
        PurchaseLines.SetRange("Line No.", pPurchaseLines."Line No.");
        PurchaseLines.SetRange("Requisition Code", pPurchaseLines."Requisition Code");
        PurchaseLines.SetRange("Requisition Line", pPurchaseLines."Requisition Line");
        PurchaseLines.SetRange("Consultation Code", pPurchaseLines."Consultation Code");
        PurchaseLines.SetFilter("No.", '<>%1', '');
        if pPurchaseLines."Document Type" = pPurchaseLines."Document Type"::Quote then
            PurchaseLines.SetFilter("Selection Code", '<>%1', '');
        if PurchaseLines.FindSet then
            repeat
                // Posted Invoices
                PurchInvLines.Reset;
                PurchInvLines.SetFilter("No.", '<>%1', '');
                PurchInvLines.SetRange("Requisition Code", PurchaseLines."Requisition Code");
                PurchInvLines.SetRange("Requisition Line", PurchaseLines."Requisition Line");
                PurchInvLines.SetRange("Consultation Code", PurchaseLines."Consultation Code");
                if PurchInvLines.FindSet then
                    repeat
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Purch. Inv. Line");
                        GLAccountDim."Document No." := PurchInvLines."Document No.";
                        GLAccountDim."Line No." := PurchInvLines."Line No.";
                        GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::Invoice;
                        GLAccountDim."Requisition Code" := PurchInvLines."Requisition Code";
                        GLAccountDim."Requisition Line" := PurchInvLines."Requisition Line";
                        GLAccountDim.Quantity := PurchInvLines.Quantity;
                        GLAccountDim."Consultation Code" := PurchInvLines."Consultation Code";
                        GLAccountDim."Unit Cost" := PurchInvLines."Direct Unit Cost";
                        GLAccountDim."Amount(DL)" := PurchInvLines."Amount Including VAT";
                        GLAccountDim."Amount without Vat" := PurchInvLines.Amount;
                        GLAccountDim."Cost Amount" := PurchInvLines."Cost Amount";
                        GLAccountDim."Original Amount" := PurchInvLines."Cost Amount";
                        GLAccountDim."Date Posted" := PurchInvLines."Posting Date";
                        GLAccountDim."Budget Year" := Format(Date2DMY(PurchInvLines."Posting Date", 3));
                        GLAccountDim.FillDimensions(GLAccountDim, PurchInvLines."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    until PurchInvLines.Next = 0;

                //Posted Credit Memo
                PurchCrMemoLines.Reset();
                PurchCrMemoLines.SetFilter("No.", '<>%1', '');
                PurchCrMemoLines.SetRange("Requisition Code", PurchaseLines."Requisition Code");
                PurchCrMemoLines.SetRange("Requisition Line", PurchaseLines."Requisition Line");
                PurchCrMemoLines.SetRange("Consultation Code", PurchaseLines."Consultation Code");
                if PurchCrMemoLines.FindSet then
                    repeat
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Purch. Cr. Memo Line");
                        GLAccountDim."Document No." := PurchCrMemoLines."Document No.";
                        GLAccountDim."Line No." := PurchCrMemoLines."Line No.";
                        GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::"Credit Memo";
                        GLAccountDim."Requisition Code" := PurchCrMemoLines."Requisition Code";
                        GLAccountDim."Requisition Line" := PurchCrMemoLines."Requisition Line";
                        GLAccountDim.Quantity := PurchCrMemoLines.Quantity;
                        GLAccountDim."Consultation Code" := PurchCrMemoLines."Consultation Code";
                        GLAccountDim."Unit Cost" := PurchCrMemoLines."Direct Unit Cost";
                        GLAccountDim."Amount(DL)" := PurchCrMemoLines."Amount Including VAT";
                        GLAccountDim."Amount without Vat" := PurchCrMemoLines.Amount;
                        GLAccountDim."Cost Amount" := PurchCrMemoLines."Cost Amount";
                        GLAccountDim."Original Amount" := PurchCrMemoLines."Cost Amount";
                        GLAccountDim."Date Posted" := PurchCrMemoLines."Posting Date";
                        GLAccountDim."Budget Year" := Format(Date2DMY(PurchCrMemoLines."Posting Date", 3));
                        GLAccountDim.FillDimensions(GLAccountDim, PurchCrMemoLines."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    until PurchCrMemoLines.Next = 0;

                //Posted Avaylable Budget
                PostedAvaylableBudgetLines.Reset;
                PostedAvaylableBudgetLines.SetRange("Requisition Code", PurchaseLines."Requisition Code");
                PostedAvaylableBudgetLines.SetRange("Requisition Line", PurchaseLines."Requisition Line");
                PostedAvaylableBudgetLines.SetRange(Status, PostedAvaylableBudgetLines.Status::Released);
                PostedAvaylableBudgetLines.SetRange("Consultation Code", PurchaseLines."Consultation Code");
                if PostedAvaylableBudgetLines.FindSet() then
                    repeat
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Posted Avaylable Budget Line");
                        GLAccountDim."Document No." := PostedAvaylableBudgetLines."Avay Code";
                        GLAccountDim."Line No." := PostedAvaylableBudgetLines."Line No.";
                        GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::"Avaylable Budget";
                        GLAccountDim."Requisition Code" := PostedAvaylableBudgetLines."Requisition Code";
                        GLAccountDim."Requisition Line" := PostedAvaylableBudgetLines."Requisition Line";
                        GLAccountDim.Quantity := PostedAvaylableBudgetLines.Quantity;
                        GLAccountDim."Consultation Code" := PostedAvaylableBudgetLines."Consultation Code";
                        GLAccountDim."Unit Cost" := PostedAvaylableBudgetLines."Unit Cost";
                        GLAccountDim."Amount(DL)" := PostedAvaylableBudgetLines."Amount Including VAT";
                        GLAccountDim."Amount without Vat" := PostedAvaylableBudgetLines.Amount;
                        GLAccountDim."Cost Amount" := PostedAvaylableBudgetLines."Cost Amount";
                        GLAccountDim."Original Amount" := PostedAvaylableBudgetLines."Cost Amount";
                        GLAccountDim."Date Posted" := PostedAvaylableBudgetLines."Avay Date";
                        GLAccountDim."Budget Year" := Format(Date2DMY(PostedAvaylableBudgetLines."Avay Date", 3));
                        GLAccountDim.FillDimensions(GLAccountDim, PostedAvaylableBudgetLines."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    until PostedAvaylableBudgetLines.Next = 0;

                //Posted PAQ
                PostedPAQLines.Reset;
                PostedPAQLines.SetRange("Requisition Code", PurchaseLines."Requisition Code");
                PostedPAQLines.SetRange("Requisition Line", PurchaseLines."Requisition Line");
                PostedPAQLines.SetRange(Status, PostedPAQLines.Status::Released);
                PostedPAQLines.SetRange("Consultation Code", PurchaseLines."Consultation Code");
                PostedPAQLines.SetFilter("No.", '<>%1', '');
                if PostedPAQLines.FindSet() then
                    repeat
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Posted PAQ Lines");
                        GLAccountDim."Document No." := PostedPAQLines."PAQ Code";
                        GLAccountDim."Line No." := PostedPAQLines."Line No.";
                        GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::Adjudication;
                        GLAccountDim."Requisition Code" := PostedPAQLines."Requisition Code";
                        GLAccountDim."Requisition Line" := PostedPAQLines."Requisition Line";
                        GLAccountDim.Quantity := PostedPAQLines.Quantity;
                        GLAccountDim."Consultation Code" := PostedPAQLines."Consultation Code";
                        GLAccountDim."Unit Cost" := PostedPAQLines."Unit Cost";
                        GLAccountDim."Amount(DL)" := PostedPAQLines."Amount Including VAT";
                        GLAccountDim."Amount without Vat" := PostedPAQLines.Amount;
                        GLAccountDim."Cost Amount" := PostedPAQLines."Cost Amount";
                        GLAccountDim."Original Amount" := PostedPAQLines."Cost Amount";
                        GLAccountDim."Date Posted" := PostedPAQLines."PAQ Date";
                        GLAccountDim."Budget Year" := Format(Date2DMY(PostedPAQLines."PAQ Date", 3));
                        GLAccountDim.FillDimensions(GLAccountDim, PostedPAQLines."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    until PostedPAQLines.Next = 0;

                //Current amounts = base to compare
                PurchaseLinesCompare.Reset();
                PurchaseLinesCompare.SetRange("Document Type", PurchaseLines."Document Type");
                PurchaseLinesCompare.SetRange("Document No.", PurchaseLines."Document No.");
                PurchaseLinesCompare.SetRange("Requisition Code", PurchaseLines."Requisition Code");
                PurchaseLinesCompare.SetRange("Requisition Line", PurchaseLines."Requisition Line");
                PurchaseLinesCompare.SetRange("Consultation Code", PurchaseLines."Consultation Code");
                PurchaseLinesCompare.SetFilter("No.", '<>%1', '');
                if PurchaseLines."Document Type" = PurchaseLines."Document Type"::Quote then
                    PurchaseLinesCompare.SetFilter("Selection Code", '<>%1', '');
                if PurchaseLinesCompare.FindSet() then begin
                    repeat
                        PurchHeader.get(PurchaseLinesCompare."Document Type", PurchaseLinesCompare."Document No.");
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Purchase Line");
                        GLAccountDim."Document No." := PurchaseLinesCompare."Document No.";
                        GLAccountDim."Line No." := PurchaseLinesCompare."Line No.";
                        GLAccountDim."Requisition Code" := PurchaseLinesCompare."Requisition Code";
                        GLAccountDim."Requisition Line" := PurchaseLinesCompare."Requisition Line";
                        GLAccountDim.Quantity := PurchaseLinesCompare.Quantity;
                        GLAccountDim."Consultation Code" := PurchaseLinesCompare."Consultation Code";
                        GLAccountDim."Unit Cost" := PurchaseLinesCompare."Unit Cost";
                        GLAccountDim."Amount(DL)" := PurchaseLinesCompare."Amount Including VAT";
                        GLAccountDim."Amount without Vat" := PurchaseLinesCompare.Amount;
                        case PurchaseLinesCompare."Document Type" of
                            "Purchase Document Type"::Order:
                                begin
                                    GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::Order;
                                    GLAccountDim."Cost Amount" := GLAccountDim.GetCompareOrderAmounts(PurchaseLinesCompare);
                                    GLAccountDim."Date Posted" := PurchHeader."Posting Date";
                                    GLAccountDim."Budget Year" := Format(Date2DMY(PurchHeader."Posting Date", 3));
                                end;
                            "Purchase Document Type"::Quote:
                                begin
                                    GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::Quote;
                                    GLAccountDim."Cost Amount" := PurchaseLinesCompare."Cost Amount";
                                    GLAccountDim."Date Posted" := PurchHeader."Order Date";
                                    GLAccountDim."Budget Year" := Format(Date2DMY(PurchHeader."Order Date", 3));
                                end;
                            "Purchase Document Type"::Invoice:
                                begin
                                    GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::Invoice;
                                    GLAccountDim."Cost Amount" := PurchaseLinesCompare."Cost Amount";
                                    GLAccountDim."Date Posted" := PurchHeader."Posting Date";
                                    GLAccountDim."Budget Year" := Format(Date2DMY(PurchHeader."Posting Date", 3));
                                end;
                        end;
                        GLAccountDim."Original Amount" := PurchaseLinesCompare."Cost Amount";
                        GLAccountDim.FillDimensions(GLAccountDim, PurchaseLinesCompare."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    until PurchaseLinesCompare.Next = 0;
                end;
            until PurchaseLines.Next() = 0;

        // Calculate Amounts
        Clear(AmountInvoiced);
        Clear(AmountCredited);
        Clear(AmountAdjudicated);
        Clear(AmountAvaylabled);
        Clear(Quantity);

        Clear(GLAccountDim2);
        GLAccountDim2.FillDimensions(GLAccountDim2, pPurchaseLines."Dimension Set ID");

        GLAccountDim.Reset;
        GLAccountDim.SetRange("Tab Code", Format(DATABASE::"Purch. Inv. Line"));
        GLAccountDim.SetRange("Requisition Code", pPurchaseLines."Requisition Code");
        GLAccountDim.SetRange("Requisition Line", pPurchaseLines."Requisition Line");
        GLAccountDim.SetRange("Consultation Code", pPurchaseLines."Consultation Code");
        GLAccountDim.SetRange(Dimension1, GLAccountDim2.Dimension1);
        GLAccountDim.SetRange(Dimension2, GLAccountDim2.Dimension2);
        GLAccountDim.SetRange(Dimension3, GLAccountDim2.Dimension3);
        GLAccountDim.SetRange(Dimension4, GLAccountDim2.Dimension4);
        GLAccountDim.SetRange("Dimension Value1", GLAccountDim2."Dimension Value1");
        GLAccountDim.SetRange("Dimension Value2", GLAccountDim2."Dimension Value2");
        GLAccountDim.SetRange("Dimension Value3", GLAccountDim2."Dimension Value3");
        GLAccountDim.SetRange("Dimension Value4", GLAccountDim2."Dimension Value4");
        if GLAccountDim.FindSet then begin
            repeat
                case BudgetConfig."Budget Appropriation Method" of
                    BudgetConfig."Budget Appropriation Method"::"Amount Without VAT":
                        AmountInvoiced += GLAccountDim."Amount without Vat";
                    BudgetConfig."Budget Appropriation Method"::"Amount With VAT":
                        AmountInvoiced += GLAccountDim."Amount(DL)";
                    BudgetConfig."Budget Appropriation Method"::"Cost Amount":
                        AmountInvoiced += GLAccountDim."Cost Amount";
                end;
                Quantity += GLAccountDim.Quantity;
            until GLAccountDim.Next = 0;
        end;

        GLAccountDim.Reset;
        GLAccountDim.SetRange("Tab Code", Format(DATABASE::"Purch. Cr. Memo Line"));
        GLAccountDim.SetRange("Requisition Code", pPurchaseLines."Requisition Code");
        GLAccountDim.SetRange("Requisition Line", pPurchaseLines."Requisition Line");
        GLAccountDim.SetRange("Consultation Code", pPurchaseLines."Consultation Code");
        GLAccountDim.SetRange(Dimension1, GLAccountDim2.Dimension1);
        GLAccountDim.SetRange(Dimension2, GLAccountDim2.Dimension2);
        GLAccountDim.SetRange(Dimension3, GLAccountDim2.Dimension3);
        GLAccountDim.SetRange(Dimension4, GLAccountDim2.Dimension4);
        GLAccountDim.SetRange("Dimension Value1", GLAccountDim2."Dimension Value1");
        GLAccountDim.SetRange("Dimension Value2", GLAccountDim2."Dimension Value2");
        GLAccountDim.SetRange("Dimension Value3", GLAccountDim2."Dimension Value3");
        GLAccountDim.SetRange("Dimension Value4", GLAccountDim2."Dimension Value4");
        if GLAccountDim.FindSet then begin
            repeat
                case BudgetConfig."Budget Appropriation Method" of
                    BudgetConfig."Budget Appropriation Method"::"Amount Without VAT":
                        AmountCredited += GLAccountDim."Amount without Vat";
                    BudgetConfig."Budget Appropriation Method"::"Amount With VAT":
                        AmountCredited += GLAccountDim."Amount(DL)";
                    BudgetConfig."Budget Appropriation Method"::"Cost Amount":
                        AmountCredited += GLAccountDim."Cost Amount";
                end;
                Quantity -= GLAccountDim.Quantity;
            until GLAccountDim.Next = 0;
        end;

        GLAccountDim.Reset;
        GLAccountDim.SetRange("Tab Code", Format(DATABASE::"Posted PAQ Lines"));
        GLAccountDim.SetRange("Requisition Code", pPurchaseLines."Requisition Code");
        GLAccountDim.SetRange("Requisition Line", pPurchaseLines."Requisition Line");
        GLAccountDim.SetRange("Consultation Code", pPurchaseLines."Consultation Code");
        GLAccountDim.SetRange(Dimension1, GLAccountDim2.Dimension1);
        GLAccountDim.SetRange(Dimension2, GLAccountDim2.Dimension2);
        GLAccountDim.SetRange(Dimension3, GLAccountDim2.Dimension3);
        GLAccountDim.SetRange(Dimension4, GLAccountDim2.Dimension4);
        GLAccountDim.SetRange("Dimension Value1", GLAccountDim2."Dimension Value1");
        GLAccountDim.SetRange("Dimension Value2", GLAccountDim2."Dimension Value2");
        GLAccountDim.SetRange("Dimension Value3", GLAccountDim2."Dimension Value3");
        GLAccountDim.SetRange("Dimension Value4", GLAccountDim2."Dimension Value4");
        if GLAccountDim.FindSet then begin
            repeat
                case BudgetConfig."Budget Appropriation Method" of
                    BudgetConfig."Budget Appropriation Method"::"Amount Without VAT":
                        AmountAdjudicated += GLAccountDim."Amount without Vat";
                    BudgetConfig."Budget Appropriation Method"::"Amount With VAT":
                        AmountAdjudicated += GLAccountDim."Amount(DL)";
                    BudgetConfig."Budget Appropriation Method"::"Cost Amount":
                        AmountAdjudicated += GLAccountDim."Cost Amount";
                end;
            until GLAccountDim.Next = 0;
        end;

        GLAccountDim.Reset;
        GLAccountDim.SetRange("Tab Code", Format(DATABASE::"Posted Avaylable Budget Line"));
        GLAccountDim.SetRange("Requisition Code", pPurchaseLines."Requisition Code");
        GLAccountDim.SetRange("Requisition Line", pPurchaseLines."Requisition Line");
        GLAccountDim.SetRange("Consultation Code", pPurchaseLines."Consultation Code");
        GLAccountDim.SetRange(Dimension1, GLAccountDim2.Dimension1);
        GLAccountDim.SetRange(Dimension2, GLAccountDim2.Dimension2);
        GLAccountDim.SetRange(Dimension3, GLAccountDim2.Dimension3);
        GLAccountDim.SetRange(Dimension4, GLAccountDim2.Dimension4);
        GLAccountDim.SetRange("Dimension Value1", GLAccountDim2."Dimension Value1");
        GLAccountDim.SetRange("Dimension Value2", GLAccountDim2."Dimension Value2");
        GLAccountDim.SetRange("Dimension Value3", GLAccountDim2."Dimension Value3");
        GLAccountDim.SetRange("Dimension Value4", GLAccountDim2."Dimension Value4");
        if GLAccountDim.FindSet then begin
            repeat
                case BudgetConfig."Budget Appropriation Method" of
                    BudgetConfig."Budget Appropriation Method"::"Amount Without VAT":
                        AmountAvaylabled += GLAccountDim."Amount without Vat";
                    BudgetConfig."Budget Appropriation Method"::"Amount With VAT":
                        AmountAvaylabled += GLAccountDim."Amount(DL)";
                    BudgetConfig."Budget Appropriation Method"::"Cost Amount":
                        AmountAvaylabled += GLAccountDim."Cost Amount";
                end;
            until GLAccountDim.Next = 0;
        end;

        Clear(DifferenceAmount);
        DifferenceAmount := AmountAvaylabled - (AmountInvoiced - AmountCredited);
        If DifferenceAmount <> 0 then begin
            Clear(TempPurchaseLine);
            TempPurchaseLine.DeleteAll();
            TempPurchaseLine := pPurchaseLines;
            UpdateTempAmounts(TempPurchaseLine, DifferenceAmount);
            CduAvay.CreateAdjustAvay(TempPurchaseLine);
        end;

        Clear(DifferenceAmount);
        DifferenceAmount := AmountAdjudicated - (AmountInvoiced - AmountCredited);
        If DifferenceAmount <> 0 then begin
            Clear(TempPurchaseLine);
            TempPurchaseLine.DeleteAll();
            TempPurchaseLine := pPurchaseLines;
            UpdateTempAmounts(TempPurchaseLine, DifferenceAmount);
            CduPAQ.CreateAdjustPAQ(TempPurchaseLine);
        end;
    end;

    local procedure UpdateTempAmounts(var TempPurchaseLine: Record "Purchase Line" temporary; DifferenceAmount: Decimal)
    var
        BudgetApropriationMethod: Enum "Budget Appropriation Method";
        PurchHeader: Record "Purchase Header";
        Currency: Record Currency;
        CurrExchRate: Record "Currency Exchange Rate";
        VATPostingSetup: Record "VAT Posting Setup";
    begin

        TempPurchaseLine.GetPurchHeader(PurchHeader, Currency);
        BudgetApropriationMethod := PurchHeader."Budget Appropriation Method";

        case BudgetApropriationMethod of
            BudgetApropriationMethod::"Cost Amount":
                begin
                    TempPurchaseLine."Cost Amount" := (TempPurchaseLine."Cost Amount" - DifferenceAmount);
                    TempPurchaseLine.Amount := Round(TempPurchaseLine."Cost Amount" / (1 + (TempPurchaseLine."PTSS ND %" / 100)), Currency."Amount Rounding Precision");
                    TempPurchaseLine."Amount Including VAT" := Round(TempPurchaseLine.Amount + TempPurchaseLine.Amount * (TempPurchaseLine."VAT %" + TempPurchaseLine."PTSS ND %") / 100, Currency."Amount Rounding Precision");
                    If TempPurchaseLine."Currency Code" <> '' then begin
                        TempPurchaseLine.Amount := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", TempPurchaseLine.Amount, PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        TempPurchaseLine."Amount Including VAT" := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", TempPurchaseLine."Amount Including VAT", PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        TempPurchaseLine."Cost Amount" := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", TempPurchaseLine."Cost Amount", PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                    end;
                end;
            BudgetApropriationMethod::"Amount Without VAT":
                begin
                    TempPurchaseLine.Amount := (TempPurchaseLine.Amount - DifferenceAmount);
                    TempPurchaseLine."Amount Including VAT" := Round(TempPurchaseLine.Amount + TempPurchaseLine.Amount * (TempPurchaseLine."VAT %" + TempPurchaseLine."PTSS ND %") / 100, Currency."Amount Rounding Precision");
                    TempPurchaseLine."Cost Amount" := TempPurchaseLine.Amount;
                    IF (TempPurchaseLine."VAT %" + TempPurchaseLine."PTSS ND %" <> 0) THEN
                        TempPurchaseLine."Cost Amount" += ROUND((TempPurchaseLine."Amount Including VAT" - TempPurchaseLine.Amount) / (TempPurchaseLine."VAT %" + TempPurchaseLine."PTSS ND %") * TempPurchaseLine."PTSS ND %", Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                    IF (TempPurchaseLine."VAT %" + TempPurchaseLine."PTSS ND %" = 0) AND (TempPurchaseLine."VAT Calculation Type" = TempPurchaseLine."VAT Calculation Type"::"Reverse Charge VAT") THEN BEGIN
                        IF VATPostingSetup.GET(TempPurchaseLine."VAT Bus. Posting Group", TempPurchaseLine."VAT Prod. Posting Group") THEN BEGIN
                            TempPurchaseLine."Cost Amount" += ROUND(TempPurchaseLine.Amount * (VATPostingSetup."PTSS VAT N.D. %") / 100, Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                        END;
                    END;
                    If TempPurchaseLine."Currency Code" <> '' then begin
                        TempPurchaseLine.Amount := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", TempPurchaseLine.Amount, PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        TempPurchaseLine."Amount Including VAT" := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", TempPurchaseLine."Amount Including VAT", PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        TempPurchaseLine."Cost Amount" := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", TempPurchaseLine."Cost Amount", PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                    end;
                end;
            BudgetApropriationMethod::"Amount With VAT":
                begin
                    TempPurchaseLine."Amount Including VAT" := (TempPurchaseLine."Amount Including VAT" - DifferenceAmount);
                    TempPurchaseLine.Amount := Round(TempPurchaseLine."Amount Including VAT" / (1 * TempPurchaseLine."VAT %" / 100), Currency."Amount Rounding Precision");
                    TempPurchaseLine."Cost Amount" := TempPurchaseLine.Amount;
                    IF (TempPurchaseLine."VAT %" + TempPurchaseLine."PTSS ND %" <> 0) THEN
                        TempPurchaseLine."Cost Amount" += ROUND((TempPurchaseLine."Amount Including VAT" - TempPurchaseLine.Amount) / (TempPurchaseLine."VAT %" + TempPurchaseLine."PTSS ND %") * TempPurchaseLine."PTSS ND %", Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                    IF (TempPurchaseLine."VAT %" + TempPurchaseLine."PTSS ND %" = 0) AND (TempPurchaseLine."VAT Calculation Type" = TempPurchaseLine."VAT Calculation Type"::"Reverse Charge VAT") THEN BEGIN
                        IF VATPostingSetup.GET(TempPurchaseLine."VAT Bus. Posting Group", TempPurchaseLine."VAT Prod. Posting Group") THEN BEGIN
                            TempPurchaseLine."Cost Amount" += ROUND(TempPurchaseLine.Amount * (VATPostingSetup."PTSS VAT N.D. %") / 100, Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                        END;
                    END;
                    If TempPurchaseLine."Currency Code" <> '' then begin
                        TempPurchaseLine.Amount := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", TempPurchaseLine.Amount, PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        TempPurchaseLine."Amount Including VAT" := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", TempPurchaseLine."Amount Including VAT", PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        TempPurchaseLine."Cost Amount" := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", TempPurchaseLine."Cost Amount", PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                    end;
                end;
        end;

    end;

    procedure GetPurchaseLineAmounts(pPurchaseLines: Record "Purchase Line"; var pAmountInvoiced: Decimal; var pAmountCredited: Decimal; var pAmountAvaylabled: Decimal; var pAmountAdjudicated: Decimal; var pQuantity: Decimal)
    var
        BudgetConfig: Record "Budget Configuration";
        PurchaseLines: Record "Purchase Line";
        GLAccountDim: Record "G/L Account Dimensions" temporary;
        GLAccountDim2: Record "G/L Account Dimensions" temporary;
        PurchInvLines: Record "Purch. Inv. Line";
        PurchCrMemoLines: Record "Purch. Cr. Memo Line";
        PostedAvaylableBudgetLines: Record "Posted Avaylable Budget Line";
        PostedPAQLines: Record "Posted PAQ Lines";
        PurchaseLinesCompare: Record "Purchase Line";
        PurchHeader: Record "Purchase Header";
    begin
        BudgetConfig.Get();

        PurchaseLines.Reset();
        PurchaseLines.SetRange("Document Type", pPurchaseLines."Document Type");
        PurchaseLines.SetRange("Document No.", pPurchaseLines."Document No.");
        PurchaseLines.SetRange("Line No.", pPurchaseLines."Line No.");
        PurchaseLines.SetRange("Requisition Code", pPurchaseLines."Requisition Code");
        PurchaseLines.SetRange("Requisition Line", pPurchaseLines."Requisition Line");
        PurchaseLines.SetRange("Consultation Code", pPurchaseLines."Consultation Code");
        PurchaseLines.SetFilter("No.", '<>%1', '');
        if pPurchaseLines."Document Type" = pPurchaseLines."Document Type"::Quote then
            PurchaseLines.SetFilter("Selection Code", '<>%1', '');
        if PurchaseLines.FindSet then
            repeat
                // Posted Invoices
                PurchInvLines.Reset;
                PurchInvLines.SetFilter("No.", '<>%1', '');
                PurchInvLines.SetRange("Requisition Code", PurchaseLines."Requisition Code");
                PurchInvLines.SetRange("Requisition Line", PurchaseLines."Requisition Line");
                PurchInvLines.SetRange("Consultation Code", PurchaseLines."Consultation Code");
                if PurchInvLines.FindSet then
                    repeat
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Purch. Inv. Line");
                        GLAccountDim."Document No." := PurchInvLines."Document No.";
                        GLAccountDim."Line No." := PurchInvLines."Line No.";
                        GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::Invoice;
                        GLAccountDim."Requisition Code" := PurchInvLines."Requisition Code";
                        GLAccountDim."Requisition Line" := PurchInvLines."Requisition Line";
                        GLAccountDim.Quantity := PurchInvLines.Quantity;
                        GLAccountDim."Consultation Code" := PurchInvLines."Consultation Code";
                        GLAccountDim."Unit Cost" := PurchInvLines."Direct Unit Cost";
                        GLAccountDim."Amount(DL)" := PurchInvLines."Amount Including VAT";
                        GLAccountDim."Amount without Vat" := PurchInvLines.Amount;
                        GLAccountDim."Cost Amount" := PurchInvLines."Cost Amount";
                        GLAccountDim."Original Amount" := PurchInvLines."Cost Amount";
                        GLAccountDim."Date Posted" := PurchInvLines."Posting Date";
                        GLAccountDim."Budget Year" := Format(Date2DMY(PurchInvLines."Posting Date", 3));
                        GLAccountDim.FillDimensions(GLAccountDim, PurchInvLines."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    until PurchInvLines.Next = 0;

                //Posted Credit Memo
                PurchCrMemoLines.Reset();
                PurchCrMemoLines.SetFilter("No.", '<>%1', '');
                PurchCrMemoLines.SetRange("Requisition Code", PurchaseLines."Requisition Code");
                PurchCrMemoLines.SetRange("Requisition Line", PurchaseLines."Requisition Line");
                PurchCrMemoLines.SetRange("Consultation Code", PurchaseLines."Consultation Code");
                if PurchCrMemoLines.FindSet then
                    repeat
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Purch. Cr. Memo Line");
                        GLAccountDim."Document No." := PurchCrMemoLines."Document No.";
                        GLAccountDim."Line No." := PurchCrMemoLines."Line No.";
                        GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::"Credit Memo";
                        GLAccountDim."Requisition Code" := PurchCrMemoLines."Requisition Code";
                        GLAccountDim."Requisition Line" := PurchCrMemoLines."Requisition Line";
                        GLAccountDim.Quantity := PurchCrMemoLines.Quantity;
                        GLAccountDim."Consultation Code" := PurchCrMemoLines."Consultation Code";
                        GLAccountDim."Unit Cost" := PurchCrMemoLines."Direct Unit Cost";
                        GLAccountDim."Amount(DL)" := PurchCrMemoLines."Amount Including VAT";
                        GLAccountDim."Amount without Vat" := PurchCrMemoLines.Amount;
                        GLAccountDim."Cost Amount" := PurchCrMemoLines."Cost Amount";
                        GLAccountDim."Original Amount" := PurchCrMemoLines."Cost Amount";
                        GLAccountDim."Date Posted" := PurchCrMemoLines."Posting Date";
                        GLAccountDim."Budget Year" := Format(Date2DMY(PurchCrMemoLines."Posting Date", 3));
                        GLAccountDim.FillDimensions(GLAccountDim, PurchCrMemoLines."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    until PurchCrMemoLines.Next = 0;

                //Posted Avaylable Budget
                PostedAvaylableBudgetLines.Reset;
                PostedAvaylableBudgetLines.SetRange("Requisition Code", PurchaseLines."Requisition Code");
                PostedAvaylableBudgetLines.SetRange("Requisition Line", PurchaseLines."Requisition Line");
                PostedAvaylableBudgetLines.SetRange(Status, PostedAvaylableBudgetLines.Status::Released);
                PostedAvaylableBudgetLines.SetRange("Consultation Code", PurchaseLines."Consultation Code");
                if PostedAvaylableBudgetLines.FindSet() then
                    repeat
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Posted Avaylable Budget Line");
                        GLAccountDim."Document No." := PostedAvaylableBudgetLines."Avay Code";
                        GLAccountDim."Line No." := PostedAvaylableBudgetLines."Line No.";
                        GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::"Avaylable Budget";
                        GLAccountDim."Requisition Code" := PostedAvaylableBudgetLines."Requisition Code";
                        GLAccountDim."Requisition Line" := PostedAvaylableBudgetLines."Requisition Line";
                        GLAccountDim.Quantity := PostedAvaylableBudgetLines.Quantity;
                        GLAccountDim."Consultation Code" := PostedAvaylableBudgetLines."Consultation Code";
                        GLAccountDim."Unit Cost" := PostedAvaylableBudgetLines."Unit Cost";
                        GLAccountDim."Amount(DL)" := PostedAvaylableBudgetLines."Amount Including VAT";
                        GLAccountDim."Amount without Vat" := PostedAvaylableBudgetLines.Amount;
                        GLAccountDim."Cost Amount" := PostedAvaylableBudgetLines."Cost Amount";
                        GLAccountDim."Original Amount" := PostedAvaylableBudgetLines."Cost Amount";
                        GLAccountDim."Date Posted" := PostedAvaylableBudgetLines."Avay Date";
                        GLAccountDim."Budget Year" := Format(Date2DMY(PostedAvaylableBudgetLines."Avay Date", 3));
                        GLAccountDim.FillDimensions(GLAccountDim, PostedAvaylableBudgetLines."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    until PostedAvaylableBudgetLines.Next = 0;

                //Posted PAQ
                PostedPAQLines.Reset;
                PostedPAQLines.SetRange("Requisition Code", PurchaseLines."Requisition Code");
                PostedPAQLines.SetRange("Requisition Line", PurchaseLines."Requisition Line");
                PostedPAQLines.SetRange(Status, PostedPAQLines.Status::Released);
                PostedPAQLines.SetRange("Consultation Code", PurchaseLines."Consultation Code");
                PostedPAQLines.SetFilter("No.", '<>%1', '');
                if PostedPAQLines.FindSet() then
                    repeat
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Posted PAQ Lines");
                        GLAccountDim."Document No." := PostedPAQLines."PAQ Code";
                        GLAccountDim."Line No." := PostedPAQLines."Line No.";
                        GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::Adjudication;
                        GLAccountDim."Requisition Code" := PostedPAQLines."Requisition Code";
                        GLAccountDim."Requisition Line" := PostedPAQLines."Requisition Line";
                        GLAccountDim.Quantity := PostedPAQLines.Quantity;
                        GLAccountDim."Consultation Code" := PostedPAQLines."Consultation Code";
                        GLAccountDim."Unit Cost" := PostedPAQLines."Unit Cost";
                        GLAccountDim."Amount(DL)" := PostedPAQLines."Amount Including VAT";
                        GLAccountDim."Amount without Vat" := PostedPAQLines.Amount;
                        GLAccountDim."Cost Amount" := PostedPAQLines."Cost Amount";
                        GLAccountDim."Original Amount" := PostedPAQLines."Cost Amount";
                        GLAccountDim."Date Posted" := PostedPAQLines."PAQ Date";
                        GLAccountDim."Budget Year" := Format(Date2DMY(PostedPAQLines."PAQ Date", 3));
                        GLAccountDim.FillDimensions(GLAccountDim, PostedPAQLines."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    until PostedPAQLines.Next = 0;

                //Current amounts = base to compare
                PurchaseLinesCompare.Reset();
                PurchaseLinesCompare.SetRange("Document Type", PurchaseLines."Document Type");
                PurchaseLinesCompare.SetRange("Document No.", PurchaseLines."Document No.");
                PurchaseLinesCompare.SetRange("Requisition Code", PurchaseLines."Requisition Code");
                PurchaseLinesCompare.SetRange("Requisition Line", PurchaseLines."Requisition Line");
                PurchaseLinesCompare.SetRange("Consultation Code", PurchaseLines."Consultation Code");
                PurchaseLinesCompare.SetFilter("No.", '<>%1', '');
                if PurchaseLines."Document Type" = PurchaseLines."Document Type"::Quote then
                    PurchaseLinesCompare.SetFilter("Selection Code", '<>%1', '');
                if PurchaseLinesCompare.FindSet() then begin
                    repeat
                        PurchHeader.get(PurchaseLinesCompare."Document Type", PurchaseLinesCompare."Document No.");
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Purchase Line");
                        GLAccountDim."Document No." := PurchaseLinesCompare."Document No.";
                        GLAccountDim."Line No." := PurchaseLinesCompare."Line No.";
                        GLAccountDim."Requisition Code" := PurchaseLinesCompare."Requisition Code";
                        GLAccountDim."Requisition Line" := PurchaseLinesCompare."Requisition Line";
                        GLAccountDim.Quantity := PurchaseLinesCompare.Quantity;
                        GLAccountDim."Consultation Code" := PurchaseLinesCompare."Consultation Code";
                        GLAccountDim."Unit Cost" := PurchaseLinesCompare."Unit Cost";
                        GLAccountDim."Amount(DL)" := PurchaseLinesCompare."Amount Including VAT";
                        GLAccountDim."Amount without Vat" := PurchaseLinesCompare.Amount;
                        case PurchaseLinesCompare."Document Type" of
                            "Purchase Document Type"::Order:
                                begin
                                    GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::Order;
                                    GLAccountDim."Cost Amount" := GLAccountDim.GetCompareOrderAmounts(PurchaseLinesCompare);
                                    GLAccountDim."Date Posted" := PurchHeader."Posting Date";
                                    GLAccountDim."Budget Year" := Format(Date2DMY(PurchHeader."Posting Date", 3));
                                end;
                            "Purchase Document Type"::Quote:
                                begin
                                    GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::Quote;
                                    GLAccountDim."Cost Amount" := PurchaseLinesCompare."Cost Amount";
                                    GLAccountDim."Date Posted" := PurchHeader."Order Date";
                                    GLAccountDim."Budget Year" := Format(Date2DMY(PurchHeader."Order Date", 3));
                                end;
                            "Purchase Document Type"::Invoice:
                                begin
                                    GLAccountDim."Doc. Type" := GLAccountDim."Doc. Type"::Invoice;
                                    GLAccountDim."Cost Amount" := PurchaseLinesCompare."Cost Amount";
                                    GLAccountDim."Date Posted" := PurchHeader."Posting Date";
                                    GLAccountDim."Budget Year" := Format(Date2DMY(PurchHeader."Posting Date", 3));
                                end;
                        end;
                        GLAccountDim."Original Amount" := PurchaseLinesCompare."Cost Amount";
                        GLAccountDim.FillDimensions(GLAccountDim, PurchaseLinesCompare."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    until PurchaseLinesCompare.Next = 0;
                end;
            until PurchaseLines.Next() = 0;

        // Calculate Amounts
        Clear(pAmountInvoiced);
        Clear(pAmountCredited);
        Clear(pAmountAdjudicated);
        Clear(pAmountAvaylabled);
        Clear(pQuantity);

        Clear(GLAccountDim2);
        GLAccountDim2.FillDimensions(GLAccountDim2, pPurchaseLines."Dimension Set ID");

        GLAccountDim.Reset;
        GLAccountDim.SetRange("Tab Code", Format(DATABASE::"Purch. Inv. Line"));
        GLAccountDim.SetRange("Requisition Code", pPurchaseLines."Requisition Code");
        GLAccountDim.SetRange("Requisition Line", pPurchaseLines."Requisition Line");
        GLAccountDim.SetRange("Consultation Code", pPurchaseLines."Consultation Code");
        GLAccountDim.SetRange(Dimension1, GLAccountDim2.Dimension1);
        GLAccountDim.SetRange(Dimension2, GLAccountDim2.Dimension2);
        GLAccountDim.SetRange(Dimension3, GLAccountDim2.Dimension3);
        GLAccountDim.SetRange(Dimension4, GLAccountDim2.Dimension4);
        GLAccountDim.SetRange("Dimension Value1", GLAccountDim2."Dimension Value1");
        GLAccountDim.SetRange("Dimension Value2", GLAccountDim2."Dimension Value2");
        GLAccountDim.SetRange("Dimension Value3", GLAccountDim2."Dimension Value3");
        GLAccountDim.SetRange("Dimension Value4", GLAccountDim2."Dimension Value4");
        if GLAccountDim.FindSet then begin
            repeat
                case BudgetConfig."Budget Appropriation Method" of
                    BudgetConfig."Budget Appropriation Method"::"Amount Without VAT":
                        pAmountInvoiced += GLAccountDim."Amount without Vat";
                    BudgetConfig."Budget Appropriation Method"::"Amount With VAT":
                        pAmountInvoiced += GLAccountDim."Amount(DL)";
                    BudgetConfig."Budget Appropriation Method"::"Cost Amount":
                        pAmountInvoiced += GLAccountDim."Cost Amount";
                end;
                pQuantity += GLAccountDim.Quantity;
            until GLAccountDim.Next = 0;
        end;

        GLAccountDim.Reset;
        GLAccountDim.SetRange("Tab Code", Format(DATABASE::"Purch. Cr. Memo Line"));
        GLAccountDim.SetRange("Requisition Code", pPurchaseLines."Requisition Code");
        GLAccountDim.SetRange("Requisition Line", pPurchaseLines."Requisition Line");
        GLAccountDim.SetRange("Consultation Code", pPurchaseLines."Consultation Code");
        GLAccountDim.SetRange(Dimension1, GLAccountDim2.Dimension1);
        GLAccountDim.SetRange(Dimension2, GLAccountDim2.Dimension2);
        GLAccountDim.SetRange(Dimension3, GLAccountDim2.Dimension3);
        GLAccountDim.SetRange(Dimension4, GLAccountDim2.Dimension4);
        GLAccountDim.SetRange("Dimension Value1", GLAccountDim2."Dimension Value1");
        GLAccountDim.SetRange("Dimension Value2", GLAccountDim2."Dimension Value2");
        GLAccountDim.SetRange("Dimension Value3", GLAccountDim2."Dimension Value3");
        GLAccountDim.SetRange("Dimension Value4", GLAccountDim2."Dimension Value4");
        if GLAccountDim.FindSet then begin
            repeat
                case BudgetConfig."Budget Appropriation Method" of
                    BudgetConfig."Budget Appropriation Method"::"Amount Without VAT":
                        pAmountCredited += GLAccountDim."Amount without Vat";
                    BudgetConfig."Budget Appropriation Method"::"Amount With VAT":
                        pAmountCredited += GLAccountDim."Amount(DL)";
                    BudgetConfig."Budget Appropriation Method"::"Cost Amount":
                        pAmountCredited += GLAccountDim."Cost Amount";
                end;
                pQuantity -= GLAccountDim.Quantity;
            until GLAccountDim.Next = 0;
        end;

        GLAccountDim.Reset;
        GLAccountDim.SetRange("Tab Code", Format(DATABASE::"Posted PAQ Lines"));
        GLAccountDim.SetRange("Requisition Code", pPurchaseLines."Requisition Code");
        GLAccountDim.SetRange("Requisition Line", pPurchaseLines."Requisition Line");
        GLAccountDim.SetRange("Consultation Code", pPurchaseLines."Consultation Code");
        GLAccountDim.SetRange(Dimension1, GLAccountDim2.Dimension1);
        GLAccountDim.SetRange(Dimension2, GLAccountDim2.Dimension2);
        GLAccountDim.SetRange(Dimension3, GLAccountDim2.Dimension3);
        GLAccountDim.SetRange(Dimension4, GLAccountDim2.Dimension4);
        GLAccountDim.SetRange("Dimension Value1", GLAccountDim2."Dimension Value1");
        GLAccountDim.SetRange("Dimension Value2", GLAccountDim2."Dimension Value2");
        GLAccountDim.SetRange("Dimension Value3", GLAccountDim2."Dimension Value3");
        GLAccountDim.SetRange("Dimension Value4", GLAccountDim2."Dimension Value4");
        if GLAccountDim.FindSet then begin
            repeat
                case BudgetConfig."Budget Appropriation Method" of
                    BudgetConfig."Budget Appropriation Method"::"Amount Without VAT":
                        pAmountAdjudicated += GLAccountDim."Amount without Vat";
                    BudgetConfig."Budget Appropriation Method"::"Amount With VAT":
                        pAmountAdjudicated += GLAccountDim."Amount(DL)";
                    BudgetConfig."Budget Appropriation Method"::"Cost Amount":
                        pAmountAdjudicated += GLAccountDim."Cost Amount";
                end;
            until GLAccountDim.Next = 0;
        end;

        GLAccountDim.Reset;
        GLAccountDim.SetRange("Tab Code", Format(DATABASE::"Posted Avaylable Budget Line"));
        GLAccountDim.SetRange("Requisition Code", pPurchaseLines."Requisition Code");
        GLAccountDim.SetRange("Requisition Line", pPurchaseLines."Requisition Line");
        GLAccountDim.SetRange("Consultation Code", pPurchaseLines."Consultation Code");
        GLAccountDim.SetRange(Dimension1, GLAccountDim2.Dimension1);
        GLAccountDim.SetRange(Dimension2, GLAccountDim2.Dimension2);
        GLAccountDim.SetRange(Dimension3, GLAccountDim2.Dimension3);
        GLAccountDim.SetRange(Dimension4, GLAccountDim2.Dimension4);
        GLAccountDim.SetRange("Dimension Value1", GLAccountDim2."Dimension Value1");
        GLAccountDim.SetRange("Dimension Value2", GLAccountDim2."Dimension Value2");
        GLAccountDim.SetRange("Dimension Value3", GLAccountDim2."Dimension Value3");
        GLAccountDim.SetRange("Dimension Value4", GLAccountDim2."Dimension Value4");
        if GLAccountDim.FindSet then begin
            repeat
                case BudgetConfig."Budget Appropriation Method" of
                    BudgetConfig."Budget Appropriation Method"::"Amount Without VAT":
                        pAmountAvaylabled += GLAccountDim."Amount without Vat";
                    BudgetConfig."Budget Appropriation Method"::"Amount With VAT":
                        pAmountAvaylabled += GLAccountDim."Amount(DL)";
                    BudgetConfig."Budget Appropriation Method"::"Cost Amount":
                        pAmountAvaylabled += GLAccountDim."Cost Amount";
                end;
            until GLAccountDim.Next = 0;
        end;
    end;

    procedure InsertRequisitionLines(Consultation: Record Consultation; var RequisitionLines: Record "Requisition Lines")
    var
        LineNo: Integer;
        ConsultationLines: Record "Consultation Lines";
        RequisitionLines2: Record "Requisition Lines";
        TempRequisitionLines: Record "Requisition Lines" temporary;
        Text001: Label 'You cant associate the requisition %1 to consultation %2 because its already in consultation %3.';
    begin
        Clear(LineNo);
        CLEAR(ConsultationLines);
        LineNo := 10000;

        ConsultationLines.SETRANGE("Consultation Code", Consultation."Consultation Code");
        IF ConsultationLines.FINDLAST THEN
            LineNo := ConsultationLines."Line No." + 10000;

        IF RequisitionLines.FINDSET THEN
            REPEAT
                RequisitionLines2.RESET;
                RequisitionLines2.SETRANGE("Requisition Code", RequisitionLines."Requisition Code");
                IF RequisitionLines2.FINDSET THEN
                    REPEAT
                        TempRequisitionLines := RequisitionLines2;
                        IF TempRequisitionLines.INSERT THEN begin
                            ConsultationLines.Reset();
                            ConsultationLines.SetRange("Requisition Code", TempRequisitionLines."Requisition Code");
                            ConsultationLines.SetRange("Requisition Line", TempRequisitionLines."Line No.");
                            ConsultationLines.SetFilter("Consultation Code", '<>%1', Consultation."Consultation Code");
                            if ConsultationLines.FindFirst() then
                                Error(Text001, TempRequisitionLines."Requisition Code", Consultation."Consultation code", ConsultationLines."Consultation Code");
                        end;
                    UNTIL RequisitionLines2.NEXT = 0;
            UNTIL RequisitionLines.NEXT = 0;

        IF TempRequisitionLines.FINDSET THEN
            REPEAT
                Clear(ConsultationLines);
                ConsultationLines.Init();
                ConsultationLines.Validate("Consultation Code", Consultation."Consultation code");
                ConsultationLines.Validate("Requisition Line", TempRequisitionLines."Line No.");
                ConsultationLines.Validate("Requisition Code", TempRequisitionLines."Requisition Code");
                ConsultationLines.Validate("Line No.", LineNo);
                ConsultationLines.Validate("Line Type", TempRequisitionLines.Type.AsInteger());
                ConsultationLines.Validate("No.", TempRequisitionLines."No.");
                ConsultationLines.Validate("Requisition Quantity", TempRequisitionLines."Requisition Quantity");
                ConsultationLines.Validate("Quote Quantity", TempRequisitionLines."Quote Quantity");
                ConsultationLines.Validate("Requisition Unit of Measure", TempRequisitionLines."Base Unit of Measure");
                ConsultationLines.Validate("Unit Cost", TempRequisitionLines."Unit Cost");
                ConsultationLines.Validate(Amount, TempRequisitionLines.Amount);
                ConsultationLines.Validate("Amount Including VAT", TempRequisitionLines."Amount Including VAT");
                ConsultationLines.Validate("Cost Amount", TempRequisitionLines."Cost Amount");
                ConsultationLines.Validate("Location Code", TempRequisitionLines."Location Code");
                ConsultationLines.Validate(Description, TempRequisitionLines.Description);
                ConsultationLines.Validate("Requisition Unit of Measure", TempRequisitionLines."Base Unit of Measure");
                ConsultationLines.Validate(Observations, TempRequisitionLines.Observations);
                ConsultationLines."Contract Year" := TempRequisitionLines."Contract Year";
                ConsultationLines."Dimension Set ID" := TempRequisitionLines."Dimension Set ID";
                DimMgt.UpdateGlobalDimFromDimSetID(ConsultationLines."Dimension Set ID", ConsultationLines."Shortcut Dimension 1 Code", ConsultationLines."Shortcut Dimension 2 Code");
                ConsultationLines.Insert(true);
                LineNo += 10000;
                RequisitionLines.GET(TempRequisitionLines."Requisition Code", TempRequisitionLines."Line No.");
                RequisitionLines."Consultation Code" := Consultation."Consultation Code";
                RequisitionLines.MODIFY;
            UNTIL TempRequisitionLines.NEXT = 0;
    end;

    procedure GetRequisitionLines(Consultation: Record Consultation)
    var
        RequsitionLinesPage: Page "Requisition Lines List";
        Requisition: Record Requisition;
        RequisitioLines: Record "Requisition Lines";
        RequisitioLines2: Record "Requisition Lines";
        QuoteLines: Record "Purchase Line";
    begin
        CLEAR(RequsitionLinesPage);
        CLEAR(RequisitioLines);
        CLEAR(Requisition);
        CLEAR(QuoteLines);

        ValidateNotSelectionCode(Consultation);

        IF Consultation.IsContract THEN BEGIN
            Requisition.SETRANGE(IsContract, TRUE);
            Requisition.SETRANGE("Contract No.", Consultation."Contract No.");
        END ELSE
            Requisition.SETRANGE(IsContract, FALSE);
        IF Requisition.FINDSET THEN
            REPEAT
                RequisitioLines.Reset();
                RequisitioLines.SETRANGE("Requisition Code", Requisition."Requisition Code");
                RequisitioLines.SETRANGE(Status, RequisitioLines.Status::Released);
                RequisitioLines.SETFILTER("Consultation Code", '=%1', '');
                IF RequisitioLines.FINDSET THEN
                    REPEAT
                        RequisitioLines2.GET(RequisitioLines."Requisition Code", RequisitioLines."Line No.");
                        RequisitioLines2.MARK(TRUE);
                    UNTIL RequisitioLines.NEXT = 0;
            UNTIL Requisition.NEXT = 0;

        RequisitioLines2.FILTERGROUP(2);
        RequisitioLines2.MARKEDONLY(TRUE);
        RequisitioLines2.FILTERGROUP(0);
        RequsitionLinesPage.SetConsultationCode(Consultation."Consultation code");
        RequsitionLinesPage.SETTABLEVIEW(RequisitioLines2);
        RequsitionLinesPage.SETRECORD(RequisitioLines2);
        RequsitionLinesPage.RUNMODAL;
    end;

    procedure CreatePAQ(Consultation: Record Consultation)
    var
        CduPAQ: Codeunit PAQ;
    begin
        If CduPAQ.CheckPAQCreationPossible(Consultation) then
            CduPAQ.CreatePAQ(Consultation);
    end;

    procedure CreateAvaylableBudget(Consultation: Record Consultation)
    var
        CduAvay: Codeunit AvaylableBudget;
    begin
        If CduAvay.CheckAvayCreationPossible(Consultation) then
            CduAvay.CreateAvaylableBudget(Consultation);
    end;

    procedure CreateContractPAQ(Consultation: Record Consultation)
    var
        CduPAQ: Codeunit PAQ;
    begin
        If CduPAQ.CheckContractPAQCreationPossible(Consultation) then
            CduPAQ.CreateContractPAQ(Consultation);
    end;

    procedure CreateContractAvaylableBudget(Consultation: Record Consultation)
    var
        CduAvay: Codeunit AvaylableBudget;
    begin
        If CduAvay.CheckContractAvayCreationPossible(Consultation) then
            CduAvay.CreateContractAvaylableBudget(Consultation);
    end;

    procedure PreferredVendor(Consultation: Record Consultation)
    var
        PreferredVendor: Record "Preferred Vendor";
        ConsultationLines: Record "Consultation Lines";
        ItemVendor: Record "Item Vendor";
        ContactBusinessRelation: Record "Contact Business Relation";
        BudgetPermissions: Record "Budget Permissions";
        Text001: Label 'Do you want to create quotes?';
    begin
        PreferredVendor.Reset();
        PreferredVendor.SetRange("User Active", UserId);
        PreferredVendor.DeleteAll();

        ConsultationLines.Reset();
        ConsultationLines.SetRange("Consultation Code", Consultation."Consultation code");
        ConsultationLines.SetRange("Line Type", "Documents Line Type"::Item);
        If ConsultationLines.FindSet() then
            repeat
                ItemVendor.Reset;
                ItemVendor.SetRange("Item No.", ConsultationLines."No.");
                if ItemVendor.FindSet() then
                    repeat
                        ContactBusinessRelation.Reset;
                        ContactBusinessRelation.SetRange("No.", ItemVendor."Vendor No.");
                        if ContactBusinessRelation.Findset() then
                            PreferredVendor.Init;
                        PreferredVendor."Consultation Code" := Consultation."Consultation code";
                        PreferredVendor."Contact No." := ContactBusinessRelation."Contact No.";
                        if not PreferredVendor.Insert(true) then;
                    until ItemVendor.Next = 0;
            until ConsultationLines.Next() = 0;

        ValidatePermissions("Consultation Permissions"::"Create Quote");

        if not Confirm(Text001, false) then
            exit;

        CreateConsultationQuote(Consultation);
    end;

    local procedure CreateConsultationQuote(Consultation: Record Consultation)
    var
        PreferredVendor: Record "Preferred Vendor";
        QuoteHeader: Record "Purchase Header";
        QuoteLines: Record "Purchase Line";
        PreferredVendorPage: Page "Preferred Vendor";
        PurchaseHeader: Record "Purchase Header";
        ConsultationLines: Record "Consultation Lines";
        Requisition: Record Requisition;
        RequisitionLines: Record "Requisition Lines";
        CduBudget: Codeunit Budget;
        WindowDialog: Dialog;
        ComparePosition: Integer;
        LineNo: Integer;
        Text001: Label 'Creating Quotes';
        Text002: Label 'There is nothing to create.';
    begin
        Clear(WindowDialog);
        Clear(PreferredVendorPage);
        Clear(LineNo);

        Commit();
        ValidateOpenRequisitions(Consultation);

        PreferredVendor.Reset();
        PreferredVendor.FilterGroup(0);
        PreferredVendor.SetRange("Consultation Code", Consultation."Consultation Code");
        PreferredVendorPage.SetTableView(PreferredVendor);
        PreferredVendorPage.LookupMode := true;
        If PreferredVendorPage.RunModal() = Action::LookupOK then begin
            WindowDialog.Open(Text001);
            PreferredVendor.Reset();
            PreferredVendor.SetRange("Consultation Code", Consultation."Consultation Code");
            If PreferredVendor.FindSet() then
                repeat
                    PreferredVendor.TestField("Contact No.");
                    QuoteHeader.Reset;
                    QuoteHeader.SetRange("Document Type", QuoteHeader."Document Type"::Quote);
                    QuoteHeader.SetRange("Consultation Code", Consultation."Consultation code");
                    QuoteHeader.SetRange("Buy-from Contact No.", PreferredVendor."Contact No.");
                    If QuoteHeader.IsEmpty then begin
                        Clear(QuoteHeader);
                        QuoteHeader.Init();
                        QuoteHeader.Validate("Document Type", QuoteHeader."Document Type"::Quote);
                        QuoteHeader.Validate("Posting Date", WorkDate);
                        QuoteHeader.Validate("Order Date", WorkDate);
                        QuoteHeader.Validate("Consultation Code", Consultation."Consultation code");
                        QuoteHeader.Validate("Buy-from Contact No.", PreferredVendor."Contact No.");
                        QuoteHeader.Insert(true);

                        ComparePosition := 0;
                        PurchaseHeader.Reset();
                        PurchaseHeader.SetRange("Document Type", PurchaseHeader."Document Type"::Quote);
                        PurchaseHeader.SetRange("Consultation Code", Consultation."Consultation code");
                        if PurchaseHeader.FindSet then begin
                            repeat
                                ComparePosition := ComparePosition + 1;
                                if ComparePosition <= 4 then begin
                                    PurchaseHeader."Comparison Position" := ComparePosition;
                                    PurchaseHeader.Modify();
                                end;
                            until PurchaseHeader.Next = 0;
                        end;
                        LineNo := 10000;
                        ConsultationLines.Reset();
                        ConsultationLines.SetRange("Consultation Code", Consultation."Consultation code");
                        if ConsultationLines.FindSet then begin
                            repeat
                                RequisitionLines.Get(ConsultationLines."Requisition Code", ConsultationLines."Requisition Line");
                                Clear(QuoteLines);
                                QuoteLines.Init;
                                QuoteLines.Validate("Document Type", QuoteHeader."Document Type");
                                QuoteLines.Validate("Document No.", QuoteHeader."No.");
                                QuoteLines."Line No." := LineNo;
                                QuoteLines.Validate(Type, ConsultationLines."Line Type");
                                QuoteLines.Validate("No.", ConsultationLines."No.");
                                QuoteLines.Insert(true);
                                QuoteLines."Location Code" := ConsultationLines."Location Code";
                                QuoteLines.Validate(Quantity, ConsultationLines."Quote Quantity");
                                QuoteLines.Validate("Direct Unit Cost", RequisitionLines."Unit Cost");
                                QuoteLines.Validate("VAT Bus. Posting Group", RequisitionLines."Vat Bus. Posting Group");
                                QuoteLines.Validate("VAT Prod. Posting Group", RequisitionLines."Vat Prod. Posting Group");
                                QuoteLines.Validate(Amount, RequisitionLines.Amount);
                                QuoteLines.Validate("Amount Including VAT", RequisitionLines."Amount Including VAT");
                                QuoteLines.Validate("Cost Amount", RequisitionLines."Cost Amount");
                                QuoteLines.Validate("Outstanding Amount");
                                QuoteLines."Requisition Code" := ConsultationLines."Requisition Code";
                                QuoteLines."Requisition Line" := ConsultationLines."Requisition Line";
                                QuoteLines."Consultation Code" := ConsultationLines."Consultation code";
                                QuoteLines."Contract Year" := ConsultationLines."Contract Year";
                                QuoteLines.Validate("Dimension Set ID", RequisitionLines."Dimension Set ID");
                                DimMgt.UpdateGlobalDimFromDimSetID(QuoteLines."Dimension Set ID", QuoteLines."Shortcut Dimension 1 Code", QuoteLines."Shortcut Dimension 2 Code");
                                QuoteLines.Modify(true);
                                LineNo += LineNo + 10000;
                            until ConsultationLines.Next = 0;
                        end else
                            Error(Text002);
                        CduBudget.CalcDocumentsDotation("Budget Dotation Document Type"::Quote, QuoteHeader."No.");
                    end;
                until PreferredVendor.Next() = 0;
        end;
    end;

    procedure DrillDownAvaylableBudget(Consultation: Record Consultation)
    var
        AvaylableBudgetLinesList: Page "Avaylable Budget Lines List";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
    begin
        CLEAR(AvaylableBudgetLinesList);
        AvaylableBudgetLines.RESET;
        AvaylableBudgetLines.FILTERGROUP(2);
        AvaylableBudgetLines.SETRANGE("Consultation Code", Consultation."Consultation code");
        AvaylableBudgetLinesList.Editable(false);
        AvaylableBudgetLinesList.SETTABLEVIEW(AvaylableBudgetLines);
        AvaylableBudgetLinesList.RUNMODAL();
    end;

    procedure DrillDownPostedAvaylableBudget(Consultation: Record Consultation)
    var
        PostedAvaylableBudgetLinesList: Page "Posted Avay. Budget Line List";
        PostedAvaylableBudgetLines: Record "Posted Avaylable Budget Line";
    begin
        CLEAR(PostedAvaylableBudgetLinesList);
        PostedAvaylableBudgetLines.RESET;
        PostedAvaylableBudgetLines.FILTERGROUP(2);
        PostedAvaylableBudgetLines.SETRANGE("Consultation Code", Consultation."Consultation code");
        PostedAvaylableBudgetLinesList.Editable(false);
        PostedAvaylableBudgetLinesList.SETTABLEVIEW(PostedAvaylableBudgetLines);
        PostedAvaylableBudgetLinesList.RUNMODAL();
    end;

    procedure DrillDownPAQ(Consultation: Record Consultation)
    var
        PAQLinesList: Page "PAQ Lines List";
        PAQLines: Record "PAQ Lines";
    begin
        CLEAR(PAQLinesList);
        PAQLines.RESET;
        PAQLines.FILTERGROUP(2);
        PAQLines.SETRANGE("Consultation Code", Consultation."Consultation code");
        PAQLines.SetFilter(Status, '%1|%2', "PAQ Status"::"Pending Approval", "PAQ Status"::Open);
        PAQLinesList.Editable(false);
        PAQLinesList.SETTABLEVIEW(PAQLines);
        PAQLinesList.RUNMODAL();
    end;

    procedure DrillDownPostedPAQ(Consultation: Record Consultation)
    var
        PostedPAQLinesList: Page "Posted PAQ Lines List";
        PostedPAQLines: Record "Posted PAQ Lines";
    begin
        CLEAR(PostedPAQLinesList);
        PostedPAQLines.RESET;
        PostedPAQLines.FILTERGROUP(2);
        PostedPAQLines.SETRANGE("Consultation Code", Consultation."Consultation code");
        PostedPAQLines.SETFILTER(Status, '%1|%2', "PAQ Status"::Canceled, "PAQ Status"::Released);
        PostedPAQLinesList.Editable(false);
        PostedPAQLinesList.SETTABLEVIEW(PostedPAQLines);
        PostedPAQLinesList.RUNMODAL();
    end;

    procedure DrillDownOrders(Consultation: Record Consultation)
    var
        PurchaseLines: Record "Purchase Line";
        PurchaseLinesPage: Page "Purchase Lines";
    begin
        CLEAR(PurchaseLinesPage);
        PurchaseLines.RESET();
        PurchaseLines.FILTERGROUP(2);
        PurchaseLines.SETRANGE("Document Type", PurchaseLines."Document Type"::Order);
        PurchaseLines.SETRANGE("Consultation Code", Consultation."Consultation code");
        PurchaseLinesPage.Editable(false);
        PurchaseLinesPage.SETTABLEVIEW(PurchaseLines);
        PurchaseLinesPage.RUNMODAL();
    end;

    procedure DrillDownInvoices(Consultation: Record Consultation)
    var
        PurchInvLines: Record "Purch. Inv. Line";
        PostedPurchInvLines: Page "Posted Purchase Invoice Lines";
    begin
        CLEAR(PostedPurchInvLines);
        PurchInvLines.RESET;
        PurchInvLines.FILTERGROUP(2);
        PurchInvLines.SETRANGE("Consultation Code", Consultation."Consultation code");
        PostedPurchInvLines.Editable(false);
        PostedPurchInvLines.SETTABLEVIEW(PurchInvLines);
        PostedPurchInvLines.RUNMODAL();
    end;

    procedure DrillDownCrMemos(Consultation: Record Consultation)
    var
        PurchCrMemoLines: Record "Purch. Cr. Memo Line";
        PostedPurchCrMemoLines: Page "Posted Purchase Cr. Memo Lines";
    begin
        CLEAR(PostedPurchCrMemoLines);
        PurchCrMemoLines.RESET;
        PurchCrMemoLines.FILTERGROUP(2);
        PurchCrMemoLines.SETRANGE("Consultation Code", Consultation."Consultation code");
        PostedPurchCrMemoLines.Editable(false);
        PostedPurchCrMemoLines.SETTABLEVIEW(PurchCrMemoLines);
        PostedPurchCrMemoLines.RUNMODAL();
    end;

    procedure ValidatePermissions(PermissionType: Enum "Consultation Permissions")
    var
        BudgetPermissions: Record "Budget Permissions";
        Consultation: Record "Consultation";
        Text001: Label 'You dont have permission to %1 %2';
    begin
        BudgetPermissions.GET(USERID, BudgetPermissions.Type::User);
        case PermissionType of
            PermissionType::Create:
                If not BudgetPermissions."Create Consultation" then
                    Error(Text001, PermissionType, Consultation.TableCaption);
            PermissionType::Modify:
                If not BudgetPermissions."Modify Consultation" then
                    Error(Text001, PermissionType, Consultation.TableCaption);
            PermissionType::Delete:
                If not BudgetPermissions."Delete Consultation" then
                    Error(Text001, PermissionType, Consultation.TableCaption);
            PermissionType::View:
                If not BudgetPermissions."View Consultation" then
                    Error(Text001, PermissionType, Consultation.TableCaption);
            PermissionType::"Create Quote":
                If not BudgetPermissions."Create Quote" then
                    Error(Text001, PermissionType, Consultation.TableCaption);
            PermissionType::"Adjust Avay/PAQ":
                If not BudgetPermissions."Adjust Avay/PAQ" then
                    Error(Text001, PermissionType, Consultation.TableCaption);
        end;
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

    local procedure ValidateNotSelectionCode(Consultation: Record "Consultation")
    var
        QuoteLines: Record "Purchase Line";
        Text001: Label 'You cant insert more requisitions because there is a winning quote already.';
    begin
        QuoteLines.Reset;
        QuoteLines.SetRange("Document Type", QuoteLines."Document Type"::Quote);
        QuoteLines.SetRange("Consultation Code", Consultation."Consultation Code");
        QuoteLines.SetFilter("Selection Code", '<>%1', '');
        QuoteLines.SetFilter(Type, '<>%1', QuoteLines.Type::" ");
        if not QuoteLines.IsEmpty then
            Error(Text001);
    end;

    local procedure ValidateOpenRequisitions(Consultation: Record Consultation)
    var
        Requisition: Record Requisition;
        ConsultationLines: Record "Consultation Lines";
        Text001: Label 'Cant create quotes for closed or canceled requisitions.';
    begin
        ConsultationLines.Reset();
        ConsultationLines.SetRange("Consultation Code", Consultation."Consultation Code");
        IF ConsultationLines.FindSet() then
            repeat
                Requisition.Get(ConsultationLines."Requisition Code");
                If Requisition.Status In ["Requisition Status"::Canceled, "Requisition Status"::Closed] then
                    Error(Text001);
            until ConsultationLines.Next() = 0;
    end;

    local procedure IsDateNotAllowed(PostingDate: Date) DateIsNotAllowed: Boolean
    var
        UserSetupManagement: Codeunit "User Setup Management";
        SetupRecordID: RecordID;
    begin
        DateIsNotAllowed := not UserSetupManagement.IsPostingDateValidWithSetup(PostingDate, SetupRecordID);
        exit(DateIsNotAllowed);
    end;

    procedure CountConsultationWithoutAvaylables(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]): Integer
    var
        Consultation: Record Consultation;
        ReturnResult: Integer;
    begin
        Consultation.Reset();
        Consultation.SetCurrentKey(IsContract, "Consultation Status", "Section Code", "Department Code", "Created by");
        Consultation.SetRange(IsContract, false);
        Consultation.SetFilter("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Canceled, Consultation."Consultation Status"::Closed);
        Consultation.SetFilter("Created by", UserIDFilter);
        Consultation.SetFilter("Section Code", SectionFilter);
        Consultation.SetFilter("Department Code", DepartmentFilter);
        If Consultation.FindSet() then
            repeat
                if Consultation.GetPostedAvaylableAmount() = 0 then
                    ReturnResult += 1;
            until Consultation.Next() = 0;
        exit(ReturnResult);
    end;

    procedure CountConsultationWithAvayOpen(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]): Integer
    var
        Consultation: Record Consultation;
        ReturnResult: Integer;
    begin
        Consultation.Reset();
        Consultation.SetCurrentKey(IsContract, "Consultation Status", "Section Code", "Department Code", "Created by");
        Consultation.SetRange(IsContract, false);
        Consultation.SetFilter("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Canceled, Consultation."Consultation Status"::Closed);
        Consultation.SetFilter("Posted Avaylable Budgets", '<>0');
        Consultation.SetFilter("Created by", UserIDFilter);
        Consultation.SetFilter("Section Code", SectionFilter);
        Consultation.SetFilter("Department Code", DepartmentFilter);
        If Consultation.FindSet() then
            repeat
                if Consultation.GetPostedAvaylableAmount() <> Consultation.GetPostedPAQAmount() then
                    ReturnResult += 1;
            until Consultation.Next() = 0;
        exit(ReturnResult);
    end;

    procedure CountConsultationWithPAQOpen(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]): Integer
    var
        Consultation: Record Consultation;
        ReturnResult: Integer;
    begin
        Consultation.Reset();
        Consultation.SetCurrentKey(IsContract, "Consultation Status", "Section Code", "Department Code", "Created by");
        Consultation.SetRange(IsContract, false);
        Consultation.SetFilter("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Canceled, Consultation."Consultation Status"::Closed);
        Consultation.SetFilter("Posted PAQs", '<>0');
        Consultation.SetFilter("Created by", UserIDFilter);
        Consultation.SetFilter("Section Code", SectionFilter);
        Consultation.SetFilter("Department Code", DepartmentFilter);
        If Consultation.FindSet() then
            repeat
                if (Consultation.GetPostedPAQAmount() <> 0) and (Consultation.GetOrderedAmount() = 0) then
                    ReturnResult += 1;
            until Consultation.Next() = 0;
        exit(ReturnResult);
    end;

    procedure CountConsultationWithOrderOpen(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]): Integer
    var
        Consultation: Record Consultation;
        ReturnResult: Integer;
    begin
        Consultation.Reset();
        Consultation.SetCurrentKey(IsContract, "Consultation Status", "Section Code", "Department Code", "Created by");
        Consultation.SetRange(IsContract, false);
        Consultation.SetFilter("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Canceled, Consultation."Consultation Status"::Closed);
        Consultation.SetFilter("Associated Orders", '<>0');
        Consultation.SetFilter("Created by", UserIDFilter);
        Consultation.SetFilter("Section Code", SectionFilter);
        Consultation.SetFilter("Department Code", DepartmentFilter);
        If Consultation.FindSet() then
            repeat
                if (Consultation.GetOrderAmountNotReceived() <> 0) and (Consultation.GetOrderAmountNotReceived() <> (Consultation.GetInvoicedAmount() - Consultation.GetCreditedAmount())) then
                    ReturnResult += 1;
            until Consultation.Next() = 0;
        exit(ReturnResult);
    end;

    procedure CountConsultationWithInvoiceOpen(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]): Integer
    var
        Consultation: Record Consultation;
        ReturnResult: Integer;
    begin
        Consultation.Reset();
        Consultation.SetCurrentKey(IsContract, "Consultation Status", "Section Code", "Department Code", "Created by");
        Consultation.SetRange(IsContract, false);
        Consultation.SetFilter("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Canceled, Consultation."Consultation Status"::Closed);
        Consultation.SetFilter("Associated Orders", '<>0');
        Consultation.SetFilter("Created by", UserIDFilter);
        Consultation.SetFilter("Section Code", SectionFilter);
        Consultation.SetFilter("Department Code", DepartmentFilter);
        If Consultation.FindSet() then
            repeat
                if ((Consultation.GetInvoicedAmount() - Consultation.GetCreditedAmount()) = 0) then
                    ReturnResult += 1;
            until Consultation.Next() = 0;
        exit(ReturnResult);
    end;

    procedure GetConsultationWithoutAvaylables(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]; var TempConsultation: Record Consultation temporary)
    var
        Consultation: Record Consultation;
    begin
        Clear(TempConsultation);
        TempConsultation.DeleteAll();
        Consultation.Reset();
        Consultation.SetCurrentKey(IsContract, "Consultation Status", "Section Code", "Department Code", "Created by");
        Consultation.SetRange(IsContract, false);
        Consultation.SetFilter("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Canceled, Consultation."Consultation Status"::Closed);
        Consultation.SetFilter("Created by", UserIDFilter);
        Consultation.SetFilter("Section Code", SectionFilter);
        Consultation.SetFilter("Department Code", DepartmentFilter);
        If Consultation.FindSet() then
            repeat
                if Consultation.GetPostedAvaylableAmount() = 0 then begin
                    TempConsultation.Init();
                    TempConsultation := Consultation;
                    TempConsultation.Insert();
                end;
            until Consultation.Next() = 0;
    end;

    procedure GetConsultationWithAvayOpen(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]; var TempConsultation: Record Consultation temporary)
    var
        Consultation: Record Consultation;
    begin
        Clear(TempConsultation);
        TempConsultation.DeleteAll();
        Consultation.Reset();
        Consultation.SetCurrentKey(IsContract, "Consultation Status", "Section Code", "Department Code", "Created by");
        Consultation.SetRange(IsContract, false);
        Consultation.SetFilter("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Canceled, Consultation."Consultation Status"::Closed);
        Consultation.SetFilter("Created by", UserIDFilter);
        Consultation.SetFilter("Section Code", SectionFilter);
        Consultation.SetFilter("Department Code", DepartmentFilter);
        Consultation.SetFilter("Posted Avaylable Budgets", '<>0');
        If Consultation.FindSet() then
            repeat
                if Consultation.GetPostedAvaylableAmount() <> Consultation.GetPostedPAQAmount() then begin
                    TempConsultation.Init();
                    TempConsultation := Consultation;
                    TempConsultation.Insert();
                end;
            until Consultation.Next() = 0;
    end;

    procedure GetConsultationWithPAQOpen(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]; var TempConsultation: Record Consultation temporary)
    var
        Consultation: Record Consultation;
    begin
        Clear(TempConsultation);
        TempConsultation.DeleteAll();
        Consultation.Reset();
        Consultation.SetCurrentKey(IsContract, "Consultation Status", "Section Code", "Department Code", "Created by");
        Consultation.SetRange(IsContract, false);
        Consultation.SetFilter("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Canceled, Consultation."Consultation Status"::Closed);
        Consultation.SetFilter("Created by", UserIDFilter);
        Consultation.SetFilter("Section Code", SectionFilter);
        Consultation.SetFilter("Department Code", DepartmentFilter);
        Consultation.SetFilter("Posted PAQs", '<>0');
        If Consultation.FindSet() then
            repeat
                if (Consultation.GetPostedPAQAmount() <> 0) and (Consultation.GetOrderedAmount() = 0) then begin
                    TempConsultation.Init();
                    TempConsultation := Consultation;
                    TempConsultation.Insert();
                end;
            until Consultation.Next() = 0;
    end;

    procedure GetConsultationWithOrderOpen(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]; var TempConsultation: Record Consultation temporary)
    var
        Consultation: Record Consultation;
    begin
        Clear(TempConsultation);
        TempConsultation.DeleteAll();
        Consultation.Reset();
        Consultation.SetCurrentKey(IsContract, "Consultation Status", "Section Code", "Department Code", "Created by");
        Consultation.SetRange(IsContract, false);
        Consultation.SetFilter("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Canceled, Consultation."Consultation Status"::Closed);
        Consultation.SetFilter("Created by", UserIDFilter);
        Consultation.SetFilter("Section Code", SectionFilter);
        Consultation.SetFilter("Department Code", DepartmentFilter);
        Consultation.SetFilter("Associated Orders", '<>0');
        If Consultation.FindSet() then
            repeat
                if ((Consultation.GetInvoicedAmount() - Consultation.GetCreditedAmount()) = 0) then begin
                    TempConsultation.Init();
                    TempConsultation := Consultation;
                    TempConsultation.Insert();
                end;
            until Consultation.Next() = 0;
    end;

    procedure GetConsultationWithInvoiceOpen(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]; var TempConsultation: Record Consultation temporary)
    var
        Consultation: Record Consultation;
    begin
        Clear(TempConsultation);
        TempConsultation.DeleteAll();
        Consultation.Reset();
        Consultation.SetCurrentKey(IsContract, "Consultation Status", "Section Code", "Department Code", "Created by");
        Consultation.SetRange(IsContract, false);
        Consultation.SetFilter("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Canceled, Consultation."Consultation Status"::Closed);
        Consultation.SetFilter("Created by", UserIDFilter);
        Consultation.SetFilter("Section Code", SectionFilter);
        Consultation.SetFilter("Department Code", DepartmentFilter);
        Consultation.SetFilter("Associated Orders", '<>0');
        If Consultation.FindSet() then
            repeat
                if (Consultation.GetOrderAmountNotReceived() <> 0) and (Consultation.GetOrderAmountNotReceived() <> (Consultation.GetInvoicedAmount() - Consultation.GetCreditedAmount())) then begin
                    TempConsultation.Init();
                    TempConsultation := Consultation;
                    TempConsultation.Insert();
                end;
            until Consultation.Next() = 0;
    end;
}

