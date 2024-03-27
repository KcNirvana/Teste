permissionset 57021 "Bank Account Reports"
{
    Access = Public;
    Assignable = true;
    Caption = 'Bank Account Reports';
    Permissions = report "Bank Acc. - Detail Trial Bal." = X,
                  report "Bank Account - List" = X,
                  report "Bank Account Register" = X;
}
