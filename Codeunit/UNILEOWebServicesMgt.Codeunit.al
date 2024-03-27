codeunit 57010 "UNILEO WebServices Management"
{
    var
        BudgetReportConfig: Record "Budget Report Configuration";
        BodyPathTxt: Label '/soap:Envelope/soap:Body', Locked = true;
        ContentTypeTxt: Label 'multipart/form-data; charset=utf-8', Locked = true;
        FaultStringXmlPathTxt: Label '/soap:Envelope/soap:Body/soap:Fault/faultstring', Locked = true;
        NoRequestBodyErr: Label 'The request body is not set.';
        NoServiceAddressErr: Label 'The web service URI is not set.';
        ExpectedResponseNotReceivedErr: Label 'The expected data was not received from the web service.';
        SchemaNamespaceTxt: Label 'http://www.w3.org/2001/XMLSchema', Locked = true;
        SchemaInstanceNamespaceTxt: Label 'http://www.w3.org/2001/XMLSchema-instance', Locked = true;
        SecurityUtilityNamespaceTxt: Label 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd', Locked = true;
        SecurityExtensionNamespaceTxt: Label 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd', Locked = true;
        SoapNamespaceTxt: Label 'http://schemas.xmlsoap.org/soap/envelope/', Locked = true;
        UsernameTokenNamepsaceTxt: Label 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText', Locked = true;
        ResponseBodyTempBlob: Codeunit "Temp Blob";
        TempDebugLogTempBlob: Codeunit "Temp Blob";
        Trace: Codeunit Trace;
        GlobalRequestBodyInStream: InStream;
        GlobalPassword: Text;
        GlobalURL: Text;
        GlobalUsername: Text;
        TraceLogEnabled: Boolean;
        GlobalTimeout: Integer;
        InternalErr: Label 'The remote service has returned the following error message:\\';
        GlobalSkipCheckHttps: Boolean;
        GlobalProgressDialogEnabled: Boolean;
        Text001: Label 'There is no webservices configuration.';
        SucessMessage: Label 'File submitted with success.\\ID: %1';
        ErrorMessage: Label 'File not submitted.\\%1';
        CancelMessage: Label 'Operation canceled by user.';
        ValidationMessage: Label 'File validated with success.';
        XMLDOMMgt: Codeunit "XML DOM Management";
        WebRequestHelper: Codeunit "Web Request Helper";

    procedure SendToWebService(XmlPortType: Enum "UNILEO Report Type")
    var
        Xml_CPLC: XMLport "UNILEO CPLC";
        Xml_BA: XMLport "UNILEO BA";
        Xml_DR: XMLport "UNILEO DR";
        Xml_BLC: XMLport "UNILEO BLC";
        Xml_DDORC: XMLport "UNILEO DDORC";
        Xml_DOREC: XMLport "UNILEO DOREC";
        Xml_DODES: XMLport "UNILEO DODES";
        Xml_DTAS: XMLport "UNILEO DTAS";
        Xml_DAPL: XMLport "UNILEO DAPL";
        Xml_DFC: XMLport "UNILEO DFC";
        Xml_AI: XMLport "UNILEO AI";
        Xml_AFT: XMLport "UNILEO AFT";
        XmlFileName: Text;
        XmlPeriodType: Text;
        XmlYear: Text;
        XmlFilePath: Text;
        XmlFile: File;
        XmlLayout: BigText;
        XmlPeriodNumber: Text;
        OutStream: OutStream;
        InStream: InStream;
        Base64Convert: Codeunit "Base64 Convert";
        TempBlob: Codeunit "Temp Blob";
        XMLDoc: dotnet XmlDocument;
        HeaderXmlNode: dotnet XmlNode;
        BodyXmlNode: dotnet XmlNode;
        BodyXmlNode2: dotnet XmlNode;

        UNILEOWebservicePage: Page "UNILEO Reports Webservices";
        L_PeriodYear: array[20] of Integer;
        L_OptPeriodType_SM: array[20] of Option S,M;
        L_OptPeriodType_T: array[20] of Option T;
        L_Frequency_WM: array[20] of Option Week,Month;
        L_OptPeriodType_All: array[20] of Option D,S,M,T,A;
        L_PeriodNumber: array[20] of Integer;
        L_PeriodNumber_All: array[20] of Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14";
        L_PeriodNumber_T: array[20] of Option "1","2","3","4","5";
        L_DStartDate: array[20] of Date;
        L_DEndDate: array[20] of Date;
        L_XMLFileName: array[20] of Text;
        FileID: Text;
        soap: Codeunit "SOAP Web Service Request Mgt.";
    begin
        CLEAR(BudgetReportConfig);
        CLEAR(XmlPeriodNumber);

        IF NOT BudgetReportConfig.GET THEN
            ERROR(Text001);

        BudgetReportConfig.TESTFIELD("WebService Active");
        BudgetReportConfig.TESTFIELD("WebService EndPoint");
        BudgetReportConfig.TESTFIELD("WebService Password");
        BudgetReportConfig.TESTFIELD("WebService User ID");

        UNILEOWebservicePage.RunReport(XmlPortType);
        IF UNILEOWebservicePage.RUNMODAL <> ACTION::OK THEN
            ERROR(CancelMessage);

        UNILEOWebservicePage.GetXmlFileDetails(XmlFileName, XmlPeriodType, XmlYear);
        IF (XmlFileName = '') THEN
            EXIT;

        UNILEOWebservicePage.GetAllParameters(L_PeriodYear, L_OptPeriodType_SM, L_OptPeriodType_T, L_Frequency_WM,
                                  L_OptPeriodType_All, L_PeriodNumber, L_PeriodNumber_All, L_PeriodNumber_T,
                                  L_DStartDate, L_DEndDate, L_XMLFileName);

        CLEAR(OutStream);
        TempBlob.CreateOutStream(OutStream, TextEncoding::UTF8);

        CASE XmlPortType OF
            XmlPortType::CPLC:
                BEGIN
                    CLEAR(Xml_CPLC);
                    Xml_CPLC.SETDESTINATION(OutStream);
                    Xml_CPLC.SendXmlParameters(L_OptPeriodType_All[7], L_XMLFileName[7]);
                    Xml_CPLC.EXPORT;
                END;
            XmlPortType::BA:
                BEGIN
                    CLEAR(Xml_BA);
                    Xml_BA.SETDESTINATION(OutStream);
                    Xml_BA.SendXmlParameters(L_Frequency_WM[5], L_PeriodNumber[5], L_DStartDate[5], L_DEndDate[5], L_XMLFileName[5], L_PeriodYear[5]);
                    Xml_BA.EXPORT;
                    XmlPeriodNumber := FORMAT(L_PeriodNumber[5]);
                END;
            XmlPortType::DR:
                BEGIN
                    CLEAR(Xml_DR);
                    Xml_DR.SETDESTINATION(OutStream);
                    Xml_DR.SendXmlParameters(L_DStartDate[11], L_DEndDate[11], L_PeriodYear[11], L_PeriodNumber_All[11], L_XMLFileName[11]);
                    Xml_DR.EXPORT;
                    XmlPeriodNumber := FORMAT(L_PeriodNumber_All[11]);
                END;
            XmlPortType::BLC:
                BEGIN
                    CLEAR(Xml_BLC);
                    Xml_BLC.SETDESTINATION(OutStream);
                    Xml_BLC.SendXmlParameters(L_DStartDate[6], L_DEndDate[6], L_XMLFileName[6], L_PeriodYear[6], L_PeriodNumber_All[6]);
                    Xml_BLC.EXPORT;
                    XmlPeriodNumber := FORMAT(L_PeriodNumber_All[6]);
                END;
            XmlPortType::DDORC:
                BEGIN
                    CLEAR(Xml_DDORC);
                    Xml_DDORC.SETDESTINATION(OutStream);
                    Xml_DDORC.SendXmlParameters(L_OptPeriodType_SM[9], L_DStartDate[9], L_DEndDate[9], L_XMLFileName[9], L_PeriodNumber[9], L_PeriodYear[9]);
                    Xml_DDORC.EXPORT;
                    XmlPeriodNumber := FORMAT(L_PeriodNumber[9]);
                END;
            XmlPortType::DOREC:
                BEGIN
                    CLEAR(Xml_DOREC);
                    Xml_DOREC.SETDESTINATION(OutStream);
                    Xml_DOREC.SendXmlParameters(L_OptPeriodType_SM[1], L_DStartDate[1], L_DEndDate[1], L_XMLFileName[1], L_PeriodNumber[1], L_PeriodYear[1]);
                    Xml_DOREC.EXPORT;
                    XmlPeriodNumber := FORMAT(L_PeriodNumber[1]);
                END;
            XmlPortType::DODES:
                BEGIN
                    CLEAR(Xml_DODES);
                    Xml_DODES.SETDESTINATION(OutStream);
                    Xml_DODES.SendXmlParameters(L_OptPeriodType_SM[2], L_DStartDate[2], L_DEndDate[2], L_XMLFileName[2], L_PeriodNumber[2], L_PeriodYear[2]);
                    Xml_DODES.EXPORT;
                    XmlPeriodNumber := FORMAT(L_PeriodNumber[2]);
                END;
            XmlPortType::DTAS:
                BEGIN
                    CLEAR(Xml_DTAS);
                    Xml_DTAS.SETDESTINATION(OutStream);
                    Xml_DTAS.SendXmlParameters(L_PeriodNumber_All[12], L_PeriodYear[12], L_DEndDate[12], L_XMLFileName[12]);
                    Xml_DTAS.EXPORT;
                    XmlPeriodNumber := FORMAT(L_PeriodNumber_All[12]);
                END;
            XmlPortType::DAPL:
                BEGIN
                    CLEAR(Xml_DAPL);
                    Xml_DAPL.SETDESTINATION(OutStream);
                    Xml_DAPL.SendXmlParameters(L_OptPeriodType_All[8], L_DStartDate[8], L_DEndDate[8], L_XMLFileName[8], L_PeriodYear[8], L_PeriodNumber_All[8]);
                    Xml_DAPL.EXPORT;
                    XmlPeriodNumber := FORMAT(L_PeriodNumber_All[8]);
                END;
            XmlPortType::DFC:
                BEGIN
                    CLEAR(Xml_DFC);
                    Xml_DFC.SETDESTINATION(OutStream);
                    Xml_DFC.SendXmlParameters(L_DStartDate[10], L_DEndDate[10], L_PeriodYear[10], L_PeriodNumber_All[10], L_XMLFileName[10]);
                    Xml_DFC.EXPORT;
                    XmlPeriodNumber := FORMAT(L_PeriodNumber_All[10]);
                END;
            XmlPortType::AI:
                BEGIN
                    CLEAR(Xml_AI);
                    Xml_AI.SETDESTINATION(OutStream);
                    Xml_AI.SendXmlParameters(L_OptPeriodType_T[4], L_DStartDate[4], L_DEndDate[4], L_XMLFileName[4], L_PeriodNumber_T[4], L_PeriodYear[4]);
                    Xml_AI.EXPORT;
                    XmlPeriodNumber := FORMAT(L_PeriodNumber_T[4]);
                END;
            XmlPortType::AFT:
                BEGIN
                    CLEAR(Xml_AFT);
                    Xml_AFT.SETDESTINATION(OutStream);
                    Xml_AFT.SendXmlParameters(L_OptPeriodType_T[3], L_DStartDate[3], L_DEndDate[3], L_XMLFileName[3], L_PeriodNumber_T[3], L_PeriodYear[3]);
                    Xml_AFT.EXPORT;
                    XmlPeriodNumber := FORMAT(L_PeriodNumber_T[3]);
                END;
        END;

        TempBlob.CreateInStream(InStream, TEXTENCODING::UTF8);

        XMLDoc := XmlDoc.XmlDocument();
        XMLDOMMgt.AddRootElementWithPrefix(XmlDoc, 'Submeter_Ficheiro', 'unil', 'http://unileotempuri.org/', HeaderXmlNode);
        XMLDOMMgt.AddElementWithPrefix(HeaderXmlNode, 'Ano', XmlYear, 'unil', 'http://unileotempuri.org/', BodyXmlNode);
        XMLDOMMgt.AddElementWithPrefix(HeaderXmlNode, 'TipoFicheiro', Format(XmlPortType), 'unil', 'http://unileotempuri.org/', BodyXmlNode);
        XMLDOMMgt.AddElementWithPrefix(HeaderXmlNode, 'Periodo', XmlPeriodType, 'unil', 'http://unileotempuri.org/', BodyXmlNode);
        XMLDOMMgt.AddElementWithPrefix(HeaderXmlNode, 'DesignacaoFicheiro', XmlFileName, 'unil', 'http://unileotempuri.org/', BodyXmlNode);
        XMLDOMMgt.AddElementWithPrefix(HeaderXmlNode, 'Documento', Base64Convert.ToBase64(InStream), 'unil', 'http://unileotempuri.org/', BodyXmlNode);

        Clear(TempBlob);
        TempBlob.CreateOutStream(OutStream, TextEncoding::UTF8);
        XMLDoc.Save(OutStream);

        TempBlob.CreateInStream(InStream, TEXTENCODING::UTF8);
        FileID := SendFileToWebService(InStream);
        IF FileID <> '' THEN
            InsertIntoLog(FileID, XmlYear, XmlPortType, XmlPeriodType, XmlFileName, XmlPeriodNumber);

        MESSAGE(STRSUBSTNO(SucessMessage, FileID));
    end;

    procedure SendFileValidation(EntryNo: Integer)
    var
        TempBlob: Codeunit "Temp Blob";
        UNILEOWebServicesLog: Record "UNILEO WebServices Log";
        XmlDoc: dotnet XmlDocument;
        HeaderXmlNode: dotnet XmlNode;
        BodyXmlNode: dotnet XmlNode;
        OutStream: OutStream;
        InStream: InStream;
        BudgetReportConfig: Record "Budget Report Configuration";
        ResponseInStream: InStream;
        ResultXml: Dotnet XmlDocument;
        ChildXmlNode: dotnet XmlNode;
        NodeList: dotnet XmlNodeList;
        i: Integer;
        ValidationTag: Label 'Obter_RelatorioDoFicheiroSubmetidoResult', Locked = true;
        MessageTag: Label 'Mensagem', Locked = true;
        ReportTag: Label 'Relatorio', Locked = true;
        StatusTag: Label 'EstadoDoFicheiro';
        ReportText: BigText;
        ReportOutStream: OutStream;
        ValidationAction: Label 'http://unileotempuri.org/Obter_RelatorioDoFicheiroSubmetido', Locked = true;
    begin
        CLEAR(XmlDoc);
        BudgetReportConfig.GET;
        BudgetReportConfig.TESTFIELD("WebService Active");
        BudgetReportConfig.TESTFIELD("WebService EndPoint");
        BudgetReportConfig.TESTFIELD("WebService Password");
        BudgetReportConfig.TESTFIELD("WebService User ID");

        UNILEOWebServicesLog.GET(EntryNo);
        XmlDoc := XmlDoc.XmlDocument;
        XMLDOMMgt.AddRootElementWithPrefix(XmlDoc, 'Obter_RelatorioDoFicheiroSubmetido', 'unil', 'http://unileotempuri.org/', HeaderXmlNode);
        XMLDOMMgt.AddElementWithPrefix(HeaderXmlNode, 'IdentificadorDoFicheiro', UNILEOWebServicesLog."XmlFile ID", 'unil', 'http://unileotempuri.org/', BodyXmlNode);

        CLEAR(TempBlob);
        TempBlob.CreateOutStream(OutStream);
        XmlDoc.Save(OutStream);
        TempBlob.CreateInStream(InStream, TEXTENCODING::UTF8);
        SetGlobals(InStream, BudgetReportConfig."WebService EndPoint", BudgetReportConfig."WebService User ID", BudgetReportConfig."WebService Password");
        IF SendRequestToWebService(1) THEN BEGIN
            GetResponseContent(ResponseInStream);
            CLEAR(ResultXml);
            ResultXml := ResultXml.XmlDocument();
            ResultXml.Load(ResponseInStream);
            NodeList := ResultXml.GetElementsByTagName(MessageTag);
            FOR i := 0 TO NodeList.Count - 1 DO BEGIN
                ChildXmlNode := NodeList.ItemOf(i);
                UNILEOWebServicesLog."XmlFile Log Message" := FORMAT(ChildXmlNode.InnerText);
            END;
            NodeList := ResultXml.GetElementsByTagName(StatusTag);
            FOR i := 0 TO NodeList.Count - 1 DO BEGIN
                ChildXmlNode := NodeList.ItemOf(i);
                UNILEOWebServicesLog."XmlFile Status" := FORMAT(ChildXmlNode.InnerText);
            END;
            NodeList := ResultXml.GetElementsByTagName(ReportTag);
            FOR i := 0 TO NodeList.Count - 1 DO BEGIN
                ChildXmlNode := NodeList.ItemOf(i);
                CLEAR(ReportText);
                ReportText.ADDTEXT(FORMAT(ChildXmlNode.InnerText));
                UNILEOWebServicesLog."XmlFile Report".CREATEOUTSTREAM(ReportOutStream, TEXTENCODING::UTF8);
                ReportText.WRITE(ReportOutStream);
            END;
            UNILEOWebServicesLog.MODIFY;
            MESSAGE(ValidationMessage);
        END ELSE
            ProcessFaultResponse('');
    end;

    local procedure SendFileToWebService(RequestBodyInStream: InStream): Text
    var
        BudgetReportConfig: Record "Budget Report Configuration";
        ResponseInStream: InStream;
        ResultXML: XmlDocument;
    begin
        BudgetReportConfig.GET;
        SetGlobals(RequestBodyInStream, BudgetReportConfig."WebService EndPoint", BudgetReportConfig."WebService User ID", BudgetReportConfig."WebService Password");
        SetTraceMode(false);
        IF SendRequestToWebService(0) THEN BEGIN
            GetResponseContent(ResponseInStream);
            CLEAR(ResultXML);
            XmlDocument.ReadFrom(ResponseInStream, ResultXML);
            EXIT(GetFileResultMessage(ResultXML));
        END ELSE
            ProcessFaultResponse('');
    end;

    local procedure GetFileResultMessage(ResultXML: XmlDocument): Text
    var
        ParentXmlNode: XmlNode;
        ParentXmlElement: XmlElement;
        ChildXmlNode: XmlNode;
        ChildXmlElement: XmlElement;
        NameSpaceMgt: XmlNamespaceManager;
        TextResult: Text;
        NodeList: XmlNodeList;
        i: Integer;
        InStream: InStream;
        TagToFind: Text;
        SubmitTag: Label '//ns:Submeter_FicheiroResponse', Locked = true;
        Uri: Text;
    begin
        ResultXML.GetRoot(ParentXmlElement);
        Uri := ParentXmlElement.NamespaceUri;
        NameSpaceMgt.NameTable(ResultXML.NameTable());
        NameSpaceMgt.AddNamespace('ns', Uri);
        ResultXML.SelectSingleNode(SubmitTag, NameSpaceMgt, ParentXmlNode);
        ChildXmlElement := ParentXmlNode.AsXmlElement();
        TextResult := FORMAT(ChildXmlElement.InnerText());
        IF STRPOS(UPPERCASE(TextResult), 'ERRO') > 0 THEN
            ERROR(STRSUBSTNO(ErrorMessage, TextResult))
        ELSE
            EXIT(TextResult.Trim());
    End;

    [TryFunction]
    local procedure SendRequestToWebService(Type: Option Submit,Validation)
    var
        HttpWebRequest: DotNet HttpWebRequest;
        HttpStatusCode: DotNet HttpStatusCode;
        ResponseHeaders: DotNet NameValueCollection;
        ResponseInStream: InStream;
        Encoding: DotNet UTF8Encoding;
        ResponseInStreamTempBlob: Codeunit "Temp Blob";
        HttpWebResponse: DotNet HttpWebResponse;
        SubmitAction: Label 'http://unileotempuri.org/Submeter_Ficheiro', Locked = true;
        ValidationAction: Label 'http://unileotempuri.org/Obter_RelatorioDoFicheiroSubmetido', Locked = true;
    begin
        CheckGlobals;
        CASE Type OF
            Type::Submit:
                BuildWebRequest(GlobalURL, HttpWebRequest, SubmitAction);
            Type::Validation:
                BuildWebRequest(GlobalURL, HttpWebRequest, ValidationAction);
        END;
        Clear(ResponseInStreamTempBlob);
        ResponseInStreamTempBlob.CreateInStream(ResponseInStream);
        CreateSoapRequest(HttpWebRequest.GetRequestStream, GlobalRequestBodyInStream, GlobalUsername, GlobalPassword);
        WebRequestHelper.GetWebResponse(HttpWebRequest, HttpWebResponse, ResponseInStream,
          HttpStatusCode, ResponseHeaders, GlobalProgressDialogEnabled);
        ExtractContentFromResponse(ResponseInStream, ResponseBodyTempBlob);

    end;

    local procedure BuildWebRequest(ServiceUrl: Text; var HttpWebRequest: DotNet HttpWebRequest; SoapAction: Text)
    var
        DecompressionMethods: DotNet DecompressionMethods;
        ServicePointManager: DotNet ServicePointManager;
        SecurityProtocol: DotNet SecurityProtocolType;
    begin
        HttpWebRequest := HttpWebRequest.Create(ServiceUrl);
        HttpWebRequest.Method := 'POST';
        HttpWebRequest.KeepAlive := TRUE;
        HttpWebRequest.AllowAutoRedirect := TRUE;
        HttpWebRequest.UseDefaultCredentials := TRUE;
        HttpWebRequest.ContentType := 'text/xml; charset=utf-8';
        IF GlobalTimeout <= 0 THEN
            GlobalTimeout := 1800000;
        HttpWebRequest.Timeout := GlobalTimeout;
        HttpWebRequest.AutomaticDecompression := DecompressionMethods.GZip;
        HttpWebRequest.Headers.Add('SoapAction', SoapAction);
    end;


    local procedure CreateSoapRequest(RequestOutStream: OutStream; BodyContentInStream: InStream; Username: Text; Password: Text)
    var
        XmlDoc: Dotnet XmlDocument;
        BodyXmlNode: Dotnet XmlNode;
    begin
        CreateEnvelope(XmlDoc, BodyXmlNode, Username, Password);
        AddBodyToEnvelope(BodyXmlNode, BodyContentInStream);
        XmlDoc.Save(RequestOutStream);
        TraceLogXmlDocToTempFile(XmlDoc, 'FullRequest');
    end;

    local procedure CreateEnvelope(var XmlDoc: DotNet XmlDocument; var BodyXmlNode: DotNet XmlNode; Username: Text; Password: Text)
    var
        EnvelopeXmlNode: DotNet XmlNode;
        HeaderXmlNode: DotNet XmlNode;
        SecurityXmlNode: DotNet XmlNode;
        UsernameTokenXmlNode: DotNet XmlNode;
        TempXmlNode: DotNet XmlNode;
        PasswordXmlNode: DotNet XmlNode;
        Temp2XmlNode: DotNet XmlNode;
    begin
        XmlDoc := XmlDoc.XmlDocument;
        XmlDoc.CreateProcessingInstruction('xml', 'version=1.0');
        XMLDOMMgt.AddRootElementWithPrefix(XmlDoc, 'Envelope', 'soapenv', SoapNamespaceTxt, EnvelopeXmlNode);
        XMLDOMMgt.AddAttribute(EnvelopeXmlNode, 'xmlns:unil', 'http://unileotempuri.org/');
        XMLDOMMgt.AddElementWithPrefix(EnvelopeXmlNode, 'Header', '', 'soapenv', SoapNamespaceTxt, HeaderXmlNode);
        IF (Username <> '') OR (Password <> '') THEN BEGIN
            XMLDOMMgt.AddElementWithPrefix(HeaderXmlNode, 'AuthUser', '', 'unil', 'http://unileotempuri.org/', SecurityXmlNode);
            XMLDOMMgt.AddElementWithPrefix(SecurityXmlNode, 'UserName', Username, 'unil', 'http://unileotempuri.org/', TempXmlNode);
            XMLDOMMgt.AddElementWithPrefix(SecurityXmlNode, 'Password', Password, 'unil', 'http://unileotempuri.org/', TempXmlNode);
        END;
        XMLDOMMgt.AddElementWithPrefix(EnvelopeXmlNode, 'Body', '', 'soapenv', SoapNamespaceTxt, BodyXmlNode);
    end;

    local procedure AddBodyToEnvelope(var BodyXmlNode: DotNet XmlNode; BodyInStream: InStream)
    var
        BodyContentXmlDoc: DotNet XmlDocument;
    begin
        BodyContentXmlDoc := BodyContentXmlDoc.XmlDocument;
        BodyContentXmlDoc.Load(BodyInStream);
        TraceLogXmlDocToTempFile(BodyContentXmlDoc, 'RequestBodyContent');
        BodyXmlNode.AppendChild(BodyXmlNode.OwnerDocument.ImportNode(BodyContentXmlDoc.DocumentElement, TRUE));
    end;

    local procedure ExtractContentFromResponse(ResponseInStream: InStream; var BodyTempBlob: Codeunit "Temp Blob")
    var
        ResponseXmlDoc: DotNet XmlDocument;
        ResponseBodyXMLDoc: DotNet XmlDocument;
        ResponseBodyXmlNode: DotNet XmlNode;
        BodyOutStream: OutStream;
        Found: Boolean;
    begin
        TraceLogStreamToTempFile(ResponseInStream, 'FullResponse', TempDebugLogTempBlob);
        ResponseXmlDoc := ResponseXmlDoc.XmlDocument;
        ResponseXmlDoc.Load(ResponseInStream);

        Found := XMLDOMMgt.FindNodeWithNamespace(ResponseXmlDoc.DocumentElement, BodyPathTxt, 'soap', SoapNamespaceTxt, ResponseBodyXmlNode);
        IF NOT Found THEN
            ERROR(ExpectedResponseNotReceivedErr);

        ResponseBodyXMLDoc := ResponseBodyXMLDoc.XmlDocument;
        ResponseBodyXMLDoc.AppendChild(ResponseBodyXMLDoc.ImportNode(ResponseBodyXmlNode.FirstChild, TRUE));

        BodyTempBlob.CREATEOUTSTREAM(BodyOutStream);
        ResponseBodyXMLDoc.Save(BodyOutStream);
        TraceLogXmlDocToTempFile(ResponseBodyXMLDoc, 'ResponseBodyContent');
    end;

    local procedure GetResponseContent(var ResponseBodyInStream: InStream)
    begin
        ResponseBodyTempBlob.CREATEINSTREAM(ResponseBodyInStream);
    end;

    local procedure ProcessFaultResponse(SupportInfo: Text)
    var
        WebException: DotNet WebException;
        XmlDoc: dotnet XmlDocument;
        ResponseInputStream: InStream;
        ErrorText: Text;
        ServiceURL: Text;
    begin
        ErrorText := WebRequestHelper.GetWebResponseError(WebException, ServiceURL);

        IF ErrorText <> '' THEN
            ERROR(ErrorText);

        ResponseInputStream := WebException.Response.GetResponseStream;
        IF TraceLogEnabled THEN
            Trace.LogStreamToTempFile(ResponseInputStream, 'WebExceptionResponse', TempDebugLogTempBlob);

        XmlDoc := XmlDoc.XmlDocument;
        XmlDoc.Load(ResponseInputStream);

        ErrorText := XMLDOMMgt.FindNodeTextWithNamespace(XmlDoc.DocumentElement, FaultStringXmlPathTxt, 'soap', SoapNamespaceTxt);
        IF ErrorText = '' THEN
            ErrorText := WebException.Message;
        ErrorText := InternalErr + ErrorText + ServiceURL;

        IF SupportInfo <> '' THEN
            ErrorText += '\\' + SupportInfo;

        ERROR(ErrorText);
    end;

    local procedure SetGlobals(RequestBodyInStream: InStream; URL: Text; Username: Text; Password: Text)
    begin
        GlobalRequestBodyInStream := RequestBodyInStream;
        GlobalSkipCheckHttps := FALSE;
        GlobalURL := URL;
        GlobalUsername := Username;
        GlobalPassword := Password;
        GlobalProgressDialogEnabled := TRUE;
        TraceLogEnabled := FALSE;
    end;

    local procedure SetTimeout(NewTimeout: Integer)
    begin
        GlobalTimeout := NewTimeout;
    end;

    local procedure CheckGlobals()
    begin
        IF GlobalRequestBodyInStream.EOS THEN
            ERROR(NoRequestBodyErr);

        IF GlobalURL = '' THEN
            ERROR(NoServiceAddressErr);

        IF GlobalSkipCheckHttps THEN
            WebRequestHelper.IsValidUri(GlobalURL)
        ELSE
            WebRequestHelper.IsSecureHttpUrl(GlobalURL);
    end;

    local procedure TraceLogStreamToTempFile(var ToLogInStream: InStream; Name: Text; var TraceLogTempBlob: Codeunit "Temp Blob")
    begin
        IF TraceLogEnabled THEN
            Trace.LogStreamToTempFile(ToLogInStream, Name, TraceLogTempBlob);
    end;

    local procedure TraceLogXmlDocToTempFile(var XmlDoc: dotnet XmlDocument; Name: Text)
    begin
        IF TraceLogEnabled THEN
            Trace.LogXmlDocToTempFile(XmlDoc, Name);
    end;

    local procedure SetTraceMode(NewTraceMode: Boolean)
    begin
        TraceLogEnabled := NewTraceMode;
    end;

    local procedure DisableHttpsCheck()
    begin
        GlobalSkipCheckHttps := TRUE;
    end;

    local procedure DisableProgressDialog()
    begin
        GlobalProgressDialogEnabled := FALSE;
    end;

    local procedure RemoveTagsFromXML(var TempBlob: Codeunit "Temp Blob"; XMLPortType: Enum "UNILEO Report Type"; XMLPortYear: Text): OutStream
    var
        TextLine: Text[1024];
        l_LastTextLine: Text[1024];
        FlagWrite: Boolean;
        XMLInStream: InStream;
        XMLOuStream: OutStream;
        XMLPortYear2: Integer;
        TempBlob2: Record "Upgrade Blob Storage";
        dd: Codeunit "Temp Blob";
    begin
        TempBlob.CreateInStream(XMLInStream, TextEncoding::UTF8);
        TempBlob.CreateOutStream(XMLOuStream, TEXTENCODING::UTF8);
        EVALUATE(XMLPortYear2, XMLPortYear);

        WHILE NOT XMLInStream.EOS DO BEGIN
            XMLInStream.READTEXT(TextLine);
            FlagWrite := TRUE;
            IF XMLPortType = "UNILEO Report Type"::DAPL THEN BEGIN
                IF XMLPortYear2 > 2018 THEN BEGIN
                    IF STRPOS(TextLine, '<CapitalPatrimonioRealizado>') > 0 THEN
                        FlagWrite := FALSE;
                    IF STRPOS(TextLine, '<ReservasLegais>') > 0 THEN
                        FlagWrite := FALSE;
                    IF STRPOS(TextLine, '<ReservasDecorrentesTransferenciaAtivos>') > 0 THEN
                        FlagWrite := FALSE;
                    IF STRPOS(TextLine, '<OutrasReservas>') > 0 THEN
                        FlagWrite := FALSE;
                END;
                IF XMLPortYear2 < 2019 THEN BEGIN
                    IF STRPOS(TextLine, '<CapitalPatrimonioSubscrito>') > 0 THEN
                        FlagWrite := FALSE;
                    IF STRPOS(TextLine, '<AcoesQuotasProprias>') > 0 THEN
                        FlagWrite := FALSE;
                    IF STRPOS(TextLine, '<PremiosEmissao>') > 0 THEN
                        FlagWrite := FALSE;
                    IF STRPOS(TextLine, '<Reservas>') > 0 THEN
                        FlagWrite := FALSE;
                END;
            END;

            IF XMLPortType = "UNILEO Report Type"::DOREC THEN BEGIN
                IF STRPOS(TextLine, '<TotalRecebimentosDiferidos>') > 0 THEN
                    FlagWrite := FALSE;
                IF STRPOS(TextLine, '<RecebimentosDiferidos>') > 0 THEN
                    FlagWrite := FALSE;
            END;

            IF FlagWrite THEN
                XMLOuStream.WRITETEXT(TextLine);
        END;
    end;

    local procedure InsertIntoLog(FileID: Text; XmlYear: Text; XmlPortType: Enum "UNILEO Report Type"; XmlPeriodType: Text; XmlFilename: Text; XmlPeriodNumber: Text)
    var
        UNILEOWebServicesLog: Record "UNILEO WebServices Log";
        EntryNo: Integer;
    begin
        CLEAR(EntryNo);
        Clear(UNILEOWebServicesLog);
        IF UNILEOWebServicesLog.FINDLAST THEN
            EntryNo := UNILEOWebServicesLog."Entry No" + 1
        ELSE
            EntryNo := 1;

        UNILEOWebServicesLog.INIT;
        UNILEOWebServicesLog."Entry No" := EntryNo;
        UNILEOWebServicesLog."XmlFile ID" := FileID;
        UNILEOWebServicesLog."XmlFile Year" := XmlYear;
        UNILEOWebServicesLog."XmlFile Type" := XmlPortType;
        UNILEOWebServicesLog."XmlFile Period Type" := XmlPeriodType;
        UNILEOWebServicesLog."XmlFile Name" := XmlFilename;
        UNILEOWebServicesLog."XmlFile Period Number" := XmlPeriodNumber;
        UNILEOWebServicesLog."XmlFile Date Created" := TODAY;
        UNILEOWebServicesLog."XmlFile Hour Created" := TIME;
        UNILEOWebServicesLog.INSERT;
    end;
}

