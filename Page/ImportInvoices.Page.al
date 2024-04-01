page 60000 "Import Invoices"
{

    Caption = 'Import Invoices';
    Editable = false;
    UsageCategory = Tasks;
    ApplicationArea = All;


    actions
    {
        area(processing)
        {
            action(ImportInvoices)
            {
                Caption = 'ImportInvoices';
                Image = UpdateDescription;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction();
                begin
                    ImportXMLInvoices;
                end;
            }
            action(ExportInvoices)
            {
                Caption = 'ExportInvoices';
                Image = UpdateDescription;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction();
                begin
                    Xmlport.Run(Xmlport::"Import CM Sales Documents", false, false);
                end;
            }
        }
    }
    local procedure ImportXMLInvoices()
    var
        XmlImportDocuments: XmlPort "Import CM Sales Documents";
        CmSalesDocument: Record CmSalesDocument temporary;
        CmSalesDocumentLine: Record CmSalesDocumentLine temporary;
        CreateSalesDocuments: Codeunit CMCreateSalesDocuments;
    begin
        XmlImportDocuments.Run();
        XmlImportDocuments.GetCMSalesDocuments(CmSalesDocument, CmSalesDocumentLine);
        CreateSalesDocuments.SetDocuments(CmSalesDocument, CmSalesDocumentLine);
        CreateSalesDocuments.Run();
    end;

}

