query 57002 "GLEntry By Dimensions"
{
    elements
    {
        dataitem(G_L_Entry; "G/L Entry")
        {
            filter(G_L_Account; "G/L Account No.")
            {
            }
            filter(Posting_Date; "Posting Date")
            {
            }
            column(Sum_Amount; Amount)
            {
                Method = Sum;
            }
            dataitem(Dimension_Set_Entry; "Dimension Set Entry")
            {
                DataItemLink = "Dimension Set ID" = G_L_Entry."Dimension Set ID";
                filter(Dimension_Code; "Dimension Code")
                {
                }
                filter(Dimension_Value_Code; "Dimension Value Code")
                {
                }
            }
        }
    }
}

