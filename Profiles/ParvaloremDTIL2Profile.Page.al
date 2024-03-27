profile "Parvalorem DTIL2"
{
    Caption = 'Parvalorem DTIL2';
    RoleCenter = "Parvalorem DTIL2 Rolecenter";
    Promoted = true;
}
page 57153 "Parvalorem DTIL2 RoleCenter"
{

    Caption = 'Parvalorem DTIL2';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group(Control1900724808)
            {
                ShowCaption = false;
                part(Control1901851508; "SO Processor Activities")
                {
                    AccessByPermission = TableData "Sales Shipment Header" = R;
                    Visible = false;
                }
            }
            group(Control1900724708)
            {
                ShowCaption = false;
                part(Control1; "Trailing Sales Orders Chart")
                {
                    AccessByPermission = TableData "Sales Shipment Header" = R;
                    Visible = false;
                }
                part(Control4; "My Job Queue")
                {
                    Visible = false;
                }
                part(Control1905989608; "My Items")
                {
                    AccessByPermission = TableData "My Item" = R;
                    Visible = false;
                }
                part(Control21; "Report Inbox Part")
                {
                    AccessByPermission = TableData "Report Inbox" = R;
                    Visible = false;
                }
                systempart(Control1901377608; MyNotes)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
        }
        area(embedding)
        {
            action(Users)
            {
                Caption = 'Users';
                RunObject = Page Users;
            }
            action("User Settings List")
            {
                Caption = 'User Settings List';
                RunObject = Page "User Settings List";
            }
            action(Employees)
            {
                Caption = 'Employees';
                RunObject = Page "Employee List";
            }
            action("Budget Permissions")
            {
                Caption = 'Budget Permissions';
                RunObject = Page "Budget Permissions List";
            }
            action("Change Log Entries")
            {
                Caption = 'Change Log Entries';
                RunObject = Page "Change Log Entries";
            }
            action("User Setup")
            {
                Caption = 'User Setup';
                RunObject = Page "User Setup";
            }
            action("Change Log Setup")
            {
                Caption = 'Change Log Setup';
                Image = MachineCenter;
                RunObject = Page "Change Log Setup";
            }
        }
        area(sections)
        {
        }
        area(creation)
        {
        }
        area(processing)
        {
        }
    }
}

