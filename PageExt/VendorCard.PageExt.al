pageextension 57022 VendorCardPageExt extends "Vendor Card"
{
    layout
    {
        addafter(Receiving)
        {
            group(UNILEO)
            {
                Caption = 'UNILEO';

                field("Partner Identity"; Rec."Partner Identity")
                {
                    ApplicationArea = All;
                }
            }
        }
        addafter("Vendor Posting Group")
        {
            field("FA PostingGroup"; Rec."FA PostingGroup")
            {
                ApplicationArea = All;
                Importance = Additional;
            }
            field("Tenancy PostingGroup"; Rec."Tenancy PostingGroup")
            {
                ApplicationArea = All;
                Importance = Additional;
            }
            field("Adv. Payment Posting Group"; Rec."Adv. Payment Posting Group")
            {
                ApplicationArea = All;
                Importance = Additional;
            }
        }
        modify("Payment Method Code")
        {
            ShowMandatory = true;
        }
        modify("Payment Terms Code")
        {
            ShowMandatory = true;
        }
    }
}
