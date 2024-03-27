table 57043 "Charge Setup"
{
    Caption = 'Charge Setup';
    DrillDownPageID = "Charge List";
    LookupPageID = "Charge List";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Charge';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Code")
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

