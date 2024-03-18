pageextension 50108 "Posted Sales Invoice Ext" extends "Posted Sales Invoices"
{
    actions
    {

        addafter(AttachAsPDF)
        {
            action(SaveAsPDF)
            {
                Caption = 'Save as PDF';
                ApplicationArea = All;
                Image = SendAsPDF;
                Promoted = true;
                PromotedCategory = Category7;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    TempBlob: Codeunit "Temp Blob";
                    FileManagement: Codeunit "File Management";
                    OStream: OutStream;
                    SalesInvHeader: Record "Sales Invoice Header";
                    RecRef: RecordRef;
                    FileName: Text;
                begin
                    Clear(OStream);
                    CurrPage.SetSelectionFilter(SalesInvHeader);
                    RecRef.GetTable(SalesInvHeader);
                    TempBlob.CreateOutStream(OStream);
                    Report.SaveAs(Report::"PTSS Sales - Invoice (PT)", '', ReportFormat::Pdf, OStream, RecRef);
                    FileManagement.BLOBExport(TempBlob, 'FV_' + Rec."No." + '.pdf', true);

                end;
            }
        }
    }
}
