tableextension 57036 PaymentExportDataTableExt extends "Payment Export Data"
{
    fields
    {
        field(50000; "Recipient VAT"; Text[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(50001; "SEPA Category"; Code[20])
        {
            Caption = 'SEPA Category';
        }
    }

}
