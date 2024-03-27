page 57007 "Section List"
{
    Caption = 'Section List';
    PageType = List;
    SourceTable = Sections;
    UsageCategory = Lists;
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
                field("Department Code"; Rec."Department Code")
                {
                }
                field("Section Responsable"; Rec."Section Responsable")
                {
                }
            }
        }
    }

    actions
    {
    }
}

