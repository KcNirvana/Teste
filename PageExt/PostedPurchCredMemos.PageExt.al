pageextension 50105 "Posted Purch Cred Memos Ext" extends "Posted Purchase Credit Memos"
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
                PromotedCategory = Category6;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    TempBlob: Codeunit "Temp Blob";
                    FileManagement: Codeunit "File Management";
                    OStream: OutStream;
                    PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
                    RecRef: RecordRef;
                    FileName: Text;
                begin
                    Clear(OStream);
                    CurrPage.SetSelectionFilter(PurchCrMemoHeader);
                    RecRef.GetTable(PurchCrMemoHeader);
                    TempBlob.CreateOutStream(OStream);
                    Report.SaveAs(Report::"PTSS Purch. - Credit Memo (PT)", '', ReportFormat::Pdf, OStream, RecRef);
                    FileManagement.BLOBExport(TempBlob, 'NCC_' + Rec."No." + '.pdf', true);

                end;
            }
        }
    }
}
