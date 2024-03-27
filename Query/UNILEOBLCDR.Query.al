query 57004 "UNILEO BLC DR"
{

    elements
    {
        dataitem(G_L_Account_UNILEO_PCC; "UNILEO G/L Account UNILEO-PCC")
        {
            DataItemTableFilter = "G/L Account Type" = FILTER(PCC), "Account Type" = CONST(M);
            column(NoPCC; "No.")
            {
            }
            filter(NoPCCFilter; "No.")
            {
            }
            dataitem(G_L_Account; "G/L Account")
            {
                DataItemLink = CodeDot_PCC = G_L_Account_UNILEO_PCC."No.";
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
                    filter(Rubrica; "Rubric Code")
                    {
                    }
                }
            }
        }
    }
}

