Codeunit 57013 "Page Events"
{
    var
        PostedPAQ: Record "Posted PAQ";
        PostedAvaylableBudget: Record "Posted Avaylable Budget";

    [EventSubscriber(ObjectType::Page, Page::Navigate, 'OnBeforeNavigateShowRecords', '', false, false)]
    local procedure NavigateOnBeforeNavigateShowRecords(TableID: Integer; DocNoFilter: Text; PostingDateFilter: Text; ItemTrackingSearch: Boolean; var TempDocumentEntry: Record "Document Entry" temporary; var IsHandled: Boolean; var SalesInvoiceHeader: Record "Sales Invoice Header"; var SalesCrMemoHeader: Record "Sales Cr.Memo Header"; var PurchInvHeader: Record "Purch. Inv. Header"; var PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr."; var ServiceInvoiceHeader: Record "Service Invoice Header"; var ServiceCrMemoHeader: Record "Service Cr.Memo Header"; var SOSalesHeader: Record "Sales Header"; var SISalesHeader: Record "Sales Header"; var SCMSalesHeader: Record "Sales Header"; var SROSalesHeader: Record "Sales Header"; var GLEntry: Record "G/L Entry"; var VATEntry: Record "VAT Entry"; var VendLedgEntry: Record "Vendor Ledger Entry"; var WarrantyLedgerEntry: Record "Warranty Ledger Entry"; var NewSourceRecVar: Variant; var SalesShipmentHeader: Record "Sales Shipment Header"; var ReturnReceiptHeader: Record "Return Receipt Header"; var ReturnShipmentHeader: Record "Return Shipment Header"; var PurchRcptHeader: Record "Purch. Rcpt. Header")
    begin
        case TempDocumentEntry."Table ID" of
            DATABASE::"Posted PAQ":
                begin
                    PostedPAQ.Reset();
                    PostedPAQ.SetCurrentKey("PAQ Code");
                    PostedPAQ.SetFilter("PAQ Code", DocNoFilter);
                    PostedPAQ.SetFilter("PAQ Date", PostingDateFilter);
                    if TempDocumentEntry."No. of Records" = 1 then begin
                        PostedPAQ.FindFirst();
                        PAGE.Run(PAGE::"Posted PAQ Card", PostedPAQ)
                    end else
                        PAGE.Run(PAGE::"Posted PAQ List", PostedPAQ);
                end;
            DATABASE::"Posted Avaylable Budget":
                begin
                    PostedAvaylableBudget.Reset();
                    PostedAvaylableBudget.SetCurrentKey("Avay Code");
                    PostedAvaylableBudget.SetFilter("Avay Code", DocNoFilter);
                    PostedAvaylableBudget.SetFilter("Avay Date", PostingDateFilter);
                    if TempDocumentEntry."No. of Records" = 1 then begin
                        PostedAvaylableBudget.FindFirst();
                        PAGE.Run(PAGE::"Posted Avaylable Budget", PostedAvaylableBudget)
                    end else
                        PAGE.Run(PAGE::"Posted Avaylable Budget List", PostedAvaylableBudget);
                end;
        end;
    end;

    [EventSubscriber(ObjectType::Page, Page::Navigate, 'OnAfterNavigateFindRecords', '', false, false)]
    local procedure NavigateOnAfterNavigateFindRecords(var DocumentEntry: Record "Document Entry"; DocNoFilter: Text; PostingDateFilter: Text; var NewSourceRecVar: Variant; ExtDocNo: Code[250]; HideDialog: Boolean)
    begin
        FindBudgetDocuments(DocumentEntry, DocNoFilter, PostingDateFilter, ExtDocNo);
    end;

    local procedure FindBudgetDocuments(var DocumentEntry: Record "Document Entry"; DocNoFilter: Text; PostingDateFilter: Text; ExtDocNo: Code[250])
    begin
        if (ExtDocNo <> '') and (DocNoFilter = '') then
            exit;

        PostedPAQ."SecurityFiltering"(SECURITYFILTER::Filtered);
        if PostedPAQ.ReadPermission() then begin
            PostedPAQ.Reset();
            PostedPAQ.SetCurrentKey("PAQ Code");
            PostedPAQ.SetFilter("PAQ Code", DocNoFilter);
            PostedPAQ.SetFilter("PAQ Date", PostingDateFilter);
            InsertIntoDocEntry(DocumentEntry, DATABASE::"Posted PAQ", "Document Entry Document type"::" ", PostedPAQ.TableCaption, PostedPAQ.Count);
        end;
        PostedAvaylableBudget."SecurityFiltering"(SECURITYFILTER::Filtered);
        if PostedAvaylableBudget.ReadPermission() then begin
            PostedAvaylableBudget.Reset();
            PostedAvaylableBudget.SetCurrentKey("Avay Code");
            PostedAvaylableBudget.SetFilter("Avay Code", DocNoFilter);
            PostedAvaylableBudget.SetFilter("Avay Date", PostingDateFilter);
            InsertIntoDocEntry(DocumentEntry, DATABASE::"Posted Avaylable Budget", "Document Entry Document type"::" ", PostedAvaylableBudget.TableCaption, PostedAvaylableBudget.Count);
        end;
    end;

    local procedure InsertIntoDocEntry(var TempDocumentEntry: Record "Document Entry" temporary; DocTableID: Integer; DocType: Enum "Document Entry Document Type"; DocTableName: Text; DocNoOfRecords: Integer)
    begin
        if DocNoOfRecords = 0 then
            exit;

        TempDocumentEntry.Init();
        TempDocumentEntry."Entry No." := TempDocumentEntry."Entry No." + 1;
        TempDocumentEntry."Table ID" := DocTableID;
        TempDocumentEntry."Document Type" := DocType;
        TempDocumentEntry."Table Name" := CopyStr(DocTableName, 1, MaxStrLen(TempDocumentEntry."Table Name"));
        TempDocumentEntry."No. of Records" := DocNoOfRecords;
        TempDocumentEntry.Insert();
    end;

}

