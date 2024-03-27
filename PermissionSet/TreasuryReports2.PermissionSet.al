permissionset 57016 "Treasury - Reports2"
{
    Access = Public;
    Assignable = true;
    Caption = 'Treasury - Reports 2';
    Permissions = report Requisition = X,
                  report "Batch Post Purchase Orders" = X,
                  report Order = X,
                  report "Purchase - Quote" = X,
                  report "Purchase - Receipt" = X;
}
