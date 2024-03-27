page 57008 "Budget Permissions Models"
{

    Caption = 'Budget Permissions Models';
    CardPageID = "Budget Permissions Model Card";
    Editable = false;
    PageType = List;
    SourceTable = "Budget Permissions";
    SourceTableView = where(Type = const(Group));
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
                    Caption = 'Model Code';
                }
            }
        }
    }

    actions
    {
    }
}

