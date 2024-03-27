permissionset 57020 "GL Reports"
{
    Access = Public;
    Assignable = true;
    Caption = 'General Ledger Reports';
    Permissions = report "PTSS Trial Balance - 7/4 Col." = X,
                  report "PTSS Cash-Flow Report" = X,
                  report "Account Schedule" = X,
                  report "Chart of Accounts" = X,
                  report "Detail Trial Balance" = X,
                  report "G/L Register" = X,
                  report "Trial Balance" = X,
                  report "Trial Balance by Period" = X;
}
