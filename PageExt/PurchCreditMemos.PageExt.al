pageextension 50110 "Purchase Credit Memos Ext" extends "Purchase Credit Memos"
{
    actions
    {
        addlast(processing)
        {
            action(ImportInfo)
            {
                Caption = 'Import Purchase Credit Memos';
                Image = Excel;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = report ImportPurchCrMemos;
            }
        }
        addafter(PostAndPrint)
        {
            action(PostAndPrintAsPDF)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Post and Print as PDF';
                Image = SendAsPDF;
                Promoted = true;
                PromotedCategory = Category7;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    TempBlob: Codeunit "Temp Blob";
                    FileManagement: Codeunit "File Management";
                    OStream: OutStream;
                    PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
                    RecRef: RecordRef;
                    FileName: Text;
                    RegNo: Code[20];
                begin
                    RegNo := Rec."No.";
                    PostDocument(CODEUNIT::"Purch.-Post");
                    Clear(OStream);
                    PurchCrMemoHeader.SetFilter("Pre-Assigned No.", RegNo);
                    PurchCrMemoHeader.FindFirst();
                    RecRef.GetTable(PurchCrMemoHeader);
                    TempBlob.CreateOutStream(OStream);
                    Report.SaveAs(Report::"Purchase - Credit Memo", '', ReportFormat::Pdf, OStream, RecRef);
                    FileManagement.BLOBExport(TempBlob, 'NCC_' + PurchCrMemoHeader."No." + '.pdf', true);

                end;
            }
        }
    }
    var
        LinesInstructionMgt: Codeunit "Lines Instruction Mgt.";
        IsOfficeAddin: Boolean;
        OpenPostedPurchCrMemoQst: Label 'The credit memo is posted as number %1 and moved to the Posted Purchase Credit Memos window.\\Do you want to open the posted credit memo?', Comment = '%1 = posted document number';


    local procedure PostDocument(PostingCodeunitID: Integer)
    var
        PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.";
        InstructionMgt: Codeunit "Instruction Mgt.";
        IsScheduledPosting: Boolean;
        IsHandled: Boolean;
    begin
        LinesInstructionMgt.PurchaseCheckAllLinesHaveQuantityAssigned(Rec);

        Rec.SendToPosting(PostingCodeunitID);

        IsScheduledPosting := Rec."Job Queue Status" = Rec."Job Queue Status"::"Scheduled for Posting";

        if IsScheduledPosting then
            CurrPage.Close;
        CurrPage.Update(false);

        IsHandled := false;
        if PostingCodeunitID <> CODEUNIT::"Purch.-Post (Yes/No)" then
            exit;

        if IsOfficeAddin then begin
            PurchCrMemoHdr.SetRange("Pre-Assigned No.", Rec."No.");
            if PurchCrMemoHdr.FindFirst() then
                PAGE.Run(PAGE::"Posted Purchase Credit Memo", PurchCrMemoHdr);
        end else
            if InstructionMgt.IsEnabled(InstructionMgt.ShowPostedConfirmationMessageCode) then
                ShowPostedConfirmationMessage;
    end;

    local procedure ShowPostedConfirmationMessage()
    var
        PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.";
        InstructionMgt: Codeunit "Instruction Mgt.";
    begin
        PurchCrMemoHdr.SetRange("Pre-Assigned No.", Rec."No.");
        if PurchCrMemoHdr.FindFirst() then
            if InstructionMgt.ShowConfirm(StrSubstNo(OpenPostedPurchCrMemoQst, PurchCrMemoHdr."No."),
                 InstructionMgt.ShowPostedConfirmationMessageCode)
            then
                InstructionMgt.ShowPostedDocument(PurchCrMemoHdr, Page::"Purchase Credit Memos");
    end;
}