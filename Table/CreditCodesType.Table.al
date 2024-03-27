table 57004 "Credit Codes Type"
{
    Caption = 'Credit Codes';
    DrillDownPageID = "Credit Codes Types";
    LookupPageID = "Credit Codes Types";

    fields
    {
        field(1; Type; Enum "Credit Codes Type")
        {
            Caption = 'Type';
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(3; Description; Text[250])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(Key1; Type, "Code")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Code", Description)
        {
        }
    }
}

