pageextension 50111 "Sales Credit Memo Ext" extends "Sales Credit Memos"
{
    actions
    {
        addlast(processing)
        {
            action(ImportInfo)
            {
                Caption = 'Import Sale Credit Memos';
                Image = Excel;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = report "Import Sales Credit Memos";
            }
        }
        addafter(PostAndSend)
        {
            action(PostAndPrintAsPDF)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Post and Print as PDF';
                Image = SendAsPDF;
                Promoted = true;
                PromotedCategory = Category5;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    TempBlob: Codeunit "Temp Blob";
                    FileManagement: Codeunit "File Management";
                    OStream: OutStream;
                    SalesCrMemoHeader: Record "Sales Cr.Memo Header";
                    RecRef: RecordRef;
                    FileName: Text;
                    RegNo: Code[20];
                begin
                    RegNo := Rec."No.";
                    PostDocument(CODEUNIT::"Sales-Post");
                    Clear(OStream);
                    SalesCrMemoHeader.SetFilter("Pre-Assigned No.", RegNo);
                    SalesCrMemoHeader.FindFirst();
                    RecRef.GetTable(SalesCrMemoHeader);
                    TempBlob.CreateOutStream(OStream);
                    Report.SaveAs(Report::"PTSS Sales - Credit Memo (PT)", '', ReportFormat::Pdf, OStream, RecRef);
                    FileManagement.BLOBExport(TempBlob, 'NCV_' + SalesCrMemoHeader."No." + '.pdf', true);

                end;
            }
        }
    }
    var
        LinesInstructionMgt: Codeunit "Lines Instruction Mgt.";
        IsOfficeAddin: Boolean;
        OpenPostedSalesCrMemoQst: Label 'The credit memo is posted as number %1 and moved to the Posted Sales Credit Memo window.\\Do you want to open the posted credit memo?', Comment = '%1 = posted document number';


    local procedure PostDocument(PostingCodeunitID: Integer)
    var
        ApplicationAreaMgmtFacade: Codeunit "Application Area Mgmt. Facade";
        PreAssignedNo: Code[20];
        IsHandled: Boolean;
    begin
        LinesInstructionMgt.SalesCheckAllLinesHaveQuantityAssigned(Rec);
        PreAssignedNo := Rec."No.";

        Rec.SendToPosting(PostingCodeunitID);

        IsHandled := false;
        OnPostDocumentBeforeNavigateAfterPosting(Rec, PostingCodeunitID, IsHandled);
        if IsHandled then
            exit;

        if Rec."Job Queue Status" = Rec."Job Queue Status"::"Scheduled for Posting" then
            CurrPage.Close
        else
            if ApplicationAreaMgmtFacade.IsFoundationEnabled then
                ShowPostedConfirmationMessage(PreAssignedNo);
    end;

    local procedure ShowPostedConfirmationMessage(PreAssignedNo: Code[20])
    var
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        InstructionMgt: Codeunit "Instruction Mgt.";
    begin
        SalesCrMemoHeader.SetRange("Pre-Assigned No.", PreAssignedNo);
        if SalesCrMemoHeader.FindFirst() then
            if InstructionMgt.ShowConfirm(StrSubstNo(OpenPostedSalesCrMemoQst, SalesCrMemoHeader."No."),
                 InstructionMgt.ShowPostedConfirmationMessageCode)
            then
                InstructionMgt.ShowPostedDocument(SalesCrMemoHeader, Page::"Sales Credit Memos");
    end;

    local procedure OnPostDocumentBeforeNavigateAfterPosting(var SalesHeader: Record "Sales Header"; var PostingCodeunitID: Integer; var IsHandled: Boolean)
    begin
    end;
}
