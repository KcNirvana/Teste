pageextension 50106 "Posted Purch Invoices Ext" extends "Posted Purchase Invoices"
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
                    PurchInvHeader: Record "Purch. Inv. Header";
                    RecRef: RecordRef;
                    FileName: Text;
                begin
                    Clear(OStream);
                    CurrPage.SetSelectionFilter(PurchInvHeader);
                    RecRef.GetTable(PurchInvHeader);
                    TempBlob.CreateOutStream(OStream);
                    Report.SaveAs(Report::"PTSS Purchase - Invoice (PT)", '', ReportFormat::Pdf, OStream, RecRef);
                    FileManagement.BLOBExport(TempBlob, 'FC_' + Rec."No." + '.pdf', true);

                end;
            }
        }
        addafter("Update Document")
        {
            action("Correct Deferements")
            {
                Caption = 'Correct Deferements';
                Image = ChangeBatch;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                var
                    Developments: Codeunit Developments;
                begin
                    Developments.CorrectPurchInvoiceDeferments(Rec);
                end;
            }
        }
    }
}
