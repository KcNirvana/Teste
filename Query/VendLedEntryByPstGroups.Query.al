query 57008 "VendLedEntry By Posting Groups"
{
    elements
    {
        dataitem(Vendor_Ledger_Entry; "Vendor Ledger Entry")
        {
            filter(Posting_Date; "Posting Date")
            {
            }
            column(Vendor_No_; "Vendor No.")
            {
            }
            column(Vendor_Posting_Group; "Vendor Posting Group")
            {
            }
            column(Count)
            {
                Method = Count;
            }
        }
    }
}

