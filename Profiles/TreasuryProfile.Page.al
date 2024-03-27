profile "Treasury"
{
    Caption = 'Treasury';
    RoleCenter = "Treasury RoleCenter";
    Promoted = true;
}
page 57154 "Treasury RoleCenter"
{
    Caption = 'Treasury';
    PageType = RoleCenter;
    layout
    {
        area(rolecenter)
        {
            group(Financials)
            {
                part("My Customers"; "My Customers")
                {
                }
                part("My Vendors"; "My Vendors")
                {
                }
                part("My Items"; "My Items")
                {
                    AccessByPermission = TableData "My Item" = R;
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            group(Reports)
            {
                Caption = 'Reports';
                group(Accounting)
                {
                    Caption = 'Accounting';
                    Image = CostAccounting;
                    action("Account Schedule")
                    {
                        Caption = 'Account Schedule';
                        ApplicationArea = All;
                        RunObject = Report "Account Schedule";
                    }
                    action("G/L Register")
                    {
                        Caption = 'G/L Register';
                        ApplicationArea = All;
                        RunObject = Report "G/L Register";
                    }
                    action("Detail Trial Balance")
                    {
                        Caption = 'Detail Trial Balance';
                        ApplicationArea = All;
                        RunObject = Report "Detail Trial Balance";
                    }
                    action("Trial Balance")
                    {
                        Caption = 'Trial Balance';
                        ApplicationArea = All;
                        RunObject = Report "Trial Balance";
                    }
                    action("Trial Balance by Period")
                    {
                        Caption = 'Trial Balance by Period';
                        ApplicationArea = All;
                        RunObject = Report "Trial Balance by Period";
                    }
                    action("Trial Balance - 7/4 Columns")
                    {
                        Caption = 'Trial Balance - 7/4 Columns';
                        ApplicationArea = All;
                        RunObject = Report "PTSS Trial Balance - 7/4 Col.";
                    }
                    action("Cash-flow Report")
                    {
                        Caption = 'Cash-Flow Report';
                        ApplicationArea = All;
                        RunObject = Report "PTSS Cash-Flow Report";
                    }
                    action("Chart of Accounts")
                    {
                        Caption = 'Chart of Accounts';
                        ApplicationArea = All;
                        RunObject = Report "Chart of Accounts";
                    }
                    action("Close Income Statement - Budget")
                    {
                        Caption = 'Close Income Statement - Budget';
                        ApplicationArea = All;
                        RunObject = Report "Budget Close Income Statement";
                    }
                }
                group(Vendors)
                {
                    Caption = 'Vendors';
                    Image = Vendor;
                    action("VAT Vendors Report")
                    {
                        Caption = 'VAT Vendors Report';
                        ApplicationArea = All;
                        RunObject = Report "PTSS VAT Vendors Report";
                    }
                    action("Vendor - Summary Aging")
                    {
                        Caption = 'Vendor - Summary Aging';
                        ApplicationArea = All;
                        RunObject = Report "Vendor - Summary Aging";
                    }
                    action("Aged Accounts Payable")
                    {
                        Caption = 'Aged Accounts Payable';
                        ApplicationArea = All;
                        RunObject = Report "Aged Accounts Payable";
                    }
                    action("Vendor - Balance to Date")
                    {
                        Caption = 'Vendor - Balance to Date';
                        ApplicationArea = All;
                        RunObject = Report "Vendor - Balance to Date";
                    }
                    action("Vendor - Trial Balance")
                    {
                        Caption = 'Vendor - Trial Balance';
                        ApplicationArea = All;
                        RunObject = Report "Vendor - Trial Balance";
                    }
                    action("Vendor - Detail Trial Balance")
                    {
                        Caption = 'Vendor - Detail Trial Balance';
                        ApplicationArea = All;
                        RunObject = Report "Vendor - Detail Trial Balance";
                    }
                    action("Vendor - List")
                    {
                        Caption = 'Vendor - List';
                        ApplicationArea = All;
                        RunObject = Report "Vendor - List";
                    }
                    action("Vendor Register")
                    {
                        Caption = 'Vendor Register';
                        ApplicationArea = All;
                        RunObject = Report "Vendor Register";
                    }
                    action("Vendor - Order Summary")
                    {
                        Caption = 'Vendor - Order Summary';
                        ApplicationArea = All;
                        RunObject = Report "Vendor - Order Summary";
                    }
                    action("Vendor - Order Detail")
                    {
                        Caption = 'Vendor - Order Detail';
                        ApplicationArea = All;
                        RunObject = Report "Vendor - Order Detail";
                    }
                    action("Vendor Statement")
                    {
                        Caption = 'Vendor Statement';
                        ApplicationArea = All;
                        RunObject = Report "PTSS Vendor Statement";
                    }
                }
                group(Customers)
                {
                    Caption = 'Customers';
                    Image = Customer;
                    action("VAT Customers Report")
                    {
                        Caption = 'VAT Customers Report';
                        ApplicationArea = All;
                        RunObject = Report "PTSS VAT Customers Report";
                    }
                    action("Customer - Summary Aging")
                    {
                        Caption = 'Customer - Summary Aging';
                        ApplicationArea = All;
                        RunObject = Report "Customer - Summary Aging";
                    }
                    action("Customer Detailed Aging")
                    {
                        Caption = 'Customer Detailed Aging';
                        ApplicationArea = All;
                        RunObject = Report "Customer Detailed Aging";
                    }
                    action("Aged Accounts Receivable")
                    {
                        Caption = 'Aged Accounts Receivable';
                        ApplicationArea = All;
                        RunObject = Report "Aged Accounts Receivable";
                    }
                    action("Customer - Balance to Date")
                    {
                        Caption = 'Customer - Balance to Date';
                        ApplicationArea = All;
                        RunObject = Report "Customer - Balance to Date";
                    }
                    action("Customer - Trial Balance")
                    {
                        Caption = 'Customer - Trial Balance';
                        ApplicationArea = All;
                        RunObject = Report "Customer - Trial Balance";
                    }
                    action("Customer - Detail Trial Bal.")
                    {
                        Caption = 'Customer - Detail Trial Bal.';
                        ApplicationArea = All;
                        RunObject = Report "Customer - Detail Trial Bal.";
                    }
                    action("Customer - List")
                    {
                        Caption = 'Customer - List';
                        ApplicationArea = All;
                        RunObject = Report "Customer - List";
                    }
                    action("Customer Register")
                    {
                        Caption = 'Customer Register';
                        ApplicationArea = All;
                        RunObject = Report "Customer Register";
                    }
                    action("Customer Statement")
                    {
                        Caption = 'Customer Statement';
                        ApplicationArea = All;
                        RunObject = Report Statement;
                    }
                    action("Customer - Payment Receipt")
                    {
                        Caption = 'Customer - Payment Receipt';
                        ApplicationArea = All;
                        RunObject = Report "Customer - Payment Receipt";
                    }
                }
                group("Bank Accounts2")
                {
                    Caption = 'Bank Accounts';
                    Image = Bank;
                    action("Bank Account - List")
                    {
                        Caption = 'Bank Account - List';
                        ApplicationArea = All;
                        RunObject = Report "Bank Account - List";
                    }
                    action("Treasury Operations")
                    {
                        Caption = 'Treasury Operations';
                        ApplicationArea = All;
                        RunObject = Report "Treasury Operations";
                    }
                    action("Bank Account Register")
                    {
                        Caption = 'Bank Account Register';
                        ApplicationArea = All;
                        RunObject = Report "Bank Account Register";
                    }
                    action("Bank Acc. - Detail Trial Bal.")
                    {
                        Caption = 'Bank Acc. - Detail Trial Bal.';
                        ApplicationArea = All;
                        RunObject = Report "Bank Acc. - Detail Trial Bal.";
                    }
                }
            }
        }
        area(embedding)
        {
            action(ChartofAccounts)
            {
                Caption = 'Chart of Accounts';
                ApplicationArea = All;
                RunObject = Page "G/L Account List";
            }
            action(BankAccounts)
            {
                Caption = 'Bank Accounts';
                ApplicationArea = All;
                RunObject = Page "Bank Account List";
            }
            action(Customers1)
            {
                Caption = 'Customers';
                ApplicationArea = All;
                RunObject = Page "Customer List";
            }
            action(Vendors1)
            {
                Caption = 'Vendors';
                ApplicationArea = All;
                RunObject = Page "Vendor List";
            }
            action("Payment Journal")
            {
                Caption = 'Payment Journal';
                Image = PaymentJournal;
                RunObject = Page "Payment Journal";
            }
        }
        area(sections)
        {
            group("Treasury Management")
            {
                Caption = 'Treasury Management';
                action("Payment Journals")
                {
                    Caption = 'Payment Journals';
                    RunObject = Page "General Journal Batches";
                    RunPageView = WHERE(Recurring = CONST(false),
                                        "Template Type" = CONST(Payments));
                }
                action("Bank Accounts")
                {
                    Caption = 'Bank Accounts';
                    RunObject = Page "Bank Account List";
                }
            }
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
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
        area(creation)
        {
        }
        area(processing)
        {
        }
    }
}

