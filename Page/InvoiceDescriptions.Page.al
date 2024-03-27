page 57014 "Invoice Descriptions"
{
    Caption = 'Invoice Descriptions';
    PageType = List;
    SourceTable = "Invoice Descriptions";
    ApplicationArea = All;
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(Group)
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

    actions
    {
    }
}

