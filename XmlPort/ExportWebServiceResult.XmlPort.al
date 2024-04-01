xmlport 50001 "Export WebServices Result"
{

    Direction = Export;
    Encoding = UTF16;
    FormatEvaluate = Xml;
    UseRequestPage = false;
    UseDefaultNamespace = true;
    schema
    {
        textelement(Root)
        {
            MinOccurs = Once;
            MaxOccurs = Once;
            textelement(Status)
            {
                MinOccurs = Once;
                MaxOccurs = Once;
            }
            textelement(ErrorMessage)
            {
                MinOccurs = Zero;
                MaxOccurs = Once;
                trigger OnBeforePassVariable()
                begin
                    if Status = 'OK' then
                        currXMLport.Skip();
                end;
            }
            textelement(DocumentType)
            {
                MinOccurs = Zero;
                MaxOccurs = Once;
                trigger OnBeforePassVariable()
                begin
                    if DocumentType = '' then
                        currXMLport.Skip();
                end;
            }
            textelement(DocumentNo)
            {
                MinOccurs = Zero;
                MaxOccurs = Once;
                trigger OnBeforePassVariable()
                begin
                    if DocumentNo = '' then
                        currXMLport.Skip();
                end;
            }
        }
    }

    procedure SetMessageStatus(WebServiceLogs: Record "CM WebServices Log")
    begin
        Status := Format(WebServiceLogs.Status);
        ErrorMessage := WebServiceLogs."Error Message";
        DocumentType := Format(WebServiceLogs."CM Document Type");
        DocumentNo := WebServiceLogs."Posted Document No.";
    end;
}

