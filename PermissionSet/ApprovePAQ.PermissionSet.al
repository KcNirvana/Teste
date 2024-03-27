permissionset 57005 "Approve Adjudication"
{
    Access = Public;
    Assignable = true;
    Caption = 'Approve Adjudications';
    Permissions = tabledata "Analysis View" = M,
                  tabledata "Aproval Entry" = IMD,
                  tabledata "G/L Account Dimensions" = ID,
                  tabledata "G/L Entry" = I,
                  tabledata "G/L Register" = IM,
                  tabledata "Gen. Journal Line" = ID,
                  tabledata "No. Series Line" = M,
                  tabledata PAQ = MD,
                  tabledata "PAQ Lines" = D,
                  tabledata "Posted PAQ" = I,
                  tabledata "Posted PAQ Lines" = I;
}
