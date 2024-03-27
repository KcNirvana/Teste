permissionset 57012 "Create Bank Account"
{
    Access = Public;
    Assignable = true;
    Caption = 'Create Bank Account';
    Permissions = tabledata "Bank Acc. Reconciliation" = RIMD,
                  tabledata "Bank Acc. Reconciliation Line" = RIMD,
                  tabledata "Bank Account" = RIMD,
                  tabledata "Bank Account Ledger Entry" = RIMD,
                  tabledata "Bank Account Posting Group" = RIMD,
                  tabledata "Bank Account Statement" = RIMD,
                  tabledata "Bank Account Statement Line" = RIMD,
                  tabledata "Customer Bank Account" = RIMD,
                  tabledata "Vendor Bank Account" = RIMD;
}
