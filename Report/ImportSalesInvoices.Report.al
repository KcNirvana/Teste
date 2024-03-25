report 50017 "Import Sales Invoices"
{
    ApplicationArea = All;
    Caption = 'Import Sales Invoices';
    UsageCategory = Tasks;
    ProcessingOnly = true;
    UseRequestPage = false;

    dataset
    {
        dataitem(Integer; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
            trigger OnAfterGetRecord()
            begin
                ImportLines();
            end;
        }
    }

    trigger OnPostReport()
    begin
        MESSAGE(TextImportSucess);
    end;

    var
        TextImportSucess: Label 'Documents imported with success.';
        TextNoRecords: Label 'No records to import.';
        ImptTitle: Label 'Sales Invoices Importation';
        ImpFilter: Label 'Excel files(*.xlsx)|*.xlsx|All files (*.*)|*.*';
        Text002: Label 'No file found.';
        DimMgt: Codeunit DimensionManagement;

    local procedure ImportLines()
    var
        FileName: Text;
        SheetName: Text;
        RowNumber: Integer;
        TotalRows: Integer;
        EntryNo: Integer;
        i: Integer;
        Instr: InStream;
        TempExcelBufferTmp: Record "Excel Buffer" temporary;
        TmpSalesLine: Record "Sales Line" temporary;
        TmpSalesInvoices: Record "PTSS Temporary Table" temporary;
        FileMgt: Codeunit "File Management";
    begin
        CLEAR(FileName);
        CLEAR(SheetName);
        CLEAR(TempExcelBufferTmp);
        CLEAR(TmpSalesLine);
        Clear(TmpSalesInvoices);

        CLEAR(FileName);
        CLEAR(SheetName);
        CLEAR(TempExcelBufferTmp);
        UploadIntoStream(ImptTitle, '', ImpFilter, FileName, Instr);
        if FileName <> '' then
            SheetName := TempExcelBufferTmp.SelectSheetsNameStream(Instr)
        else
            Error(Text002);

        TempExcelBufferTmp.Reset();
        TempExcelBufferTmp.DeleteAll();
        TempExcelBufferTmp.OpenBookStream(Instr, SheetName);
        TempExcelBufferTmp.ReadSheet;
        RowNumber := 4;

        TempExcelBufferTmp.RESET;
        TempExcelBufferTmp.SETFILTER("Row No.", '%1..', RowNumber);
        IF TempExcelBufferTmp.FINDLAST THEN
            EVALUATE(TotalRows, TempExcelBufferTmp.xlRowID);

        IF TotalRows = 0 then
            Error(TextNoRecords);

        FOR i := RowNumber TO TotalRows DO BEGIN
            TempExcelBufferTmp.RESET;
            TempExcelBufferTmp.SETFILTER("Row No.", '%1', i);
            IF TempExcelBufferTmp.FINDFIRST THEN BEGIN
                CLEAR(TmpSalesLine);
                TmpSalesLine.INIT;
                TmpSalesLine."Line No." := i;
                REPEAT
                    CASE UPPERCASE(TempExcelBufferTmp.xlColID) OF
                        'A':
                            TmpSalesLine."Sell-to Customer No." := TempExcelBufferTmp."Cell Value as Text"; //2
                        'B':
                            Evaluate(TmpSalesLine."FA Posting Date", TempExcelBufferTmp."Cell Value as Text"); //5600
                        'C':
                            Evaluate(TmpSalesLine."Shipment Date", TempExcelBufferTmp."Cell Value as Text"); //10
                        'D':
                            TmpSalesLine."Description 2" := TempExcelBufferTmp."Cell Value as Text"; //3
                        'E':
                            TmpSalesLine.Type := SetType(TempExcelBufferTmp."Cell Value as Text"); //12
                        'F':
                            TmpSalesLine."No." := TempExcelBufferTmp."Cell Value as Text"; //6
                        'G':
                            TmpSalesLine.Description := COPYSTR(TempExcelBufferTmp."Cell Value as Text", 1, 100); //11
                        'H':
                            EVALUATE(TmpSalesLine.Quantity, TempExcelBufferTmp."Cell Value as Text"); //15
                        'I':
                            EVALUATE(TmpSalesLine.Amount, TempExcelBufferTmp."Cell Value as Text"); //29
                        'J':
                            TmpSalesLine."VAT Bus. Posting Group" := TempExcelBufferTmp."Cell Value as Text"; //89
                        'K':
                            TmpSalesLine."Shortcut Dimension 1 Code" := TempExcelBufferTmp."Cell Value as Text"; //40
                        'L':
                            TmpSalesLine."Shortcut Dimension 2 Code" := TempExcelBufferTmp."Cell Value as Text"; //41
                        'M':
                            TmpSalesLine."Job No." := TempExcelBufferTmp."Cell Value as Text";
                    END;
                UNTIL TempExcelBufferTmp.NEXT = 0;
                TmpSalesLine."Document Type" := TmpSalesLine."Document Type"::Invoice;
                TmpSalesLine.INSERT;
            END;
        END;

        EntryNo := 1;
        TmpSalesLine.Reset();
        If TmpSalesLine.FindSet() then
            repeat
                ValidateLines(TmpSalesLine);
                TmpSalesInvoices.Reset();
                TmpSalesInvoices.SetRange(Code1, TmpSalesLine."Sell-to Customer No.");
                TmpSalesInvoices.SetRange(Text1, TmpSalesLine."Description 2");
                if not TmpSalesInvoices.FindFirst() then begin
                    TmpSalesInvoices.Init();
                    TmpSalesInvoices."Entry No." := EntryNo;
                    TmpSalesInvoices.Code1 := TmpSalesLine."Sell-to Customer No.";
                    TmpSalesInvoices.Text1 := TmpSalesLine."Description 2";
                    TmpSalesInvoices.Insert();
                    EntryNo += 1;
                end;
            until TmpSalesLine.Next() = 0;

        TmpSalesInvoices.Reset();
        if TmpSalesInvoices.FindSet() then
            repeat
                CreateInvoice(TmpSalesInvoices.Code1, TmpSalesInvoices.Text1, TmpSalesLine);
            until TmpSalesInvoices.Next() = 0;
    end;

    local procedure ValidateLines(VAR pTmpSalesLine: Record "Sales Line" temporary)
    var
        TextEmptyField: Label 'Line %1 - %2 is empty.';
        TextErrorField: Label 'Line %1 - %2 %3 is not valid.';
        TextErrorMuiltiDocs: Label 'Line %1 - %2\ A document with this customer invoice no. for this customer already exists.';
        FieldsEnum: Enum ImportFields;
        lCustomer: Record Customer;
        lAccount: Record "G/L Account";
        lVatPostGroup: Record "VAT Product Posting Group";
        lDimValue: Record "Dimension Value";
        GLSetup: Record "General Ledger Setup";
    begin
        GLSetup.Get();
        if pTmpSalesLine."Sell-to Customer No." = '' then
            Error(TextEmptyField, pTmpSalesLine."Line No.", FieldsEnum::CustomerNo);
        if pTmpSalesLine."FA Posting Date" = 0D then
            Error(TextEmptyField, pTmpSalesLine."Line No.", FieldsEnum::PostingDate);
        if pTmpSalesLine."Shipment Date" = 0D then
            Error(TextEmptyField, pTmpSalesLine."Line No.", FieldsEnum::DocumentDate);
        If pTmpSalesLine.Type = pTmpSalesLine.Type::" " then
            Error(TextEmptyField, pTmpSalesLine."Line No.", FieldsEnum::DocumentType);
        if pTmpSalesLine."Description 2" = '' then
            Error(TextEmptyField, pTmpSalesLine."Line No.", FieldsEnum::CustomerDocumentNo);
        if pTmpSalesLine."No." = '' then
            Error(TextEmptyField, pTmpSalesLine."Line No.", FieldsEnum::AccountNo);
        if pTmpSalesLine.Description = '' then
            Error(TextEmptyField, pTmpSalesLine."Line No.", FieldsEnum::Description);
        if pTmpSalesLine.Quantity <= 0 then
            Error(TextEmptyField, pTmpSalesLine."Line No.", FieldsEnum::Quantity);
        if pTmpSalesLine.Amount <= 0 then
            Error(TextEmptyField, pTmpSalesLine."Line No.", FieldsEnum::Amount);
        if pTmpSalesLine."VAT Bus. Posting Group" = '' then
            Error(TextEmptyField, pTmpSalesLine."Line No.", FieldsEnum::VATPostGroup);
        if pTmpSalesLine."Shortcut Dimension 1 Code" = '' then
            Error(TextEmptyField, pTmpSalesLine."Line No.", FieldsEnum::Dim1);
        if pTmpSalesLine."Shortcut Dimension 2 Code" = '' then
            Error(TextEmptyField, pTmpSalesLine."Line No.", FieldsEnum::Dim2);
        If NOT lCustomer.get(pTmpSalesLine."Sell-to Customer No.") then
            Error(TextErrorField, pTmpSalesLine."Line No.", FieldsEnum::CustomerNo, pTmpSalesLine."Sell-to Customer No.");
        /*If NOT lAccount.get("No.") then
            Error(TextErrorField, "Line No.", FieldsEnum::AccountNo, "No.");*/
        If NOT lVatPostGroup.get(pTmpSalesLine."VAT Bus. Posting Group") then
            Error(TextErrorField, pTmpSalesLine."Line No.", FieldsEnum::VATPostGroup, pTmpSalesLine."VAT Bus. Posting Group");
        If NOT lDimValue.get(GLSetup."Global Dimension 1 Code", pTmpSalesLine."Shortcut Dimension 1 Code") then
            Error(TextErrorField, pTmpSalesLine."Line No.", FieldsEnum::Dim1, pTmpSalesLine."Shortcut Dimension 1 Code");
        If NOT lDimValue.get(GLSetup."Global Dimension 2 Code", pTmpSalesLine."Shortcut Dimension 2 Code") then
            Error(TextErrorField, pTmpSalesLine."Line No.", FieldsEnum::Dim1, pTmpSalesLine."Shortcut Dimension 2 Code");
        if pTmpSalesLine."Job No." <> '' then
            If not lDimValue.get(GLSetup."Shortcut Dimension 3 Code", pTmpSalesLine."Job No.") then
                Error(TextErrorField, pTmpSalesLine."Line No.", FieldsEnum::Dim3, pTmpSalesLine."Job No.");
        if CustomerInvoiceValid(pTmpSalesLine."Description 2", pTmpSalesLine."Sell-to Customer No.") then
            Error(TextErrorMuiltiDocs, pTmpSalesLine."Line No.", FieldsEnum::CustomerDocumentNo);
    end;

    local procedure CreateInvoice(pCustomerNo: Code[20]; pCustomerInvoiceNo: Text; VAR pTmpSalesLine: Record "Sales Line" temporary)
    var
        lSalesHeader: Record "Sales Header";
        lSalesLine: Record "Sales Line";
        LineNo: Integer;
    begin
        pTmpSalesLine.Reset();
        pTmpSalesLine.SetFilter("Description 2", pCustomerInvoiceNo);
        pTmpSalesLine.SetFilter("Sell-to Customer No.", pCustomerNo);
        if pTmpSalesLine.FindSet() then begin
            Clear(lSalesHeader);
            lSalesHeader.SetHideValidationDialog(true);
            lSalesHeader.Init();
            lSalesHeader.Validate("Document Type", lSalesHeader."Document Type"::Invoice);
            lSalesHeader.Validate("Posting Date", pTmpSalesLine."FA Posting Date");
            lSalesHeader.Insert(true);
            lSalesHeader.Validate("Prices Including VAT", true);
            lSalesHeader.Validate("Sell-to Customer No.", pTmpSalesLine."Sell-to Customer No.");
            lSalesHeader.Validate("External Document No.", pTmpSalesLine."Document No.");
            lSalesHeader.Validate("Posting Date", pTmpSalesLine."FA Posting Date");
            lSalesHeader.Validate("Document Date", pTmpSalesLine."FA Posting Date");
            lSalesHeader.Modify(true);
            Clear(lSalesLine);
            LineNo := 10000;
            repeat
                lSalesLine.INIT;
                lSalesLine.VALIDATE("Document Type", lSalesHeader."Document Type");
                lSalesLine.VALIDATE("Document No.", lSalesHeader."No.");
                lSalesLine.VALIDATE("Sell-to Customer No.", lSalesHeader."Sell-to Customer No.");
                lSalesLine.VALIDATE("Line No.", LineNo);
                lSalesLine.INSERT(true);
                lSalesLine.VALIDATE(Type, pTmpSalesLine.Type);
                lSalesLine.VALIDATE("No.", pTmpSalesLine."No.");
                lSalesLine.VALIDATE("VAT Prod. Posting Group", pTmpSalesLine."VAT Bus. Posting Group");
                lSalesLine.VALIDATE(Description, pTmpSalesLine.Description);
                lSalesLine.VALIDATE(Quantity, pTmpSalesLine.Quantity);
                lSalesLine.Validate("Unit Price", pTmpSalesLine.Amount);
                lSalesLine.Validate("Dimension Set ID", GetDimensions(pTmpSalesLine."Shortcut Dimension 1 Code", pTmpSalesLine."Shortcut Dimension 2 Code", pTmpSalesLine."Job No."));
                DimMgt.UpdateGlobalDimFromDimSetID(lSalesHeader."Dimension Set ID", lSalesHeader."Shortcut Dimension 1 Code", lSalesHeader."Shortcut Dimension 2 Code");
                lSalesLine.Modify(true);
                LineNo += 10000;
            until pTmpSalesLine.Next() = 0;
        end;
    end;

    local procedure GetDimensions(pDim1: Code[20]; pDim2: Code[20]; pDim3: Code[20]) DimId: Integer
    var
        GLSetup: Record "General Ledger Setup";
        TempDimSetEntry: Record "Dimension Set Entry" temporary;
    begin
        GLSetup.GET;
        Clear(TempDimSetEntry);

        TempDimSetEntry.INIT;
        TempDimSetEntry.VALIDATE("Dimension Code", GLSetup."Global Dimension 1 Code");
        TempDimSetEntry.VALIDATE("Dimension Value Code", pDim1);
        TempDimSetEntry.Insert(true);

        TempDimSetEntry.INIT;
        TempDimSetEntry.VALIDATE("Dimension Code", GLSetup."Global Dimension 2 Code");
        TempDimSetEntry.VALIDATE("Dimension Value Code", pDim2);
        TempDimSetEntry.Insert(true);

        if pDim3 <> '' then begin
            TempDimSetEntry.INIT;
            TempDimSetEntry.VALIDATE("Dimension Code", GLSetup."Shortcut Dimension 3 Code");
            TempDimSetEntry.VALIDATE("Dimension Value Code", pDim3);
            TempDimSetEntry.Insert(true);
        end;
        DimId := DimMgt.GetDimensionSetID(TempDimSetEntry);
    end;

    procedure CustomerInvoiceValid(pCustomerInvoice: Text; pCustomerNo: Code[20]): Boolean
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesHeader: Record "Sales Header";
    begin
        SalesHeader.Reset();
        SalesHeader.SetFilter("External Document No.", pCustomerInvoice);
        SalesHeader.SetRange("Sell-to Customer No.", pCustomerNo);
        SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Invoice);

        SalesInvoiceHeader.Reset();
        SalesInvoiceHeader.SetFilter("External Document No.", pCustomerInvoice);
        SalesInvoiceHeader.SetRange("Sell-to Customer No.", pCustomerNo);

        exit((not SalesInvoiceHeader.IsEmpty) or (not SalesHeader.IsEmpty));
    end;

    procedure SetType(ValueAtCell: Text): Enum "Purchase Line Type"
    var
        PurchType: Enum "Purchase Line Type";
        RRef: RecordRef;
        FRef: FieldRef;
    Begin
        Case ValueAtCell of
            'Conta C/G', 'G/L Account':
                exit(PurchType::"G/L Account");
            'Imobilizado', 'Fixed Asset':
                exit(PurchType::"Fixed Asset");
            'Produto', 'Item':
                exit(PurchType::Item);
            'Recurso', 'Resource':
                exit(PurchType::Resource);
        end;
    End;
}