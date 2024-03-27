tableextension 57047 DetCVLedgEntryBufferExt extends "Detailed CV Ledg. Entry Buffer"
{
    fields
    {
        field(51000; "Cust. Type Entry"; Enum "Customer Type Entry")
        {
            Caption = 'Customer Type Entry';
        }
    }
    keys
    {
        key(NewKey1; "Cust. Type Entry")
        {
        }
    }

}
