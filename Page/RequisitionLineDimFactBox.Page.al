page 57023 "Requisition Line Dim. FactBox"
{
    Caption = 'Dimensions';
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = ListPart;
    SourceTable = "Dimension Set Entry";
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Dimension Code"; Rec."Dimension Code")
                {
                }
                field("Dimension Value Code"; Rec."Dimension Value Code")
                {
                }
                field("Dimension Value Name"; Rec."Dimension Value Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

