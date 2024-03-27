pageextension 57031 EmployeeCardPageExt extends "Employee Card"
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
