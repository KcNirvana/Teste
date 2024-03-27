table 57075 Sections
{
    Caption = 'Sections';
    DrillDownPageID = "Section List";
    LookupPageID = "Section List";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(3; "Department Code"; Code[20])
        {
            Caption = 'Department Code';
            TableRelation = "Departments";
        }
        field(4; "Section Responsable"; Code[20])
        {
            Caption = 'Section Responsable';
            TableRelation = Employee;
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
        fieldgroup(DropDown; "Department Code", Code, Description)
        {
        }
    }
}

