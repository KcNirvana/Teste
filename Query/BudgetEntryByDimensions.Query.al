query 57000 "Budget Entry By Dimensions"
{

    elements
    {
        dataitem(G_L_Budget_Entry; "G/L Budget Entry")
        {
            filter(Budget_Name; "Budget Name")
            {
            }
            filter(Global_Dimension_1_Code; "Global Dimension 1 Code")
            {
            }
            filter(Global_Dimension_2_Code; "Global Dimension 2 Code")
            {
            }
            filter(Budget_Dimension_3_Code; "Budget Dimension 3 Code")
            {
            }
            filter(Date; Date)
            {
            }
            filter(Budget_Mov_Type; "Budget Mov Type")
            {
            }
            filter(Posted; Posted)
            {
            }
            filter(Rubric_Code; "Rubric Code")
            {
            }
            filter(Mov_Type; "Mov Type")
            {
            }
            column(Sum_Amount; Amount)
            {
                Method = Sum;
            }
        }
    }
}

