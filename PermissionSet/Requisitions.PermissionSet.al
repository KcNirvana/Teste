permissionset 57008 "Requisitions"
{
    Access = Public;
    Assignable = true;
    Caption = 'Requisitions';
    Permissions = tabledata "Accounting Period" = R,
                  tabledata "Analysis View Entry" = R,
                  tabledata "Analysis by Dim. User Param." = R,
                  tabledata "Aproval Entry" = RIMD,
                  tabledata "Budget Configuration" = R,
                  tabledata "Budget Permissions" = RIMD,
                  tabledata Consultation = R,
                  tabledata "Default Dimension" = R,
                  tabledata Departments = R,
                  tabledata "Dimension Set Entry" = RIMD,
                  tabledata "Dimension Set Tree Node" = RIMD,
                  tabledata "Dimension Value" = R,
                  tabledata Employee = R,
                  tabledata "Fixed Asset" = R,
                  tabledata "G/L Account" = R,
                  tabledata "Inventory Setup" = R,
                  tabledata Item = RM,
                  tabledata "Item Category" = R,
                  tabledata "Item Ledger Entry" = R,
                  tabledata "Item Unit of Measure" = R,
                  tabledata Location = R,
                  tabledata "Marketing Setup" = R,
                  tabledata "Purchases & Payables Setup" = R,
                  tabledata Requisition = RIMD,
                  tabledata "Requisition Comments" = RIMD,
                  tabledata "Requisition Lines" = RIMD,
                  tabledata "Sales & Receivables Setup" = R,
                  tabledata Sections = R,
                  tabledata "Source Code Setup" = R,
                  tabledata "VAT Posting Setup" = R,
                  tabledata Vendor = R;
}
