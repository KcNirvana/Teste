Codeunit 57014 "Sales Events"
{
    var
        DimMgt: Codeunit DimensionManagement;
        BudgetConfig: Record "Budget Configuration";


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', false, false)]
    local procedure SalesPostOnBeforePostSalesDoc(var SalesHeader: Record "Sales Header"; CommitIsSuppressed: Boolean; PreviewMode: Boolean; var HideProgressWindow: Boolean; var IsHandled: Boolean)
    begin
        ValidateConfClass(SalesHeader);
        ValidateSalesEqualDimensions(SalesHeader);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforeSalesInvHeaderInsert', '', false, false)]
    local procedure SalesPostOnBeforeSalesInvHeaderInsert(var SalesInvHeader: Record "Sales Invoice Header"; var SalesHeader: Record "Sales Header"; CommitIsSuppressed: Boolean; var IsHandled: Boolean; WhseShip: Boolean; WhseShptHeader: Record "Warehouse Shipment Header"; InvtPickPutaway: Boolean)
    var
        PaymentTerms: Record "Payment Terms";
    begin
        If PaymentTerms.Get(SalesHeader."Payment Terms Code") then
            SalesInvHeader."Receipt Invoice" := FORMAT(PaymentTerms."Due Date Calculation") = '0D';
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterSalesInvLineInsert', '', false, false)]
    local procedure SalesPostOnAfterSalesInvLineInsert(var SalesInvLine: Record "Sales Invoice Line"; SalesInvHeader: Record "Sales Invoice Header"; SalesLine: Record "Sales Line"; ItemLedgShptEntryNo: Integer; WhseShip: Boolean; WhseReceive: Boolean; CommitIsSuppressed: Boolean; var SalesHeader: Record "Sales Header"; var TempItemChargeAssgntSales: Record "Item Charge Assignment (Sales)" temporary; var TempWhseShptHeader: Record "Warehouse Shipment Header" temporary; var TempWhseRcptHeader: Record "Warehouse Receipt Header" temporary; PreviewMode: Boolean)
    var
    begin
        InsertSalesInvoiceLineBudget(SalesInvLine, SalesInvHeader);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterSalesCrMemoLineInsert', '', false, false)]
    local procedure SalesPostOnAfterSalesCrMemoLineInsert(var SalesCrMemoLine: Record "Sales Cr.Memo Line"; SalesCrMemoHeader: Record "Sales Cr.Memo Header"; var SalesHeader: Record "Sales Header"; SalesLine: Record "Sales Line"; var TempItemChargeAssgntSales: Record "Item Charge Assignment (Sales)" temporary; CommitIsSuppressed: Boolean; WhseShip: Boolean; WhseReceive: Boolean; var TempWhseShptHeader: Record "Warehouse Shipment Header" temporary; var TempWhseRcptHeader: Record "Warehouse Receipt Header" temporary)
    var
    begin
        InsertSalesCrMemoLineBudget(SalesCrMemoLine, SalesCrMemoHeader);
    end;

    [EventSubscriber(ObjectType::Table, database::"Sales Header", 'OnAfterInitRecord', '', false, false)]
    local procedure SalesHeaderOnAfterInitRecord(var SalesHeader: Record "Sales Header")
    var
        BudgetPermissions: Record "Budget Permissions";
    begin
        SalesHeader.ValidateBudgetConf();
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnLookUpAppliesToDocCustOnAfterUpdateDocumentTypeAndAppliesTo', '', false, false)]
    local procedure DimensionsOnLookUpAppliesToDocCustOnAfterUpdateDocumentTypeAndAppliesTo(var GenJournalLine: Record "Gen. Journal Line"; CustLedgerEntry: Record "Cust. Ledger Entry")
    begin
        GenJournalLine.Validate("Dimension Set ID", CustLedgerEntry."Dimension Set ID");
        DimMgt.UpdateGenJnlLineDim(GenJournalLine, CustLedgerEntry."Dimension Set ID");
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnSetJournalLineFieldsFromApplicationOnAfterFindFirstCustLedgEntryWithAppliesToID', '', false, false)]
    local procedure DimensionsOnSetJournalLineFieldsFromApplicationOnAfterFindFirstCustLedgEntryWithAppliesToID(var GenJournalLine: Record "Gen. Journal Line"; CustLedgEntry: Record "Cust. Ledger Entry");
    begin
        GenJournalLine.Validate("Dimension Set ID", CustLedgEntry."Dimension Set ID");
        DimMgt.UpdateGenJnlLineDim(GenJournalLine, CustLedgEntry."Dimension Set ID");
    end;

    [EventSubscriber(ObjectType::Page, Page::"Apply Customer Entries", 'OnSetCustApplIdAfterCheckAgainstApplnCurrency', '', false, false)]
    local procedure DimensionsOnSetCustApplIdAfterCheckAgainstApplnCurrency(var CustLedgerEntry: Record "Cust. Ledger Entry"; CalcType: Option; var GenJnlLine: Record "Gen. Journal Line"; SalesHeader: Record "Sales Header"; ServHeader: Record "Service Header"; ApplyingCustLedgEntry: Record "Cust. Ledger Entry")
    var
        CustLedgEntry: Record "Cust. Ledger Entry";
        Text001: Label 'You cant liquidate more than 1 document by payment.';
    begin
        if CalcType <> 1 then
            exit;

        if (GenJnlLine."Document Type" = GenJnlLine."Document Type"::Payment) and (GenJnlLine."Account Type" = GenJnlLine."Account Type"::Customer) and
            (GenJnlLine."Applies-to ID" <> '') and (GenJnlLine."Account No." <> '') then begin
            CustLedgEntry.Reset();
            CustLedgEntry.SetCurrentKey("Customer No.", Open, Positive);
            CustLedgEntry.SetRange("Customer No.", GenJnlLine."Account No.");
            CustLedgEntry.SetRange(Open, true);
            CustLedgEntry.SetRange("Applies-to ID", GenJnlLine."Applies-to ID");
            CustLedgEntry.SetFilter("Entry No.", '<>%1', CustLedgerEntry."Entry No.");
            if not CustLedgEntry.IsEmpty then
                Error(Text001);
        end;
    end;

    local procedure ValidateSalesEqualDimensions(var SalesHeader: Record "Sales Header")
    var
        SalesLines: Record "Sales Line";
        DimSetEntry: Record "Dimension Set Entry";
        Dimension: array[4, 2] of Code[20];
        i: Integer;
        TempDimSetEntry: Record "Dimension Set Entry" temporary;
        DimensionsEqualErr: Label 'The dimensions are not equal in every line.';
    begin
        Clear(i);
        BudgetConfig.Get;
        IF not BudgetConfig."Equal Dimensions By Document" then
            exit;
        if not ((BudgetConfig."Dim Validation 1" <> '') or (BudgetConfig."Dim Validation 2" <> '') or (BudgetConfig."Dim Validation 3" <> '') or (BudgetConfig."Dim Validation 4" <> '')) then
            exit;

        SalesLines.Reset();
        SalesLines.SetRange("Document No.", SalesHeader."No.");
        SalesLines.SetRange("Document Type", SalesHeader."Document Type");
        SalesLines.SetFilter(Amount, '<>%1', 0);
        if SalesLines.FindFirst then begin
            Clear(DimSetEntry);
            DimSetEntry.SetRange("Dimension Set ID", SalesLines."Dimension Set ID");
            if DimSetEntry.FindSet then
                repeat
                    i += 1;
                    if DimSetEntry."Dimension Code" in [BudgetConfig."Dim Validation 1", BudgetConfig."Dim Validation 2", BudgetConfig."Dim Validation 3", BudgetConfig."Dim Validation 4"] then begin
                        Dimension[i, 1] := DimSetEntry."Dimension Code";
                        Dimension[i, 2] := DimSetEntry."Dimension Value Code";
                    end;
                until DimSetEntry.Next = 0;
        end;

        SalesLines.Reset();
        SalesLines.SetRange("Document No.", SalesHeader."No.");
        SalesLines.SetRange("Document Type", SalesHeader."Document Type");
        SalesLines.SetFilter(Amount, '<>%1', 0);
        if SalesLines.FindSet then
            repeat
                for i := 1 to ArrayLen(Dimension, 1) do begin
                    if Dimension[i, 1] <> '' then begin
                        Clear(DimSetEntry);
                        DimSetEntry.SetRange("Dimension Set ID", SalesLines."Dimension Set ID");
                        DimSetEntry.SetRange("Dimension Code", Dimension[i, 1]);
                        if DimSetEntry.Findfirst then begin
                            if Dimension[i, 2] <> DimSetEntry."Dimension Value Code" then
                                Error(DimensionsEqualErr);
                        end else
                            Error(DimensionsEqualErr);
                    end;
                end;
            until SalesLines.Next = 0;

        TempDimSetEntry.DELETEALL;
        FOR i := 1 TO ARRAYLEN(Dimension, 1) DO BEGIN
            IF Dimension[i, 1] <> '' THEN BEGIN
                TempDimSetEntry.INIT;
                TempDimSetEntry.VALIDATE("Dimension Code", Dimension[i, 1]);
                TempDimSetEntry.VALIDATE("Dimension Value Code", Dimension[i, 2]);
                TempDimSetEntry.INSERT;
            END;
        END;
        SalesHeader."Dimension Set ID" := DimMgt.GetDimensionSetID(TempDimSetEntry);
        SalesHeader.MODIFY;

    end;

    local procedure ValidateConfClass(SalesHeader: Record "Sales Header")
    begin
        BudgetConfig.Get();
        If (SalesHeader.ConfClass0 <> '') and not SalesHeader."No Budget" then begin
            BudgetConfig.TestField("General Incomes Diary");
            BudgetConfig.TESTFIELD("General Incomes Batch");
        end;
    end;

    local procedure InsertSalesInvoiceLineBudget(SalesInvLine: Record "Sales Invoice Line"; SalesInvHeader: Record "Sales Invoice Header")
    var
        ConfClass0: Record "Class 0 Setup";
        GenJnlLine: Record "Gen. Journal Line";
        SourceCodeSetup: Record "Source Code Setup";
        LineNo: Integer;
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
    begin
        If SalesInvHeader."No Budget" then
            exit;

        BudgetConfig.Get;

        GenJnlLine.Reset();
        GenJnlLine.SetRange("Journal Template Name", BudgetConfig."General Incomes Diary");
        GenJnlLine.SetRange("Journal Batch Name", BudgetConfig."General Incomes Batch");
        If GenJnlLine.FindLast() then
            LineNo := GenJnlLine."Line No." + 10000
        else
            LineNo := 10000;
        If (SalesInvHeader.ConfClass0 <> '') and (SalesInvLine.Type <> SalesInvLine.Type::" ") and
            (SalesInvLine."Amount Including VAT" <> 0) then begin
            SourceCodeSetup.Get();
            ConfClass0.RESET;
            ConfClass0.SETRANGE("Regist type", SalesInvHeader.ConfClass0);
            IF ConfClass0.FindSet() THEN
                repeat
                    Clear(GenJnlLine);
                    GenJnlLine.Init();
                    GenJnlLine.VALIDATE("Journal Template Name", BudgetConfig."General Incomes Diary");
                    GenJnlLine.VALIDATE("Journal Batch Name", BudgetConfig."General Incomes Batch");
                    GenJnlLine.VALIDATE("Posting Date", SalesInvHeader."Posting Date");
                    GenJnlLine.VALIDATE("Document Date", SalesInvHeader."Document Date");
                    GenJnlLine.VALIDATE("Line No.", LineNo);
                    GenJnlLine."Document Type" := GenJnlLine."Document Type"::Invoice;
                    GenJnlLine.VALIDATE("Document No.", SalesInvHeader."No.");
                    GenJnlLine.VALIDATE("Account Type", GenJnlLine."Account Type"::"G/L Account");
                    GenJnlLine.VALIDATE("Account No.", ConfClass0."Debt count");
                    GenJnlLine.VALIDATE("Bal. Account Type", GenJnlLine."Bal. Account Type"::"G/L Account");
                    GenJnlLine.VALIDATE("Bal. Account No.", ConfClass0."Credit count");
                    GenJnlLine.VALIDATE("System-Created Entry", TRUE);
                    GenJnlLine.VALIDATE(Amount, ABS(SalesInvLine."Amount Including VAT"));
                    GenJnlLine.Validate("Source Code", SourceCodeSetup.Sales);
                    GenJnlLine.Validate("Dimension Set ID", SalesInvLine."Dimension Set ID");
                    DimMgt.UpdateGlobalDimFromDimSetID(GenJnlLine."Dimension Set ID", GenJnlLine."Shortcut Dimension 1 Code", GenJnlLine."Shortcut Dimension 2 Code");
                    GenJnlLine.Insert(true);
                    GenJnlPostLine.RunWithCheck(GenJnlLine);
                    GenJnlLine.Delete();
                    LineNo += 10000;
                until ConfClass0.Next() = 0;
        end;
    end;

    local procedure InsertSalesCrMemoLineBudget(var SalesCrMemoLine: Record "Sales Cr.Memo Line"; SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    var
        ConfClass0: Record "Class 0 Setup";
        GenJnlLine: Record "Gen. Journal Line";
        SourceCodeSetup: Record "Source Code Setup";
        LineNo: Integer;
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
    begin
        IF SalesCrMemoHeader."No Budget" then
            exit;

        BudgetConfig.Get;

        GenJnlLine.Reset();
        GenJnlLine.SetRange("Journal Template Name", BudgetConfig."General Incomes Diary");
        GenJnlLine.SetRange("Journal Batch Name", BudgetConfig."General Incomes Batch");
        If GenJnlLine.FindLast() then
            LineNo := GenJnlLine."Line No." + 10000
        else
            LineNo := 10000;
        If (SalesCrMemoHeader.ConfClass0 <> '') and (SalesCrMemoLine.Type <> SalesCrMemoLine.Type::" ") and
            (SalesCrMemoLine."Amount Including VAT" <> 0) then begin
            SourceCodeSetup.Get();
            ConfClass0.RESET;
            ConfClass0.SETRANGE("Regist type", SalesCrMemoHeader.ConfClass0);
            IF ConfClass0.FindSet() THEN
                repeat
                    Clear(GenJnlLine);
                    GenJnlLine.Init();
                    GenJnlLine.VALIDATE("Journal Template Name", BudgetConfig."General Incomes Diary");
                    GenJnlLine.VALIDATE("Journal Batch Name", BudgetConfig."General Incomes Batch");
                    GenJnlLine.VALIDATE("Posting Date", SalesCrMemoHeader."Posting Date");
                    GenJnlLine.VALIDATE("Document Date", SalesCrMemoHeader."Document Date");
                    GenJnlLine.VALIDATE("Line No.", LineNo);
                    GenJnlLine."Document Type" := GenJnlLine."Document Type"::Invoice;
                    GenJnlLine.VALIDATE("Document No.", SalesCrMemoHeader."No.");
                    GenJnlLine.VALIDATE("Account Type", GenJnlLine."Account Type"::"G/L Account");
                    GenJnlLine.VALIDATE("Account No.", ConfClass0."Debt count");
                    GenJnlLine.VALIDATE("Bal. Account Type", GenJnlLine."Bal. Account Type"::"G/L Account");
                    GenJnlLine.VALIDATE("Bal. Account No.", ConfClass0."Credit count");
                    GenJnlLine.VALIDATE("System-Created Entry", TRUE);
                    GenJnlLine.VALIDATE(Amount, ABS(SalesCrMemoLine."Amount Including VAT"));
                    GenJnlLine.Validate("Source Code", SourceCodeSetup.Sales);
                    GenJnlLine.Validate("Dimension Set ID", SalesCrMemoLine."Dimension Set ID");
                    DimMgt.UpdateGlobalDimFromDimSetID(GenJnlLine."Dimension Set ID", GenJnlLine."Shortcut Dimension 1 Code", GenJnlLine."Shortcut Dimension 2 Code");
                    GenJnlLine.Insert(true);
                    GenJnlPostLine.RunWithCheck(GenJnlLine);
                    GenJnlLine.Delete();
                    LineNo += 10000;
                until ConfClass0.Next() = 0;
        end;
    end;

    procedure GetQRCodeStringBase64(DocumentType: Option "Sales Quote","Sales Order","Prof. Invoice","Sales Invoice","Sales Credit Memo","Sales Shipment","Return Shipment","Transfer Shipment","Service Quote","Service Order","Service Invoice","Service Credit Memo","Service Shipment"; DocumentNo: Code[20]): Text
    var
        QRCodeString: Text[1024];
        PathToQRCodeImage: Text;
        QRCodeStringBase64: Text;
        dotNetArray: DotNet Array;
        MemStream: DotNet MemoryStream;
        NetFile: DotNet File;
        QRCodeHelper: DotNet QRCodeHelper;
        TempBlob: Codeunit "Temp Blob";
        InStream: InStream;
        PTSSTemporary: Record "PTSS Temporary Table" temporary;
        Base64Convert: Codeunit "Base64 Convert";
        PTSSBarcode: Codeunit "PTSS Barcode Management";
    begin
        Clear(MemStream);
        Clear(NetFile);
        Clear(QRCodeHelper);
        Clear(TempBlob);
        CLEAR(PTSSTemporary);
        Clear(Base64Convert);

        PathToQRCodeImage := TEMPORARYPATH + '\' + '__' + FORMAT(CREATEGUID) + '.bmp';

        QRCodeString := PTSSBarcode.GetQRCodeText(DocumentType, DocumentNo);
        QRCodeHelper := QRCodeHelper.QRCodeHelper();
        dotNetArray := QRCodeHelper.renderBmpToByteArray(QRCodeString);
        NetFile.WriteAllBytes(PathToQRCodeImage, dotNetArray);

        PTSSTemporary.Init();
        PTSSTemporary.Blob1.Import(PathToQRCodeImage);
        PTSSTemporary.Insert();
        PTSSTemporary.CalcFields(Blob1);

        TempBlob.FromRecord(PTSSTemporary, PTSSTemporary.FieldNo(Blob1));
        TempBlob.CreateInStream(InStream);
        QRCodeStringBase64 := Base64Convert.ToBase64(InStream);
        exit(QRCodeStringBase64);
    end;
}
