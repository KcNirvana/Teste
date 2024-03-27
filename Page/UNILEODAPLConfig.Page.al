page 57203 "UNILEO DAPL Configuration"
{
    Caption = 'UNILEO DAPL Configuration';
    DataCaptionExpression = gTextPageCaption;
    PageType = List;
    SourceTable = "UNILEO Aux Table";
    SourceTableView = WHERE("Report Type" = CONST(DAPL));
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
                field(Description1; Rec.Description1)
                {
                    Caption = 'Description';
                }
                field(Bold; Rec.Bold)
                {
                    Caption = 'Bold';
                }
                field(Code2; Rec.Code2)
                {
                    Caption = 'Aggregator';
                }
                field("GL Account Filter Col 1"; Rec."GL Account Filter Col 1")
                {
                    Caption = 'Capital / Accomplished Patrimony';
                }
                field("Reverse Sign 1"; Rec."Reverse Sign 1")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 14"; Rec."GL Account Filter Col 14")
                {
                    Caption = 'Subscribed Capital / Heritage';
                }
                field("Reverse Sign 14"; Rec."Reverse Sign 14")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 15"; Rec."GL Account Filter Col 15")
                {
                    Caption = 'Own shares';
                }
                field("Reverse Sign 15"; Rec."Reverse Sign 15")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 2"; Rec."GL Account Filter Col 2")
                {
                    Caption = 'Other instruments own capital';
                }
                field("Reverse Sign 2"; Rec."Reverse Sign 2")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 16"; Rec."GL Account Filter Col 16")
                {
                    Caption = 'Issuance Awards';
                }
                field("Reverse Sign 16"; Rec."Reverse Sign 16")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 17"; Rec."GL Account Filter Col 17")
                {
                    Caption = 'Reservations';
                }
                field("Reverse Sign 17"; Rec."Reverse Sign 17")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 3"; Rec."GL Account Filter Col 3")
                {
                    Caption = 'Legal Reserves';
                }
                field("Reverse Sign 3"; Rec."Reverse Sign 3")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 4"; Rec."GL Account Filter Col 4")
                {
                    Caption = 'Reserves from transfer assets';
                }
                field("Reverse Sign 4"; Rec."Reverse Sign 4")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 5"; Rec."GL Account Filter Col 5")
                {
                    Caption = 'Other Reserves';
                }
                field("Reverse Sign 5"; Rec."Reverse Sign 5")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 6"; Rec."GL Account Filter Col 6")
                {
                    Caption = 'Transited Results';
                }
                field("Reverse Sign 6"; Rec."Reverse Sign 6")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 7"; Rec."GL Account Filter Col 7")
                {
                    Caption = 'Financial Assets Adjustments';
                }
                field("Reverse Sign 7"; Rec."Reverse Sign 7")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 8"; Rec."GL Account Filter Col 8")
                {
                    Caption = 'Revaluation Surplus';
                }
                field("Reverse Sign 8"; Rec."Reverse Sign 8")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 9"; Rec."GL Account Filter Col 9")
                {
                    Caption = 'Other changes to net assets';
                }
                field("Reverse Sign 9"; Rec."Reverse Sign 9")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 10"; Rec."GL Account Filter Col 10")
                {
                    Caption = 'Period Net Income';
                }
                field("Reverse Sign 10"; Rec."Reverse Sign 10")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 11"; Rec."GL Account Filter Col 11")
                {
                    Caption = 'Total';
                }
                field("Reverse Sign 11"; Rec."Reverse Sign 11")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 12"; Rec."GL Account Filter Col 12")
                {
                    Caption = 'Non-controlling interests';
                }
                field("Reverse Sign 12"; Rec."Reverse Sign 12")
                {
                    Caption = 'Reverse Sign';
                }
                field("GL Account Filter Col 13"; Rec."GL Account Filter Col 13")
                {
                    Caption = 'Total Net Income';
                }
                field("Reverse Sign 13"; Rec."Reverse Sign 13")
                {
                    Caption = 'Reverse Sign';
                }
                field("N-1"; Rec."N-1")
                {
                }
                field(Totaling; Rec.Totaling)
                {
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
        Text50001: Label 'DAPL - Configuration';
}

