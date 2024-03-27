query 57005 "UNILEO DFC"
{
    elements
    {
        dataitem(Cash_Flow_Plan; "PTSS Cash-Flow Plan")
        {
            DataItemTableFilter = Type = CONST(Posting);
            column(CashFlowNo; "No.")
            {
            }
            filter(CashFlowNoFilter; "No.")
            {
            }
            dataitem(G_L_Entry; "G/L Entry")
            {
                DataItemLink = "PTSS Acc: cash-flow code" = Cash_Flow_Plan."No.";
                SqlJoinType = InnerJoin;
                column(Sum_Amount; Amount)
                {
                    Method = Sum;
                }
                column(Sum_AddCur_Amount; "Additional-Currency Amount")
                {
                    Method = Sum;
                }
                column(Sum_Debit_Amount; "Debit Amount")
                {
                    Method = Sum;
                }
                column(Sum_Credit_Amount; "Credit Amount")
                {
                    Method = Sum;
                }
                column(Sum_Add_Currency_Debit_Amount; "Add.-Currency Debit Amount")
                {
                    Method = Sum;
                }
                column(Sum_Add_Currency_Credit_Amount; "Add.-Currency Credit Amount")
                {
                    Method = Sum;
                }
                filter(DateFilter; "Posting Date")
                {
                }
                filter(Dim1; "Global Dimension 1 Code")
                {
                }
                filter(Dim2; "Global Dimension 2 Code")
                {
                }
                filter(FilterSourceType; "Source Type")
                {
                }
                filter(FilterSourceNo; "Source No.")
                {
                }
                filter(Dim3; "Shortcut Dimension 3 Code")
                {
                }
                filter(Rubric_Code; "Rubric Code")
                {
                }
            }
        }
    }
}

