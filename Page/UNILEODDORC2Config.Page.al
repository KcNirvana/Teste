page 57205 "UNILEO DDORC2 Configuration"
{
    Caption = 'UNILEO DDORC2 Configuration';
    DataCaptionExpression = gTextPageCaption;
    PageType = List;
    SourceTable = "UNILEO Aux Table";
    SourceTableView = WHERE("Report Type" = CONST(DDORC2));
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
                field(Description1; Rec.Description1)
                {
                    Caption = 'Description';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field(Totaling; Rec.Totaling)
                {
                    Caption = 'Totaling';
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
        Text50001: Label 'DDORC - Configuration 2';
}

