report 50018 ImportPurchCrMemos
{
    ApplicationArea = All;
    Caption = 'Import Purch Credit Memos';
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
        ImptTitle: Label 'Purchase Invoices Importation';
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
        TmpPurchLine: Record "Purchase Line" temporary;
        TmpVendorCrMemos: Record "PTSS Temporary Table" temporary;
        FileMgt: Codeunit "File Management";
    begin
        CLEAR(FileName);
        CLEAR(SheetName);
        CLEAR(TempExcelBufferTmp);
        CLEAR(TmpPurchLine);
        Clear(TmpVendorCrMemos);

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
        RowNumber := 2;

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
                CLEAR(TmpPurchLine);
                TmpPurchLine.INIT;
                TmpPurchLine."Line No." := i;
                REPEAT
                    CASE UPPERCASE(TempExcelBufferTmp.xlColID) OF
                        'A':
                            TmpPurchLine."Buy-from Vendor No." := TempExcelBufferTmp."Cell Value as Text";
                        'B':
                            Evaluate(TmpPurchLine."FA Posting Date", TempExcelBufferTmp."Cell Value as Text");
                        'C':
                            Evaluate(TmpPurchLine."Order Date", TempExcelBufferTmp."Cell Value as Text");
                        'D':
                            TmpPurchLine."Description 2" := TempExcelBufferTmp."Cell Value as Text";
                        'E':
                            TmpPurchLine.Type := SetType(TempExcelBufferTmp."Cell Value as Text");
                        'F':
                            TmpPurchLine."No." := TempExcelBufferTmp."Cell Value as Text";
                        'G':
                            TmpPurchLine.Description := COPYSTR(TempExcelBufferTmp."Cell Value as Text", 1, 100);
                        'H':
                            EVALUATE(TmpPurchLine.Quantity, TempExcelBufferTmp."Cell Value as Text");
                        'I':
                            EVALUATE(TmpPurchLine.Amount, TempExcelBufferTmp."Cell Value as Text");
                        'J':
                            TmpPurchLine."VAT Bus. Posting Group" := TempExcelBufferTmp."Cell Value as Text";
                        'K':
                            TmpPurchLine."Shortcut Dimension 1 Code" := TempExcelBufferTmp."Cell Value as Text";
                        'L':
                            TmpPurchLine."Shortcut Dimension 2 Code" := TempExcelBufferTmp."Cell Value as Text";
                        'M':
                            TmpPurchLine."Job No." := TempExcelBufferTmp."Cell Value as Text";
                    END;
                UNTIL TempExcelBufferTmp.NEXT = 0;
                TmpPurchLine."Document Type" := TmpPurchLine."Document Type"::Invoice;
                TmpPurchLine.INSERT;
            END;
        END;

        EntryNo := 1;
        TmpPurchLine.Reset();
        If TmpPurchLine.FindSet() then
            repeat
                ValidateLines(TmpPurchLine);
                TmpVendorCrMemos.Reset();
                TmpVendorCrMemos.SetRange(Code1, TmpPurchLine."Buy-from Vendor No.");
                TmpVendorCrMemos.SetRange(Text1, TmpPurchLine."Description 2");
                if not TmpVendorCrMemos.FindFirst() then begin
                    TmpVendorCrMemos.Init();
                    TmpVendorCrMemos."Entry No." := EntryNo;
                    TmpVendorCrMemos.Code1 := TmpPurchLine."Buy-from Vendor No.";
                    TmpVendorCrMemos.Text1 := TmpPurchLine."Description 2";
                    TmpVendorCrMemos.Insert();
                    EntryNo += 1;
                end;
            until TmpPurchLine.Next() = 0;

        TmpVendorCrMemos.Reset();
        if TmpVendorCrMemos.FindSet() then
            repeat
                CreateCrMemo(TmpVendorCrMemos.Code1, TmpVendorCrMemos.Text1, TmpPurchLine);
            until TmpVendorCrMemos.Next() = 0;
    end;

    local procedure ValidateLines(VAR pTmpPurchLine: Record "Purchase Line" temporary)
    var
        TextEmptyField: Label 'Line %1 - %2 is empty.';
        TextErrorField: Label 'Line %1 - %2 %3 is not valid.';
        TextErrorMuiltiDocs: Label 'Line %1 - %2\ A document with this cr. memo no. for this vendor already exists.';
        FieldsEnum: Enum ImportFields;
        lVendor: Record Vendor;
        lAccount: Record "G/L Account";
        lVatPostGroup: Record "VAT Product Posting Group";
        lDimValue: Record "Dimension Value";
        GLSetup: Record "General Ledger Setup";
    begin
        GLSetup.Get();

        with pTmpPurchLine do begin
            if "Buy-from Vendor No." = '' then
                Error(TextEmptyField, "Line No.", FieldsEnum::VendorNo);
            if "FA Posting Date" = 0D then
                Error(TextEmptyField, "Line No.", FieldsEnum::PostingDate);
            if "Order Date" = 0D then
                Error(TextEmptyField, "Line No.", FieldsEnum::DocumentDate);
            If Type = Type::" " then
                Error(TextEmptyField, "Line No.", FieldsEnum::DocumentType);
            if "Description 2" = '' then
                Error(TextEmptyField, "Line No.", FieldsEnum::VendorDocumentNo);
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

            If NOT lVendor.get("Buy-from Vendor No.") then
                Error(TextErrorField, "Line No.", FieldsEnum::VendorNo, "Buy-from Vendor No.");
            /*If NOT lAccount.get("No.") then
                Error(TextErrorField, "Line No.", FieldsEnum::AccountNo, "No.");*/
            If NOT lVatPostGroup.get("VAT Bus. Posting Group") then
                Error(TextErrorField, "Line No.", FieldsEnum::VATPostGroup, "VAT Bus. Posting Group");
            If NOT lDimValue.get(GLSetup."Global Dimension 1 Code", "Shortcut Dimension 1 Code") then
                Error(TextErrorField, "Line No.", FieldsEnum::Dim1, "Shortcut Dimension 1 Code");
            If NOT lDimValue.get(GLSetup."Global Dimension 2 Code", "Shortcut Dimension 2 Code") then
                Error(TextErrorField, "Line No.", FieldsEnum::Dim1, "Shortcut Dimension 2 Code");
            if "Job No." <> '' then
                If NOT lDimValue.get(GLSetup."Shortcut Dimension 3 Code", "Job No.") then
                    Error(TextErrorField, "Line No.", FieldsEnum::Dim3, "Job No.");

            if VendorCrMemoValid("Description 2", "Buy-from Vendor No.") then
                Error(TextErrorMuiltiDocs, "Line No.", FieldsEnum::VendorDocumentNo);
        end;
    end;

    local procedure CreateCrMemo(pVendorNo: Code[20]; pVendorCrMemoNo: Text; VAR pTmpPurchLine: Record "Purchase Line" temporary)
    var
        lPurchHeader: Record "Purchase Header";
        lPurchLine: Record "Purchase Line";
        LineNo: Integer;
    begin
        with pTmpPurchLine do begin
            Reset();
            SetFilter("Description 2", pVendorCrMemoNo);
            SetFilter("Buy-from Vendor No.", pVendorNo);
            if FindSet() then begin
                Clear(lPurchHeader);
                lPurchHeader.SetHideValidationDialog(true);
                lPurchHeader.Init();
                lPurchHeader.Validate("Document Type", lPurchHeader."Document Type"::"Credit Memo");
                lPurchHeader.Validate("Posting Date", "FA Posting Date");
                lPurchHeader.Insert(true);
                lPurchHeader.Validate("Document Date", "Order Date");
                lPurchHeader.Validate("Buy-from Vendor No.", "Buy-from Vendor No.");
                lPurchHeader.Validate("Vendor Cr. Memo No.", "Description 2");
                lPurchHeader.Validate("Prices Including VAT", true);
                lPurchHeader.Modify(true);
                Clear(lPurchLine);
                LineNo := 10000;
                repeat
                    lPurchLine.INIT;
                    lPurchLine.VALIDATE("Document Type", lPurchHeader."Document Type");
                    lPurchLine.VALIDATE("Document No.", lPurchHeader."No.");
                    lPurchLine.VALIDATE("Buy-from Vendor No.", lPurchHeader."Buy-from Vendor No.");
                    lPurchLine.VALIDATE("Line No.", LineNo);
                    lPurchLine.INSERT(true);
                    lPurchLine.VALIDATE(Type, Type);
                    lPurchLine.VALIDATE("No.", "No.");
                    lPurchLine.VALIDATE("VAT Prod. Posting Group", "VAT Bus. Posting Group");
                    lPurchLine.VALIDATE(Description, Description);
                    lPurchLine.VALIDATE(Quantity, Quantity);
                    lPurchLine.Validate("Direct Unit Cost", Amount);
                    lPurchLine.Validate("Dimension Set ID", GetDimensions("Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Job No."));
                    DimMgt.UpdateGlobalDimFromDimSetID(lPurchLine."Dimension Set ID", lPurchLine."Shortcut Dimension 1 Code", lPurchLine."Shortcut Dimension 2 Code");
                    lPurchLine.Modify(true);
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

    procedure VendorCrMemoValid(pVendorCrMemo: Text; pVendorNo: Code[20]): Boolean
    var
        PurchaseCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
        PurchaseHeader: Record "Purchase Header";
    begin
        PurchaseHeader.Reset();
        PurchaseHeader.SetFilter("Vendor Cr. Memo No.", pVendorCrMemo);
        PurchaseHeader.SetRange("Buy-from Vendor No.", pVendorNo);
        PurchaseHeader.SetRange("Document Type", PurchaseHeader."Document Type"::"Credit Memo");

        PurchaseCrMemoHeader.Reset();
        PurchaseCrMemoHeader.SetFilter("Vendor Cr. Memo No.", pVendorCrMemo);
        PurchaseCrMemoHeader.SetRange("Buy-from Vendor No.", pVendorNo);

        exit((not PurchaseCrMemoHeader.IsEmpty) or (not PurchaseHeader.IsEmpty));
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
