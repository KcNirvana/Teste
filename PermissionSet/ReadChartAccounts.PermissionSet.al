permissionset 57018 "Read Chart Accounts"
{
    Access = Public;
    Assignable = true;
    Caption = 'Read Chart of Accounts';
    Permissions = tabledata "Default Dimension" = R,
                  tabledata "G/L Account" = R;
}
