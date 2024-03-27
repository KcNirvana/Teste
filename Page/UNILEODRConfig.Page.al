page 57209 "UNILEO DR Configuration"
{
    Caption = 'UNILEO DR Configuration';
    DataCaptionExpression = gTextPageCaption;
    PageType = List;
    SourceTable = "UNILEO Aux Table";
    SourceTableView = WHERE("Report Type" = CONST(DR));
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
                field("Integer"; Rec.Integer)
                {
                    Caption = 'Line';
                }
                field(Bold; Rec.Bold)
                {
                    Caption = 'Bold';
                }
                field(Code1; Rec.Code1)
                {
                    Caption = 'Rubric';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field(Description2; Rec.Description2)
                {
                    Caption = 'Description 2';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field(Description1; Rec.Description1)
                {
                    Caption = 'Description';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field(Totaling2; Rec.Totaling2)
                {
                    Caption = 'Totaling';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field(Totaling; Rec.Totaling)
                {
                    Caption = '+ Totaling';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field("Column Option"; Rec."Column Option")
                {
                    Caption = 'Column';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field(Code3; Rec.Code3)
                {
                    Caption = 'Aggregator';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field(Code4; Rec.Code4)
                {
                    Caption = 'Notes';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
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
        Text50001: Label 'DR - Configuration';
}

