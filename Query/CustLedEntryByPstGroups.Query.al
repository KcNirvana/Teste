query 57009 "CustLedEntry By Posting Groups"
{
    elements
    {
        dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry")
        {
            filter(Posting_Date; "Posting Date")
            {
            }
            column(Customer_No_; "Customer No.")
            {
            }
            column(Customer_Posting_Group; "Customer Posting Group")
            {
            }
            column(Count)
            {
                Method = Count;
            }
        }
    }
}

