page 57210 "UNILEO DTAS Configuration"
{
    Caption = 'UNILEO DTAS Configuration';
    DataCaptionExpression = gTextPageCaption;
    PageType = List;
    SourceTable = "UNILEO Aux Table";
    SourceTableView = WHERE("Report Type" = CONST(DTAS));
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
                field(Bold; Rec.Bold)
                {
                    Caption = 'Bold';
                }
                field(GroupCode; Rec.GroupCode)
                {
                    Caption = 'Gray';
                }
                field(Code4; Rec.Code4)
                {
                    Caption = 'Font Size';
                }
                field(Code1; Rec.Code1)
                {
                    Caption = 'Rubric';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field(Code2; Rec.Code2)
                {
                    Caption = 'Rubric Agreggator';
                }
                field(Code3; Rec.Code3)
                {
                    Caption = 'Macro Rubric';
                }
                field(Description1; Rec.Description1)
                {
                    Caption = 'Description';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field(Description2; Rec.Description2)
                {
                    Caption = 'Economics';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field(Totaling; Rec.Totaling)
                {
                    Caption = 'Totaling';
                }
                field(Totaling2; Rec.Totaling2)
                {
                    Caption = '+ Totaling';
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
        Text50001: Label 'DTAS - Configuration';
}

