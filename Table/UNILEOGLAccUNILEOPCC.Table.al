table 57096 "UNILEO G/L Account UNILEO-PCC"
{

    Caption = 'G/L Account UNILEO-PCC';
    LookupPageID = "UNILEO GLAcc UNILEO-PCC List";

    fields
    {
        field(1; "G/L Account Type"; Enum "UNILEO PCC GLAccount Type")
        {
            Caption = 'G/L Account Type';
        }
        field(2; "No."; Text[30])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(3; Name; Text[200])
        {
            Caption = 'Name';
        }
        field(4; "Account Type"; Enum "UNILEO PCC Account Type")
        {
            Caption = 'Account Type';
        }
        field(5; Totaling; Text[250])
        {
            Caption = 'Totaling';
        }
        field(6; ID_ContaCentral; Integer)
        {
        }
        field(9; "Income/Balance"; Enum "G/L Account Income/Balance")
        {
            Caption = 'Income/Balance';
        }
        field(19; Indentation; Integer)
        {
            Caption = 'Indentation';
            MinValue = 0;
        }
        field(28; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(36; "PCC Balance"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Balance';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("G/L Entry".Amount where("Posting Date" = FIELD("Date Filter"), "CodeDot_PCC" = FIELD("No."), "CodeDot_PCC" = FIELD(FILTER(Totaling))));
        }
        field(37; "UNILEO Balance"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Balance';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("G/L Entry".Amount where("Posting Date" = FIELD("Date Filter"), "CodeDot_UNILEO" = FIELD("No."), "CodeDot_UNILEO" = FIELD(FILTER(Totaling))));
        }
        field(47; "PCC Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Debit Amount';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("G/L Entry"."Debit Amount" where("Posting Date" = FIELD("Date Filter"), "CodeDot_PCC" = FIELD("No."), "CodeDot_PCC" = FIELD(FILTER(Totaling))));
        }
        field(48; "PCC Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Credit Amount';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("G/L Entry"."Credit Amount" where("Posting Date" = FIELD("Date Filter"), "CodeDot_PCC" = FIELD("No."), "CodeDot_PCC" = FIELD(FILTER(Totaling))));

        }
        field(49; "UNILEO Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Debit Amount';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("G/L Entry"."Debit Amount" where("Posting Date" = FIELD("Date Filter"), "CodeDot_UNILEO" = FIELD("No."), "CodeDot_UNILEO" = FIELD(FILTER(Totaling))));
        }
        field(50; "UNILEO Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Credit Amount';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("G/L Entry"."Credit Amount" where("Posting Date" = FIELD("Date Filter"), "CodeDot_UNILEO" = FIELD("No."), "CodeDot_UNILEO" = FIELD(FILTER(Totaling))));

        }
    }

    keys
    {
        key(Key1; "G/L Account Type", "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "G/L Account Type", "No.", Name)
        {
        }
    }
}

