page 57012 "Selection Reason List"
{
    Caption = 'Selection Reason List';
    PageType = List;
    SourceTable = "Selection Reason";
    UsageCategory = Lists;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("Code"; Rec.Code)
                {
                }
                field(Description; Rec.Description)
                {
                }
                field(Default; Rec.Default)
                {
                }
            }
        }
    }

    actions
    {
    }
}

