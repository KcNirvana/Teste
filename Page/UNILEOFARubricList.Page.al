page 57223 "UNILEO FA Rubric List"
{
    PageType = List;
    SourceTable = "UNILEO Aux Table";
    SourceTableView = sorting(Integer) where("Report Type" = filter(AI | AFT));
    Editable = false;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Report Type"; Rec."Report Type")
                {
                    Caption = 'Report Type';
                }
                field(Description1; Rec.Description1)
                {
                    Caption = 'UNILEO Rubric';
                }
            }
        }
    }

    actions
    {
    }
}

