page 57211 "UNILEO Reports"
{
    Caption = 'UNILEO Reports';
    Editable = false;
    PageType = Card;
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;

    layout
    {
    }

    actions
    {
        area(Reporting)
        {
            group(Reports)
            {
                Caption = 'Reports';
                Image = Report;
                action(BA)
                {
                    Caption = 'BA - Analytical Balance';
                    Image = "Report";
                    RunObject = Report "UNILEO BA";
                }
                action(DR)
                {
                    Caption = 'DR - Income Statement by Nature';
                    Image = "Report";
                    RunObject = Page "UNILEO DR";
                }
                action(BLC)
                {
                    Caption = 'BLC - Balance';
                    Image = "Report";
                    RunObject = Page "UNILEO BLC";
                }
                action(DDORC)
                {
                    Caption = 'DDORC - Demonstration of Budget Performance';
                    Image = "Report";
                    RunObject = Report "UNILEO DDORC";
                }
                action(DOREC)
                {
                    Caption = 'DOREC - Statement of Budget Execution of Revenue';
                    Image = "Report";
                    RunObject = Page "UNILEO DOREC";
                }
                action(DODES)
                {
                    Caption = 'DODES - Statement of Budget Execution of Expenditure';
                    Image = "Report";
                    RunObject = Page "UNILEO DODES";
                }
                action(DTAS)
                {
                    Caption = 'DTAS - Debts to Third Parties due to Old Balances';
                    Image = "Report";
                    RunObject = Report "UNILEO DTAS";
                }
                action(DAPL)
                {
                    Caption = 'DAPL - Statement of Changes in Shareholders Equity';
                    Image = "Report";
                    RunObject = Page "UNILEO DAPL";
                }
                action(DFC)
                {
                    Caption = 'DFC - Statement of Cash Flows';
                    Image = "Report";
                    RunObject = Page "UNILEO DFC";
                }
                action(DACP)
                {
                    Caption = 'DACP - Capital Changes';
                    Image = "Report";
                    RunObject = Page "UNILEO DACP";
                }
                action(AI1_1)
                {
                    Caption = 'AI - Carrying Amount and Movements for the Quarter';
                    Image = Report;

                    trigger OnAction()
                    var
                        UNILEOAI: Page "UNILEO AI";
                    begin
                        UNILEOAI.SetReport(0);
                        UNILEOAI.RUN;
                    end;
                }
                action(AI1_2)
                {
                    Caption = 'AI - Breakdown of Additions';
                    Image = Report;

                    trigger OnAction()
                    var
                        UNILEOAI: Page "UNILEO AI";
                    begin
                        UNILEOAI.SetReport(1);
                        UNILEOAI.RUN;
                    end;
                }
                action(AI1_3)
                {
                    Caption = 'AI - Breakdown of Decreases';
                    Image = Report;

                    trigger OnAction()
                    var
                        UNILEOAI: Page "UNILEO AI";
                    begin
                        UNILEOAI.SetReport(2);
                        UNILEOAI.RUN;
                    end;
                }
                action(AFT1_1)
                {
                    Caption = 'AFT - Carrying Amount and Movements for the Quarter';
                    Image = Report;

                    trigger OnAction()
                    var
                        UNILEOAFT: Page "UNILEO AFT";
                    begin
                        UNILEOAFT.SetReport(0);
                        UNILEOAFT.RUN;
                    end;
                }
                action(AFT1_2)
                {
                    Caption = 'AFT - Breakdown of Additions';
                    Image = Report;

                    trigger OnAction()
                    var
                        UNILEOAFT: Page "UNILEO AFT";
                    begin
                        UNILEOAFT.SetReport(1);
                        UNILEOAFT.RUN;
                    end;
                }
                action(AFT1_3)
                {
                    Caption = 'AFT - Breakdown of Decreases';
                    Image = Report;

                    trigger OnAction()
                    var
                        UNILEOAFT: Page "UNILEO AFT";
                    begin
                        UNILEOAFT.SetReport(2);
                        UNILEOAFT.RUN;
                    end;
                }
            }
            group(WebServices)
            {
                Caption = 'WebServices';
                Image = LinkWeb;
                group("Send by WebServices")
                {
                    Caption = 'Send by WebService';
                    Image = LaunchWeb;
                    action(CPLC2)
                    {
                        Caption = 'CPLC - Correspondence between local and central chart of accounts';
                        Image = Web;

                        trigger OnAction()
                        begin
                            UNILEOWebServiceMgt.SendToWebService("UNILEO Report Type"::CPLC);
                        end;
                    }
                    action(BA2)
                    {
                        Caption = 'BA - Analytical Balance';
                        Image = Web;

                        trigger OnAction()
                        begin
                            UNILEOWebServiceMgt.SendToWebService("UNILEO Report Type"::BA);
                        end;
                    }
                    action(DR2)
                    {
                        Caption = 'DR - Income Statement by Nature';
                        Image = Web;

                        trigger OnAction()
                        begin
                            UNILEOWebServiceMgt.SendToWebService("UNILEO Report Type"::DR);
                        end;
                    }
                    action(BLC2)
                    {
                        Caption = 'BLC - Balance';
                        Image = Web;

                        trigger OnAction()
                        begin
                            UNILEOWebServiceMgt.SendToWebService("UNILEO Report Type"::BLC);
                        end;
                    }
                    action(DDORC2)
                    {
                        Caption = 'DDORC - Demonstration of Budget Performance';
                        Image = Web;

                        trigger OnAction()
                        begin
                            UNILEOWebServiceMgt.SendToWebService("UNILEO Report Type"::DDORC);
                        end;
                    }
                    action(DOREC2)
                    {
                        Caption = 'DOREC - Statement of Budget Execution of Revenue';
                        Image = Web;

                        trigger OnAction()
                        begin
                            UNILEOWebServiceMgt.SendToWebService("UNILEO Report Type"::DOREC);
                        end;
                    }
                    action(DODES2)
                    {
                        Caption = 'DODES - Statement of Budget Execution of Expenditure';
                        Image = Web;

                        trigger OnAction()
                        begin
                            UNILEOWebServiceMgt.SendToWebService("UNILEO Report Type"::DODES);
                        end;
                    }
                    action(DTAS2)
                    {
                        Caption = 'DTAS - Debts to Third Parties due to Old Balances';
                        Image = Web;

                        trigger OnAction()
                        begin
                            UNILEOWebServiceMgt.SendToWebService("UNILEO Report Type"::DTAS);
                        end;
                    }
                    action(DAPL2)
                    {
                        Caption = 'DAPL - Statement of Changes in Shareholders Equity';
                        Image = Web;

                        trigger OnAction()
                        begin
                            UNILEOWebServiceMgt.SendToWebService("UNILEO Report Type"::DAPL);
                        end;
                    }
                    action(DFC2)
                    {
                        Caption = 'DFC - Statement of Cash Flows';
                        Image = Web;

                        trigger OnAction()
                        begin
                            UNILEOWebServiceMgt.SendToWebService("UNILEO Report Type"::DFC);
                        end;
                    }
                    action(AI2)
                    {
                        Caption = 'AI - Intangible Fixed Assets';
                        Image = Web;

                        trigger OnAction()
                        begin
                            UNILEOWebServiceMgt.SendToWebService("UNILEO Report Type"::AI);
                        end;
                    }
                    action(AFT2)
                    {
                        Caption = 'AFT - Tangible Fixed Assets';
                        Image = Web;

                        trigger OnAction()
                        begin
                            UNILEOWebServiceMgt.SendToWebService("UNILEO Report Type"::AFT);
                        end;
                    }

                }
                group(Logs)
                {
                    Caption = 'Logs';
                    Image = Log;
                    action("Webservices Log")
                    {
                        Caption = 'Webservices Log';
                        Image = Log;
                        RunObject = Page "UNILEO WebServices Log";
                        RunPageMode = View;
                    }
                }
            }
            group("XML Files")
            {
                Caption = 'XML File Generation';
                Image = ExportFile;
                action(CPLC3)
                {
                    Caption = 'CPLC - Correspondence between local and central chart of accounts';
                    Image = XMLFile;

                    trigger OnAction()
                    begin
                        Xmlport.Run(Xmlport::"UNILEO CPLC");
                    end;
                }
                action(BA3)
                {
                    Caption = 'BA - Analytical Balance';
                    Image = XMLFile;

                    trigger OnAction()
                    begin
                        Xmlport.Run(Xmlport::"UNILEO BA");
                    end;
                }
                action(DR3)
                {
                    Caption = 'DR - Income Statement by Nature';
                    Image = XMLFile;

                    trigger OnAction()
                    begin
                        Xmlport.Run(Xmlport::"UNILEO DR");
                    end;
                }
                action(BLC3)
                {
                    Caption = 'BLC - Balance';
                    Image = XMLFile;

                    trigger OnAction()
                    begin
                        Xmlport.Run(Xmlport::"UNILEO BLC");
                    end;
                }
                action(DDORC3)
                {
                    Caption = 'DDORC - Demonstration of Budget Performance';
                    Image = XMLFile;

                    trigger OnAction()
                    begin
                        Xmlport.Run(Xmlport::"UNILEO DDORC");
                    end;
                }
                action(DOREC3)
                {
                    Caption = 'DOREC - Statement of Budget Execution of Revenue';
                    Image = XMLFile;

                    trigger OnAction()
                    begin
                        Xmlport.Run(Xmlport::"UNILEO DOREC");
                    end;
                }
                action(DODES3)
                {
                    Caption = 'DODES - Statement of Budget Execution of Expenditure';
                    Image = XMLFile;

                    trigger OnAction()
                    begin
                        Xmlport.Run(Xmlport::"UNILEO DODES");
                    end;
                }
                action(DTAS3)
                {
                    Caption = 'DTAS - Debts to Third Parties due to Old Balances';
                    Image = XMLFile;

                    trigger OnAction()
                    begin
                        Xmlport.Run(Xmlport::"UNILEO DTAS");
                    end;
                }
                action(DAPL3)
                {
                    Caption = 'DAPL - Statement of Changes in Shareholders Equity';
                    Image = XMLFile;

                    trigger OnAction()
                    begin
                        Xmlport.Run(Xmlport::"UNILEO DAPL");
                    end;
                }
                action(DFC3)
                {
                    Caption = 'DFC - Statement of Cash Flows';
                    Image = XMLFile;

                    trigger OnAction()
                    begin
                        Xmlport.Run(Xmlport::"UNILEO DFC");
                    end;
                }
                action(AI3)
                {
                    Caption = 'AI - Intangible Fixed Assets';
                    Image = XMLFile;

                    trigger OnAction()
                    begin
                        Xmlport.Run(Xmlport::"UNILEO AI");
                    end;
                }
                action(AFT3)
                {
                    Caption = 'AFT - Tangible Fixed Assets';
                    Image = XMLFile;

                    trigger OnAction()
                    begin
                        Xmlport.Run(Xmlport::"UNILEO AFT");
                    end;
                }
            }
        }
    }

    var
        UNILEOWebServiceMgt: Codeunit "UNILEO WebServices Management";
}

