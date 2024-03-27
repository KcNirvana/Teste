page 57016 "Approval Setup"
{
    Caption = 'Approval Setup';
    DelayedInsert = true;
    DeleteAllowed = true;
    InsertAllowed = true;
    ModifyAllowed = true;
    PageType = List;
    SourceTable = "Approval Setup";
    ApplicationArea = all;
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("Approval Type"; Rec."Approver Type")
                {
                }
                field("Approver ID"; Rec."Approver ID")
                {
                }
                field("Approver Id Description"; Rec."Approver Id Description")
                {
                }
                field("Section Code"; Rec."Section Code")
                {
                }
                field("Section Description"; Rec."Section Description")
                {
                }
                field("Start Date"; Rec."Start Date")
                {
                }
                field("End Date"; Rec."End Date")
                {
                }
            }
        }
    }

    actions
    {
    }
}

