permissionset 57003 "DTIL2"
{
    Access = Public;
    Assignable = true;
    Caption = 'DTIL2';
    Permissions = tabledata "Approval Setup" = R,
                  tabledata "Budget Permissions" = RIMD,
                  tabledata "Change Log Entry" = RIMD,
                  tabledata "Charge Setup" = RIMD,
                  tabledata "Default Dimension" = R,
                  tabledata Departments = RIMD,
                  tabledata "Documents Approval Setup" = RIMD,
                  tabledata Employee = RIMD,
                  tabledata "Item Ledger Entry" = R,
                  tabledata "Marketing Setup" = R,
                  tabledata "My Customer" = R,
                  tabledata "My Item" = R,
                  tabledata "My Vendor" = R,
                  tabledata "Online Map Setup" = R,
                  tabledata PAQ = R,
                  tabledata "Purch. Inv. Header" = R,
                  tabledata "Purch. Inv. Line" = R,
                  tabledata "Purchase Header" = R,
                  tabledata Requisition = R,
                  tabledata "Requisition Lines" = R,
                  tabledata Sections = RIMD,
                  tabledata "Trailing Sales Orders Setup" = RIMD,
                  tabledata User = RIMD,
                  tabledata "User Approval Setup" = RIMD,
                  tabledata "User Personalization" = RIMD,
                  tabledata "User Property" = RIMD;
}
