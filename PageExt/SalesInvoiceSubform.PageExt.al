pageextension 57064 SalesInvoiceSubformPageExt extends "Sales Invoice Subform"
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
