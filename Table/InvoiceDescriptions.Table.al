table 57001 "Invoice Descriptions"
{
    DrillDownPageID = "Invoice Descriptions";
    LookupPageID = "Invoice Descriptions";

    fields
    {
        field(1; Code; Code[10])
        {
            NotBlank = true;
        }
        field(2; Description; Text[200])
        {
        }
        field(3; Num; Integer)
        {
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

