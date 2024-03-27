page 57015 "User Approval Setup"
{
    PageType = List;
    SourceTable = "User Approval Setup";
    UsageCategory = Administration;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("User ID"; Rec."User ID")
                {
                }
                field("Start Date"; Rec."Start Date")
                {
                }
                field("End Date"; Rec."End Date")
                {
                }
                field(Charge; Rec.Charge)
                {
                }
                field("Charge Description"; Rec."Charge Description")
                {
                }
            }
        }
    }

    actions
    {
    }
}

