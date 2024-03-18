report 50019 "Import Sales Credit Memos"
{
    ApplicationArea = All;
    Caption = 'Import Sales Credit Memos';
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
        ImptTitle: Label 'Sales Credit Memo Importation';
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
        TmpSalesCrMemos: Record "PTSS Temporary Table" temporary;
        FileMgt: Codeunit "File Management";
    begin
        CLEAR(FileName);
        CLEAR(SheetName);
        CLEAR(TempExcelBufferTmp);
        CLEAR(TmpSalesLine);
        Clear(TmpSalesCrMemos);

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
                TmpSalesCrMemos.Reset();
                TmpSalesCrMemos.SetRange(Code1, TmpSalesLine."Sell-to Customer No.");
                TmpSalesCrMemos.SetRange(Text1, TmpSalesLine."Description 2");
                if not TmpSalesCrMemos.FindFirst() then begin
                    TmpSalesCrMemos.Init();
                    TmpSalesCrMemos."Entry No." := EntryNo;
                    TmpSalesCrMemos.Code1 := TmpSalesLine."Sell-to Customer No.";
                    TmpSalesCrMemos.Text1 := TmpSalesLine."Description 2";
                    TmpSalesCrMemos.Insert();
                    EntryNo += 1;
                end;
            until TmpSalesLine.Next() = 0;

        TmpSalesCrMemos.Reset();
        if TmpSalesCrMemos.FindSet() then
            repeat
                CreateCrMemo(TmpSalesCrMemos.Code1, TmpSalesCrMemos.Text1, TmpSalesLine);
            until TmpSalesCrMemos.Next() = 0;
    end;

    local procedure ValidateLines(VAR pTmpSalesLine: Record "Sales Line" temporary)
    var
        TextEmptyField: Label 'Line %1 - %2 is empty.';
        TextErrorField: Label 'Line %1 - %2 %3 is not valid.';
        TextErrorMuiltiDocs: Label 'Line %1 - %2\ A document with this customer credit memo no. for this customer already exists.';
        FieldsEnum: Enum ImportFields;
        lCustomer: Record Customer;
        lAccount: Record "G/L Account";
        lVatPostGroup: Record "VAT Product Posting Group";
        lDimValue: Record "Dimension Value";
        GLSetup: Record "General Ledger Setup";
    begin
        GLSetup.Get();

        with pTmpSalesLine do begin
            if "Sell-to Customer No." = '' then
                Error(TextEmptyField, "Line No.", FieldsEnum::CustomerNo);
            if "FA Posting Date" = 0D then
                Error(TextEmptyField, "Line No.", FieldsEnum::PostingDate);
            if "Shipment Date" = 0D then
                Error(TextEmptyField, "Line No.", FieldsEnum::DocumentDate);
            If Type = Type::" " then
                Error(TextEmptyField, "Line No.", FieldsEnum::DocumentType);
            if "Description 2" = '' then
                Error(TextEmptyField, "Line No.", FieldsEnum::CustomerDocumentNo);
            if "No." = '' then
                Error(TextEmptyField, "Line No.", FieldsEnum::AccountNo);
            if Description = '' then
                Error(TextEmptyField, "Line No.", FieldsEnum::Description);
            if Quantity <= 0 then
                Error(TextEmptyField, "Line No.", FieldsEnum::Quantity);
            if Amount <= 0 then
                Error(TextEmptyField, "Line No.", FieldsEnum::Amount);
            if "VAT Bus. Posting Group" = '' then
                Error(TextEmptyField, "Line No.", FieldsEnum::VATPostGroup);
            if "Shortcut Dimension 1 Code" = '' then
                Error(TextEmptyField, "Line No.", FieldsEnum::Dim1);
            if "Shortcut Dimension 2 Code" = '' then
                Error(TextEmptyField, "Line No.", FieldsEnum::Dim2);

            If NOT lCustomer.get("Sell-to Customer No.") then
                Error(TextErrorField, "Line No.", FieldsEnum::CustomerNo, "Sell-to Customer No.");
            /*If NOT lAccount.get("No.") then
                Error(TextErrorField, "Line No.", FieldsEnum::AccountNo, "No.");*/
            If NOT lVatPostGroup.get("VAT Bus. Posting Group") then
                Error(TextErrorField, "Line No.", FieldsEnum::VATPostGroup, "VAT Bus. Posting Group");
            If NOT lDimValue.get(GLSetup."Global Dimension 1 Code", "Shortcut Dimension 1 Code") then
                Error(TextErrorField, "Line No.", FieldsEnum::Dim1, "Shortcut Dimension 1 Code");
            If NOT lDimValue.get(GLSetup."Global Dimension 2 Code", "Shortcut Dimension 2 Code") then
                Error(TextErrorField, "Line No.", FieldsEnum::Dim1, "Shortcut Dimension 2 Code");
            if "Job No." <> '' then
                If not lDimValue.get(GLSetup."Shortcut Dimension 3 Code", "Job No.") then
                    Error(TextErrorField, "Line No.", FieldsEnum::Dim3, "Job No.");
            if CustomerCrMemoValid("Description 2", "Sell-to Customer No.") then
                Error(TextErrorMuiltiDocs, "Line No.", FieldsEnum::CustomerDocumentNo);
        end;
    end;

    local procedure CreateCrMemo(pCustomerNo: Code[20]; pCustomerInvoiceNo: Text; VAR pTmpSalesLine: Record "Sales Line" temporary)
    var
        lSalesHeader: Record "Sales Header";
        lSalesLine: Record "Sales Line";
        LineNo: Integer;
    begin
        with pTmpSalesLine do begin
            Reset();
            SetFilter("Description 2", pCustomerInvoiceNo);
            SetFilter("Sell-to Customer No.", pCustomerNo);
            if FindSet() then begin
                Clear(lSalesHeader);
                lSalesHeader.SetHideValidationDialog(true);
                lSalesHeader.Init();
                lSalesHeader.Validate("Document Type", lSalesHeader."Document Type"::"Credit Memo");
                lSalesHeader.Validate("Posting Date", "FA Posting Date");
                lSalesHeader.Validate("Order Date", "FA Posting Date");
                lSalesHeader.Validate("Shipment Date", "FA Posting Date");
                lSalesHeader.Insert(true);
                lSalesHeader.Validate("Prices Including VAT", true);
                lSalesHeader.Validate("Sell-to Customer No.", "Sell-to Customer No.");
                lSalesHeader.Validate("External Document No.", "Document No.");
                lSalesHeader.Validate("Posting Date", "FA Posting Date");
                lSalesHeader.Validate("Document Date", "FA Posting Date");
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
                    lSalesLine.VALIDATE(Type, Type);
                    lSalesLine.VALIDATE("No.", "No.");
                    lSalesLine.VALIDATE("VAT Prod. Posting Group", "VAT Bus. Posting Group");
                    lSalesLine.VALIDATE(Description, Description);
                    lSalesLine.VALIDATE(Quantity, Quantity);
                    lSalesLine.Validate("Unit Price", Amount);
                    lSalesLine.Validate("Dimension Set ID", GetDimensions("Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Job No."));
                    DimMgt.UpdateGlobalDimFromDimSetID(lSalesHeader."Dimension Set ID", lSalesHeader."Shortcut Dimension 1 Code", lSalesHeader."Shortcut Dimension 2 Code");
                    lSalesLine.Modify(true);
                    LineNo += 10000;
                until Next() = 0;
            end;
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

    procedure CustomerCrMemoValid(pCustomerCrMemo: Text; pCustomerNo: Code[20]): Boolean
    var
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        SalesHeader: Record "Sales Header";
    begin
        SalesHeader.Reset();
        SalesHeader.SetFilter("External Document No.", pCustomerCrMemo);
        SalesHeader.SetRange("Sell-to Customer No.", pCustomerNo);
        SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Invoice);

        SalesCrMemoHeader.Reset();
        SalesCrMemoHeader.SetFilter("External Document No.", pCustomerCrMemo);
        SalesCrMemoHeader.SetRange("Sell-to Customer No.", pCustomerNo);

        exit((not SalesCrMemoHeader.IsEmpty) or (not SalesHeader.IsEmpty));
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