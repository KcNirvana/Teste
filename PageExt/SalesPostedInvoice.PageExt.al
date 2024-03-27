pageextension 57003 SalesPostedInvoicePageExt extends "Posted Sales Invoice"
{
    layout
    {
        addfirst(General)
        {
            field(ConfClass0; Rec.ConfClass0)
            {
                ApplicationArea = all;
                Editable = false;
            }
            field("No Budget"; Rec."No Budget")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }
    }
}
