pageextension 57052 VendLedgEntriesPageExt extends "Vendor Ledger Entries"
{
    Editable = false;
    layout
    {
        addlast(Control1)
        {
            field("EasyDoc No."; Rec."EasyDoc No.")
            {
                ApplicationArea = all;
            }
            field(ClosedByCloseYear; Rec.ClosedByCloseYear)
            {
                ApplicationArea = all;
            }
            field(YearClosed; Rec.YearClosed)
            {
                ApplicationArea = all;
            }
            field("No Budget"; Rec."No Budget")
            {
                ApplicationArea = all;
            }
            field("Entity Type"; Rec."Entity Type")
            {
                ApplicationArea = all;
            }
            field("Document Date"; Rec."Document Date")
            {
                ApplicationArea = all;
            }
        }
    }
}
