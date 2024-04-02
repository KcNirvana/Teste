page 50003 "Bank Layouts Set. Subform"
{
    Caption = 'Bank Layouts Set. Subform';
    PageType = ListPart;
    DataCaptionExpression = '';
    SourceTable = "Bank Layout Line Setup";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Layout No."; Rec."Layout No.")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Column"; Rec."Column")
                {
                    ApplicationArea = All;
                }
                field("Field No."; Rec."Field No.")
                {
                    ApplicationArea = All;
                }
                field("Field Name"; Rec."Field Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
