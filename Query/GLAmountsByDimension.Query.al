query 50000 GLAmountsByDimension
{
    QueryType = Normal;

    elements
    {
        dataitem(GLEntry; "G/L Entry")
        {
            filter(PostingDate; "Posting Date")
            {
            }
            filter(GlobalDimension1Code; "Global Dimension 1 Code")
            {
            }
            column(GLAccountNo; "G/L Account No.")
            {
            }
            column(GLAccountName; "G/L Account Name")
            {
            }
            column(GlobalDimension2Code; "Global Dimension 2 Code")
            {
            }
            column(Amount; Amount)
            {
                Method = Sum;
            }
            dataitem(DimensionValue; "Dimension Value")
            {
                DataItemLink = Code = GlEntry."Global Dimension 2 Code";
                DataItemTableFilter = "Global Dimension No." = const(2);
                column(DimensionName; Name)
                {
                }
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
