tableextension 57032 VendorTableExt extends Vendor
{
    fields
    {
        field(50041; "Partner Identity"; Boolean)
        {
            Caption = 'Partner Identity';

            trigger OnValidate()
            begin
                TESTFIELD("VAT Registration No.");
            end;
        }
        field(67002; "FA PostingGroup"; Code[10])
        {
            Caption = 'FA PostingGroup';
            TableRelation = "Vendor Posting Group";
        }
        field(67003; "Tenancy PostingGroup"; Code[10])
        {
            Caption = 'Tenancy PostingGroup';
            TableRelation = "Vendor Posting Group";
        }
        field(67004; "Adv. Payment Posting Group"; Code[10])
        {
            Caption = 'Advance Payment Posting Group';
            TableRelation = "Vendor Posting Group";
        }
    }

    keys
    {
        key(NewKey1; "Partner Identity")
        {
        }
        key(NewKey2; Blocked)
        {
        }
    }

    fieldgroups
    {
        addlast(DropDown; "VAT Registration No.")
        {
        }
    }

}

