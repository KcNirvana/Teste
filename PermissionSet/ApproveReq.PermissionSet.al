permissionset 57006 "Approve Req"
{
    Access = Public;
    Assignable = true;
    Caption = 'Approve Requisitions';
    Permissions = tabledata "Aproval Entry" = M,
                  tabledata Requisition = M,
                  tabledata "Requisition Lines" = D;
}
