pageextension 57057 CustLedgEntriesPreviewPageExt extends "Cust. Ledg. Entries Preview"
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
