query 57001 "Budget Entry By Type"
{
    elements
    {
        dataitem(G_L_Budget_Entry; "G/L Budget Entry")
        {
            filter(Budget_Name; "Budget Name")
            {
            }
            filter(Date; Date)
            {
            }
            filter(Rubric_Code; "Rubric Code")
            {
            }
            filter(Budget_Dim_Type; "Budget Dim Type")
            {
            }
            filter(Budget_Mov_Type; "Budget Mov Type")
            {
            }
            filter(Posted; Posted)
            {
            }
            column(Sum_Amount; Amount)
            {
                Method = Sum;
            }
        }
    }
}

