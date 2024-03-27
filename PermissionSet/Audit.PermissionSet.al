permissionset 57007 "Auditory"
{
    Access = Public;
    Assignable = true;
    Caption = 'Auditory';
    Permissions = codeunit * = X,
                  page * = X,
                  query * = X,
                  report * = X,
                  table * = X,
                  tabledata * = R,
                  tabledata "Change Log Entry" = RIM,
                  tabledata "Page Data Personalization" = RIM,
                  xmlport * = X;
}
