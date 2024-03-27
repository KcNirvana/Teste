table 57003 "SEPA Category"
{

    Caption = 'SEPA Categories';
    DrillDownPageID = "SEPA Category List";
    LookupPageID = "SEPA Category List";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[250])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Code, Description)
        {
        }
    }
}

