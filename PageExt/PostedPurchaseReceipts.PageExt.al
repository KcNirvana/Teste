pageextension 57041 PostedPurchaseReceiptsPageExt extends "Posted Purchase Receipts"
{
    layout
    {
        addlast(Control1)
        {
            field("Vendor Shipment No."; Rec."Vendor Shipment No.")
            {
                ApplicationArea = All;
            }
            field("Vendor Invoice No."; Rec."Vendor Invoice No.")
            {
                ApplicationArea = All;
            }
        }
    }
}
