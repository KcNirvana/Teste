query 57007 "GLEntry By Rubric"
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
            filter(Rubric_Code; "Rubric Code")
            {
            }
            column(Sum_Amount; Amount)
            {
                Method = Sum;
            }
        }
    }
}

