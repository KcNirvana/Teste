permissionset 57022 "Customer Reports"
{
    Access = Public;
    Assignable = true;
    Caption = 'Customer Reports';
    Permissions = report "PTSS VAT Customers Report" = X,
                  report "Aged Accounts Receivable" = X,
                  report "Customer - Balance to Date" = X,
                  report "Customer - Detail Trial Bal." = X,
                  report "Customer - List" = X,
                  report "Customer - Summary Aging" = X,
                  report "Customer - Trial Balance" = X,
                  report "Customer Detailed Aging" = X,
                  report "Customer Register" = X;
}
