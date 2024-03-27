page 57006 "Department List"
{
    Caption = 'Departament List';
    PageType = List;
    SourceTable = "Departments";
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                field(Code; Rec.Code)
                {
                }
                field(Description; Rec.Description)
                {
                }
            }
        }
    }
    actions
    {
    }
}

