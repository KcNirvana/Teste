page 57087 "SEPA Category List"
{
    Caption = 'SEPA Categories';
    PageType = List;
    SourceTable = "SEPA Category";
    UsageCategory = Administration;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                field(Code; Rec.Code)
                {
                }
                field(Description; Rec.Description)
                {
                }
            }
        }
    }
}

