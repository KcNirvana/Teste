table 50009 CMSalesDocumentLine
{
    Caption = 'CM Sales Document Line';
    TableType = Temporary;

    fields
    {
        field(1; UII; Integer)
        {
            Caption = 'UII';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Service; Code[20])
        {
            Caption = 'Service';
        }
        field(4; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(5; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(6; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
        }
        field(7; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(8; AmountIncludingVAT; Decimal)
        {
            Caption = 'Amount Including VAT';
        }
        field(9; VATAmount; Decimal)
        {
            Caption = 'VAT Amount';
        }
        field(10; VATRate; Decimal)
        {
            Caption = 'VAT Rate';
        }
    }
    keys
    {
        key(PK; UII, "Line No.")
        {
            Clustered = true;
        }
        key(Key1; UII)
        {
            SumIndexFields = Amount, AmountIncludingVAT, VATAmount;
        }
    }
}
