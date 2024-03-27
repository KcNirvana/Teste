page 57207 "UNILEO DODES Configuration"
{

    Caption = 'UNILEO DODES Configuration';
    DataCaptionExpression = gTextPageCaption;
    PageType = List;
    SourceTable = "UNILEO Aux Table";
    SourceTableView = WHERE("Report Type" = CONST(DODES));
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
        Text50001: Label 'DODES - Configuration';
}

