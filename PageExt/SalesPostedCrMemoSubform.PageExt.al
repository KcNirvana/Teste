pageextension 57062 SalesPstdCrMemoSubformPageExt extends "Posted Sales Cr. Memo Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("VAT Clause Code"; Rec."VAT Clause Code")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}
