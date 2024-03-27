page 57010 "Budget Permissions List"
{

    Caption = 'Budget Permissions List';
    CardPageID = "Budget Permissions Card";
    Editable = false;
    PageType = List;
    SourceTable = "Budget Permissions";
    SourceTableView = where(Type = const(User));
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(group)
            {
                field("User cod"; Rec."User Code")
                {
                }
                field("Employee Number"; Rec."Employee Number")
                {
                }
                field("Configuration Model"; Rec."Configuration Model")
                {
                }
            }
        }
    }

    actions
    {
    }
}

