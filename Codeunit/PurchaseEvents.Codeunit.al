Codeunit 57011 "Purchase Events"
{
    Permissions = TableData "Purch. Rcpt. Header" = RIMD,
                  TableData "Purch. Rcpt. Line" = RIMD;

    var
        DimMgt: Codeunit DimensionManagement;
        BudgetConfig: Record "Budget Configuration";

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromPurchHeader', '', false, false)]
    local procedure OnAfterCopyGenJnlLineFromPurchHeader(PurchaseHeader: Record "Purchase Header"; VAR GenJournalLine: Record "Gen. Journal Line")
    begin
        GenJournalLine."EasyDoc No." := PurchaseHeader."EasyDoc No.";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Purchase Header", 'OnBeforeOnDelete', '', false, false)]
    local procedure PurchaseHeaderOnBeforeDeleteEvent(var PurchaseHeader: Record "Purchase Header"; var IsHandled: Boolean)
    var
        HideValidationDialog: Boolean;
        Text001: Label 'You are gonna delete the %1 %2.\\Do you want to continue?';
        Text002: Label 'Operation canceled by user.';
    begin
        HideValidationDialog := PurchaseHeader.GetHideValidationDialog();
        IF NOT HideValidationDialog THEN
            IF NOT CONFIRM(Text001, FALSE, PurchaseHeader."Document Type", PurchaseHeader."No.") THEN
                ERROR(Text002);

        PurchaseHeader.ValidateDocuments(PurchaseHeader);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Purch. Rcpt. Header", 'OnAfterValidateDelete', '', false, false)]
    local procedure PurchRcptHeaderOnAfterValidateDelete(PurchRcptHeader: Record "Purch. Rcpt. Header")
    var
        PurchRcptLine: Record "Purch. Rcpt. Line";
    begin
        PurchRcptLine.Reset();
        PurchRcptLine.SetRange("Document No.", PurchRcptHeader."No.");
        PurchRcptLine.DeleteAll(true);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Purchase Header", 'OnAfterInitRecord', '', false, false)]
    local procedure PurchaseHeaderOnAfterInitRecord(var PurchHeader: Record "Purchase Header")
    var
        BudgetPermissions: Record "Budget Permissions";
    begin
        PurchHeader."Created By" := UserId;
        PurchHeader."Entity Type" := PurchHeader."Entity Type"::Normal;
        PurchHeader.ValidateBudgetConf();

        IF PurchHeader."Document Type" = PurchHeader."Document Type"::Quote THEN
            IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN
                PurchHeader.VALIDATE("Employee No.", BudgetPermissions."Employee Number");
    end;

    [EventSubscriber(ObjectType::Table, Database::"Purchase Header", 'OnValidateBuyFromVendorNoBeforeRecreateLines', '', false, false)]
    local procedure PurchaseHeaderOnValidateBuyFromVendorNoBeforeRecreateLines(var PurchaseHeader: Record "Purchase Header"; CallingFieldNo: Integer; var Vendor: Record Vendor)
    begin
        if PurchaseHeader."Document Type" in [PurchaseHeader."Document Type"::Order, PurchaseHeader."Document Type"::Quote] then begin
            PurchaseHeader."PTSS Withholding Payment" := false;
            PurchaseHeader."PTSS Withholding Tax Code 1" := '';
            PurchaseHeader."PTSS Withholding Tax Code 2" := '';
        end;

    end;

    [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterUpdateAmountsDone', '', false, false)]
    local procedure PurchaseLineOnAfterUpdateAmountsDone(var PurchLine: Record "Purchase Line"; var xPurchLine: Record "Purchase Line"; CurrFieldNo: Integer)
    begin
        PurchLine.UpdateCostAmount();
        PurchLine.UpdateWithholdingTaxAmount();
    end;

    [EventSubscriber(ObjectType::Table, Database::"Vendor Ledger Entry", 'OnAfterCopyVendLedgerEntryFromGenJnlLine', '', false, false)]
    local procedure VendLedgEntryOnAfterCopyVendLedgerEntryFromGenJnlLine(var VendorLedgerEntry: Record "Vendor Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        VendorLedgerEntry."No Budget" := GenJournalLine."No Budget";
        VendorLedgerEntry.ClosedByCloseYear := GenJournalLine.ClosedByCloseYear;
        VendorLedgerEntry.YearClosed := GenJournalLine.YearClosed;
        VendorLedgerEntry."Entity Type" := GenJournalLine."Entity Type";
        VendorLedgerEntry."EasyDoc No." := GenJournalLine."EasyDoc No.";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post (Yes/No)", 'OnBeforeSelectPostOrderOption', '', false, false)]
    local procedure PurchPostOnBeforeSelectPostOrderOption(var PurchaseHeader: Record "Purchase Header"; DefaultOption: Integer; var Result: Boolean; var IsHandled: Boolean)
    var
        Text001: Label 'Do you want to receive the %1?';
    begin
        IsHandled := true;
        Result := true;
        IF not Confirm(Text001, false, PurchaseHeader."Document Type") THEN
            Result := false;

        PurchaseHeader.Receive := true;
        PurchaseHeader.Invoice := false;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post (Yes/No)", 'OnBeforeConfirmPost', '', false, false)]
    local procedure PurchPostOnBeforeConfirmPost(var PurchaseHeader: Record "Purchase Header"; var HideDialog: Boolean; var IsHandled: Boolean; var DefaultOption: Integer)
    var
        Text001: Label 'The posting date is different from work date.\\Do you want to continue?';
    begin
        IF PurchaseHeader."Posting Date" <> WorkDate() THEN
            IF NOT CONFIRM(Text001, FALSE) THEN
                IsHandled := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePostPurchaseDoc', '', false, false)]
    local procedure PurchPostOnBeforePostPurchaseDoc(var PurchaseHeader: Record "Purchase Header"; PreviewMode: Boolean)
    begin
        ValidatePurchaseEqualDimensions(PurchaseHeader);
        if PurchaseHeader."Not Budget Document" then
            ValidateNoBudgetInvoice(PurchaseHeader)
        else
            ValidateBudgetDocument(PurchaseHeader);

        Clear(PurchaseHeader.NeedAdjustments);
        if not PreviewMode then
            PurchaseHeader.NeedAdjustments := ValidateNeedAdjustment(PurchaseHeader);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePurchRcptHeaderInsert', '', false, false)]
    local procedure PurchPostOnBeforePurchRcptHeaderInsert(var PurchRcptHeader: Record "Purch. Rcpt. Header"; var PurchaseHeader: Record "Purchase Header"; CommitIsSupressed: Boolean; WarehouseReceiptHeader: Record "Warehouse Receipt Header"; WhseReceive: Boolean; WarehouseShipmentHeader: Record "Warehouse Shipment Header"; WhseShip: Boolean)
    begin
        PurchRcptHeader."Vendor Invoice No." := PurchaseHeader."Vendor Invoice No.";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnAfterPurchInvLineInsert', '', false, false)]
    local procedure PurchPostOnAfterPurchInvLineInsert(var PurchInvLine: Record "Purch. Inv. Line"; PurchInvHeader: Record "Purch. Inv. Header"; PurchLine: Record "Purchase Line"; ItemLedgShptEntryNo: Integer; WhseShip: Boolean; WhseReceive: Boolean; CommitIsSupressed: Boolean; PurchHeader: Record "Purchase Header"; PurchRcptHeader: Record "Purch. Rcpt. Header"; TempWhseRcptHeader: Record "Warehouse Receipt Header")
    var
    begin
        InsertPurchInvoiceLineBudget(PurchInvLine, PurchInvHeader);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnAfterPurchCrMemoLineInsert', '', false, false)]
    local procedure PurchPostOnAfterPurchCrMemoLineInsert(var PurchCrMemoLine: Record "Purch. Cr. Memo Line"; var PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr."; var PurchLine: Record "Purchase Line"; CommitIsSupressed: Boolean; var PurchaseHeader: Record "Purchase Header")
    begin
        InsertPurchCrMemoLineBudget(PurchCrMemoLine, PurchCrMemoHdr);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnAfterProcessPurchLines', '', false, false)]
    local procedure PurchPostOnAfterProcessPurchLines(var PurchHeader: Record "Purchase Header"; var PurchRcptHeader: Record "Purch. Rcpt. Header"; var PurchInvHeader: Record "Purch. Inv. Header"; var PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr."; var ReturnShipmentHeader: Record "Return Shipment Header"; WhseShip: Boolean; WhseReceive: Boolean; var PurchLinesProcessed: Boolean; CommitIsSuppressed: Boolean; EverythingInvoiced: Boolean)
    var
        PurchInvLines: Record "Purch. Inv. Line";
        PurchCrMemoLines: Record "Purch. Cr. Memo Line";
    begin
        If not EverythingInvoiced then begin
            PurchHeader."Vendor Invoice No." := '';
            PurchHeader."Vendor Cr. Memo No." := '';
        end;
        case PurchHeader."Document Type" of
            "Purchase Document Type"::Invoice:
                begin
                    PurchInvLines.Reset();
                    PurchInvLines.SetRange("Document No.", PurchInvHeader."No.");
                    PurchInvLines.SetFilter("Consultation Code", '<>%1', '');
                    IF PurchInvLines.FindFirst() then
                        PurchInvHeader."Consultation Code" := PurchInvLines."Consultation Code";
                end;
            "Purchase Document Type"::"Credit Memo":
                begin
                    PurchCrMemoLines.Reset();
                    PurchCrMemoLines.SetRange("Document No.", PurchCrMemoHdr."No.");
                    PurchCrMemoLines.SetFilter("Consultation Code", '<>%1', '');
                    IF PurchCrMemoLines.FindFirst() then
                        PurchCrMemoHdr."Consultation Code" := PurchCrMemoLines."Consultation Code";
                end;
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnFinalizePostingOnBeforeUpdateAfterPosting', '', false, false)]
    local procedure PurchPostOnFinalizePostingOnBeforeUpdateAfterPosting(var PurchHeader: Record "Purchase Header"; var TempDropShptPostBuffer: Record "Drop Shpt. Post. Buffer" temporary; var EverythingInvoiced: Boolean; var IsHandled: Boolean; var TempPurchLine: Record "Purchase Line" temporary)
    var
        CduAvay: Codeunit AvaylableBudget;
        CduPAQ: Codeunit PAQ;
    begin
        If PurchHeader.NeedAdjustments then begin
            CduPAQ.CreateInvoiceAdjustPAQ(PurchHeader);
            CduAvay.CreateInvoiceAdjustBudget(PurchHeader);
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnPostItemJnlLineOnBeforeItemJnlPostLineRunWithCheck', '', false, false)]
    local procedure PurchPostOnPostItemJnlLineOnBeforeItemJnlPostLineRunWithCheck(var ItemJnlLine: Record "Item Journal Line"; var PurchaseLine: Record "Purchase Line"; DropShipOrder: Boolean; PurchaseHeader: Record "Purchase Header"; WhseReceive: Boolean; QtyToBeReceived: Decimal; QtyToBeReceivedBase: Decimal; QtyToBeInvoiced: Decimal; QtyToBeInvoicedBase: Decimal)
    var
        ItemLedgEntry: Record "Item Ledger Entry";
    begin
        if (PurchaseLine."Receipt No." <> '') and (PurchaseLine."Receipt Line No." <> 0) then begin
            ItemLedgEntry.Reset();
            ItemLedgEntry.SetRange("Document Type", ItemLedgEntry."Document Type"::"Purchase Receipt");
            ItemLedgEntry.SetRange("Document No.", PurchaseLine."Receipt No.");
            ItemLedgEntry.SetRange("Document Line No.", PurchaseLine."Receipt Line No.");
            if ItemLedgEntry.IsEmpty then begin
                ItemJnlLine.Quantity := ItemJnlLine."Invoiced Quantity";
                ItemJnlLine."Quantity (Base)" := ItemJnlLine."Invoiced Qty. (Base)";
            end;
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnAfterPostPurchaseDoc', '', false, false)]
    procedure PurchPostOnAfterPostPurchaseDoc(var PurchaseHeader: Record "Purchase Header"; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line"; PurchRcpHdrNo: Code[20]; RetShptHdrNo: Code[20]; PurchInvHdrNo: Code[20]; PurchCrMemoHdrNo: Code[20]; CommitIsSupressed: Boolean)
    var
        Text001: Label 'A Purchase Receipt was posted with No. %1.';
    begin
        if PurchRcpHdrNo <> '' then
            Message(Text001, PurchRcpHdrNo);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Quote to Order (Yes/No)", 'OnBeforePurchQuoteToOrder', '', false, false)]
    local procedure PurchQuoteOnBeforePurchQuoteToOrder(var PurchaseHeader: Record "Purchase Header"; var IsHandled: Boolean)
    begin
        ValidateQuoteToOrder(PurchaseHeader);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Quote to Order", 'OnCreatePurchHeaderOnAfterInitFromPurchHeader', '', false, false)]
    local procedure PurchQuoteOnCreatePurchHeaderOnAfterInitFromPurchHeader(var PurchOrderHeader: Record "Purchase Header"; PurchHeader: Record "Purchase Header")
    begin
        PurchOrderHeader.Validate("Posting Date", WorkDate());
        PurchOrderHeader.Validate("Order Date", WorkDate());
        PurchOrderHeader.Validate("Document Date", WorkDate());
        PurchOrderHeader."Associated Quote" := PurchHeader."No.";
        PurchOrderHeader."PTSS Withholding Payment" := false;
        PurchOrderHeader."PTSS Withholding Tax Code 1" := '';
        PurchOrderHeader."PTSS Withholding Tax Code 2" := '';
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Quote to Order", 'OnTransferQuoteToOrderLinesOnAfterPurchQuoteLineSetFilters', '', false, false)]
    local procedure PurchQuoteOnTransferQuoteToOrderLinesOnAfterPurchQuoteLineSetFilters(var PurchQuoteLine: Record "Purchase Line"; var PurchQuoteHeader: Record "Purchase Header"; PurchOrderHeader: Record "Purchase Header")
    var
        Consultation: Record Consultation;
    begin
        PurchQuoteLine.SETFILTER("Selection Code", '<>%1', '');
        PurchQuoteLine.SETFILTER("No.", '<>%1', '');
        IF IsConsultationContract(PurchQuoteHeader) THEN
            PurchQuoteLine.SETFILTER("Amount to Order", '>0');
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Quote to Order", 'OnBeforeInsertPurchOrderLine', '', false, false)]
    local procedure PurchQuoteOnBeforeInsertPurchOrderLine(var PurchOrderLine: Record "Purchase Line"; PurchOrderHeader: Record "Purchase Header"; PurchQuoteLine: Record "Purchase Line"; PurchQuoteHeader: Record "Purchase Header")
    begin
        PurchOrderLine."Order Date" := WORKDATE;
        PurchOrderLine."Quote No." := PurchQuoteLine."Document No.";
        PurchOrderLine."Quote Line No." := PurchQuoteLine."Line No.";
        IF IsConsultationContract(PurchQuoteHeader) THEN BEGIN
            PurchOrderLine.VALIDATE(Quantity, 1);
            PurchOrderHeader.UpdateContractAmounts(PurchOrderLine, PurchOrderLine."Amount to Order");
            PurchOrderLine."Amount Adjudicated" := 0;
            PurchOrderLine."Amount to Adjudicate" := 0;
            PurchOrderLine."Amount Avaylabled" := 0;
            PurchOrderLine."Amount to Avay" := 0;
            PurchOrderLine."Amount to Order" := 0;
            PurchOrderLine."Amount Ordered" := 0;
        END;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Quote to Order", 'OnAfterInsertPurchOrderLine', '', false, false)]
    local procedure PurchQuoteOnAfterInsertPurchOrderLine(var PurchaseQuoteLine: Record "Purchase Line"; var PurchaseOrderLine: Record "Purchase Line")
    var
        PurchHeader: Record "Purchase Header";
    begin
        PurchHeader := PurchaseQuoteLine.GetPurchHeader();
        IF IsConsultationContract(PurchHeader) THEN BEGIN
            PurchaseQuoteLine."Amount Ordered" += PurchaseQuoteLine."Amount to Order";
            PurchaseQuoteLine."Amount to Order" := 0;
            PurchaseQuoteLine.MODIFY;
        END;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Quote to Order", 'OnBeforeDeletePurchQuote', '', false, false)]
    local procedure PurchQuoteOnBeforeDeletePurchQuote(var QuotePurchHeader: Record "Purchase Header"; var OrderPurchHeader: Record "Purchase Header"; var IsHandled: Boolean)
    begin
        IsHandled := true;
    end;

    /* Nova Retenção
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Apply", 'OnBeforeRun', '', false, false)]
    local procedure RetentionOnBeforeRun(var GenJnlLine: Record "Gen. Journal Line"; var IsHandled: Boolean)
    begin
        IsHandled := true;
        GenJnlLine.ApplyDocToGenLine();
    end;
    */

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnLookUpAppliesToDocVendOnAfterUpdateDocumentTypeAndAppliesTo', '', false, false)]
    local procedure DimensionsOnLookUpAppliesToDocVendOnAfterUpdateDocumentTypeAndAppliesTo(var GenJournalLine: Record "Gen. Journal Line"; VendorLedgerEntry: Record "Vendor Ledger Entry")
    begin
        GenJournalLine.Validate("Dimension Set ID", VendorLedgerEntry."Dimension Set ID");
        DimMgt.UpdateGenJnlLineDim(GenJournalLine, VendorLedgerEntry."Dimension Set ID");
        GenJournalLine."External Document No." := VendorLedgerEntry."External Document No.";
        CheckRetention(GenJournalLine);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnSetJournalLineFieldsFromApplicationOnAfterFindFirstVendLedgEntryWithAppliesToID', '', false, false)]
    local procedure DimensionsOnSetJournalLineFieldsFromApplicationOnAfterFindFirstVendLedgEntryWithAppliesToID(var GenJournalLine: Record "Gen. Journal Line"; VendLedgEntry: Record "Vendor Ledger Entry");
    begin
        GenJournalLine.Validate("Dimension Set ID", VendLedgEntry."Dimension Set ID");
        DimMgt.UpdateGenJnlLineDim(GenJournalLine, VendLedgEntry."Dimension Set ID");
        GenJournalLine."External Document No." := VendLedgEntry."External Document No.";
    end;

    [EventSubscriber(ObjectType::Page, Page::"Apply Vendor Entries", 'OnSetVendApplIdOnAfterCheckAgainstApplnCurrency', '', false, false)]
    local procedure DimensionsOnSetVendApplIdOnAfterCheckAgainstApplnCurrency(var VendorLedgerEntry: Record "Vendor Ledger Entry"; CalcType: Option Direct,GenJnlLine,PurchHeader; GenJnlLine: Record "Gen. Journal Line"; PurchHeader: Record "Purchase Header"; ApplyingVendLedgEntry: Record "Vendor Ledger Entry")
    var
        VendLedgEntry: Record "Vendor Ledger Entry";
        Text001: Label 'You cant liquidate more than 1 document by payment.';
    begin
        if CalcType <> CalcType::GenJnlLine then
            exit;

        if (GenJnlLine."Document Type" = GenJnlLine."Document Type"::Payment) and (GenJnlLine."Account Type" = GenJnlLine."Account Type"::Vendor) and
            (GenJnlLine."Applies-to ID" <> '') and (GenJnlLine."Account No." <> '') then begin
            VendLedgEntry.Reset();
            VendLedgEntry.SetCurrentKey("Vendor No.", Open, Positive);
            VendLedgEntry.SetRange("Vendor No.", GenJnlLine."Account No.");
            VendLedgEntry.SetRange(Open, true);
            VendLedgEntry.SetRange("Applies-to ID", GenJnlLine."Applies-to ID");
            VendLedgEntry.SetFilter("Entry No.", '<>%1', VendorLedgerEntry."Entry No.");
            if not VendLedgEntry.IsEmpty then
                Error(Text001);
        end;
    end;

    local procedure ValidatePurchaseEqualDimensions(var PurchaseHeader: Record "Purchase Header")
    var
        PurchaseLines: Record "Purchase Line";
        DimSetEntry: Record "Dimension Set Entry";
        Dimension: array[4, 2] of Code[20];
        i: Integer;
        DimSetID: Integer;
        Text001: Label 'The dimensions are not equal in every line.';
    begin
        Clear(i);
        Clear(DimSetID);
        BudgetConfig.Get;
        IF not BudgetConfig."Equal Dimensions By Document" then
            exit;
        if not ((BudgetConfig."Dim Validation 1" <> '') or (BudgetConfig."Dim Validation 2" <> '') or (BudgetConfig."Dim Validation 3" <> '') or (BudgetConfig."Dim Validation 4" <> '')) then
            exit;

        PurchaseLines.Reset;
        PurchaseLines.SetRange("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SetRange("Document No.", PurchaseHeader."No.");
        PurchaseLines.SetFilter(Type, '<>%1', PurchaseLines.Type::" ");
        if PurchaseLines.FindFirst then begin
            DimSetID := PurchaseLines."Dimension Set ID";
            Clear(DimSetEntry);
            i := 1;
            DimSetEntry.SetRange("Dimension Set ID", PurchaseLines."Dimension Set ID");
            if DimSetEntry.FindSet then
                repeat

                    if DimSetEntry."Dimension Code" in [BudgetConfig."Dim Validation 1", BudgetConfig."Dim Validation 2", BudgetConfig."Dim Validation 3", BudgetConfig."Dim Validation 4"] then begin
                        Dimension[i, 1] := DimSetEntry."Dimension Code";
                        Dimension[i, 2] := DimSetEntry."Dimension Value Code";
                        i += 1;
                    end;
                until DimSetEntry.Next = 0;
        end;

        PurchaseLines.Reset;
        PurchaseLines.SetRange("Document Type", PurchaseLines."Document Type"::Quote);
        PurchaseLines.SetRange("Document No.", PurchaseHeader."No.");
        PurchaseLines.SetFilter(Type, '<>%1', PurchaseLines.Type::" ");
        if PurchaseLines.FindSet then
            repeat
                for i := 1 to ArrayLen(Dimension, 1) do begin
                    if Dimension[i, 1] <> '' then begin
                        Clear(DimSetEntry);
                        DimSetEntry.SetRange("Dimension Set ID", PurchaseLines."Dimension Set ID");
                        DimSetEntry.SetRange("Dimension Code", Dimension[i, 1]);
                        if DimSetEntry.Findfirst then begin
                            if Dimension[i, 2] <> DimSetEntry."Dimension Value Code" then
                                Error(Text001);
                        end else
                            Error(Text001);
                    end;
                end;
            until PurchaseLines.Next = 0;

        PurchaseHeader."Dimension Set ID" := DimSetID;
        DimMgt.UpdateGlobalDimFromDimSetID(PurchaseHeader."Dimension Set ID", PurchaseHeader."Shortcut Dimension 1 Code", PurchaseHeader."Shortcut Dimension 2 Code");
    end;

    local procedure ValidateNoBudgetInvoice(PurchaseHeader: Record "Purchase Header")
    var
        PurchaseLines: Record "Purchase Line";
        GLAccount: Record "G/L Account";
        CduBudget: Codeunit Budget;
        Text001: Label 'This invoice dont have consultation associated. There can be no lines with requisition code.';
        Text002: Label 'There is no avaylable dotation on %1 %2 line %3.';
    begin
        If (PurchaseHeader."Document Type" <> "Purchase Document Type"::Invoice) or
                PurchaseHeader."No Budget" or not PurchaseHeader."Not Budget Document" then
            exit;

        PurchaseLines.Reset();
        PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
        PurchaseLines.SETFILTER("Requisition Code", '<>%1', '');
        IF NOT PurchaseLines.ISEMPTY THEN
            ERROR(Text001);

        CduBudget.CalcDocumentsDotation("Budget Dotation Document Type"::Invoice, PurchaseHeader."No.");

        PurchaseLines.Reset();
        PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
        PurchaseLines.SETFILTER(Type, '<>%1', PurchaseLines.Type::" ");
        IF PurchaseLines.FINDSET THEN
            REPEAT
                If PurchaseLines."End Avaylable Dotation" < 0 then
                    Error(Text002, PurchaseLines."Document Type", PurchaseLines."Document No.", PurchaseLines."Line No.");
            UNTIL PurchaseLines.NEXT = 0;

        PurchaseLines.Reset();
        PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
        PurchaseLines.SetRange(Type, PurchaseLines.Type::"G/L Account");
        IF PurchaseLines.FINDSET THEN
            REPEAT
                GLAccount.Get(PurchaseLines."No.");
                If GLAccount."Need Budget" then
                    PurchaseHeader.TestField(ConfClass0);
            UNTIL PurchaseLines.NEXT = 0;
    end;

    local procedure ValidateBudgetDocument(PurchaseHeader: Record "Purchase Header")
    var
        PurchaseLines: Record "Purchase Line";
        PurchaseLines2: Record "Purchase Line";
        Consultation: Record Consultation;
        PurchRcptHeader: Record "Purch. Rcpt. Header";
        CduBudget: Codeunit Budget;
        PurchAmount: Decimal;
        PAQAmount: Decimal;
        OrderAmount: Decimal;
        InvoicedAmount: Decimal;
        CreditedAmount: Decimal;
        LastPAQDate: Date;
        YearConsultation: Integer;
        YearInvoice: Integer;
        Text001: Label 'The total order amount (%1) is greater than the difference between adjudicated amount (%2) and the already ordered amount (%3).';
        Text002: Label 'You cant post the order with a date less than the last posted adjudication date.';
        Text003: Label 'You cant post the invoice with diferent years from the consultation.';
        Text004: Label 'You cant post the invoice with diferent years from posting date';
        Text005: Label 'You cant post the invoice with diferent consultations.';
        Text006: Label 'The total invoice amount (%1) is greater than the ordered amount (%2).';
        Text007: Label 'You cant post the invoice with a date less than the receipt (%1) on line %2.';
        Text008: Label 'All lines of the invoice must have a consultation code.';
    begin
        If (PurchaseHeader."Document Type" <> "Purchase Document Type"::Invoice) or
                PurchaseHeader."Not Budget Document" then
            exit;

        PurchaseHeader.TESTFIELD("Posting Date");
        BudgetConfig.Get();

        Clear(PurchAmount);
        Clear(PAQAmount);
        Clear(OrderAmount);

        CASE PurchaseHeader."Document Type" OF
            PurchaseHeader."Document Type"::Order:
                BEGIN
                    Consultation.GET(PurchaseHeader."Consultation Code");
                    PurchAmount := PurchaseHeader.GetPurchHeaderAmount();
                    PAQAmount := Consultation.GetPostedPAQAmount();
                    OrderAmount := Consultation.GetOrderedAmount();
                    IF PurchAmount > (PAQAmount - OrderAmount) THEN
                        ERROR(Text001, PurchAmount, PAQAmount, OrderAmount);

                    LastPAQDate := Consultation.GetPostedPAQLastDate();
                    IF (LastPAQDate <> 0D) AND (PurchaseHeader."Posting Date" < LastPAQDate) THEN
                        ERROR(Text002);
                END;
            PurchaseHeader."Document Type"::Invoice:
                BEGIN
                    BudgetConfig.TESTFIELD("Invoice with Process");
                    PurchaseHeader.TESTFIELD(ConfClass0, BudgetConfig."Invoice with Process");
                    PurchaseLines.RESET;
                    PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
                    PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
                    PurchaseLines.SETFILTER(Type, '<>%1', PurchaseLines.Type::" ");
                    PurchaseLines.SetRange("Consultation Code", '');
                    If not PurchaseLines.IsEmpty then
                        Error(Text008);

                    PurchaseLines.RESET;
                    PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
                    PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
                    PurchaseLines.SETFILTER(Type, '<>%1', PurchaseLines.Type::" ");
                    IF PurchaseLines.FINDFIRST THEN BEGIN
                        Consultation.GET(PurchaseLines."Consultation Code");
                        IF Consultation.IsContract THEN BEGIN
                            CLEAR(YearConsultation);
                            CLEAR(YearInvoice);
                            Consultation.TESTFIELD("Consultation Status", Consultation."Consultation Status"::Open);
                            YearConsultation := DATE2DMY(Consultation."Start Date", 3);
                            YearInvoice := DATE2DMY(PurchaseHeader."Posting Date", 3);

                            IF YearConsultation <> YearInvoice THEN
                                ERROR(Text003);

                            PurchaseLines2.RESET;
                            PurchaseLines2.SETRANGE("Document Type", PurchaseLines."Document Type");
                            PurchaseLines2.SETRANGE("Document No.", PurchaseLines."Document No.");
                            PurchaseLines2.SetRange("Consultation Code", PurchaseLines."Consultation Code");
                            PurchaseLines2.SETFILTER(Type, '<>%1', PurchaseLines.Type::" ");
                            PurchaseLines2.SETFILTER("Contract Year", '<>%1', YearInvoice);
                            IF not PurchaseLines2.IsEmpty THEN
                                ERROR(Text004);
                        END;

                        OrderAmount := Consultation.GetOrderedAmount();
                        InvoicedAmount := Consultation.GetInvoicedAmount;
                        CreditedAmount := Consultation.GetCreditedAmount;
                        PurchAmount := PurchaseHeader.GetPurchHeaderAmount();

                        PurchaseLines2.RESET;
                        PurchaseLines2.SETRANGE("Document Type", PurchaseLines."Document Type");
                        PurchaseLines2.SETRANGE("Document No.", PurchaseLines."Document No.");
                        PurchaseLines2.SETFILTER(Type, '<>%1', PurchaseLines.Type::" ");
                        PurchaseLines2.SETFILTER("Consultation Code", '<>%1', PurchaseLines."Consultation Code");
                        IF not PurchaseLines2.IsEmpty THEN
                            ERROR(Text005);

                        IF PurchAmount > (OrderAmount) THEN
                            ERROR(Text006, PurchaseHeader."Amount Including VAT", OrderAmount);

                        PurchaseLines2.RESET;
                        PurchaseLines2.SETRANGE("Document Type", PurchaseLines."Document Type");
                        PurchaseLines2.SETRANGE("Document No.", PurchaseLines."Document No.");
                        PurchaseLines2.SETFILTER(Type, '<>%1', PurchaseLines.Type::" ");
                        PurchaseLines2.SETRANGE("Consultation Code", PurchaseLines."Consultation Code");
                        IF PurchaseLines2.FINDSET THEN
                            REPEAT
                                PurchRcptHeader.GET(PurchaseLines2."Receipt No.");
                                IF PurchaseHeader."Posting Date" < PurchRcptHeader."Posting Date" THEN
                                    ERROR(Text007, PurchRcptHeader."Posting Date", PurchaseLines2."Line No.");
                            UNTIL PurchaseLines2.NEXT = 0;
                    END;
                END;
        End;

    end;

    local procedure ValidateNeedAdjustment(PurchaseHeader: Record "Purchase Header"): Boolean
    var
        PurchaseLines: Record "Purchase Line";
        Consultation: Record Consultation;
        PurchAmount: Decimal;
        PostedPAQAmount: Decimal;
        Text001: Label 'The invoice amount is less than the adjudication.\\Do you want to adjust the adjudications/avaylables amounts?';
        Text002: Label 'The invoice amount is greater that the adjudication amount.';
        Text003: Label 'Operation canceled by user.';
    begin
        If (PurchaseHeader."Document Type" <> PurchaseHeader."Document Type"::Invoice) or PurchaseHeader."Not Budget Document" then
            exit(false);

        Clear(PurchAmount);
        Clear(PostedPAQAmount);

        PurchaseLines.RESET;
        PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
        PurchaseLines.SETFILTER(Type, '<>%1', PurchaseLines.Type::" ");
        IF PurchaseLines.FINDFIRST THEN BEGIN
            Consultation.GET(PurchaseLines."Consultation Code");
            IF Consultation.IsContract THEN
                EXIT(false);

            CLEAR(PurchAmount);
            CLEAR(PostedPAQAmount);
            PurchaseLines.RESET;
            PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
            PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
            PurchaseLines.SETFILTER(Type, '<>%1', PurchaseLines.Type::" ");
            IF PurchaseLines.FINDSET THEN
                REPEAT
                    PurchAmount += PurchaseLines.GetPurchLineAmount();
                UNTIL PurchaseLines.NEXT = 0;

            PostedPAQAmount := Consultation.GetPostedPAQAmount();
            IF PurchAmount > PostedPAQAmount THEN
                ERROR(Text002);
            IF PurchAmount < PostedPAQAmount THEN BEGIN
                IF NOT CONFIRM(Text001) THEN
                    ERROR(Text003)
                ELSE
                    EXIT(TRUE);
            END;
        END;

        EXIT(FALSE);
    end;

    local procedure InsertPurchInvoiceLineBudget(PurchInvLine: Record "Purch. Inv. Line"; PurchInvHeader: Record "Purch. Inv. Header")
    var
        ConfClass0: Record "Class 0 Setup";
        GenJnlLine: Record "Gen. Journal Line";
        SourceCodeSetup: Record "Source Code Setup";
        LineNo: Integer;
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
    begin
        If PurchInvHeader."No Budget" then
            exit;

        BudgetConfig.Get();
        GenJnlLine.Reset();
        GenJnlLine.SetRange("Journal Template Name", BudgetConfig."General Costs Diary");
        GenJnlLine.SetRange("Journal Batch Name", BudgetConfig."General Costs Batch");
        If GenJnlLine.FindLast() then
            LineNo := GenJnlLine."Line No." + 10000
        else
            LineNo := 10000;

        If (PurchInvHeader.ConfClass0 <> '') and (PurchInvLine.Type <> PurchInvLine.Type::" ") and
            (PurchInvLine.Amount <> 0) then begin
            SourceCodeSetup.Get();
            ConfClass0.RESET;
            ConfClass0.SETRANGE("Regist type", PurchInvHeader.ConfClass0);
            IF ConfClass0.FindSet() THEN
                repeat
                    Clear(GenJnlLine);
                    GenJnlLine.Init();
                    GenJnlLine.VALIDATE("Journal Template Name", BudgetConfig."General Costs Diary");
                    GenJnlLine.VALIDATE("Journal Batch Name", BudgetConfig."General Costs Batch");
                    GenJnlLine.VALIDATE("Posting Date", PurchInvHeader."Posting Date");
                    GenJnlLine.VALIDATE("Document Date", PurchInvHeader."Document Date");
                    GenJnlLine.VALIDATE("Line No.", LineNo);
                    GenJnlLine."Document Type" := GenJnlLine."Document Type"::Invoice;
                    GenJnlLine.VALIDATE("Document No.", PurchInvHeader."No.");
                    GenJnlLine.Validate("External Document No.", PurchInvHeader."Vendor Invoice No.");
                    GenJnlLine.VALIDATE("Account Type", GenJnlLine."Account Type"::"G/L Account");
                    GenJnlLine.VALIDATE("Account No.", ConfClass0."Debt count");
                    GenJnlLine.VALIDATE("Bal. Account Type", GenJnlLine."Bal. Account Type"::"G/L Account");
                    GenJnlLine.VALIDATE("Bal. Account No.", ConfClass0."Credit count");
                    GenJnlLine.VALIDATE("System-Created Entry", TRUE);
                    GenJnlLine.VALIDATE(Amount, PurchInvLine.GetPurchInvLineAmount());
                    GenJnlLine.Validate("Source Code", SourceCodeSetup.Sales);
                    GenJnlLine.Validate("Dimension Set ID", PurchInvLine."Dimension Set ID");
                    DimMgt.UpdateGlobalDimFromDimSetID(GenJnlLine."Dimension Set ID", GenJnlLine."Shortcut Dimension 1 Code", GenJnlLine."Shortcut Dimension 2 Code");
                    GenJnlLine.Insert(true);
                    GenJnlPostLine.RunWithCheck(GenJnlLine);
                    GenJnlLine.Delete();
                    LineNo += 10000;
                until ConfClass0.Next() = 0;
        end;
    end;

    local procedure InsertPurchCrMemoLineBudget(var PurchCrMemoLine: Record "Purch. Cr. Memo Line"; PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.")
    var
        ConfClass0: Record "Class 0 Setup";
        GenJnlLine: Record "Gen. Journal Line";
        SourceCodeSetup: Record "Source Code Setup";
        LineNo: Integer;
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
    begin
        If PurchCrMemoHeader."No Budget" then
            exit;

        BudgetConfig.Get();
        GenJnlLine.Reset();
        GenJnlLine.SetRange("Journal Template Name", BudgetConfig."General Incomes Diary");
        GenJnlLine.SetRange("Journal Batch Name", BudgetConfig."General Incomes Batch");
        If GenJnlLine.FindLast() then
            LineNo := GenJnlLine."Line No." + 10000
        else
            LineNo := 10000;
        If (PurchCrMemoHeader.ConfClass0 <> '') and (PurchCrMemoLine.Type <> PurchCrMemoLine.Type::" ") and
            (PurchCrMemoLine.Amount <> 0) then begin
            SourceCodeSetup.Get();
            ConfClass0.RESET;
            ConfClass0.SETRANGE("Regist type", PurchCrMemoHeader.ConfClass0);
            IF ConfClass0.FindSet() THEN
                repeat
                    Clear(GenJnlLine);
                    GenJnlLine.Init();
                    GenJnlLine.VALIDATE("Journal Template Name", BudgetConfig."General Incomes Diary");
                    GenJnlLine.VALIDATE("Journal Batch Name", BudgetConfig."General Incomes Batch");
                    GenJnlLine.VALIDATE("Posting Date", PurchCrMemoHeader."Posting Date");
                    GenJnlLine.VALIDATE("Document Date", PurchCrMemoHeader."Document Date");
                    GenJnlLine.VALIDATE("Line No.", LineNo);
                    GenJnlLine."Document Type" := GenJnlLine."Document Type"::Invoice;
                    GenJnlLine.VALIDATE("Document No.", PurchCrMemoHeader."No.");
                    GenJnlLine.Validate("External Document No.", PurchCrMemoHeader."Vendor Cr. Memo No.");
                    GenJnlLine.VALIDATE("Account Type", GenJnlLine."Account Type"::"G/L Account");
                    GenJnlLine.VALIDATE("Account No.", ConfClass0."Debt count");
                    GenJnlLine.VALIDATE("Bal. Account Type", GenJnlLine."Bal. Account Type"::"G/L Account");
                    GenJnlLine.VALIDATE("Bal. Account No.", ConfClass0."Credit count");
                    GenJnlLine.VALIDATE("System-Created Entry", TRUE);
                    GenJnlLine.VALIDATE(Amount, PurchCrMemoLine.GetPurchCrMemoLineAmount());
                    GenJnlLine.Validate("Source Code", SourceCodeSetup.Sales);
                    GenJnlLine.Validate("Dimension Set ID", PurchCrMemoLine."Dimension Set ID");
                    DimMgt.UpdateGlobalDimFromDimSetID(GenJnlLine."Dimension Set ID", GenJnlLine."Shortcut Dimension 1 Code", GenJnlLine."Shortcut Dimension 2 Code");
                    GenJnlLine.Insert(true);
                    GenJnlPostLine.RunWithCheck(GenJnlLine);
                    GenJnlLine.Delete();
                    LineNo += 10000;
                until ConfClass0.Next() = 0;
        end;
    end;

    local procedure ValidateQuoteToOrder(var PurchaseHeader: Record "Purchase Header")
    var
        Consultation: Record Consultation;
        PurchaseLines: Record "Purchase Line";
        PurchaseLines2: Record "Purchase Line";
        PostedPAQLines: Record "Posted PAQ Lines";
        CduConsultation: Codeunit Consultation;
        PAQValue: Decimal;
        OrderValue: Decimal;
        AmountInvoiced: Decimal;
        AmountCredited: Decimal;
        AmountAvaylabled: Decimal;
        AmountAdjudicated: Decimal;
        Quantity: Decimal;
        DifferenceAmount: Decimal;
        Text001: Label 'There are already %1 orders for this quote.\\Do you want to continue?';
        Text002: Label 'Operation canceled by user.';
        Text003: Label 'There is nothing to order.';
        Text004: Label 'You cant order for contract years different from %1.';
        Text005: Label 'There are no approved adjudications for line %1 of quote %2.';
        Text006: Label 'There is a difference (%1) between the avaylable amount and the amount needed to the document %2 %3 line %4.';
        Text007: Label 'There is a difference (%1) between the adjudicated amount and the amount needed to the document %2 %3 line %4.';
        Text008: Label 'There are already %1 orders for this quote.';
    begin
        Consultation.GET(PurchaseHeader."Consultation Code");

        PurchaseHeader.TESTFIELD("Consultation Code");
        PurchaseHeader.CALCFIELDS("Associated Orders");
        IF PurchaseHeader."Associated Orders" >= 1 THEN
            If Consultation.IsContract then begin
                IF NOT CONFIRM(Text001, FALSE, PurchaseHeader."Associated Orders") THEN
                    ERROR(Text002);
            end else
                Error(Text008);

        PurchaseLines.Reset;
        PurchaseLines.SetRange("Document No.", PurchaseHeader."No.");
        PurchaseLines.SetRange("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SetRange("Consultation Code", PurchaseHeader."Consultation Code");
        PurchaseLines.SetFilter("Selection Code", '<>%1', '');
        PurchaseLines.SetFilter(Type, '<>%1', PurchaseLines.Type::" ");
        If Consultation.IsContract then
            PurchaseLines.SETFILTER("Amount to Order", '>0');
        if PurchaseLines.IsEmpty then
            Error(Text003);

        If Consultation.IsContract then begin
            PurchaseLines.RESET;
            PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
            PurchaseLines.SETRANGE("Document No.", PurchaseHeader."No.");
            PurchaseLines.SETFILTER("Selection Code", '<>%1', '');
            PurchaseLines.SETFILTER("Amount to Order", '>0');
            PurchaseLines.SETFILTER("Contract Year", '<>%1', DATE2DMY(WORKDATE, 3));
            IF not PurchaseLines.IsEmpty THEN
                ERROR(Text004, DATE2DMY(WORKDATE, 3));

            PurchaseLines.RESET;
            PurchaseLines.SETRANGE("Document Type", PurchaseLines."Document Type"::Quote);
            PurchaseLines.SETRANGE("Consultation Code", Consultation."Consultation code");
            PurchaseLines.SETFILTER("Selection Code", '<>%1', '');
            PurchaseLines.SETFILTER(Type, '<>%1', PurchaseLines.Type::" ");
            PurchaseLines.SETFILTER("Amount to Order", '>0');
            IF PurchaseLines.FINDSET THEN
                REPEAT
                    CLEAR(PAQValue);
                    CLEAR(OrderValue);
                    PurchaseLines2.RESET;
                    PurchaseLines2.SetRange("Document Type", PurchaseLines2."Document Type"::Order);
                    PurchaseLines2.SETRANGE("Consultation Code", Consultation."Consultation code");
                    PurchaseLines2.SETRANGE("Quote No.", PurchaseLines."Document No.");
                    PurchaseLines2.SETRANGE("Quote Line No.", PurchaseLines."Line No.");
                    IF PurchaseLines2.FINDSET THEN
                        REPEAT
                            OrderValue += PurchaseLines2.GetPurchLineAmount();
                        UNTIL PurchaseLines2.NEXT = 0;

                    OrderValue += PurchaseLines."Amount to Order";

                    PostedPAQLines.RESET;
                    PostedPAQLines.SETRANGE("Consultation Code", Consultation."Consultation code");
                    PostedPAQLines.SETRANGE("Quote No.", PurchaseLines."Document No.");
                    PostedPAQLines.SETRANGE("Quote Line No.", PurchaseLines."Line No.");
                    PostedPAQLines.SETRANGE(Status, PostedPAQLines.Status::Released);
                    IF PostedPAQLines.FINDSET THEN
                        REPEAT
                            PAQValue += PostedPAQLines.GetPAQLineAmount();
                        UNTIL PostedPAQLines.NEXT = 0;
                    IF OrderValue > PAQValue THEN
                        ERROR(Text005, PurchaseLines."Line No.", PurchaseLines."Document No.");
                UNTIL PurchaseLines.NEXT = 0;
        end else begin
            PurchaseLines.Reset();
            PurchaseLines.SetRange("Document No.", PurchaseHeader."No.");
            PurchaseLines.SETRANGE("Document Type", PurchaseHeader."Document Type");
            IF PurchaseHeader."Document Type" = PurchaseHeader."Document Type"::Quote THEN
                PurchaseLines.SETFILTER("Selection Code", '<>%1', '');
            PurchaseLines.SETFILTER("No.", '<>%1', '');
            IF PurchaseLines.FindSet() THEN
                repeat
                    CduConsultation.GetPurchaseLineAmounts(PurchaseLines, AmountInvoiced, AmountCredited, AmountAvaylabled, AmountAdjudicated, Quantity);
                    Clear(DifferenceAmount);
                    DifferenceAmount := PurchaseLines.GetPurchLineAmount() - AmountInvoiced - AmountCredited - AmountAvaylabled;
                    If DifferenceAmount <> 0 then begin
                        Error(Text006, DifferenceAmount, PurchaseLines."Document Type", PurchaseLines."Document No.", PurchaseLines."Line No.");
                    end;

                    Clear(DifferenceAmount);
                    DifferenceAmount := PurchaseLines.GetPurchLineAmount() - AmountInvoiced - AmountCredited - AmountAdjudicated;
                    If DifferenceAmount <> 0 then begin
                        Error(Text007, DifferenceAmount, PurchaseLines."Document Type", PurchaseLines."Document No.", PurchaseLines."Line No.");
                    end;
                until PurchaseLines.Next() = 0;
        end;
    end;

    local procedure IsConsultationContract(PurchHeader: Record "Purchase Header"): Boolean
    var
        Consultation: Record Consultation;
    begin
        Consultation.Get(PurchHeader."Consultation Code");
        exit(Consultation.IsContract);
    end;

    local procedure CheckRetention(var GenJnlLine: Record "Gen. Journal Line")
    var
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalTemplate: Record "Gen. Journal Template";
        GenJournalBatch: Record "Gen. Journal Batch";
        VendorLedgEntry: Record "Vendor Ledger Entry";
        PTSSWithHoldingCode: Record "PTSS Withholding Tax Codes";
        PTSSWithHoldLedger: Record "PTSS With. Tax Ledger Entry";
        LineNo: Integer;
    begin
        if GenJnlLine."Applies-to Doc. No." = '' then
            exit;

        LineNo := GenJnlLine."Line No." + 1;
        VendorLedgEntry.Reset();
        VendorLedgEntry.SetRange("Document No.", GenJnlLine."Applies-to Doc. No.");
        VendorLedgEntry.SetFilter("PTSS Withholding Rem. Amt.", '<>0');
        if VendorLedgEntry.FindFirst() then begin
            PTSSWithHoldingCode.Get(VendorLedgEntry."PTSS Withholding Tax Code");
            PTSSWithHoldingCode.TestField("G/L Account");
            PTSSWithHoldLedger.Reset();
            PTSSWithHoldLedger.SetRange("Document No.", VendorLedgEntry."Document No.");
            PTSSWithHoldLedger.SetRange("Document Type", VendorLedgEntry."Document Type");
            if PTSSWithHoldLedger.FindSet() then
                repeat
                    GenJournalLine.Reset();
                    GenJournalLine.SetRange("Journal Template Name", GenJnlLine."Journal Template Name");
                    GenJournalLine.SetRange("Journal Batch Name", GenJnlLine."Journal Batch Name");
                    GenJournalLine.SetRange("PTSS Withholding Line", true);
                    GenJournalLine.SetRange("PTSS Orig. With. Jnl. Line No.", GenJnlLine."Line No.");
                    if not GenJournalLine.FindFirst() then begin
                        GenJournalTemplate.Get(GenJnlLine."Journal Template Name");
                        GenJournalBatch.Get(GenJnlLine."Journal Template Name", GenJnlLine."Journal Batch Name");
                        Clear(GenJournalLine);
                        GenJournalLine.Init();
                        GenJournalLine."Journal Template Name" := GenJnlLine."Journal Template Name";
                        GenJournalLine."Journal Batch Name" := GenJnlLine."Journal Batch Name";
                        GenJournalLine."Line No." := LineNo;
                        GenJournalLine.Validate("Posting Date", GenJnlLine."Posting Date");
                        GenJournalLine.Validate("Document Type", GenJnlLine."Document Type");
                        GenJournalLine.Validate("Document No.", GenJnlLine."Document No.");
                        GenJournalLine.Validate("Account Type", GenJnlLine."Account Type");
                        GenJournalLine.Validate("Account No.", GenJnlLine."Account No.");
                        GenJournalLine.Validate("Bal. Account Type", GenJnlLine."Account Type"::"G/L Account");
                        GenJournalLine.Validate("Bal. Account No.", PTSSWithHoldingCode."G/L Account");
                        GenJournalLine.Validate("PTSS Withholding Line", true);
                        GenJournalLine.Validate("PTSS Withholding Line Doc No.", VendorLedgEntry."Document No.");
                        GenJournalLine.Validate("PTSS Orig. With. Jnl. Line No.", GenJnlLine."Line No.");
                        GenJournalLine.Validate("PTSS Withholding Tax Code", PTSSWithHoldingCode.Code);
                        GenJournalLine.Validate(Amount, PTSSWithHoldLedger."Withholding Remaining AmtLCY 1");
                        GenJournalLine.Validate("Source Code", GenJournalTemplate."Source Code");
                        GenJournalLine.Validate("Reason Code", GenJournalBatch."Reason Code");
                        GenJournalLine.Validate("Posting No. Series", GenJournalBatch."Posting No. Series");
                        GenJournalLine.Validate("External Document No.", VendorLedgEntry."External Document No.");
                        GenJournalLine.Validate("Applies-to Doc. Type", VendorLedgEntry."Document Type");
                        GenJournalLine.Validate("Applies-to Doc. No.", VendorLedgEntry."Document No.");
                        GenJournalLine."Dimension Set ID" := VendorLedgEntry."Dimension Set ID";
                        DimMgt.UpdateGlobalDimFromDimSetID(GenJournalLine."Dimension Set ID", GenJournalLine."Shortcut Dimension 1 Code", GenJournalLine."Shortcut Dimension 2 Code");
                        GenJournalLine.Insert(true);
                        GenJnlLine.Validate("Amount (LCY)", (GenJnlLine."Amount (LCY)" - PTSSWithHoldLedger."Withholding Remaining AmtLCY 1"));
                        LineNo += 1;
                    end;
                until PTSSWithHoldLedger.Next() = 0;
        end;
    end;
}