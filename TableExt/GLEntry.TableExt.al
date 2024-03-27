tableextension 57008 GLEntryTableExt extends "G/L Entry"
{
    fields
    {
        field(50102; "Rubric Code"; Code[20])
        {
            Caption = 'Rubric Code';
        }
        field(50023; CodeDot_PCC; Text[30])
        {
            Caption = 'PCC No.';
            TableRelation = "UNILEO G/L Account UNILEO-PCC"."No." WHERE("G/L Account Type" = const(PCC));
            Editable = false;
        }
        field(50024; CodeDot_UNILEO; Text[30])
        {
            Caption = 'UNILEO No.';
            TableRelation = "UNILEO G/L Account UNILEO-PCC"."No." WHERE("G/L Account Type" = const(UNILEO));
            Editable = false;
        }
        field(50009; ClosedByCloseYear; Boolean)
        {
            Caption = 'Closed By Close Year';
        }
        field(50011; YearClosed; Integer)
        {
            Caption = 'Closed on Year';
        }
        field(50101; "Budget Mov Type"; enum "Budget Mov Type")
        {
            Caption = 'Budget Mov Type';
        }
        field(61020; "Budget Appropriation Method"; enum "Budget Appropriation Method")
        {
            Caption = 'Budget Appropriation Method';
        }
        field(51000; "Creation User"; Code[50])
        {
            Caption = 'Creation User';
            Editable = false;
            TableRelation = User."User Name";
            ValidateTableRelation = false;
        }
        field(51001; "Creation Date"; DateTime)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(51002; "Vendor Posting Group"; Code[20])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Vendor Ledger Entry"."Vendor Posting Group" WHERE("Entry No." = FIELD("Entry No.")));
            Editable = false;
        }
    }
    keys
    {
        key(NewKey1; "Rubric Code")
        {
        }
        key(NewKey2; CodeDot_PCC)
        {
        }
        key(NewKey3; CodeDot_UNILEO)
        {
        }
        key(NewKey4; CodeDot_PCC, CodeDot_UNILEO)
        {
        }
    }

    trigger OnInsert()
    begin
        "Creation User" := UserId;
        "Creation Date" := CurrentDateTime;
    end;

    procedure GetRubricCode(): Code[20]
    var
        BudgetReportConfig: Record "Budget Report Configuration";
        DimSetEntry: Record "Dimension Set Entry";
        DimensionValue: Record "Dimension Value";
    begin
        BudgetReportConfig.Get();
        BudgetReportConfig.TESTFIELD("Rubric Dimension");
        BudgetReportConfig.TESTFIELD("Economic Dimension");
        DimSetEntry.Reset();
        DimSetEntry.SETRANGE("Dimension Set ID", "Dimension Set ID");
        DimSetEntry.SETRANGE("Dimension Code", BudgetReportConfig."Economic Dimension");
        IF DimSetEntry.FINDFIRST THEN BEGIN
            DimensionValue.GET(DimSetEntry."Dimension Code", DimSetEntry."Dimension Value Code");
            DimensionValue.TESTFIELD("Rubric Code");
            Exit(DimensionValue."Rubric Code")
        END;
    end;

    procedure GetPCCCode(AccountNo: Code[20]): Text[30]
    var
        GLAccount: Record "G/L Account";
    begin
        If GLAccount.Get(AccountNo) then
            exit(GLAccount.CodeDot_PCC)
    end;

    procedure GetUNILEOCode(AccountNo: Code[20]): Text[30]
    var
        GLAccount: Record "G/L Account";
        GLAccountPCCUNILEO: Record "UNILEO G/L Account PCC-UNILEO";
    begin
        If GLAccount.Get(AccountNo) then
            If GLAccountPCCUNILEO.Get("UNILEO GLAcc PCCUNILEO Type"::PCC2UNILEO, GLAccount.CodeDot_PCC) then
                exit(GLAccountPCCUNILEO."Account UNILEO");
    end;

    procedure GetRetentionFields(GlEntry: Record "G/L Entry"; var RetentionCode: Code[20]; var RetentionBase: Decimal;
                                var RetentionAmount: Decimal; var RetentionTax: Decimal)
    var
        PTSSWithHoldingLedgerEntry: Record "PTSS With. Tax Ledger Entry";
    begin
        Clear(RetentionCode);
        Clear(RetentionBase);
        Clear(RetentionAmount);
        Clear(RetentionTax);

        PTSSWithHoldingLedgerEntry.Reset();
        PTSSWithHoldingLedgerEntry.SetRange("Entry Date", GlEntry."Posting Date");
        PTSSWithHoldingLedgerEntry.SetRange("Document No.", GlEntry."Document No.");
        if PTSSWithHoldingLedgerEntry.FindFirst() then begin
            RetentionCode := PTSSWithHoldingLedgerEntry."Withholding Tax Code 1";
            RetentionBase := PTSSWithHoldingLedgerEntry."Document Amount";
            RetentionAmount := PTSSWithHoldingLedgerEntry."Withholding Original Amount 1";
            RetentionTax := PTSSWithHoldingLedgerEntry."Withholding Tax 1";
        end else begin
            PTSSWithHoldingLedgerEntry.Reset();
            PTSSWithHoldingLedgerEntry.SetRange("Application Posting Date", GlEntry."Posting Date");
            PTSSWithHoldingLedgerEntry.SetRange("Application Document No.", GlEntry."Document No.");
            if PTSSWithHoldingLedgerEntry.FindFirst() then begin
                RetentionCode := PTSSWithHoldingLedgerEntry."Withholding Tax Code 1";
                RetentionBase := PTSSWithHoldingLedgerEntry."Document Amount";
                RetentionAmount := PTSSWithHoldingLedgerEntry."Withholding Original Amount 1";
                RetentionTax := PTSSWithHoldingLedgerEntry."Withholding Tax 1";
            end;
        end;
    end;
}