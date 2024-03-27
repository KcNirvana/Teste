profile "Director"
{
    Caption = 'Director';
    RoleCenter = "Director RoleCenter";
    Promoted = true;
}
page 57156 "Director RoleCenter"
{
    Caption = 'Director';
    PageType = RoleCenter;

    layout
    {

    }

    actions
    {
        area(reporting)
        {
            action("Posted PAQs Report")
            {
                Caption = 'Posted PAQs Report';
                Image = "Report";
                RunObject = Report "Posted PAQ";
            }
        }
        area(embedding)
        {
            action("Pending Approval Requisitions")
            {
                Caption = 'Pending Approval Requisitions';
                ApplicationArea = All;
                RunObject = Page "Requisitions Pending List";
            }
            action("Pending Approval PAQs")
            {
                Caption = 'Pending Approval PAQs';
                ApplicationArea = All;
                RunObject = Page "PAQ List";
                RunPageView = sorting("PAQ Code") where(Status = CONST("Pending Approval"));
            }
        }
        area(sections)
        {
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                action("Posted Requisitions")
                {
                    Caption = 'Posted Requisitions';
                    ApplicationArea = All;
                    RunObject = Page "Requisitions Posted List";
                }
                action("Posted PAQs")
                {
                    Caption = 'Posted PAQs';
                    ApplicationArea = All;
                    RunObject = Page "Posted PAQ List";
                }
            }
        }
        area(creation)
        {
        }
        area(processing)
        {
        }
    }
}

