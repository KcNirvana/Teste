tableextension 57044 DtlCustLedgEntryTableExt extends "Detailed Cust. Ledg. Entry"
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
        key(NewKey1; "Customer No.", "Posting Date", "Ledger Entry Amount")
        {
            SumIndexFields = "Amount (LCY)", "Debit Amount (LCY)", "Credit Amount (LCY)";
        }
        key(NewKey2; "Cust. Type Entry")
        {
        }
    }
}
