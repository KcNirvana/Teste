pageextension 50109 "Purchase Invoices Ext" extends "Purchase Invoices"
{
    actions
    {
        addlast(processing)
        {
            action(ImportInfo)
            {
                Caption = 'Import Purchase Invoices';
                Image = Excel;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = report "ImportPurchInvoices";
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
                PromotedCategory = Category5;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    TempBlob: Codeunit "Temp Blob";
                    FileManagement: Codeunit "File Management";
                    OStream: OutStream;
                    PurchInvHeader: Record "Purch. Inv. Header";
                    RecRef: RecordRef;
                    FileName: Text;
                    RegNo: Code[20];
                begin
                    RegNo := Rec."No.";
                    VerifyTotal(Rec);
                    PostDocument(CODEUNIT::"Purch.-Post");
                    Clear(OStream);
                    PurchInvHeader.SetFilter("Pre-Assigned No.", RegNo);
                    PurchInvHeader.FindFirst();
                    RecRef.GetTable(PurchInvHeader);
                    TempBlob.CreateOutStream(OStream);
                    Report.SaveAs(Report::"Purchase - Invoice", '', ReportFormat::Pdf, OStream, RecRef);
                    FileManagement.BLOBExport(TempBlob, 'FC_' + PurchInvHeader."No." + '.pdf', true);

                end;
            }
        }
    }
    var
        OpenPostedPurchaseInvQst: Label 'The invoice is posted as number %1 and moved to the Posted Purchase Invoice window.\\Do you want to open the posted invoice?', Comment = '%1 = posted document number';

    local procedure PostDocument(PostingCodeunitID: Integer)
    var
        //PurchInvHeader: Record "Purch. Inv. Header";
        LinesInstructionMgt: Codeunit "Lines Instruction Mgt.";
        ApplicationAreaMgmtFacade: Codeunit "Application Area Mgmt. Facade";
        IsHandled: Boolean;
    begin
        LinesInstructionMgt.PurchaseCheckAllLinesHaveQuantityAssigned(Rec);

        Rec.SendToPosting(PostingCodeunitID);

        IsHandled := False;
        OnPostBeforeNavigateAfterPosting(Rec, PostingCodeunitID, IsHandled);
        if IsHandled then
            exit;

        if ApplicationAreaMgmtFacade.IsFoundationEnabled then
            ShowPostedConfirmationMessage;
    end;

    local procedure ShowPostedConfirmationMessage()
    var
        PurchInvHeader: Record "Purch. Inv. Header";
        InstructionMgt: Codeunit "Instruction Mgt.";
    begin
        PurchInvHeader.SetRange("Pre-Assigned No.", Rec."No.");
        PurchInvHeader.SetRange("Order No.", '');
        if PurchInvHeader.FindFirst() then
            if InstructionMgt.ShowConfirm(StrSubstNo(OpenPostedPurchaseInvQst, PurchInvHeader."No."),
                 InstructionMgt.ShowPostedConfirmationMessageCode)
            then
                InstructionMgt.ShowPostedDocument(PurchInvHeader, Page::"Purchase Invoices");
    end;

    local procedure OnPostBeforeNavigateAfterPosting(var PurchaseHeader: Record "Purchase Header"; var PostingCodeunitID: Integer; var IsHandled: Boolean)
    begin
    end;
}