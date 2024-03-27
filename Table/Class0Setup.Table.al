table 57039 "Class 0 Setup"
{

    Caption = 'Conf Class 0';
    DrillDownPageID = "Class 0 Configuration";
    LookupPageID = "Class 0 Configuration";

    fields
    {
        field(1; "Regist type"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(4; "Debt count"; Code[20])
        {
            Caption = 'Debit Account';
            TableRelation = "G/L Account";
        }
        field(5; "Credit count"; Code[20])
        {
            Caption = 'Credit Account';
            TableRelation = "G/L Account";
        }
        field(6; "Verify Avaylable Amount"; Boolean)
        {
            Caption = 'Verify Avaylable Amount';
        }
    }

    keys
    {
        key(Key1; "Regist type", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Regist type", Description)
        {
        }
    }
}

