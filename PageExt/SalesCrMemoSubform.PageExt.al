pageextension 57065 SalesCrMemoSubformPageExt extends "Sales Cr. Memo Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("VAT Clause Code"; Rec."VAT Clause Code")
            {
                ApplicationArea = All;
            }
        }
        modify("VAT Prod. Posting Group")
        {
            ApplicationArea = All;
            Visible = true;
        }
    }
}
