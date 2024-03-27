page 57013 "Rejection Reason List"
{
    Caption = 'Rejection Reason List';
    PageType = List;
    SourceTable = "Rejection Reason";
    UsageCategory = Lists;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                field("Code"; Rec.Code)
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Default"; rec.Default)
                {
                }

            }
        }
    }

    actions
    {
    }
}

