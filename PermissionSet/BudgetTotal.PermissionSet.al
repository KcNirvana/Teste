permissionset 57011 "Budget Total"
{
    Access = Public;
    Assignable = true;
    Caption = 'Budget Total';
    Permissions = tabledata "Change Log Entry" = RIMD,
                  tabledata Contract = RIM,
                  tabledata Departments = RIMD,
                  tabledata "Dimension Value" = RIMD,
                  tabledata "Posted PAQ" = RIMD,
                  tabledata "Posted PAQ Lines" = RIMD,
                  tabledata "Purch. Comment Line" = RIMD,
                  tabledata "Purch. Cr. Memo Hdr." = RIMD,
                  tabledata "Purch. Cr. Memo Line" = RIMD,
                  tabledata "Purch. Inv. Header" = RIMD,
                  tabledata "Purch. Rcpt. Header" = RIMD,
                  tabledata "Purch. Rcpt. Line" = RIMD,
                  tabledata "Purchase Header" = RIMD,
                  tabledata "Purchase Line" = RIMD,
                  tabledata Sections = RIMD,
                  tabledata "UNILEO BA Balances" = RM;
}
