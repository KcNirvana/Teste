table 57005 "Adj. Exch. Rates Report Buffer"
{
    Caption = 'Adj. Exch. Rates Report Buffer';

    fields
    {
        field(1; "Account Type"; enum "AdjExchRates Account Type")
        {
            Caption = 'Account Type';
        }
        field(2; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            TableRelation = "Bank Account";
        }
        field(3; "Cash Flow Code"; Code[20])
        {
            Caption = 'Cash Flow Code';
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(7; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
        }
        field(8; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Code';
        }
        field(9; "Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Base Amount';
        }
        field(10; "Base Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Base Amount (LCY)';
        }
        field(11; "Adjusted Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Adjusted Amount (LCY)';
        }
        field(12; "Account Name"; Text[100])
        {
            Caption = 'Account Name';
        }
        field(13; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Account Type", "Account No.", "Cash Flow Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

