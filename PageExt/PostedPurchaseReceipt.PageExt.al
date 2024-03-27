pageextension 57042 PostedPurchaseReceiptPageExt extends "Posted Purchase Receipt"
{
    layout
    {
        addafter("Shortcut Dimension 2 Code")
        {
            field("Vendor Invoice No."; Rec."Vendor Invoice No.")
            {
                ApplicationArea = All;
            }
            field("Consultation Code"; Rec."Consultation Code")
            {
                ApplicationArea = All;
            }

        }
    }
}
