profile "General Expense"
{
    Caption = 'General Expense';
    RoleCenter = "General Expense Rolecenter";
    Promoted = true;
}
page 57151 "General Expense RoleCenter"
{
    Caption = 'General Expense';
    PageType = RoleCenter;
    RefreshOnActivate = true;

    layout
    {
        area(rolecenter)
        {
            part(Control104; "Headline RC Business Manager")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Control1901851508; "General Expense Activities")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        area(Sections)
        {
            group(Expenses)
            {
                Caption = 'Expenses';

                group(Requisitions)
                {
                    action("Open Requisitions")
                    {
                        Caption = 'Open Requisitions';
                        ApplicationArea = All;
                        RunObject = Page "Requisitions Open List";
                    }
                    action("Contract Open Requisitions")
                    {
                        Caption = 'Contract Open Requisitions';
                        ApplicationArea = All;
                        RunObject = Page "Req. Contract Open List";
                    }

                }
                group("Consultations Group")
                {
                    action(Consultations)
                    {
                        Caption = 'Consultations';
                        ApplicationArea = All;
                        RunObject = Page "Consultation List";
                    }

                    action("Consultation Without Avaylables")
                    {
                        Caption = 'Consultation Without Avaylables';
                        ApplicationArea = All;
                        RunObject = Page "Consultation Without Avay";
                    }
                    action("Consultation With Avaylables Open")
                    {
                        Caption = 'Consultation With Avaylables Open';
                        ApplicationArea = All;
                        RunObject = Page "Consultation With Avay Open";
                    }
                    action("Consultation With PAQ Open")
                    {
                        Caption = 'Consultation With PAQ Open';
                        ApplicationArea = All;
                        RunObject = Page "Consultation With PAQ Open";
                    }
                    action("Consultation With Order Open")
                    {
                        Caption = 'Consultation With Order Open';
                        ApplicationArea = All;
                        RunObject = Page "Consultation With Order Open";
                    }
                    action("Consultation With Invoice Open")
                    {
                        Caption = 'Consultation With Invoice Open';
                        ApplicationArea = All;
                        RunObject = Page "Consultation With Invoice Open";
                    }
                    action("Contract Consultations")
                    {
                        Caption = 'Contract Consultations';
                        ApplicationArea = All;
                        RunObject = Page "Contract Consultation List";
                    }
                }
                group("Pending Approval")
                {
                    action("Pending Approval Requisitions")
                    {
                        Caption = 'Pending Approval Requisitions';
                        ApplicationArea = All;
                        RunObject = Page "Requisitions Pending List";
                    }
                    action("Pending Approval Avaylable Budgets")
                    {
                        Caption = 'Pending Approval Avaylable Budgets';
                        ApplicationArea = All;
                        RunObject = Page "Avaylable Budget List";
                        RunPageView = sorting("Avay Code") where(Status = CONST("Pending Approval"));
                    }
                    action("Pending Approval PAQs")
                    {
                        Caption = 'Pending Approval PAQs';
                        ApplicationArea = All;
                        RunObject = Page "PAQ List";
                        RunPageView = sorting("PAQ Code") where(Status = CONST("Pending Approval"));
                    }
                }
                group(Purchases)
                {
                    Caption = 'Purchases';
                    action(Vendors)
                    {
                        Caption = 'Vendors';
                        ApplicationArea = All;
                        RunObject = Page "Vendor List";
                    }
                    action(Items2)
                    {
                        Caption = 'Items';
                        ApplicationArea = All;
                        RunObject = Page "Item List";
                    }
                    action("Purchase Quotes")
                    {
                        Caption = 'Purchase Quotes';
                        ApplicationArea = All;
                        RunObject = Page "Purchase Quotes";
                    }
                    action("Purchase Orders")
                    {
                        Caption = 'Purchase Orders';
                        ApplicationArea = All;
                        RunObject = Page "Purchase Order List";
                    }
                }
                action(Contracts)
                {
                    Caption = 'Contracts';
                    ApplicationArea = All;
                    RunObject = Page "Contract List";
                }
            }

            group(Historic)
            {
                group("Historic Requisitions")
                {
                    Caption = 'Historic Requisitions';
                    action("Posted Requisitions")
                    {
                        Caption = 'Posted Requisitions';
                        ApplicationArea = All;
                        RunObject = Page "Requisitions Posted List";
                    }
                    action("Contract Posted Requisitions")
                    {
                        Caption = 'Contract Posted Requisitions';
                        ApplicationArea = All;
                        RunObject = Page "Req. Contract Posted List";
                    }
                }
                group("Historic Consultations")
                {
                    Caption = 'Historic Consultations';
                    action("Posted Consultations")
                    {
                        Caption = 'Posted Consultations';
                        ApplicationArea = All;
                        RunObject = Page "Posted Consultation List";
                    }
                    action("Posted Avaylable Budgets")
                    {
                        Caption = 'Posted Avaylable Budgets';
                        ApplicationArea = All;
                        RunObject = Page "Posted Avaylable Budget List";
                    }
                    action("Posted PAQs")
                    {
                        Caption = 'Posted PAQs';
                        ApplicationArea = All;
                        RunObject = Page "Posted PAQ List";
                    }
                    action("Posted Contracts")
                    {
                        Caption = 'Posted Contracts';
                        ApplicationArea = All;
                        RunObject = Page "Posted Contract List";
                    }
                }
                group("Historic Purchases")
                {
                    Caption = 'Historic Purchases';
                    action("Posted Purchase Receipts")
                    {
                        Caption = 'Posted Purchase Receipts';
                        ApplicationArea = All;
                        RunObject = Page "Posted Purchase Receipts";
                    }
                    action("Posted Purchase Invoices")
                    {
                        Caption = 'Posted Purchase Invoices';
                        ApplicationArea = All;
                        RunObject = Page "Posted Purchase Invoices";
                    }
                    action("Posted Purchase CrMemos")
                    {
                        Caption = 'Posted Purchase CrMemos';
                        ApplicationArea = All;
                        RunObject = Page "Posted Purchase Credit Memos";
                    }
                }
            }
        }
    }
}

