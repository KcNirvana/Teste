pageextension 57061 SalesPostedInvSubformPageExt extends "Posted Sales Invoice Subform"
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
        }
        modify("VAT Prod. Posting Group")
        {
            ApplicationArea = All;
            Editable = false;
            Visible = true;
        }
    }
}
