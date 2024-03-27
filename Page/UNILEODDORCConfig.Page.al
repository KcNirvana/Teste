page 57204 "UNILEO DDORC Configuration"
{

    Caption = 'UNILEO DDORC Configuration';
    DataCaptionExpression = gTextPageCaption;
    PageType = List;
    SourceTable = "UNILEO Aux Table";
    SourceTableView = WHERE("Report Type" = CONST(DDORC));
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
                field(Integer; Rec.Integer)
                {
                    Caption = 'Line';
                }
                field(Code1; Rec.Code1)
                {
                    Caption = 'Rubric';
                }
                field(Description1; Rec.Description1)
                {
                    Caption = 'Description';
                }
                field("Totaling Type"; Rec."Totaling Type")
                {
                }
                field(Code2; Rec.Code2)
                {
                    Caption = 'Totaling';
                }
                field(Show; Rec.Show)
                {
                }
                field(Option; Rec."Column Option")
                {
                    Caption = 'Column';
                }
                field(Code3; Rec.Code3)
                {
                    Caption = 'Aggregator';
                }
                field(Code4; Rec.Code4)
                {
                    Caption = 'R/P';
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
        Text50001: Label 'DDORC - Configuration';
}

