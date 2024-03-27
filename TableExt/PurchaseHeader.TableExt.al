tableextension 57010 PurchHeaderTableExt extends "Purchase Header"
{
    fields
    {
        field(50044; "Entity Type"; Enum "Entity Type")
        {
            Caption = 'Entity Type';
            trigger OnValidate()
            begin
                if (xRec."Entity Type" <> "Entity Type") and ("Entity Type" <> "Entity Type"::" ") then
                    ValidateEntityType();
            end;
        }

        field(50052; "EasyDoc No."; Code[50])
        {
            Caption = 'EasyDoc No.';
        }
        field(50002; "Not Budget Document"; Boolean)
        {
            Caption = 'Not Budget Document';
            Editable = false;

            trigger OnValidate()
            begin
                ValidateBudgetConf();
            end;
        }
        field(50003; "Created By"; Code[50])
        {
            Caption = 'Created by';
            Editable = false;
        }
        field(50009; "Comparison Position"; Option)
        {
            Caption = 'Comparison Position';
            OptionCaption = ' ,1,2,3,4,5,6,7,8';
            OptionMembers = " ","1","2","3","4","5","6","7","8";
        }
        field(58000; "Cost Amount"; Decimal)
        {
            Caption = 'Cost Amount';
            Editable = false;
            CalcFormula = Sum("Purchase Line"."Cost Amount" WHERE("No." = FILTER(<> ''),
                                                          "Document No." = FIELD("No.")));
            FieldClass = FlowField;
        }
        field(50025; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(61000; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            TableRelation = Consultation."Consultation code";
            Editable = false;
        }
        field(61001; "Budget Appropriation Method"; enum "Budget Appropriation Method")
        {
            Caption = 'Budget Appropriation Method';
        }
        field(61004; "Associated Quote"; Code[20])
        {
            Caption = 'Associated Quote';
            Editable = false;
            TableRelation = "Purchase Header"."No." WHERE("Document Type" = CONST(Quote),
                                                "No." = FIELD("No."));
        }
        field(61003; "Associated Orders"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purchase Header" WHERE("Document Type" = CONST(Order),
                              "Associated Quote" = FIELD("No.")));
            Caption = 'Associated Orders';
            Editable = false;
        }
        field(61010; "Associated Invoices"; Integer)
        {
            CalcFormula = Count("Purch. Inv. Header" WHERE("Consultation Code" = FIELD("Consultation Code")));
            Caption = 'Associated Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61030; "Selected Amount"; Decimal)
        {
            CalcFormula = Sum("Purchase Line".Amount WHERE("No." = FILTER(<> ''),
                                                  "Selection Code" = FILTER(<> ''),
                                                  "Document Type" = CONST(Quote),
                                                  "Document No." = FIELD("No.")));
            Caption = 'Selected Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61031; "Selected Amount Including VAT"; Decimal)
        {
            CalcFormula = Sum("Purchase Line"."Amount Including VAT" WHERE("No." = FILTER(<> ''),
                                                                  "Selection Code" = FILTER(<> ''),
                                                                  "Document Type" = CONST(Quote),
                                                                  "Document No." = FIELD("No.")));
            Caption = 'Selected Amount Including VAT';
            FieldClass = FlowField;
            editable = false;
        }
        field(61032; "Selected Cost Amount"; Decimal)
        {
            CalcFormula = Sum("Purchase Line"."Cost Amount" WHERE("No." = FILTER(<> ''),
                                                          "Selection Code" = FILTER(<> ''),
                                                          "Document Type" = CONST(Quote),
                                                          "Document No." = FIELD("No.")));
            Caption = 'Selected Cost Amount';
            FieldClass = FlowField;
            editable = false;
        }
        field(60000; ConfClass0; Code[10])
        {
            Caption = 'Conf Class0 Code';
            TableRelation = "Class 0 Setup";
            Editable = false;
        }
        field(60002; "No Budget"; Boolean)
        {
            Caption = 'No Budget';

            trigger OnValidate()
            var
                Text001: Label 'You dont go post budget entries.\\Do you want to continue?';
            begin
                IF "No Budget" THEN
                    IF NOT CONFIRM(Text001) THEN
                        "No Budget" := FALSE;
            end;
        }
        field(60003; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            Editable = false;
            TableRelation = Employee;

            trigger OnValidate()
            var
            begin
                ValidateEmployee;
            end;
        }
        field(60004; "Employee Name"; Text[60])
        {
            Caption = 'Employee Name';
            Editable = false;
        }
        field(60005; "Section Code"; Code[20])
        {
            Caption = 'Section Code';
            TableRelation = Sections;
            Editable = false;
        }
        field(60006; "Department Code"; Code[20])
        {
            Caption = 'Department Code';
            Editable = false;
            TableRelation = "Departments";
        }
        field(60100; NeedAdjustments; Boolean)
        {
            Editable = false;
        }
    }

    keys
    {
        key(NewKey1; "Not Budget Document")
        {
        }
        key(NewKey2; "Section Code", "Department Code")
        {
        }
        key(NewKey3; "Comparison Position")
        {
        }
        key(NewKey4; "Section Code", "Department Code", "Created By")
        {
        }
    }

    var
        BudgetConfig: Record "Budget Configuration";

    procedure GetPurchHeaderAmount(): Decimal
    begin
        CalcFields(Amount, "Amount Including VAT", "Cost Amount");
        case "Budget Appropriation Method" of
            "Budget Appropriation Method"::"Amount Without VAT":
                exit(Amount);
            "Budget Appropriation Method"::"Amount With VAT":
                exit("Amount Including VAT");
            "Budget Appropriation Method"::"Cost Amount":
                exit("Cost Amount");
            else
                exit(0);
        end;
    end;

    procedure GetSelectedQuoteAmount(): Decimal
    begin
        CalcFields("Selected Amount", "Selected Amount Including VAT", "Selected Cost Amount");
        case "Budget Appropriation Method" of
            "Budget Appropriation Method"::"Amount Without VAT":
                exit("Selected Amount");
            "Budget Appropriation Method"::"Amount With VAT":
                exit("Selected Amount Including VAT");
            "Budget Appropriation Method"::"Cost Amount":
                exit("Selected Cost Amount");
            else
                exit(0);
        end;
    end;

    procedure ValidateDocuments(PurchaseHeader: Record "Purchase Header")
    var
        PurchaseLines: Record "Purchase Line";
        Text001: label 'You cant delete the order. There are %1 issued for the same';
        PurchRcpt: Label 'Purchase Receipts';
        Invoices: Label 'Invoices';
    begin
        IF PurchaseHeader."Document Type" <> PurchaseHeader."Document Type"::Order THEN
            EXIT;

        PurchaseLines.RESET;
        PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
        PurchaseLines.SETFILTER(Type, '<>%1', PurchaseLines.Type::" ");
        IF PurchaseLines.FINDSET THEN
            REPEAT
                IF PurchaseLines."Quantity Invoiced" <> 0 THEN
                    ERROR(Text001, Invoices);
                IF PurchaseLines."Quantity Received" <> 0 THEN
                    ERROR(Text001, PurchRcpt);
            UNTIL PurchaseLines.NEXT = 0;
    end;

    local procedure ValidateEmployee()
    var
        Employee: Record Employee;
        SectionCode: Record Sections;
    begin
        If "Employee No." <> '' then begin
            CLEAR(Employee);
            Employee.GET("Employee No.");
            "Employee Name" := Employee."First Name" + ' ' + Employee."Last Name";
            "Section Code" := Employee."Section Code";
            CLEAR(SectionCode);
            SectionCode.SETRANGE(Code, Employee."Section Code");
            IF SectionCode.FindFirst() THEN
                "Department Code" := SectionCode."Department Code";
        end else begin
            CLEAR("Section Code");
            Clear("Department Code");
        end;

        CreateDimFromDefaultDim(FieldNo("Employee No."));
    end;

    local procedure ValidateEntityType()
    var
        Vendor: Record Vendor;
        PostingGr: Code[10];
    begin
        TestField("Buy-from Vendor No.");

        Vendor.Get("Buy-from Vendor No.");
        case "Entity Type" of
            "Entity Type"::"Advance Payment":
                begin
                    Vendor.TestField("Adv. Payment Posting Group");
                    PostingGr := Vendor."Adv. Payment Posting Group";
                    if "Not Budget Document" and ("Document Type" IN ["Document Type"::"Credit Memo", "Document Type"::Invoice]) then
                        "No Budget" := true;
                end;
            "Entity Type"::"Fixed Asset":
                begin
                    Vendor.TestField("FA PostingGroup");
                    PostingGr := Vendor."FA PostingGroup";
                end;
            "Entity Type"::Tenancy:
                begin
                    Vendor.TestField("Tenancy PostingGroup");
                    PostingGr := Vendor."Tenancy PostingGroup";
                end;
            else
                PostingGr := Vendor."Vendor Posting Group";
        end;
        Validate("Vendor Posting Group", PostingGr);
    end;

    procedure ValidateBudgetConf()
    var
        SourceCodeSetup: Record "Source Code Setup";
    begin
        BudgetConfig.Get();
        BudgetConfig.TestField("Budget Appropriation Method");
        SourceCodeSetup.Get();
        If "Document Type" = "Document Type"::Invoice then
            SourceCodeSetup.TestField(Invoice);

        CASE "Document Type" OF
            "Document Type"::Invoice:
                BEGIN
                    IF "Not Budget Document" THEN begin
                        BudgetConfig.TestField("Invoice Without Process");
                        VALIDATE(ConfClass0, BudgetConfig."Invoice Without Process")
                    end else begin
                        BudgetConfig.TestField("Invoice with Process");
                        VALIDATE(confclass0, BudgetConfig."Invoice with Process");
                    end;
                END;
            "Document Type"::"Credit Memo":
                BEGIN
                    IF "Not Budget Document" THEN begin
                        BudgetConfig.TestField("Purch Crdt Memo W Process Acc");
                        VALIDATE(confclass0, BudgetConfig."Purch Crdt Memo W Process Acc")
                    end else begin
                        BudgetConfig.TestField("Purch Crdt Memo With Proc. Acc");
                        VALIDATE(confclass0, BudgetConfig."Purch Crdt Memo With Proc. Acc");
                    end;
                END;
        END;
        "Budget Appropriation Method" := BudgetConfig."Budget Appropriation Method";
    end;

    procedure WinningQuoteExist(): Boolean
    var
        PurchaseLine: Record "Purchase Line";
    begin
        PurchaseLine.reset;
        PurchaseLine.SETRANGE("Document Type", "Document Type"::Quote);
        PurchaseLine.SETRANGE("Consultation Code", "Consultation Code");
        PurchaseLine.SETFILTER("Selection Code", '<>%1', '');
        PurchaseLine.SETFILTER("Document No.", '<>%1', "No.");
        Exit(Not PurchaseLine.IsEmpty);
    end;

    procedure CheckContractVendor()
    var
        Consultation: Record Consultation;
        Contract: Record Contract;
    begin
        Consultation.GET("Consultation Code");
        IF Consultation.IsContract THEN BEGIN
            Consultation.TESTFIELD("Contract No.");
            Contract.GET(Consultation."Contract No.");
            Contract.TESTFIELD("Vendor No.");
            TESTFIELD("Buy-from Vendor No.", Contract."Vendor No.");
        END;
    end;

    procedure ClearContractAmountsToAdjust()
    var
        PurchaseLine: Record "Purchase Line";
    begin
        PurchaseLine.reset;
        PurchaseLine.SETRANGE("Document Type", "Document Type"::Quote);
        PurchaseLine.SETRANGE("Consultation Code", "Consultation Code");
        PurchaseLine.SETRANGE("Document No.", "No.");
        PurchaseLine.SETRANGE("Consultation Code", "Consultation Code");
        PurchaseLine.ModifyAll("Amount to Adjust Adj.", 0);
        PurchaseLine.ModifyAll("Amount to Adjust Avay", 0);
    end;

    procedure SelectAllQuoteLines()
    var
        PurchaseLines: Record "Purchase Line";
        PurchaseLines2: Record "Purchase Line";
        SelectionReason: Record "Selection Reason";
        Text001: Label 'There is already a winning quote for consultation %1.';
        Text002: Label 'There is no default selection reason.';
        Text003: Label 'The requisition line %1 - %2 of quote %3 already selected in quote %4.';
        Text004: Label 'All lines approved with code %1';

    begin
        If WinningQuoteExist() then
            Error(Text001, "Consultation Code");

        SelectionReason.RESET;
        SelectionReason.SETRANGE(Default, TRUE);
        IF not SelectionReason.FindFirst() THEN
            ERROR(Text002);

        PurchaseLines.RESET;
        PurchaseLines.SETRANGE("Document Type", "Document Type");
        PurchaseLines.SETRANGE("Document No.", "No.");
        PurchaseLines.SETFILTER("No.", '<>%1', '');
        IF PurchaseLines.FINDSET THEN
            repeat
                PurchaseLines2.RESET();
                PurchaseLines2.SETRANGE("Document Type", PurchaseLines."Document Type");
                PurchaseLines2.SETFILTER("Document No.", '<>%1', PurchaseLines."Document No.");
                PurchaseLines2.SETRANGE("Consultation Code", PurchaseLines."Consultation Code");
                PurchaseLines2.SETRANGE("Requisition Code", PurchaseLines."Requisition Code");
                PurchaseLines2.SETRANGE("Requisition Line", PurchaseLines."Requisition Line");
                PurchaseLines2.SetFilter("Selection Code", '<>%1', '');
                IF PurchaseLines2.FINDFIRST THEN
                    ERROR(Text003, PurchaseLines2."Requisition Code", PurchaseLines2."Requisition Line", PurchaseLines2."Document No.", PurchaseLines2."Document No.");
            until PurchaseLines.Next() = 0;

        PurchaseLines.RESET;
        PurchaseLines.SETRANGE("Document Type", "Document Type");
        PurchaseLines.SETRANGE("Document No.", "No.");
        PurchaseLines.SETFILTER("No.", '<>%1', '');
        IF PurchaseLines.FINDSET THEN
            repeat
                PurchaseLines.TestField("Amount Including VAT");
                PurchaseLines.VALIDATE("Selection Code", SelectionReason.Code);
                PurchaseLines.MODIFY(TRUE);
            until PurchaseLines.Next() = 0;
        MESSAGE(STRSUBSTNO(Text004, SelectionReason.Code));
    END;

    procedure RejectAllQuoteLines()
    var
        PurchaseLines: Record "Purchase Line";
        PurchaseLines2: Record "Purchase Line";
        RejectionReason: Record "Rejection Reason";
        Text001: Label 'There is no default rejection reason.';
        Text002: Label 'All lines rejected with code %1';

    begin

        RejectionReason.RESET;
        RejectionReason.SETRANGE(Default, TRUE);
        IF not RejectionReason.FindFirst() THEN
            ERROR(Text001);

        PurchaseLines.RESET;
        PurchaseLines.SETRANGE("Document Type", "Document Type");
        PurchaseLines.SETRANGE("Document No.", "No.");
        PurchaseLines.SETFILTER("No.", '<>%1', '');
        IF PurchaseLines.FINDSET THEN
            repeat
                PurchaseLines.TestField("Amount Including VAT");
                PurchaseLines.VALIDATE("Rejection Code", RejectionReason.Code);
                PurchaseLines.MODIFY(TRUE);
            until PurchaseLines.Next() = 0;
        MESSAGE(STRSUBSTNO(Text002, RejectionReason.Code));
    END;

    procedure UpdateContractAmounts(var PurchaseLine: Record "Purchase Line"; pAmount: Decimal)
    var
        BudgetApropriationMethod: Enum "Budget Appropriation Method";
        PurchHeader: Record "Purchase Header";
        Currency: Record Currency;
        CurrExchRate: Record "Currency Exchange Rate";
        VATPostingSetup: Record "VAT Posting Setup";
    begin
        PurchaseLine.GetPurchHeader(PurchHeader, Currency);
        BudgetApropriationMethod := PurchHeader."Budget Appropriation Method";

        case BudgetApropriationMethod of
            BudgetApropriationMethod::"Cost Amount":
                begin
                    PurchaseLine."Cost Amount" := pAmount;
                    if (PurchaseLine."VAT %" + PurchaseLine."PTSS ND %" <> 0) then
                        PurchaseLine.Amount := Round(PurchaseLine."Cost Amount" / Round(1 + ((PurchaseLine."VAT %" + PurchaseLine."PTSS ND %") / 100), Currency."Amount Rounding Precision", Currency.VATRoundingDirection), Currency."Amount Rounding Precision");
                    if (PurchaseLine."VAT %" + PurchaseLine."PTSS ND %" = 0) then
                        case PurchaseLine."VAT Calculation Type" of
                            PurchaseLine."VAT Calculation Type"::"Reverse Charge VAT":
                                if VATPostingSetup.GET(PurchaseLine."VAT Bus. Posting Group", PurchaseLine."VAT Prod. Posting Group") then
                                    PurchaseLine.Amount += Round(PurchaseLine."Cost Amount" / Round(1 + (PurchaseLine."PTSS ND %" / 100), Currency."Amount Rounding Precision", Currency.VATRoundingDirection), Currency."Amount Rounding Precision");
                            else
                                PurchaseLine.Amount := pAmount;
                        end;
                    PurchaseLine."Amount Including VAT" := Round(PurchaseLine.Amount + (PurchaseLine.Amount * ((PurchaseLine."VAT %" + PurchaseLine."PTSS ND %") / 100)), Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                    If PurchaseLine."Currency Code" <> '' then begin
                        PurchaseLine.Amount := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", PurchaseLine.Amount, PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        PurchaseLine."Amount Including VAT" := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", PurchaseLine."Amount Including VAT", PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        PurchaseLine."Cost Amount" := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", PurchaseLine."Cost Amount", PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                    end;
                end;
            BudgetApropriationMethod::"Amount Without VAT":
                begin
                    PurchaseLine."Direct Unit Cost" := Round((pAmount / PurchaseLine.Quantity), Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                    PurchaseLine.Amount := pAmount;
                    PurchaseLine."Amount Including VAT" := Round(PurchaseLine.Amount + PurchaseLine.Amount * (PurchaseLine."VAT %" + PurchaseLine."PTSS ND %") / 100, Currency."Amount Rounding Precision");
                    PurchaseLine."Cost Amount" := pAmount;
                    IF (PurchaseLine."VAT %" + PurchaseLine."PTSS ND %" <> 0) THEN
                        PurchaseLine."Cost Amount" += ROUND((PurchaseLine."Amount Including VAT" - PurchaseLine.Amount) / (PurchaseLine."VAT %" + PurchaseLine."PTSS ND %") * PurchaseLine."PTSS ND %", Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                    IF (PurchaseLine."VAT %" + PurchaseLine."PTSS ND %" = 0) AND (PurchaseLine."VAT Calculation Type" = PurchaseLine."VAT Calculation Type"::"Reverse Charge VAT") THEN BEGIN
                        IF VATPostingSetup.GET(PurchaseLine."VAT Bus. Posting Group", PurchaseLine."VAT Prod. Posting Group") THEN BEGIN
                            PurchaseLine."Cost Amount" += ROUND(PurchaseLine.Amount * (VATPostingSetup."PTSS VAT N.D. %") / 100, Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                        END;
                    END;
                    If PurchaseLine."Currency Code" <> '' then begin
                        PurchaseLine.Amount := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", PurchaseLine.Amount, PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        PurchaseLine."Amount Including VAT" := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", PurchaseLine."Amount Including VAT", PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        PurchaseLine."Cost Amount" := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", PurchaseLine."Cost Amount", PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                    end;
                end;
            BudgetApropriationMethod::"Amount With VAT":
                begin
                    PurchaseLine."Amount Including VAT" := pAmount;
                    PurchaseLine.Amount := Round(PurchaseLine."Amount Including VAT" / (1 * PurchaseLine."VAT %" / 100), Currency."Amount Rounding Precision");
                    PurchaseLine."Cost Amount" := PurchaseLine.Amount;
                    IF (PurchaseLine."VAT %" + PurchaseLine."PTSS ND %" <> 0) THEN
                        PurchaseLine."Cost Amount" += ROUND((PurchaseLine."Amount Including VAT" - PurchaseLine.Amount) / (PurchaseLine."VAT %" + PurchaseLine."PTSS ND %") * PurchaseLine."PTSS ND %", Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                    IF (PurchaseLine."VAT %" + PurchaseLine."PTSS ND %" = 0) AND (PurchaseLine."VAT Calculation Type" = PurchaseLine."VAT Calculation Type"::"Reverse Charge VAT") THEN BEGIN
                        IF VATPostingSetup.GET(PurchaseLine."VAT Bus. Posting Group", PurchaseLine."VAT Prod. Posting Group") THEN BEGIN
                            PurchaseLine."Cost Amount" += ROUND(PurchaseLine.Amount * (VATPostingSetup."PTSS VAT N.D. %") / 100, Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                        END;
                    END;
                    If PurchaseLine."Currency Code" <> '' then begin
                        PurchaseLine.Amount := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", PurchaseLine.Amount, PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        PurchaseLine."Amount Including VAT" := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", PurchaseLine."Amount Including VAT", PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                        PurchaseLine."Cost Amount" := Round(CurrExchRate.ExchangeAmtFCYToLCY(PurchHeader."Posting Date", PurchHeader."Currency Code", PurchaseLine."Cost Amount", PurchHeader."Currency Factor"), Currency."Amount Rounding Precision");
                    end;
                end;
        end;
        PurchaseLine.Validate("Direct Unit Cost", Round((PurchaseLine.Amount / PurchaseLine.Quantity), Currency."Amount Rounding Precision", Currency.VATRoundingDirection));
    end;

    procedure UpdateWithholdingTaxAmount()
    var
        Currency: Record Currency;
        PurchLines: Record "Purchase Line";
        PTSSWithHoldingTaxCodes: Record "PTSS Withholding Tax Codes";
    begin
        if "Currency Code" = '' then
            Currency.InitRoundingPrecision()
        else begin
            TestField("Currency Factor");
            Currency.Get("Currency Code");
            Currency.TestField("Amount Rounding Precision");
        end;
        if not "PTSS Withholding Payment" then begin
            PurchLines.Reset();
            PurchLines.SetRange("Document Type", "Document Type");
            PurchLines.SetRange("Document No.", "No.");
            PurchLines.ModifyAll("Withholding Tax Amount", 0);
        end else begin
            PurchLines.Reset();
            PurchLines.SetRange("Document Type", "Document Type");
            PurchLines.SetRange("Document No.", "No.");
            If PurchLines.FindSet(true) then
                repeat
                    PurchLines."Withholding Tax Amount" := 0;
                    if PurchLines."PTSS Withholding Tax" then begin
                        If PTSSWithHoldingTaxCodes.Get("PTSS Withholding Tax Code 1") then
                            PurchLines."Withholding Tax Amount" += ROUND(PurchLines.Amount * (PTSSWithHoldingTaxCodes.Tax / 100), Currency."Amount Rounding Precision");
                        If PTSSWithHoldingTaxCodes.Get("PTSS Withholding Tax Code 2") then
                            PurchLines."Withholding Tax Amount" += ROUND(PurchLines.Amount * (PTSSWithHoldingTaxCodes.Tax / 100), Currency."Amount Rounding Precision");
                    end;
                    PurchLines.Modify();
                until PurchLines.Next() = 0;
        end;
    end;
}