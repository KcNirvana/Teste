query 50001 "Customer Pending Amounts"
{
    QueryType = Normal;

    elements
    {
        dataitem(CustLedgerEntry; "Cust. Ledger Entry")
        {
            DataItemTableFilter = Open = const(true);

            filter(DueDate; "Due Date")
            {
            }
            column(CustomerNo; "Customer No.")
            {
            }
            dataitem(DetailedCustLedgEntry; "Detailed Cust. Ledg. Entry")
            {
                DataItemLink = "Cust. Ledger Entry No." = CustLedgerEntry."Entry No.";
                DataItemTableFilter = "Amount (LCY)" = filter(<> 0);
                column(Amount; "Amount (LCY)")
                {
                    Method = Sum;
                }
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
