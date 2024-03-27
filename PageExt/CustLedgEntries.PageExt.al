pageextension 57056 CustLedgEntriesPageExt extends "Customer Ledger Entries"
{
    Editable = false;
    layout
    {
        addlast(Control1)
        {
            field("Document Date"; Rec."Document Date")
            {
                ApplicationArea = all;
            }
            field("Cust. Type Entry"; Rec."Cust. Type Entry")
            {
                ApplicationArea = all;
            }
        }
    }
}
