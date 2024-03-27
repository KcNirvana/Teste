tableextension 57028 VendLedgEntryTableExt extends "Vendor Ledger Entry"
{
    fields
    {
        field(50043; "EasyDoc No."; Code[50])
        {
            Caption = 'EasyDoc No.';
        }
        field(50006; ClosedByCloseYear; Boolean)
        {
            Caption = 'Closed By Close Year';
            Editable = false;
        }
        field(50007; YearClosed; Integer)
        {
            Caption = 'Closed By Year';
            Editable = false;
        }
        field(60002; "No Budget"; Boolean)
        {
            Caption = 'No Budget';
            Editable = false;
        }
        field(67003; "Entity Type"; Enum "Entity Type")
        {
            Caption = 'Entity Type';
        }
    }
    keys
    {
        key(NewKey1; "Document Type", "Posting Date", "Global Dimension 1 Code")
        {
        }
        key(NewKey2; "Vendor No.", Open, "Document No.")
        {
        }
    }
}
