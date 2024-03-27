profile "Budget Total"
{
    Caption = 'Budget Total';
    RoleCenter = "Budget Total RoleCenter";
    Promoted = true;
}
page 57152 "Budget Total RoleCenter"
{
    Caption = 'Budget Total';
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
                }
                part(Control1907692008; "My Customers")
                {
                }
            }
            group(Control1900724708)
            {
                ShowCaption = false;
                part(Control1; "Trailing Sales Orders Chart")
                {
                    AccessByPermission = TableData "Sales Shipment Header" = R;
                }
                part(Control4; "My Job Queue")
                {
                    Visible = false;
                }
                part(Control1905989608; "My Items")
                {
                    AccessByPermission = TableData "My Item" = R;
                }
                part(Control21; "Report Inbox Part")
                {
                    AccessByPermission = TableData "Report Inbox" = R;
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
            action("Budget Reports")
            {
                Caption = 'Budget Reports';
                Image = "Report";
                RunObject = Page "Budget Reports";
            }
            action("UNILEO Reports")
            {
                Caption = 'UNILEO Reports';
                Image = "Report";
                RunObject = Page "UNILEO Reports";
            }
            action("Posted PAQs Report")
            {
                Caption = 'Posted PAQs Report';
                Image = "Report";
                ApplicationArea = All;
                RunObject = Report "Posted PAQ";
            }
            group(Reports)
            {
                Caption = 'Reports';
                Image = Report;
                group(Accounting)
                {
                    Caption = 'Accounting';
                    Image = CostAccounting;
                    action("Account Schedule")
                    {
                        Caption = 'Account Schedule';
                        Image = "Report";
                        RunObject = Report "Account Schedule";
                    }
                    action("G/L Register")
                    {
                        Caption = 'G/L Register';
                        Image = "Report";
                        RunObject = Report "G/L Register";
                    }
                    action("Detail Trial Balance")
                    {
                        Caption = 'Detail Trial Balance';
                        Image = "Report";
                        RunObject = Report "Detail Trial Balance";
                    }
                    action("Trial Balance")
                    {
                        Caption = 'Trial Balance';
                        Image = "Report";
                        RunObject = Report "Trial Balance";
                    }
                    action("Trial Balance by Period")
                    {
                        Caption = 'Trial Balance by Period';
                        Image = "Report";
                        RunObject = Report "Trial Balance by Period";
                    }
                    action("Trial Balance - 7/4 Columns")
                    {
                        Caption = 'Trial Balance - 7/4 Columns';
                        Image = "Report";
                        RunObject = Report "PTSS Trial Balance - 7/4 Col.";
                    }
                    action("Cash-flow Report")
                    {
                        Caption = 'Cash-flow Report';
                        Image = "Report";
                        RunObject = Report "PTSS Cash-Flow Report";
                    }
                    action("Chart of Accounts")
                    {
                        Caption = 'Chart of Accounts';
                        Image = "Report";
                        RunObject = Report "Chart of Accounts";
                    }
                    action("Close Income Statement - Budget")
                    {
                        Caption = 'Close Income Statement - Budget';
                        Image = "Report";
                        RunObject = Report "Budget Close Income Statement";
                    }
                    action("Total Consultation List")
                    {
                        Caption = 'Total Consultation List';
                        Image = "Report";
                        RunObject = Page "Total Consultation List";
                    }
                }
                group(Vendors)
                {
                    Caption = 'Vendors';
                    Image = Purchasing;
                    action("VAT Vendors Report")
                    {
                        Caption = 'VAT Vendors Report';
                        Image = "Report";
                        RunObject = Report "PTSS VAT Vendors Report";
                    }
                    action("Vendor - Summary Aging")
                    {
                        Caption = 'Vendor - Summary Aging';
                        Image = "Report";
                        RunObject = Report "Vendor - Summary Aging";
                    }
                    action("Aged Accounts Payable")
                    {
                        Caption = 'Aged Accounts Payable';
                        Image = "Report";
                        RunObject = Report "Aged Accounts Payable";
                    }
                    action("Vendor - Balance to Date")
                    {
                        Caption = 'Vendor - Balance to Date';
                        Image = "Report";
                        RunObject = Report "Vendor - Balance to Date";
                    }
                    action("Vendor - Trial Balance")
                    {
                        Caption = 'Vendor - Trial Balance';
                        Image = "Report";
                        RunObject = Report "Vendor - Trial Balance";
                    }
                    action("Vendor - Detail Trial Balance")
                    {
                        Caption = 'Vendor - Detail Trial Balance';
                        Image = "Report";
                        RunObject = Report "Vendor - Detail Trial Balance";
                    }
                    action("Vendor - List")
                    {
                        Caption = 'Vendor - List';
                        Image = "Report";
                        RunObject = Report "Vendor - List";
                    }
                    action("Vendor Register")
                    {
                        Caption = 'Vendor Register';
                        Image = "Report";
                        RunObject = Report "Vendor Register";
                    }
                    action("Vendor - Order Summary")
                    {
                        Caption = 'Vendor - Order Summary';
                        Image = "Report";
                        RunObject = Report "Vendor - Order Summary";
                    }
                    action("Vendor - Order Detail")
                    {
                        Caption = 'Vendor - Order Detail';
                        Image = "Report";
                        RunObject = Report "Vendor - Order Detail";
                    }
                }
                group(Customers)
                {
                    Caption = 'Customers';
                    Image = Sales;
                    action("VAT Customers Report")
                    {
                        Caption = 'VAT Customers Report';
                        Image = "Report";
                        RunObject = Report "PTSS VAT Customers Report";
                    }
                    action("Customer - Summary Aging")
                    {
                        Caption = 'Customer - Summary Aging';
                        Image = "Report";
                        RunObject = Report "Customer - Summary Aging";
                    }
                    action("Customer Detailed Aging")
                    {
                        Caption = 'Customer Detailed Aging';
                        Image = "Report";
                        RunObject = Report "Customer Detailed Aging";
                    }
                    action("Aged Accounts Receivable")
                    {
                        Caption = 'Aged Accounts Receivable';
                        Image = "Report";
                        RunObject = Report "Aged Accounts Receivable";
                    }
                    action("Customer - Balance to Date")
                    {
                        Caption = 'Customer - Balance to Date';
                        Image = "Report";
                        RunObject = Report "Customer - Balance to Date";
                    }
                    action("Customer - Trial Balance")
                    {
                        Caption = 'Customer - Trial Balance';
                        Image = "Report";
                        RunObject = Report "Customer - Trial Balance";
                    }
                    action("Customer - Detail Trial Bal.")
                    {
                        Caption = 'Customer - Detail Trial Bal.';
                        Image = "Report";
                        RunObject = Report "Customer - Detail Trial Bal.";
                    }
                    action("Customer - List")
                    {
                        Caption = 'Customer - List';
                        Image = "Report";
                        RunObject = Report "Customer - List";
                    }
                    action("Customer Register")
                    {
                        Caption = 'Customer Register';
                        Image = "Report";
                        RunObject = Report "Customer Register";
                    }
                }
                group("Bank Accounts")
                {
                    Caption = 'Bank Accounts';
                    Image = Bank;
                    action("Bank Account Register")
                    {
                        Caption = 'Bank Account Register';
                        Image = "Report";
                        RunObject = Report "Bank Account Register";
                    }
                    action("Bank Account - List")
                    {
                        Caption = 'Bank Account - List';
                        Image = "Report";
                        RunObject = Report "Bank Account - List";
                    }
                    action("Bank Acc. - Detail Trial Bal.")
                    {
                        Caption = 'Bank Acc. - Detail Trial Bal.';
                        Image = "Report";
                        RunObject = Report "Bank Acc. - Detail Trial Bal.";
                    }
                }
                group("Fixed Assets")
                {
                    Caption = 'Fixed Assets';
                    Image = FixedAssets;
                    action("Fixed Asset Register")
                    {
                        Caption = 'Fixed Asset Register';
                        Image = "Report";
                        RunObject = Report "Fixed Asset Register";
                    }
                    action("Fixed Asset - List")
                    {
                        Caption = 'Fixed Asset - List';
                        Image = "Report";
                        RunObject = Report "Fixed Asset - List";
                    }
                    action("Fixed Asset - Details")
                    {
                        Caption = 'Fixed Asset - Details';
                        Image = "Report";
                        RunObject = Report "Fixed Asset - Details";
                    }
                }
            }
            group(Configuration)
            {
                Caption = 'Configuration';
                Image = "Report";
                group(Action88)
                {
                    Caption = 'Configuration';
                    Image = FixedAssets;
                    action("Budget Configuration")
                    {
                        Caption = 'Budget Configuration';
                        Image = Setup;
                        RunObject = Page "Budget configuration";
                        RunPageMode = View;
                    }
                    action("Budget Report Configuration")
                    {
                        Caption = 'Budget Report Configuration';
                        Image = Setup;
                        RunObject = Page "Budget Report Configuration";
                        RunPageMode = View;
                    }
                    action("UNILEO Report Configuration")
                    {
                        Caption = 'UNILEO Report Configuration';
                        Image = Setup;
                        RunObject = Page "UNILEO Report Configuration";
                        RunPageMode = View;
                    }
                    action("G/L Account UNILEO")
                    {
                        Caption = 'G/L Account UNILEO';
                        Image = Setup;
                        RunObject = Page "UNILEO G/L Account UNILEO";
                        RunPageMode = View;
                    }
                    action("G/L Account PCC")
                    {
                        Caption = 'G/L Account PCC';
                        Image = Setup;
                        RunObject = Page "UNILEO G/L Account PCC";
                    }
                    action("Convertion NAV PCC")
                    {
                        Caption = 'Convertion NAV PCC';
                        Image = Setup;
                        RunObject = Page "UNILEO Convertion NAV PCC";
                    }
                    action("Convertion PCC UNILEO")
                    {
                        Caption = 'Convertion PCC UNILEO';
                        Image = Setup;
                        RunObject = Page "UNILEO Convertion PCC2UNILEO";
                    }
                    action("BA Balances")
                    {
                        Caption = 'BA Balances';
                        Image = Setup;
                        RunObject = Page "UNILEO BA Balances";
                    }
                    action("Management Balances")
                    {
                        Caption = 'Management Balances';
                        Image = Setup;
                        RunObject = Page "UNILEO Management Balances";
                    }
                }
            }
        }
        area(embedding)
        {
            action(Budget)
            {
                Caption = 'Budget';
                RunObject = Page "G/L Budget Names";
            }
            action(Departments)
            {
                Caption = 'Departments';
                RunObject = Page "Department List";
            }
            action(Sections2)
            {
                Caption = 'Sections';
                RunObject = Page "Section List";
            }
            action(Contracts)
            {
                Caption = 'Contracts';
                RunObject = Page "Contract List";
            }
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
            action("Pending Requisitions")
            {
                Caption = 'Pending Requisitions';
                ApplicationArea = All;
                RunObject = Page "Requisitions Pending List";
            }
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
            action("Pending PAQs")
            {
                Caption = 'Pending PAQs';
                RunObject = Page "PAQ List";
                RunPageView = WHERE(Status = const("Pending Approval"));
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
                RunObject = Page "Purchase Orders";
            }
            action("Chart of Accounts2")
            {
                Caption = 'Chart of Accounts';
                RunObject = Page "Chart of Accounts";
            }
            action("Bank Accounts2")
            {
                Caption = 'Bank Accounts2';
                RunObject = Page "Bank Account List";
            }
            action("Dimensions")
            {
                Caption = 'Dimensions';
                RunObject = Page Dimensions;
            }
            action("Analysis View List")
            {
                Caption = 'Analysis View List';
                RunObject = Page "Analysis View List";
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
                action("Contract Posted Requisitions")
                {
                    Caption = 'Posted Requisitions';
                    ApplicationArea = All;
                    RunObject = Page "Req. Contract Posted List";
                }
                action("Posted Avaylable Budgets")
                {
                    Caption = 'Posted Avaylable Budgets';
                    RunObject = Page "Posted Avaylable Budget List";
                }
                action("Posted PAQs")
                {
                    Caption = 'Posted PAQs';
                    RunObject = Page "Posted PAQ List";
                }
                action("Posted Consultations")
                {
                    Caption = 'Posted Consultations';
                    RunObject = Page "Posted Consultation List";
                }
                action("Posted Purchase Invoices")
                {
                    Caption = 'Posted Purchase Invoices';
                    RunObject = Page "Posted Purchase Invoices";
                }
                action("Posted Purchase Credit Memos")
                {
                    Caption = 'Posted Purchase Credit Memos';
                    RunObject = Page "Posted Purchase Credit Memos";
                }
                action("Posted Sales Invoices")
                {
                    Caption = 'Posted Sales Invoices';
                    Image = PostedOrder;
                    RunObject = Page "Posted Sales Invoices";
                }
                action("Posted Sales Credit Memos")
                {
                    Caption = 'Posted Sales Credit Memos';
                    Image = PostedOrder;
                    RunObject = Page "Posted Sales Credit Memos";
                }
                action("Posted Purchase Receipts")
                {
                    Caption = 'Posted Purchase Receipts';
                    RunObject = Page "Posted Purchase Receipts";
                }
            }
        }
        area(creation)
        {
        }
        area(processing)
        {
            action("Dashboard Requisitions Detailed")
            {
                Caption = 'Dashboard Requisitions Detailed';
                RunObject = Page "Dashboard - Requisitions";
            }
            action("Dashboard Requisition Lines Detailed")
            {
                Caption = 'Dashboard Requisition Lines Detailed';
                Image = Allocations;
                RunObject = Page "Dashboard - Requisition Lines";
            }
            action("Dashboard Consultations Detailed")
            {
                Caption = 'Dashboard Consultations Detailed';
                Image = GetEntries;
                RunObject = Page "Dashboard - Consultations";
            }
            action("Dashboard Consultation Lines Detailed")
            {
                Caption = 'Dashboard Consultation Lines Detailed';
                RunObject = Page "Dashboard - Consultation Lines";
            }
            action("Close Year Dimensions")
            {
                Caption = 'Close Year Dimensions';
                Image = BankAccountRec;
                RunObject = Page CloseYearDimensions;
            }
        }
    }
}

