permissionset 57013 "Create Budget"
{
    Access = Public;
    Assignable = true;
    Caption = 'Create Budget';
    Permissions = tabledata * = RM,
                  tabledata "Accounting Period" = R,
                  tabledata "Analysis View" = RIMD,
                  tabledata "Analysis View Entry" = RIMD,
                  tabledata "Analysis by Dim. User Param." = RIMD,
                  tabledata "Budget Configuration" = RIM,
                  tabledata "Budget Report Configuration" = RIM,
                  tabledata "Class 0 Setup" = R,
                  tabledata "Cost Accounting Setup" = R,
                  tabledata "Default Dimension" = R,
                  tabledata "Dimension Combination" = R,
                  tabledata "Dimension Set Entry" = RIMD,
                  tabledata "Dimension Set Tree Node" = RIMD,
                  tabledata "G/L Account" = R,
                  tabledata "G/L Account Dimensions" = RIMD,
                  tabledata "G/L Budget Entry" = RIMD,
                  tabledata "G/L Budget Name" = RIMD,
                  tabledata "G/L Register" = RIM,
                  tabledata "Gen. Journal Batch" = R,
                  tabledata "Gen. Journal Line" = RIMD,
                  tabledata "Gen. Journal Template" = R,
                  tabledata "No. Series" = R,
                  tabledata "No. Series Line" = RM,
                  tabledata "Source Code Setup" = R,
                  tabledata "VAT Entry" = R,
                  tabledata "VAT Posting Setup" = R;
}
