pageextension 50112 "Sales Invoice Ext" extends "Sales Invoice List"
{
    actions
    {
        addlast(processing)
        {
            action(ImportInfo)
            {
                Caption = 'Import Sale Invoice';
                Image = Excel;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = report "Import Sales Invoices";
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
                    PurchInvHeader: Record "Sales Invoice Header";
                    RecRef: RecordRef;
                    FileName: Text;
                    RegNo: Code[20];
                begin
                    RegNo := Rec."No.";
                    PostDocument(CODEUNIT::"Sales-Post");
                    Clear(OStream);
                    PurchInvHeader.SetFilter("Pre-Assigned No.", RegNo);
                    PurchInvHeader.FindFirst();
                    RecRef.GetTable(PurchInvHeader);
                    TempBlob.CreateOutStream(OStream);
                    Report.SaveAs(Report::"PTSS Sales - Invoice (PT)", '', ReportFormat::Pdf, OStream, RecRef);
                    FileManagement.BLOBExport(TempBlob, 'FV_' + PurchInvHeader."No." + '.pdf', true);

                end;
            }
        }
    }
    var
        LinesInstructionMgt: Codeunit "Lines Instruction Mgt.";
        ApplicationAreaMgmtFacade: Codeunit "Application Area Mgmt. Facade";


        OpenPostedSalesInvQst: Label 'The invoice is posted as number %1 and moved to the Posted Sales Invoice window.\\Do you want to open the posted invoice?', Comment = '%1 = posted document number';

    local procedure PostDocument(PostingCodeunitID: Integer)
    var
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

        if ApplicationAreaMgmtFacade.IsFoundationEnabled then
            ShowPostedConfirmationMessage(PreAssignedNo);
    end;

    local procedure ShowPostedConfirmationMessage(PreAssignedNo: Code[20])
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        InstructionMgt: Codeunit "Instruction Mgt.";
    begin
        SalesInvoiceHeader.SetCurrentKey("Pre-Assigned No.");
        SalesInvoiceHeader.SetRange("Pre-Assigned No.", PreAssignedNo);
        if SalesInvoiceHeader.FindFirst() then
            if InstructionMgt.ShowConfirm(StrSubstNo(OpenPostedSalesInvQst, SalesInvoiceHeader."No."),
                 InstructionMgt.ShowPostedConfirmationMessageCode)
            then
                InstructionMgt.ShowPostedDocument(SalesInvoiceHeader, Page::"Sales Invoice List");
    end;

    local procedure OnPostDocumentBeforeNavigateAfterPosting(var SalesHeader: Record "Sales Header"; var PostingCodeunitID: Integer; var IsHandled: Boolean)
    begin
    end;
}