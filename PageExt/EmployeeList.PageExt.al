pageextension 57032 EmployeeListPageExt extends "Employee List"
{
    layout
    {
        addafter("Last Name")
        {
            field("Section Code"; Rec."Section Code")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
    }
}
