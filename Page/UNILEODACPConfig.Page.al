page 57202 "UNILEO DACP Configuration"
{
    Caption = 'UNILEO DACP Configuration';
    DataCaptionExpression = gTextPageCaption;
    PageType = List;
    SourceTable = "UNILEO Aux Table";
    SourceTableView = WHERE("Report Type" = CONST(DACP));
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Setup Start Date"; Rec."Setup Start Date")
                {
                }
                field(Description1; Rec.Description1)
                {
                    Caption = 'Description';
                }
                field("GL Account Filter Col 1"; Rec."GL Account Filter Col 1")
                {
                    Caption = 'Share Capital';
                }
                field("GL Account Filter Col 2"; Rec."GL Account Filter Col 2")
                {
                    Caption = 'Rev. reserves fair value';
                }
                field("GL Account Filter Col 3"; Rec."GL Account Filter Col 3")
                {
                    Caption = 'Rev. reserves deferred tax';
                }
                field("GL Account Filter Col 4"; Rec."GL Account Filter Col 4")
                {
                    Caption = 'Legal Reserves';
                }
                field("GL Account Filter Col 5"; Rec."GL Account Filter Col 5")
                {
                    Caption = 'Other Reserves';
                }
                field("GL Account Filter Col 6"; Rec."GL Account Filter Col 6")
                {
                    Caption = 'Transited Results';
                }
                field("GL Account Filter Col 7"; Rec."GL Account Filter Col 7")
                {
                    Caption = 'RLE Costs';
                }
                field("GL Account Filter Col 8"; Rec."GL Account Filter Col 8")
                {
                    Caption = 'RLE Revenue';
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        gTextPageCaption := Text50001;
    end;

    var
        gTextPageCaption: Text[100];
        Text50001: Label 'DACP - Configuration';
}

