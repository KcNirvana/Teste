table 57093 "UNILEO BA Balances"
{
    Caption = 'BA Balances';

    fields
    {
        field(1; Year; Integer)
        {
            Caption = 'Year';
            NotBlank = true;
        }
        field(2; GLNoPCC; Code[20])
        {
            Caption = 'PCC Account';
            NotBlank = true;
        }
        field(3; GLNo; Code[20])
        {
            Caption = 'G/L Account';
            NotBlank = true;
        }
        field(4; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
            CaptionClass = '1,1,1';
        }
        field(5; "Shortcut Dimension 3 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 3 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(3));
            CaptionClass = '1,2,3';
        }
        field(6; AmountOpen; Decimal)
        {
            Caption = 'Balance';
        }
        field(7; Date; Date)
        {
            Caption = 'Date';
        }
    }

    keys
    {
        key(Key1; Year, GLNoPCC, GLNo, "Shortcut Dimension 1 Code", "Shortcut Dimension 3 Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

