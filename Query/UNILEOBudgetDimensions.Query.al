query 57003 "UNILEO Budget Dimensions"
{
    elements
    {
        dataitem(G_L_Budget_Entry; "G/L Budget Entry")
        {
            column(Global_Dimension_1_Code; "Global Dimension 1 Code")
            {
            }
            column(Budget_Dimension_3_Code; "Budget Dimension 3 Code")
            {
            }
            column(Sum_Amount; Amount)
            {
                Method = Sum;
            }
        }
    }
}

