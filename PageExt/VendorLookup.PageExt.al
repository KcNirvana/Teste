pageextension 57059 VendorLookupPageExt extends "Vendor Lookup"
{
    layout
    {
        addlast(Group)
        {
            field("VAT Registration No."; Rec."VAT Registration No.")
            {
                ApplicationArea = All;
            }
        }
    }

}
