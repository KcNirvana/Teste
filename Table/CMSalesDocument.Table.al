table 50008 CMSalesDocument
{
    Caption = 'CM Sales Document';
    TableType = Temporary;

    fields
    {
        field(1; UII; Integer)
        {
            Caption = 'UII';
        }
        field(2; "Customer Type"; Enum "Customer Type")
        {
            Caption = 'Customer Type';
        }
        field(3; EndCustomer; Boolean)
        {
            Caption = 'End Customer';
        }
        field(4; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(5; ViesValid; Boolean)
        {
            Caption = 'Vies Valid';
        }
        field(6; "Customer Number"; Code[20])
        {
            Caption = 'Customer Number';
        }

        field(7; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
        }
        field(8; Address; Text[100])
        {
            Caption = 'Address';
        }
        field(9; Country; Code[10])
        {
            Caption = 'Country';
        }
        field(10; City; Text[50])
        {
            Caption = 'City';
        }
        field(11; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
        }
        field(12; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(13; "Document Sequence"; Code[20])
        {
            Caption = 'Document Sequence';
        }
        field(14; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(15; Location; Text[50])
        {
            Caption = 'Location';
        }
        field(16; ContractID; Code[30])
        {
            Caption = 'Contract ID';
        }
        field(17; NumberPlate; Code[30])
        {
            Caption = 'Number Plate';
        }
        field(18; VIN; Code[20])
        {
            Caption = 'VIN';
        }
        field(19; Pickup; Date)
        {
            Caption = 'Pickup';
        }
        field(20; DropOff; Date)
        {
            Caption = 'DropOff';
        }
        field(21; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(22; AmountIncludingVAT; Decimal)
        {
            Caption = 'Amount Including VAT';
        }
        field(23; VATAmount; Decimal)
        {
            Caption = 'VAT Amount';
        }
        field(24; "VAT Type"; Enum "VAT Type")
        {
            Caption = 'VAT Type';
        }
        field(25; "Document Type"; Enum "CM Document Type")
        {
            Caption = 'Document Type';
        }
        field(26; DiscountWithoutVAT; Decimal)
        {
            Caption = 'Discount Without VAT';
        }
        field(27; DiscountWithVAT; Decimal)
        {
            Caption = 'Discount With VAT';
        }
        field(28; ApplyVAT; Boolean)
        {
            Caption = 'Apply VAT';
        }
    }
    keys
    {
        key(PK; UII)
        {
            Clustered = true;
        }
    }
}
