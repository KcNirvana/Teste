pageextension 52006 SalesPostedInvoicesPageExt extends "Posted Sales Invoices"
{
    layout
    {
        addlast(Control1)
        {
            field(CMInvoice; Rec.CMDocument)
            {
                Applicationarea = all;
            }
        }
    }
}
