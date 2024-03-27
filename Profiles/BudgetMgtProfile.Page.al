profile "Budget Management"
{
    Caption = 'Budget Management';
    RoleCenter = "Budget Management Rolecenter";
    Promoted = true;
}

Page 57150 "Budget Management Rolecenter"
{
    PageType = RoleCenter;
    Caption = 'Budget Management';
    RefreshOnActivate = true;

    layout
    {
        area(rolecenter)
        {
            part(Control104; "Headline RC Business Manager")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Control1901851508; "Budget Manager Activities")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        area(Sections)
        {
            group(Budget)
            {
                Caption = 'Budget';
                action("Budget Class 0")
                {
                    Caption = 'Budget Class 0';
                    ApplicationArea = All;
                    RunObject = Page "Budget Class 0";
                }
            }
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
                    action("Purch. Inv. With Budget")
                    {
                        Caption = 'Purchase Invoices With Process';
                        ApplicationArea = All;
                        RunObject = Page "Purchase Invoices";
                    }
                    action("Purch. CrMemo With Budget")
                    {
                        Caption = 'Purchase CrMemos With Process';
                        ApplicationArea = All;
                        RunObject = Page "Purchase Credit Memos";
                    }
                    action("Purch. Inv. Without Budget")
                    {
                        Caption = 'Purchase Invoices Without Process';
                        ApplicationArea = All;
                        RunObject = Page "Purchase Invoices Not Budget";
                    }
                    action("Purch. CrMemo Without Budget")
                    {
                        Caption = 'Purchase CrMemos Without Process';
                        ApplicationArea = All;
                        RunObject = Page "Purchase CrMemos Not Budget";
                    }
                }
                action(Contracts)
                {
                    Caption = 'Contracts';
                    ApplicationArea = All;
                    RunObject = Page "Contract List";
                }
            }
            group(Revenues)
            {
                Caption = 'Revenues';
                action(Customers)
                {
                    Caption = 'Customers';
                    ApplicationArea = All;
                    RunObject = Page "Customer List";
                }
                action(Items)
                {
                    Caption = 'Items';
                    ApplicationArea = All;
                    RunObject = Page "Item List";
                }
                action("Sales Orders")
                {
                    Caption = 'Sales Orders';
                    ApplicationArea = All;
                    RunObject = Page "Sales Order List";
                }
                action("Sales Invoices")
                {
                    Caption = 'Sales Invoices';
                    ApplicationArea = All;
                    RunObject = Page "Sales Invoice List";
                }
                action("Sales CrMemos")
                {
                    Caption = 'Sales CrMemos';
                    ApplicationArea = All;
                    RunObject = Page "Sales Credit Memos";
                }
            }
            group(Reports)
            {
                Caption = 'Reports';
                group("Budget Group")
                {
                    Caption = 'Budget Reports';
                    action("Budget Reports")
                    {
                        Caption = 'Budget Reports';
                        ApplicationArea = All;
                        RunObject = Page "Budget Reports";
                    }
                }
                group("UNILEO Group")
                {
                    Caption = 'UNILEO Reports';
                    action("UNILEO Reports")
                    {
                        Caption = 'UNILEO Reports';
                        ApplicationArea = All;
                        RunObject = Page "UNILEO Reports";
                    }
                }
                group(Dashboards)
                {
                    Caption = 'Dashboards';
                    action("Total Consultation List")
                    {
                        Caption = 'Total Consultation List';
                        ApplicationArea = All;
                        RunObject = Page "Total Consultation List";
                    }
                    action("Dashboard Consultations Detailed")
                    {
                        Caption = 'Dashboard Consultations Detailed';
                        ApplicationArea = All;
                        RunObject = Page "Dashboard - Consultations";
                    }
                    action("Dashboard Consultation Lines Detailed")
                    {
                        Caption = 'Dashboard Consultation Lines Detailed';
                        ApplicationArea = All;
                        RunObject = Page "Dashboard - Consultation Lines";
                    }
                    action("Dashboard Requisitions Detailed")
                    {
                        Caption = 'Dashboard Requisitions Detailed';
                        ApplicationArea = All;
                        RunObject = Page "Dashboard - Requisitions";
                    }
                    action("Dashboard Requisition Lines Detailed")
                    {
                        Caption = 'Dashboard Requisition Lines Detailed';
                        ApplicationArea = All;
                        RunObject = Page "Dashboard - Requisition Lines";
                    }
                }
                group("Close Year")
                {
                    Caption = 'Close Year';
                    action("Close Year Dimensions")
                    {
                        Caption = 'Close Year Dimensions';
                        ApplicationArea = All;
                        RunObject = Page "CloseYearDimensions";
                    }
                    action("Close Income Statement - Budget")
                    {
                        Caption = 'Close Income Statement - Budget';
                        ApplicationArea = All;
                        RunObject = Report "Budget Close Income Statement";
                    }
                }
                group(Treasury)
                {
                    Caption = 'Treasury';
                    action("Treasury Operations")
                    {
                        Caption = 'Treasury Operations';
                        ApplicationArea = All;
                        RunObject = report "Treasury Operations";
                    }
                    action("Vendor Payment Advice")
                    {
                        Caption = 'Vendor Payment Advice';
                        ApplicationArea = All;
                        RunObject = Report "Vendor - Payment Advice";
                    }
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
                group("Historic Sales")
                {
                    Caption = 'Historic Sales';

                    action("Posted Sales Invoices")
                    {
                        Caption = 'Posted Sales Invoices';
                        ApplicationArea = All;
                        RunObject = Page "Posted Sales Invoices";
                    }
                    action("Posted Sales CrMemos")
                    {
                        Caption = 'Posted Sales CrMemos';
                        ApplicationArea = All;
                        RunObject = Page "Posted Sales Credit Memos";
                    }
                }
            }
            group(Configuration)
            {
                group(General)
                {
                    Caption = 'General';
                    action("Budget Configuration")
                    {
                        Caption = 'Budget Configuration';
                        ApplicationArea = All;
                        RunObject = Page "Budget Configuration";
                    }
                    action("Budget Permissions")
                    {
                        Caption = 'Budget Permissions';
                        ApplicationArea = All;
                        RunObject = Page "Budget Permissions List";
                    }
                    action("Budget Permissions Models")
                    {
                        Caption = 'Budget Permissions Models';
                        ApplicationArea = All;
                        RunObject = Page "Budget Permissions Models";
                    }
                    action("Class 0 Setup")
                    {
                        Caption = 'Class 0 Configuration';
                        ApplicationArea = All;
                        RunObject = Page "Class 0 Configuration";
                    }
                    action("Selection Reason")
                    {
                        Caption = 'Selection Reason';
                        ApplicationArea = All;
                        RunObject = Page "Selection Reason List";
                    }
                    action("Rejection Reason")
                    {
                        Caption = 'Rejection Reason';
                        ApplicationArea = All;
                        RunObject = Page "Rejection Reason List";
                    }
                }
                group(Reporting)
                {
                    action("Budget Report Configuration")
                    {
                        Caption = 'Budget Report Configuration';
                        ApplicationArea = All;
                        RunObject = Page "Budget Report Configuration";
                    }
                    action("UNILEO Report Configuration")
                    {
                        Caption = 'UNILEO Report Configuration';
                        ApplicationArea = All;
                        RunObject = Page "UNILEO Report Configuration";
                    }
                }
                group("Employees")
                {
                    Caption = 'Employees';
                    action(EmployeeList)
                    {
                        Caption = 'Employees';
                        ApplicationArea = All;
                        RunObject = Page "Employee List";
                    }
                    action(Departments)
                    {
                        Caption = 'Departments';
                        ApplicationArea = All;
                        RunObject = Page "Department List";
                    }
                    action(Sections)
                    {
                        Caption = 'Sections';
                        ApplicationArea = All;
                        RunObject = Page "Section List";
                    }
                }
                group(Approvals)
                {
                    Caption = 'Approvals';

                    action("User Approval Setup")
                    {
                        Caption = 'User Approval Setup';
                        ApplicationArea = All;
                        RunObject = Page "User Approval Setup";
                    }
                    action("Documents Approval Setup")
                    {
                        Caption = 'Documents Approval Setup';
                        ApplicationArea = All;
                        RunObject = Page "Documents Approval Setup";
                    }
                    action("Charge List")
                    {
                        Caption = 'Charge List';
                        ApplicationArea = All;
                        RunObject = Page "Charge List";
                    }
                }
                group(UNILEO)
                {
                    Caption = 'UNILEO';
                    action("G/L Account UNILEO")
                    {
                        Caption = 'G/L Account UNILEO';
                        ApplicationArea = All;
                        RunObject = Page "UNILEO G/L Account UNILEO";
                    }
                    action("G/L Account PCC")
                    {
                        Caption = 'G/L Account PCC';
                        ApplicationArea = All;
                        RunObject = Page "UNILEO G/L Account PCC";
                    }
                    action("BA Balances")
                    {
                        Caption = 'BA Balances';
                        ApplicationArea = All;
                        RunObject = Page "UNILEO BA Balances";
                    }
                    action("Management Balances")
                    {
                        Caption = 'Management Balances';
                        ApplicationArea = All;
                        RunObject = Page "UNILEO Management Balances";
                    }
                    action("Convertion NAV PCC")
                    {
                        Caption = 'Convertion NAV PCC';
                        ApplicationArea = All;
                        RunObject = Page "UNILEO Convertion NAV PCC";
                    }
                    action("Convertion PCC UNILEO")
                    {
                        Caption = 'Convertion PCC UNILEO';
                        ApplicationArea = All;
                        RunObject = Page "UNILEO Convertion PCC2UNILEO";
                    }
                    action("Import PCC/UNILEO")
                    {
                        Caption = 'Import PCC/UNILEO';
                        ApplicationArea = All;
                        RunObject = xmlport "UNILEO GL Account Unileo/PCC";
                    }
                }
            }
        }
    }
}