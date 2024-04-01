codeunit 50006 CMWebservices
{
    procedure CreateSalesDocument(ImportSalesDocuments: XMLport "Import CM Sales Documents"; var Result: XmlPort "Export WebServices Result")
    var
        WebServiceLogs: Record "CM WebServices Log";
        CMSalesDocument: Record CMSalesDocument temporary;
        CMSalesDocumentLine: Record CMSalesDocumentLine temporary;
        CMCreateSalesDocuments: Codeunit CMCreateSalesDocuments;
        TempBlob: Codeunit "Temp Blob";
        WebServiceStatus: Enum "WebService Status";
        WebServiceType: Enum "WebService Type";
        CMDocumentType: Enum "CM Document Type";
        LogEntry: Integer;
        ReturnStatus: Boolean;
        ErrorMessage: Text;
        MessageOut: OutStream;
        MessageIn: InStream;
    begin
        Clear(ErrorMessage);
        Clear(LogEntry);
        Clear(TempBlob);
        ClearLastError;

        TempBlob.CreateOutStream(MessageOut);
        ReturnStatus := ImportSalesDocuments.Import;
        ImportSalesDocuments.SetDestination(MessageOut);
        ImportSalesDocuments.Export();
        TempBlob.CreateInStream(MessageIn);
        LogEntry := InsertLog(WebServiceType::CreateSalesDocument, MessageIn);
        if not ReturnStatus then
            UpdateLog(LogEntry, WebServiceStatus::Error, CopyStr(GetLastErrorText, 1, 250), 0, CMDocumentType::" ", '');

        if ReturnStatus then begin
            ReturnStatus := ImportSalesDocuments.GetCMSalesDocuments(CMSalesDocument, CMSalesDocumentLine);
            if not ReturnStatus then
                UpdateLog(LogEntry, WebServiceStatus::Error, CopyStr(GetLastErrorText, 1, 250), CMSalesDocument.UII, CMSalesDocument."Document Type", '');
        end;

        if ReturnStatus then begin
            ReturnStatus := CMCreateSalesDocuments.SetDocuments(CMSalesDocument, CMSalesDocumentLine);
            if not ReturnStatus then
                UpdateLog(LogEntry, WebServiceStatus::Error, CopyStr(GetLastErrorText, 1, 250), CMSalesDocument.UII, CMSalesDocument."Document Type", '');
        end;

        if ReturnStatus then begin
            if not CMCreateSalesDocuments.Run() then
                UpdateLog(LogEntry, WebServiceStatus::Error, CopyStr(GetLastErrorText, 1, 250), CMSalesDocument.UII, CMSalesDocument."Document Type", '')
            else
                UpdateLog(LogEntry, WebServiceStatus::OK, '', CMSalesDocument.UII, CMSalesDocument."Document Type", CMCreateSalesDocuments.GetPostedDocumentNo());
        end;

        GetLog(LogEntry, WebServiceLogs);
        Result.SetMessageStatus(WebServiceLogs);
    end;


    procedure GetPostedDocumentLayout(PostedDocumentType: Text[7]; PostedDocumentNo: Code[20]): Text
    var
        ReportSelections: Record "Report Selections";
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        WebServiceLogs: Record "CM WebServices Log";
        TempBlob: Codeunit "Temp Blob";
        Base64Convert: Codeunit "Base64 Convert";
        ReportOut: OutStream;
        ReportIn: InStream;
        RecRef: RecordRef;
        RefFields: FieldRef;
        WebServiceStatus: Enum "WebService Status";
        WebServiceType: Enum "WebService Type";
        CMDocumentType: Enum "CM Document Type";
        LogEntry: Integer;
        ReturnStatus: Boolean;
        Base64Text: Text;
        Text001: Label 'Invalid type';
        Text002: Label 'No data';
    begin
        Clear(ReportSelections);
        Clear(SalesInvoiceHeader);
        Clear(SalesCrMemoHeader);
        Clear(RecRef);
        Clear(TempBlob);
        Clear(LogEntry);
        ClearLastError;
        LogEntry := InsertLog(WebServiceType::GetPostedDocumentLayout);
        case UpperCase(PostedDocumentType) of
            UpperCase('Invoice'):
                begin
                    CMDocumentType := CMDocumentType::Invoice;
                    ReportSelections.Get(ReportSelections.Usage::"S.Invoice", 1);
                    RecRef.Open(Database::"Sales Invoice Header");
                    RefFields := RecRef.Field(SalesInvoiceHeader.FieldNo("No."));
                end;
            UpperCase('CrMemo'):
                begin
                    CMDocumentType := CMDocumentType::CrMemo;
                    ReportSelections.Get(ReportSelections.Usage::"S.Cr.Memo", 1);
                    RecRef.Open(Database::"Sales Cr.Memo Header");
                    RefFields := RecRef.Field(SalesCrMemoHeader.FieldNo("No."));
                end;
            else begin
                UpdateLog(LogEntry, WebServiceStatus::Error, Text001, 0, CMDocumentType::" ", '');
                exit(Text001);
            end;

        end;
        RefFields.SetRange(PostedDocumentNo);
        TempBlob.CreateOutStream(ReportOut, TextEncoding::UTF8);
        Report.SaveAs(ReportSelections."Report ID", '', ReportFormat::Pdf, ReportOut, RecRef);
        TempBlob.CreateInStream(ReportIn, TextEncoding::UTF8);
        Base64Text := Base64Convert.ToBase64(ReportIn);
        if Base64Text <> '' then begin
            UpdateLog(LogEntry, WebServiceStatus::OK, '', 0, CMDocumentType, PostedDocumentNo);
            exit(Base64Text);
        end else begin
            UpdateLog(LogEntry, WebServiceStatus::Error, Text002, 0, CMDocumentType, PostedDocumentNo);
            exit(Text002);
        end;
    end;

    local procedure InsertLog(pWebServiceType: Enum "WebService Type"; pMessageIn: InStream): Integer
    var
        WebServiceLogs: Record "CM WebServices Log";
        OutStr: OutStream;
    begin
        WebServiceLogs.Init();
        WebServiceLogs."Entry Date" := Today;
        WebServiceLogs."Entry Time" := Time;
        WebServiceLogs."WebService Type" := pWebServiceType;
        WebServiceLogs."Message Received".CreateOutStream(OutStr);
        CopyStream(OutStr, pMessageIn);
        WebServiceLogs.Insert;
        Commit;
        exit(WebServiceLogs."Entry No.");
    end;

    local procedure InsertLog(pWebServiceType: Enum "WebService Type"): Integer
    var
        WebServiceLogs: Record "CM WebServices Log";
        OutStr: OutStream;
    begin
        WebServiceLogs.Init();
        WebServiceLogs."Entry Date" := Today;
        WebServiceLogs."Entry Time" := Time;
        WebServiceLogs."WebService Type" := pWebServiceType;
        WebServiceLogs.Insert;
        Commit;
        exit(WebServiceLogs."Entry No.");
    end;

    local procedure UpdateLog(LogEntry: Integer; Status: Enum "WebService Status"; Message: Text;
                                                             CMUII: Integer;
                                                             CMDocumentType: Enum "CM Document Type";
                                                             PostedDocumentNo: Code[20])
    var
        WebServiceLogs: Record "CM WebServices Log";
    begin
        WebServiceLogs.Get(LogEntry);
        WebServiceLogs.Status := Status;
        WebServiceLogs."Error Message" := Message;
        WebServiceLogs."CM UII" := CMUII;
        WebServiceLogs."CM Document Type" := CMDocumentType;
        WebServiceLogs."Posted Document No." := PostedDocumentNo;
        WebServiceLogs."End Date" := Today;
        WebServiceLogs."End Time" := Time;
        WebServiceLogs.Modify;
        Commit;
    end;


    local procedure GetLog(LogEntry: Integer; var WebServiceLogs: Record "CM WebServices Log")
    begin
        WebServiceLogs.Get(LogEntry);
    end;
}

