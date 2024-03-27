tableextension 57009 PurchLineTableExt extends "Purchase Line"
{
    fields
    {
        field(58000; "Cost Amount"; Decimal)
        {
            Caption = 'Cost Amount';
            Editable = false;
        }
        field(58001; "Withholding Tax Amount"; Decimal)
        {
            Caption = 'Withholding Tax Amount';
            Editable = false;
        }

        field(50004; "Rejection Code"; Code[20])
        {
            Caption = 'Rejection Code';
            TableRelation = "Rejection Reason";

            trigger OnValidate()
            begin
                If ("Rejection Code" <> '') and (xRec."Rejection Code" <> Rec."Rejection Code") then begin
                    TestField("Selection Code", '');
                    CALCFIELDS("Rejection Description");
                    "Selected/Rejected By" := UserId;
                    "Selected/Rejected Date" := WORKDATE;
                end;
            end;
        }
        field(50005; "Rejection Description"; Text[250])
        {
            CalcFormula = Lookup("Rejection Reason".Description WHERE(Code = FIELD("Rejection Code")));
            Caption = 'Rejection Description';
            FieldClass = FlowField;
            Editable = false;
        }
        field(60000; "Initial Avaylable Dotation"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            Caption = 'Initial Avaylable Dotation';
            Editable = false;
        }
        field(60001; "End Avaylable Dotation"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            Caption = 'End Avaylable Dotation';
            Editable = false;
        }
        field(61000; "Selection Code"; Code[20])
        {
            Caption = 'Selection Code';
            TableRelation = "Selection Reason";

            trigger OnValidate()
            var
                PurchaseHeader: Record "Purchase Header";
                Currency: Record Currency;
                Text001: Label 'There is already a winning quote for consultation %1.';
            begin
                If ("Selection Code" <> '') and (xRec."Selection Code" <> rec."Selection Code") then begin
                    TestField("No.");
                    TestField("Rejection Code", '');
                    GetPurchHeader(PurchaseHeader, Currency);
                    If PurchaseHeader.WinningQuoteExist then
                        Error(Text001, PurchaseHeader."Consultation Code");

                    PurchaseHeader.CheckContractVendor();
                    "Selected/Rejected By" := UserId;
                    "Selected/Rejected Date" := WORKDATE;
                end;
                CALCFIELDS("Selection Description");
            end;
        }
        field(61001; "Selection Description"; Text[250])
        {
            Caption = 'Selection Description';
            CalcFormula = Lookup("Selection Reason".Description WHERE(Code = FIELD("Selection Code")));
            FieldClass = FlowField;
            Editable = false;
        }
        field(61023; "Selected/Rejected By"; Code[50])
        {
            Caption = 'Selected/Rejected By';
            Editable = false;
        }
        field(61024; "Selected/Rejected Date"; Date)
        {
            Caption = 'Selected/Rejected Date';
            Editable = false;
        }
        field(61002; "Requisition Code"; Code[20])
        {
            Caption = 'Requisition Code';
            TableRelation = Requisition."Requisition Code" WHERE("Requisition Code" = FIELD("Requisition Code"));
            Editable = false;
        }
        field(61003; "Requisition Line"; Integer)
        {
            Caption = 'Requisition Line';
            Editable = false;
            TableRelation = "Requisition Lines"."Line No." WHERE("Requisition Code" = FIELD("Requisition Code"),
                                                       "Line No." = field("Requisition Line"));
        }
        field(61004; "Quote No."; Code[20])
        {
            Caption = 'Quote No.';
            Editable = false;
        }
        field(61005; "Quote Line No."; Integer)
        {
            Caption = 'Quote Line No.';
            Editable = false;
        }
        field(61006; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            Editable = false;
            TableRelation = Consultation."Consultation Code" where("Consultation Code" = field("Consultation Code"));
        }
        field(61061; "Amount to Avay"; Decimal)
        {
            Caption = 'Amount to Avay';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                ValidateContractAmounts();
            end;
        }
        field(61062; "Amount to Adjudicate"; Decimal)
        {
            Caption = 'Amount to Adjudicate';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                ValidateContractAmounts();
            end;
        }
        field(61065; "Amount to Order"; Decimal)
        {
            Caption = 'Amount to Order';
            DecimalPlaces = 0 : 5;
            trigger OnValidate()
            begin
                ValidateContractAmounts();
            end;
        }
        field(61063; "Amount Avaylabled"; Decimal)
        {
            Caption = 'Amount Avaylabled';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(61064; "Amount Adjudicated"; Decimal)
        {
            Caption = 'Amount Adjudicated';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(61066; "Amount Ordered"; Decimal)
        {
            Caption = 'Amount Ordered';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(61067; "Contract Year"; Integer)
        {
            Caption = 'Contract Year';

            trigger OnValidate()
            begin
                ValidateContractYear();
            end;
        }
        field(61068; "Amount to Adjust Avay"; Decimal)
        {
            Caption = 'Amount to Adjust Avay';
            DecimalPlaces = 0 : 5;
            MaxValue = 0;

            trigger OnValidate()
            begin
                ValidateAdjustments();
            end;
        }
        field(61069; "Amount to Adjust Adj."; Decimal)
        {
            Caption = 'Amount to Adjust Adj.';
            DecimalPlaces = 0 : 5;
            MaxValue = 0;

            trigger OnValidate()
            begin
                ValidateAdjustments();
            end;
        }
        modify("PTSS Withholding Tax")
        {
            trigger OnAfterValidate()
            begin
                UpdateWithholdingTaxAmount();
            end;
        }
    }

    keys
    {
        key(NewKey1; "Consultation Code", "Selection Code", "Requisition Code", "Requisition Line")
        {
            SumIndexFields = "Cost Amount";
        }
        key(NewKey2; "Requisition Code", "Requisition Line")
        {
            SumIndexFields = "Cost Amount";
        }
        key(NewKey3; "Requisition Code")
        {
            SumIndexFields = "Cost Amount";
        }
        key(NewKey4; "Document No.", "No.")
        {
        }
        key(NewKey5; "Document No.")
        {
        }
        key(NewKey6; Type, "No.")
        {
        }
    }


    trigger OnDelete()
    var
        PostedAvaylableBudgetLines: Record "Posted Avaylable Budget Line";
        PostedPAQLines: Record "Posted PAQ Lines";
        PurchaseHeader: Record "Purchase Header";
        PurchaseLine: Record "Purchase Line";
        Consultation: Record Consultation;
        Text001: Label 'Cant delete line %1 because there is avaylable amounts associated.';
        Text002: Label 'Cant delete line %1 because there is adjudicated amounts associated.';
    begin
        PurchaseHeader := GetPurchHeader;
        If "Document Type" = "Document Type"::Quote then begin
            PostedAvaylableBudgetLines.Reset();
            PostedAvaylableBudgetLines.SetRange("Requisition Code", "Requisition Code");
            PostedAvaylableBudgetLines.SetRange("Requisition Line", "Requisition Line");
            PostedAvaylableBudgetLines.SetRange("Consultation Code", "Consultation Code");
            PostedAvaylableBudgetLines.SetRange(Status, "Avaylable Budget Status"::Released);
            PostedAvaylableBudgetLines.CalcSums(Amount, "Amount Including VAT", "Cost Amount");
            If PostedAvaylableBudgetLines.GetAvayLineAmount() > 0 then begin
                PostedAvaylableBudgetLines.RESET;
                PostedAvaylableBudgetLines.SETRANGE("Quote No.", "Document No.");
                PostedAvaylableBudgetLines.SETRANGE("Quote Line No.", "Line No.");
                IF NOT PostedAvaylableBudgetLines.ISEMPTY THEN
                    ERROR(Text001, "Line No.");
            end;

            PostedPAQLines.Reset();
            PostedPAQLines.SetRange("Requisition Code", "Requisition Code");
            PostedPAQLines.SetRange("Requisition Line", "Requisition Line");
            PostedPAQLines.SetRange("Consultation Code", "Consultation Code");
            PostedPAQLines.SetRange(Status, "PAQ Status"::Released);
            PostedPAQLines.CalcSums(Amount, "Amount Including VAT", "Cost Amount");
            If PostedPAQLines.GetPAQLineAmount() > 0 then begin
                PostedPAQLines.RESET;
                PostedPAQLines.SETRANGE("Quote No.", "Document No.");
                PostedPAQLines.SETRANGE("Quote Line No.", "Line No.");
                IF NOT PostedPAQLines.ISEMPTY THEN
                    ERROR(Text002, "Line No.");
            end;
        end;
        If "Document Type" = "Document Type"::Order then begin
            If (Consultation.get(PurchaseHeader."Consultation Code")) and Consultation.IsContract then begin
                PurchaseLine.RESET;
                PurchaseLine.SETRANGE("Document Type", "Document Type"::Quote);
                PurchaseLine.SETRANGE("Document No.", "Quote No.");
                PurchaseLine.SETRANGE("Line No.", "Quote Line No.");
                IF PurchaseLine.FINDFIRST THEN BEGIN
                    PurchaseLine."Amount Ordered" -= PurchaseLine.GetPurchLineAmount();
                    PurchaseLine.MODIFY;
                END;
            end;
        end;
    end;

    procedure UpdateCostAmount()
    var
        PurchaseHeader: Record "Purchase Header";
        Currency: Record Currency;
        VATPostingSetup: Record "VAT Posting Setup";
        CurrExchRate: Record "Currency Exchange Rate";
    begin
        GetPurchHeader(PurchaseHeader, Currency);
        "Cost Amount" := Amount;
        IF ("VAT %" + "PTSS ND %" <> 0) THEN
            "Cost Amount" += ROUND(("Amount Including VAT" - Amount - "VAT Difference") / ("VAT %" + "PTSS ND %") * "PTSS ND %", Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
        IF ("VAT %" + "PTSS ND %" = 0) AND ("VAT Calculation Type" = "VAT Calculation Type"::"Reverse Charge VAT") THEN BEGIN
            IF VATPostingSetup.GET("VAT Bus. Posting Group", "VAT Prod. Posting Group") THEN BEGIN
                "Cost Amount" += ROUND(Amount * (VATPostingSetup."PTSS VAT N.D. %") / 100, Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
            END;
        END;

        IF "Currency Code" <> '' THEN BEGIN
            "Cost Amount" := ROUND(CurrExchRate.ExchangeAmtFCYToLCY(PurchaseHeader."Posting Date", "Currency Code", "Cost Amount", PurchaseHeader."Currency Factor"), Currency."Amount Rounding Precision");
        END;
    end;

    procedure UpdateWithholdingTaxAmount()
    var
        PurchaseHeader: Record "Purchase Header";
        Currency: Record Currency;
        PTSSWithHoldingTaxCodes: Record "PTSS Withholding Tax Codes";
    begin
        "Withholding Tax Amount" := 0;
        GetPurchHeader(PurchaseHeader, Currency);
        If "PTSS Withholding Tax" then begin
            If PurchaseHeader."PTSS Withholding Payment" then begin
                If PTSSWithHoldingTaxCodes.Get(PurchaseHeader."PTSS Withholding Tax Code 1") then
                    "Withholding Tax Amount" += ROUND(Amount * (PTSSWithHoldingTaxCodes.Tax / 100), Currency."Amount Rounding Precision");
                If PTSSWithHoldingTaxCodes.Get(PurchaseHeader."PTSS Withholding Tax Code 2") then
                    "Withholding Tax Amount" += ROUND(Amount * (PTSSWithHoldingTaxCodes.Tax / 100), Currency."Amount Rounding Precision");
            end;
        end;
    end;

    procedure GetPurchLineAmount(): Decimal
    var
        lBudgetAppropriationMethod: Enum "Budget Appropriation Method";
    begin
        lBudgetAppropriationMethod := GetBudgetAppropriationMethod;
        case lBudgetAppropriationMethod of
            lBudgetAppropriationMethod::"Amount Without VAT":
                exit(Amount);
            lBudgetAppropriationMethod::"Amount With VAT":
                exit("Amount Including VAT");
            lBudgetAppropriationMethod::"Cost Amount":
                exit("Cost Amount");
        end;
    end;

    procedure GetBudgetAppropriationMethod(): Enum "Budget Appropriation Method"
    var
        BudgetConfig: Record "Budget Configuration";
    begin
        BudgetConfig.Get();
        BudgetConfig.TestField("Budget Appropriation Method");
        exit(BudgetConfig."Budget Appropriation Method");
    end;

    local procedure ValidateContractYear()
    var
        Contract: Record Contract;
        Consultation: Record Consultation;
        MinYear: Integer;
        MaxYear: Integer;
        Text001: Label 'The consultation associated is not from contract.';
        Text002: Label 'The contract year is not in contract dates.';
    begin
        TestField("Consultation Code");
        TestField("Amount Avaylabled");
        TestField("Amount Adjudicated");
        TestField("Amount Ordered");

        Consultation.GET("Consultation Code");
        IF not Consultation.IsContract THEN
            ERROR(Text001);

        Contract.GET(Consultation."Contract No.");
        Contract.TESTFIELD("Start Date");
        Contract.TESTFIELD("End Date");
        MinYear := DATE2DMY(Contract."Start Date", 3);
        MaxYear := DATE2DMY(Contract."End Date", 3);
        IF ("Contract Year" < MinYear) OR ("Contract Year" > MaxYear) THEN
            ERROR(Text002);
    end;

    local procedure ValidateContractAmounts()
    var
        Consultation: Record Consultation;
        CtrAmount: Decimal;
        Text001: Label 'The consultation associated is not from contract.';
        Text002: Label 'The amount to avay cant be greater than %1.';
        Text003: Label 'The amount to adjudicate cant be greater than %1.';
        Text004: Label 'The amount to order cant be greater than %1.';
    begin
        TestField("Consultation Code");
        TestField("Selection Code");

        Consultation.GET("Consultation Code");
        IF not Consultation.IsContract THEN
            ERROR(Text001);

        TestField("Contract Year");

        CLEAR(CtrAmount);
        CtrAmount := GetPurchLineAmount();

        If "Amount to Avay" <> 0 then begin
            IF "Amount to Avay" > (CtrAmount - "Amount Avaylabled") THEN
                ERROR(Text002, (CtrAmount - "Amount Avaylabled"));
        end;
        If "Amount to Adjudicate" <> 0 then begin
            IF "Amount to Adjudicate" > ("Amount Avaylabled" - "Amount Adjudicated") THEN
                ERROR(Text003, ("Amount Avaylabled" - "Amount Adjudicated"));
        end;
        If "Amount to Order" <> 0 then begin
            IF "Amount to Order" > ("Amount Adjudicated" - "Amount Ordered") THEN
                ERROR(Text004, ("Amount Adjudicated" - "Amount Ordered"));
        end;
    end;

    local procedure ValidateAdjustments()
    var
        Consultation: Record Consultation;
        Text001: Label 'The consultation associated is not from contract.';
        Text002: Label 'You cant adjust because the ordered amount (%1) is greater than the sum of amount to adjudicate and adjudicated (%2).';
        Text003: Label 'You cant adjust because the adjudicated amount (%1) is greater than the sum of amount to avay and avaylabled (%2).';
    begin

        TestField("Consultation Code");
        TestField("Selection Code");

        Consultation.GET("Consultation Code");
        IF not Consultation.IsContract THEN
            ERROR(Text001);
        If "Amount to Adjust Adj." <> 0 then begin
            IF "Amount to Adjust Adj." + "Amount Adjudicated" < "Amount Ordered" THEN
                ERROR(Text002, ("Amount to Adjust Adj." + "Amount Adjudicated"), ("Amount Ordered"));
        end;
        If "Amount to Adjust Avay" <> 0 then begin
            IF "Amount to Adjust Avay" + "Amount Avaylabled" < "Amount Adjudicated" THEN
                ERROR(Text003, ("Amount to Adjust Avay" + "Amount Avaylabled"), ("Amount Adjudicated"));
        end;
    end;
}