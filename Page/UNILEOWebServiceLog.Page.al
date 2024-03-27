page 57213 "UNILEO WebServices Log"
{
    Caption = 'UNILEO WebServices Log';
    Editable = false;
    PageType = List;
    SourceTable = "UNILEO WebServices Log";
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No"; Rec."Entry No")
                {
                }
                field("XmlFile Date Created"; Rec."XmlFile Date Created")
                {
                }
                field("XmlFile Hour Created"; Rec."XmlFile Hour Created")
                {
                }
                field("XmlFile Type"; Rec."XmlFile Type")
                {
                }
                field("XmlFile Name"; Rec."XmlFile Name")
                {
                }
                field("XmlFile Year"; Rec."XmlFile Year")
                {
                }
                field("XmlFile Period Type"; Rec."XmlFile Period Type")
                {
                }
                field("XmlFile Period Number"; Rec."XmlFile Period Number")
                {
                }
                field("XmlFile ID"; Rec."XmlFile ID")
                {
                }
                field("XmlFile Log Message"; Rec."XmlFile Log Message")
                {
                }
                field("XmlFile Status"; Rec."XmlFile Status")
                {
                }
                field(HasReport; Rec."XmlFile Report".HasValue)
                {
                    Caption = 'Has Report';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ValidateFile)
            {
                Caption = 'Send';
                Ellipsis = true;
                Image = TestFile;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    SendFileToValidate(Rec."Entry No");
                end;
            }
            action(GetReport)
            {
                Caption = 'Get Report';
                Ellipsis = true;
                Image = GetOrder;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    ValidateReport(Rec);
                end;
            }
        }
    }

    var
        UNILEOWebServicesMgt: Codeunit "UNILEO WebServices Management";

    local procedure SendFileToValidate(LogID: Integer)
    begin
        Clear(UNILEOWebServicesMgt);
        UNILEOWebServicesMgt.SendFileValidation(LogID);
    end;

    local procedure ValidateReport(WebServiceLog: Record "UNILEO WebServices Log")
    var
        Instream: InStream;
        FileMgt: Codeunit "File Management";
        ServerFilename: Text;
        ClientFilename: Text;
        Text001: Label 'The report isnt avaylable yet.\\Try validate the file again.';
    begin
        if Not WebServiceLog."XmlFile Report".HasValue then
            Error(Text001);

        ServerFilename := TemporaryPath + 'Report' + WebServiceLog."XmlFile Name" + '.txt';
        WebServiceLog.CalcFields("XmlFile Report");
        WebServiceLog."XmlFile Report".CreateInStream(Instream);
        WebServiceLog."XmlFile Report".Export(ServerFilename);
        FileMgt.DownloadTempFile(ServerFilename);
        HyperLink(ClientFilename);
    end;
}

