codeunit 50002 Events
{
    var
        GLSetup: Record "General Ledger Setup";
        Developments: Codeunit Developments;
        PostPreviewEvents: Codeunit PostPreviewEvents;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"VAT Lookup Ext. Data Hndl", 'OnSendRequestToVatRegistrationServiceOnBeforeSendRequestToWebService', '', false, false)]
    local procedure VIESOnSendRequestToVatRegistrationServiceOnBeforeSendRequestToWebService(var SOAPWebServiceRequestMgt: Codeunit "SOAP Web Service Request Mgt."; var TempBlobBody: Codeunit "Temp Blob")
    begin
        SOAPWebServiceRequestMgt.SetContentType('text/xml; charset=utf-8');
    end;

    [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterAssignGLAccountValues', '', false, false)]
    local procedure DeferementsOnAfterAssignGLAccountValues(var PurchLine: Record "Purchase Line"; GLAccount: Record "G/L Account"; PurchHeader: Record "Purchase Header")
    begin
        PurchLine.Validate(Deferement, GLAccount.Deferement);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterAssignItemValues', '', false, false)]
    local procedure DeferementsOnAfterAssignItemValues(var PurchLine: Record "Purchase Line"; Item: Record Item; CurrentFieldNo: Integer; PurchHeader: Record "Purchase Header")
    begin
        PurchLine.Validate(Deferement, Item.Deferement);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnAfterTestPurchLine', '', false, false)]
    local procedure DeferementsOnAfterTestPurchLine(PurchHeader: Record "Purchase Header"; PurchLine: Record "Purchase Line"; WhseReceive: Boolean; WhseShip: Boolean)
    var
        GenPostSetup: Record "General Posting Setup";
        Text001: Label 'The deferement start date cant be earlier than posting date.';
    begin
        if not (PurchHeader."Document Type" = PurchHeader."Document Type"::Invoice) then
            exit;
        if PurchLine.Deferement then begin
            PurchLine.TestField("Deferement Start Date");
            //if PurchLine."Deferement Start Date" < PurchHeader."Posting Date" then
            //    Error(Text001);
            PurchLine.TestField("Deferement Periodicity");
            PurchLine.TestField("Deferement Account");
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Preview", 'OnBeforeRunPreview', '', false, false)]
    local procedure DeferementsOnBeforeRunPreview(Subscriber: Variant; RecVar: Variant)
    begin
        Clear(PostPreviewEvents);
        Session.UnbindSubscription(PostPreviewEvents);
        Session.BindSubscription(PostPreviewEvents);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnAfterPurchInvLineInsert', '', false, false)]
    local procedure DeferementsOnAfterPurchInvLineInsert(var PurchInvLine: Record "Purch. Inv. Line"; PurchInvHeader: Record "Purch. Inv. Header"; PurchLine: Record "Purchase Line"; ItemLedgShptEntryNo: Integer; WhseShip: Boolean; WhseReceive: Boolean; CommitIsSupressed: Boolean; PurchHeader: Record "Purchase Header"; PurchRcptHeader: Record "Purch. Rcpt. Header"; TempWhseRcptHeader: Record "Warehouse Receipt Header")
    begin
        Developments.CreatePurchInvoiceLineDeferment(PurchInvLine);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post", 'OnBeforeCode', '', false, false)]
    local procedure OnBeforeCode(var GenJournalLine: Record "Gen. Journal Line"; var HideDialog: Boolean)
    begin
        GLSetup.Get();
        HideDialog := (GenJournalLine."Journal Template Name" = GLSetup."Deferements Journal") and (GenJournalLine."Journal Batch Name" = GLSetup."Deferements Journal");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post", 'OnBeforeShowPostResultMessage', '', false, false)]
    local procedure OnBeforeShowPostResultMessage(var GenJnlLine: Record "Gen. Journal Line"; TempJnlBatchName: Code[10]; var IsHandled: Boolean)
    begin
        GLSetup.Get();
        IsHandled := (GenJnlLine."Journal Template Name" = GLSetup."Deferements Journal") and (GenJnlLine."Journal Batch Name" = GLSetup."Deferements Journal");
    end;

    [EventSubscriber(ObjectType::Page, Page::Navigate, 'OnBeforeNavigateShowRecords', '', false, false)]
    local procedure DeferementsOnBeforeNavigateShowRecords(TableID: Integer; DocNoFilter: Text; PostingDateFilter: Text; ItemTrackingSearch: Boolean; var TempDocumentEntry: Record "Document Entry" temporary; var IsHandled: Boolean; var SalesInvoiceHeader: Record "Sales Invoice Header"; var SalesCrMemoHeader: Record "Sales Cr.Memo Header"; var PurchInvHeader: Record "Purch. Inv. Header"; var PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr."; var ServiceInvoiceHeader: Record "Service Invoice Header"; var ServiceCrMemoHeader: Record "Service Cr.Memo Header"; var SOSalesHeader: Record "Sales Header"; var SISalesHeader: Record "Sales Header"; var SCMSalesHeader: Record "Sales Header"; var SROSalesHeader: Record "Sales Header"; var GLEntry: Record "G/L Entry"; var VATEntry: Record "VAT Entry"; var VendLedgEntry: Record "Vendor Ledger Entry"; var WarrantyLedgerEntry: Record "Warranty Ledger Entry"; var NewSourceRecVar: Variant; var SalesShipmentHeader: Record "Sales Shipment Header"; var ReturnReceiptHeader: Record "Return Receipt Header"; var ReturnShipmentHeader: Record "Return Shipment Header"; var PurchRcptHeader: Record "Purch. Rcpt. Header")
    var
        PurchDeferements: Record "Purch. Deferments Entry";
    begin
        case TempDocumentEntry."Table ID" of
            Database::"Purch. Deferments Entry":
                begin
                    PurchDeferements.Reset();
                    PurchDeferements.SetFilter("Document No.", DocNoFilter);
                    PurchDeferements.SetFilter("Posting Date", PostingDateFilter);
                    Page.Run(Page::"Purchase Deferements", PurchDeferements);
                    IsHandled := true;
                end;
        end;
    end;

    [EventSubscriber(ObjectType::Page, Page::Navigate, 'OnAfterNavigateFindRecords', '', false, false)]
    local procedure DeferementsOnAfterNavigateFindRecords(var DocumentEntry: Record "Document Entry"; DocNoFilter: Text; PostingDateFilter: Text; var NewSourceRecVar: Variant)
    begin
        FindDeferments(DocumentEntry, DocNoFilter, PostingDateFilter);
    end;

    local procedure FindDeferments(var DocumentEntry: Record "Document Entry"; DocNoFilter: Text; PostingDateFilter: Text)
    var
        PurchaseDeferments: Record "Purch. Deferments Entry";
        Navigate: Page Navigate;
    begin
        PurchaseDeferments."SecurityFiltering"(SECURITYFILTER::Filtered);
        if PurchaseDeferments.ReadPermission() then begin
            PurchaseDeferments.Reset();
            PurchaseDeferments.SetCurrentKey("Document No.", "Posting Date");
            PurchaseDeferments.SetFilter("Document No.", DocNoFilter);
            PurchaseDeferments.SetFilter("Posting Date", PostingDateFilter);
            Navigate.InsertIntoDocEntry(DocumentEntry, Database::"Purch. Deferments Entry", "Document Entry Document type"::" ", PurchaseDeferments.TableCaption, PurchaseDeferments.Count);
        end;
    end;

}