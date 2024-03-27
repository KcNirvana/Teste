tableextension 57007 GnlJournalLineTableExt extends "Gen. Journal Line"
{
    fields
    {
        field(50043; "EasyDoc No."; Code[50])
        {
            Caption = 'EasyDoc No.';
        }
        field(50044; "Entity Type"; Enum "Entity Type")
        {
            Caption = 'Entity Type';
            trigger OnValidate()
            begin
                if (xRec."Entity Type" <> "Entity Type") and ("Entity Type" <> "Entity Type"::" ") then
                    ValidateEntityType();
            end;
        }
        field(51000; "Cust. Type Entry"; Enum "Customer Type Entry")
        {
            Caption = 'Customer Type Entry';
        }
        field(57000; "Budget Appropriation Method"; enum "Budget Appropriation Method")
        {
            Caption = 'Budget Appropriation Method';
        }
        field(57001; "Budget Mov Type"; enum "Budget Mov Type")
        {
            Caption = 'Budget Mov Type';
        }
        field(57002; "Budget Dim Type"; enum "Budget Dim Type")
        {
            Caption = 'Budget Dim Type';
        }
        field(57003; "Budget Closing Entry"; Boolean)
        {
            Caption = 'Budget Closing Entry';
        }
        field(57004; "No Budget"; Boolean)
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
        field(57005; ClosedByCloseYear; Boolean)
        {
            Caption = 'Closed by Close Year';
        }
        field(57006; YearClosed; Integer)
        {
            Caption = 'Closed on Year';
        }

        field(57007; "Not Budget Document"; Boolean)
        {
            Caption = 'Not Budget Document';
        }
        field(57008; ConfClass0; Code[10])
        {
            Caption = 'Conf Class0 Code';
            TableRelation = "Class 0 Setup";
        }
        field(57009; "Cost Amount"; Decimal)
        {
            Caption = 'Cost Amount';
            Editable = false;
        }

        field(67007; ConfOpt00; Enum "Budget Payments Type")
        {
            Caption = 'Budget Type';

            trigger OnValidate()
            var
            begin
                ValidateBudgetPaymentsType();
            end;
        }
        field(67008; ConfOpt00V; Enum "Budget Receivables Type")
        {
            Caption = 'Budget Type';

            trigger OnValidate()
            var
            begin
                ValidateBudgetReceivablesType();
            end;
        }
        field(61027; "Old Document No."; Code[20])
        {
            Caption = 'Old Document No.';
        }
        field(61028; "SEPA Category"; Code[20])
        {
            Caption = 'SEPA Category';
            TableRelation = "SEPA Category";
        }
        field(62000; "Revaluation Type"; Enum "Deeds Revaluation Type")
        {
            Caption = 'Revaluation Type';
            Editable = false;
        }
    }

    var
        BudgetConfig: Record "Budget Configuration";

    trigger OnInsert()
    begin
        BudgetConfig.Get();
        "Budget Appropriation Method" := BudgetConfig."Budget Appropriation Method";

        IF ("External Document No." = '') AND ("Document Type" <> "Document Type"::"Finance Charge Memo") THEN
            "External Document No." := "Document No.";

        UpdateApplyPayments();
        UpdateCashFlowDimension();
        UpdateCostAmount();
    end;

    trigger OnModify()
    begin
        UpdateApplyPayments();
        UpdateCashFlowDimension();
        UpdateCostAmount();
    end;

    procedure GetGnlJnlLineAmount(): Decimal
    begin
        case "Budget Appropriation Method" of
            "Budget Appropriation Method"::"Amount Without VAT":
                exit(Amount);
            "Budget Appropriation Method"::"Amount With VAT":
                exit(Amount + "VAT Amount" + "VAT Difference");
            "Budget Appropriation Method"::"Cost Amount":
                exit("Cost Amount");
            else
                exit(0);
        end;
    end;

    procedure ImportJournalLines()
    var
        ImpJournalLines: Report "Import Journal Lines";
    begin
        Clear(ImpJournalLines);
        ImpJournalLines.SetParam("Journal Template Name", "Journal Batch Name");
        ImpJournalLines.Run();
    end;

    procedure ImportGLJournalLines()
    var
        ImpGLJournalLines: Report "Import GL Journal Lines";
    begin
        Clear(ImpGLJournalLines);
        ImpGLJournalLines.SetParam("Journal Template Name", "Journal Batch Name");
        ImpGLJournalLines.Run();
    end;

    procedure ApplyDocToGenLine()
    var
        PaymentToleranceMgt: Codeunit "Payment Tolerance Management";
        AccType: Enum "Gen. Journal Account Type";
        AccNo: Code[20];
    begin
        xRec.Amount := Amount;
        xRec."Currency Code" := "Currency Code";
        xRec."Posting Date" := "Posting Date";

        GetAccTypeAndNo(Rec, AccType, AccNo);

        case AccType of
            AccType::Customer:
                LookUpAppliesToDocCust(AccNo);
            AccType::Vendor:
                LookUpAppliesToDocVend(AccNo);
            AccType::Employee:
                LookUpAppliesToDocEmpl(AccNo);
        end;
        SetJournalLineFieldsFromApplication();

        if xRec.Amount <> 0 then
            if not PaymentToleranceMgt.PmtTolGenJnl(Rec) then
                exit;

        if "Applies-to Doc. Type" = "Applies-to Doc. Type"::Invoice then
            UpdateAppliesToInvoiceID();
    end;

    local procedure UpdateCostAmount()
    var
        Currency: Record Currency;
        VATPostingSetup: Record "VAT Posting Setup";
        CurrExchRate: Record "Currency Exchange Rate";
    begin
        "Cost Amount" := Amount;
        IF VATPostingSetup.GET("VAT Bus. Posting Group", "VAT Prod. Posting Group") THEN BEGIN
            IF (VATPostingSetup."VAT %" + VATPostingSetup."PTSS VAT N.D. %" <> 0) THEN
                "Cost Amount" += ROUND((Amount + "VAT Amount" + "VAT Difference") / (VATPostingSetup."VAT %" + VATPostingSetup."PTSS VAT N.D. %") * VATPostingSetup."PTSS VAT N.D. %", Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
            IF (VATPostingSetup."VAT %" + VATPostingSetup."PTSS VAT N.D. %" = 0) AND ("VAT Calculation Type" = "VAT Calculation Type"::"Reverse Charge VAT") THEN BEGIN
                IF VATPostingSetup.GET("VAT Bus. Posting Group", "VAT Prod. Posting Group") THEN BEGIN
                    "Cost Amount" += ROUND(Amount * (VATPostingSetup."PTSS VAT N.D. %") / 100, Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
                END;
            END;

            IF "Currency Code" <> '' THEN BEGIN
                "Cost Amount" := ROUND(CurrExchRate.ExchangeAmtFCYToLCY("Posting Date", "Currency Code", "Cost Amount", "Currency Factor"), Currency."Amount Rounding Precision");
            END;
        End;
    end;

    local procedure UpdateCashFlowDimension()
    var
        DimMgt: Codeunit DimensionManagement;
        ShortcutDimCode: array[8] of Code[20];
    begin
        DimMgt.GetShortcutDimensions("Dimension Set ID", ShortcutDimCode);
        if StrLen(ShortcutDimCode[4]) = 6 then begin
            VALIDATE("PTSS Acc: cash-flow code", COPYSTR(ShortcutDimCode[4], 1, 4));
            VALIDATE("PTSS Bal: cash-flow code", COPYSTR(ShortcutDimCode[4], 1, 4));
        end else begin
            Clear("PTSS Acc: cash-flow code");
            Clear("PTSS Bal: cash-flow code");
        end;
    end;

    local procedure UpdateApplyPayments()
    var
        VendLedgEntry: Record "Vendor Ledger Entry";
        CustLedgEntry: Record "Cust. Ledger Entry";
        DimMgt: Codeunit DimensionManagement;
    begin
        if ("Document Type" = "Document Type"::Payment) and ("Account Type" In ["Account Type"::Vendor, "Account Type"::Customer]) and ("Account No." <> '') then begin
            if ("Applies-to ID" <> '') then begin
                case "Account Type" of
                    "Account Type"::Vendor:
                        begin
                            VendLedgEntry.Reset();
                            VendLedgEntry.SetCurrentKey("Vendor No.", "Posting Date", "Applies-to ID");
                            VendLedgEntry.SetRange("Vendor No.", "Account No.");
                            VendLedgEntry.SetRange(Open, true);
                            VendLedgEntry.SetRange("Applies-to ID", "Applies-to ID");
                            if VendLedgEntry.FindFirst() then begin
                                DimMgt.UpdateGenJnlLineDim(Rec, VendLedgEntry."Dimension Set ID");
                                "External Document No." := VendLedgEntry."External Document No.";
                            end;
                        end;
                    "Account Type"::Customer:
                        begin
                            CustLedgEntry.Reset();
                            CustLedgEntry.SetCurrentKey("Customer No.", "Posting Date", "Applies-to ID");
                            CustLedgEntry.SetRange("Customer No.", "Account No.");
                            CustLedgEntry.SetRange(Open, true);
                            CustLedgEntry.SetRange("Applies-to ID", "Applies-to ID");
                            if CustLedgEntry.FindFirst() then
                                DimMgt.UpdateGenJnlLineDim(Rec, CustLedgEntry."Dimension Set ID");
                        end;
                end;
            end;
            if ("Applies-to Doc. No." <> '') then begin
                case "Account Type" of
                    "Account Type"::Vendor:
                        begin
                            VendLedgEntry.Reset();
                            VendLedgEntry.SetCurrentKey("Vendor No.", Open, "Document No.");
                            VendLedgEntry.SetRange("Vendor No.", "Account No.");
                            VendLedgEntry.SetRange(Open, true);
                            VendLedgEntry.SetRange("Document No.", "Applies-to Doc. No.");
                            if VendLedgEntry.FindFirst() then begin
                                DimMgt.UpdateGenJnlLineDim(Rec, VendLedgEntry."Dimension Set ID");
                                "External Document No." := VendLedgEntry."External Document No.";
                            end;
                        end;
                    "Account Type"::Customer:
                        begin
                            CustLedgEntry.Reset();
                            CustLedgEntry.SetCurrentKey("Customer No.", Open, "Document No.");
                            CustLedgEntry.SetRange("Customer No.", "Account No.");
                            CustLedgEntry.SetRange(Open, true);
                            CustLedgEntry.SetRange("Document No.", "Applies-to Doc. No.");
                            if CustLedgEntry.FindFirst() then
                                DimMgt.UpdateGenJnlLineDim(Rec, CustLedgEntry."Dimension Set ID");
                        end;
                end;
            end;
        end;
    end;

    local procedure ValidateEntityType()
    var
        Vendor: Record Vendor;
        PostingGr: Code[10];
    begin
        TestField("Account Type", "Account Type"::Vendor);
        TestField("Account No.");

        Vendor.Get("Account No.");
        case "Entity Type" of
            "Entity Type"::"Advance Payment":
                begin
                    Vendor.TestField("Adv. Payment Posting Group");
                    PostingGr := Vendor."Adv. Payment Posting Group";
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
        Validate("Posting Group", PostingGr);
    end;

    local procedure ValidateBudgetPaymentsType()
    begin
        BudgetConfig.GET;

        CASE ConfOpt00 OF
            ConfOpt00::" ":
                BEGIN
                    ConfClass0 := '';
                END;
            ConfOpt00::DC:
                BEGIN
                    BudgetConfig.TESTFIELD(VDC);
                    ConfClass0 := BudgetConfig.VDC;
                END;
            ConfOpt00::ER:
                BEGIN
                    BudgetConfig.TESTFIELD(VER);
                    ConfClass0 := BudgetConfig.VER;
                END;
            ConfOpt00::ERP:
                BEGIN
                    BudgetConfig.TESTFIELD(VERP);
                    ConfClass0 := BudgetConfig.VERP;
                END;
            ConfOpt00::"IF":
                BEGIN
                    BudgetConfig.TESTFIELD(VIF);
                    ConfClass0 := BudgetConfig.VIF;
                END;
            ConfOpt00::OD:
                BEGIN
                    BudgetConfig.TESTFIELD(VOD);
                    ConfClass0 := BudgetConfig.VOD;
                END;
            ConfOpt00::PP:
                BEGIN
                    BudgetConfig.TESTFIELD(VPP);
                    ConfClass0 := BudgetConfig.VPP;
                END;
            ConfOpt00::PPF:
                BEGIN
                    BudgetConfig.TESTFIELD(VPP);
                    ConfClass0 := BudgetConfig.VPPF;
                END;
        END;
    end;

    local procedure ValidateBudgetReceivablesType()
    begin
        BudgetConfig.GET;
        CASE ConfOpt00V OF
            ConfOpt00V::" ":
                BEGIN
                    ConfClass0 := '';
                END;
            ConfOpt00V::RDC:
                BEGIN
                    BudgetConfig.TESTFIELD(VRDC);
                    ConfClass0 := BudgetConfig.VRDC;
                END;
            ConfOpt00V::RER:
                BEGIN
                    BudgetConfig.TESTFIELD(VRER);
                    ConfClass0 := BudgetConfig.VRER;
                END;
            ConfOpt00V::RERP:
                BEGIN
                    BudgetConfig.TESTFIELD(VRERP);
                    ConfClass0 := BudgetConfig.VRERP;
                END;
            ConfOpt00V::RIF:
                BEGIN
                    BudgetConfig.TESTFIELD(VRIF);
                    ConfClass0 := BudgetConfig.VRIF;
                END;
            ConfOpt00V::ROD:
                BEGIN
                    BudgetConfig.TESTFIELD(VROD);
                    ConfClass0 := BudgetConfig.VROD;
                END;
            ConfOpt00V::RPP:
                BEGIN
                    BudgetConfig.TESTFIELD(VRP);
                    ConfClass0 := BudgetConfig.VRP;
                END;
            ConfOpt00V::RPPF:
                BEGIN
                    BudgetConfig.TESTFIELD(VRPF);
                    ConfClass0 := BudgetConfig.VRPF;
                END;
        END;
    end;
}
