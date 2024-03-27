tableextension 57043 DtlVendLedgEntryTableExt extends "Detailed Vendor Ledg. Entry"
{
    fields
    {

    }
    keys
    {
        key(NewKey1; "Vendor No.", "Posting Date", "Ledger Entry Amount")
        {
            SumIndexFields = "Amount (LCY)", "Debit Amount (LCY)", "Credit Amount (LCY)";
        }
    }
}
