pageextension 52007 SalesPostedCrMemosPageExt extends "Posted Sales Credit Memos"
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
