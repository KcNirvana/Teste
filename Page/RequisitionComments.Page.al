page 57021 "Requisition Comments"
{

    AutoSplitKey = true;
    Caption = 'Requisition Line Comments';
    Editable = true;
    PageType = ListPart;
    SourceTable = "Requisition Comments";
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("Table ID"; Rec."Table ID")
                {
                    Visible = false;
                }
                field("Code"; Rec.Code)
                {
                    Visible = false;
                }
                field(Date; Rec.Date)
                {
                    Visible = false;
                }
                field(Comment; Rec.Comments)
                {
                }
            }
        }
    }

    actions
    {
    }
}

