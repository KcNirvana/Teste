query 57006 "UNILEO DODES DOREC"
{

    elements
    {
        dataitem(G_L_Account; "G/L Account")
        {
            DataItemTableFilter = "Account Type" = CONST(Posting);
            column(No; "No.")
            {
            }
            filter(NoFilter; "No.")
            {
            }
            dataitem(G_L_Entry; "G/L Entry")
            {
                DataItemLink = "G/L Account No." = G_L_Account."No.";
                column(Source_Type; "Source Type")
                {
                }
                column(Source_No; "Source No.")
                {
                }
                column(Global_Dimension_1_Code; "Global Dimension 1 Code")
                {
                }
                column(Shortcut_Dimension_3_Code; "Shortcut Dimension 3 Code")
                {
                }
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
                filter(Dim3; "Shortcut Dimension 3 Code")
                {
                }
                filter(Rubric_Code; "Rubric Code")
                {
                }
                filter(FilterSourceType; "Source Type")
                {
                }
                filter(FilterSourceNo; "Source No.")
                {
                }
            }
        }
    }
}

