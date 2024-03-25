pageextension 50114 "Vend. Ledg. Entries Ext" extends "Vendor Ledger Entries"
{
    layout
    {
        addafter("Posting Date")
        {
            field("Document Date"; Rec."Document Date")
            {

            }
        }
    }
}
