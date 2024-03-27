pageextension 57002 SalesInvoicePageExt extends "Sales Invoice"
{
    layout
    {
        addfirst(General)
        {
            field(ConfClass0; Rec.ConfClass0)
            {
                applicationarea = all;
            }
            field("No Budget"; Rec."No Budget")
            {
                applicationarea = all;
            }
        }
        addafter("No.")
        {
            field("Posting No. Series"; Rec."Posting No. Series")
            {
                applicationarea = all;
            }
        }
    }

}
