permissionset 57024 "Fixed Asset Reports"
{
    Access = Public;
    Assignable = true;
    Caption = 'Fixed Asset Reports';
    Permissions = report "Fixed Asset - Details" = X,
                  report "Fixed Asset - List" = X,
                  report "Fixed Asset Register" = X,
                  tabledata "Depreciation Book" = R,
                  tabledata "FA Depreciation Book" = R,
                  tabledata "FA Ledger Entry" = R,
                  tabledata "FA Setup" = R;
}
