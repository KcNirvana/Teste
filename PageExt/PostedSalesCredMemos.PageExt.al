pageextension 50107 "Posted Sales Cred Memos Ext" extends "Posted Sales Credit Memos"
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
                    PurchCrMemoHeader: Record "Sales Cr.Memo Header";
                    RecRef: RecordRef;
                    FileName: Text;
                begin
                    Clear(OStream);
                    CurrPage.SetSelectionFilter(PurchCrMemoHeader);
                    RecRef.GetTable(PurchCrMemoHeader);
                    TempBlob.CreateOutStream(OStream);
                    Report.SaveAs(Report::"PTSS Sales - Credit Memo (PT)", '', ReportFormat::Pdf, OStream, RecRef);
                    FileManagement.BLOBExport(TempBlob, 'NCV_' + Rec."No." + '.pdf', true);

                end;
            }
        }
    }
}
