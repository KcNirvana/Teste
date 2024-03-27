permissionset 57017 "Read Bank Account"
{
    Access = Public;
    Assignable = true;
    Caption = 'Read Bank Account';
    Permissions = tabledata "Bank Account" = R,
                  tabledata "Bank Account Ledger Entry" = R;
}
