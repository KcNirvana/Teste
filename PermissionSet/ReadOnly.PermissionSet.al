permissionset 57009 "ReadOnly"
{
    Access = Public;
    Assignable = true;
    Caption = 'Data Query';
    Permissions = codeunit * = X,
                  page * = X,
                  query * = X,
                  report * = X,
                  system * = X,
                  table * = X,
                  tabledata * = R;
}
