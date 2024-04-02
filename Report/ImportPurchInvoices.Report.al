report 50003 ImportPurchInvoices
{
    ApplicationArea = All;
    Caption = 'Import Purch Invoices';
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
        TmpVendorInvoices: Record "PTSS Temporary Table" temporary;
        FileMgt: Codeunit "File Management";
    begin
        CLEAR(FileName);
        CLEAR(SheetName);
        CLEAR(TempExcelBufferTmp);
        CLEAR(TmpPurchLine);
        Clear(TmpVendorInvoices);

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
                            TmpPurchLine."Contract No." := TempExcelBufferTmp."Cell Value as Text";
                        'N':
                            TmpPurchLine."Entry Type Contract" := EntryContractValidate(TempExcelBufferTmp."Cell Value as Text");
                        'O':
                            TmpPurchLine."Job No." := TempExcelBufferTmp."Cell Value as Text";
                        'P':
                            Evaluate(TmpPurchLine.Deferement, TempExcelBufferTmp."Cell Value as Text");
                        'Q':
                            Evaluate(TmpPurchLine."Deferement Start Date", TempExcelBufferTmp."Cell Value as Text");
                        'R':
                            Evaluate(TmpPurchLine."Deferement Periodicity", TempExcelBufferTmp."Cell Value as Text");
                        'S':
                            Evaluate(TmpPurchLine."Deferement Account", TempExcelBufferTmp."Cell Value as Text");
                        'T':
                            Evaluate(TmpPurchLine.Intrastat, TempExcelBufferTmp."Cell Value as Text");
                        'U':
                            Evaluate(TmpPurchLine."Reception Entry Date", TempExcelBufferTmp."Cell Value as Text");
                        'V':
                            Evaluate(TmpPurchLine."Tariff No.", TempExcelBufferTmp."Cell Value as Text");
                        'X':
                            Evaluate(TmpPurchLine."Manufactor Country/Region Code", TempExcelBufferTmp."Cell Value as Text");
                        'Y':
                            Evaluate(TmpPurchLine."Origin Country/Region Code", TempExcelBufferTmp."Cell Value as Text");
                        'Z':
                            Evaluate(TmpPurchLine."Delivery Conditions", TempExcelBufferTmp."Cell Value as Text");
                        'AA':
                            Evaluate(TmpPurchLine."Trans. Type", TempExcelBufferTmp."Cell Value as Text");
                        'AB':
                            Evaluate(TmpPurchLine."Trans. Method", TempExcelBufferTmp."Cell Value as Text");
                        'AC':
                            Evaluate(TmpPurchLine."Entry/Exit Point", TempExcelBufferTmp."Cell Value as Text");
                        'AD':
                            Evaluate(TmpPurchLine."Net Mass", TempExcelBufferTmp."Cell Value as Text");
                        'AE':
                            Evaluate(TmpPurchLine."VAT Registration No.", TempExcelBufferTmp."Cell Value as Text");
                        'AF':
                            Evaluate(TmpPurchLine."Statistical Amount", TempExcelBufferTmp."Cell Value as Text");
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
                TmpVendorInvoices.Reset();
                TmpVendorInvoices.SetRange(Code1, TmpPurchLine."Buy-from Vendor No.");
                TmpVendorInvoices.SetRange(Text1, TmpPurchLine."Description 2");
                if not TmpVendorInvoices.FindFirst() then begin
                    TmpVendorInvoices.Init();
                    TmpVendorInvoices."Entry No." := EntryNo;
                    TmpVendorInvoices.Code1 := TmpPurchLine."Buy-from Vendor No.";
                    TmpVendorInvoices.Text1 := TmpPurchLine."Description 2";
                    TmpVendorInvoices.Insert();
                    EntryNo += 1;
                end;
            until TmpPurchLine.Next() = 0;

        TmpVendorInvoices.Reset();
        if TmpVendorInvoices.FindSet() then
            repeat
                CreateInvoice(TmpVendorInvoices.Code1, TmpVendorInvoices.Text1, TmpPurchLine);
            until TmpVendorInvoices.Next() = 0;
    end;

    local procedure ValidateLines(VAR pTmpPurchLine: Record "Purchase Line" temporary)
    var
        TextEmptyField: Label 'Line %1 - %2 is empty.';
        TextErrorField: Label 'Line %1 - %2 %3 is not valid.';
        TextErrorShouldbeEmptyField: Label 'Line %1 - %2 is either empty or associated to the wrong Type.';
        TextErrorMuiltiDocs: Label 'Line %1 - %2\ A document with this vendor invoice no. for this vendor already exists.';
        FieldsEnum: Enum ImportFields;
        lVendor: Record Vendor;
        lAccount: Record "G/L Account";
        lVatPostGroup: Record "VAT Product Posting Group";
        lDimValue: Record "Dimension Value";
        lTariffNumber: Record "Tariff Number";
        lCountry: Record "Country/Region";
        lTransportMethod: Record "Transport Method";
        GLSetup: Record "General Ledger Setup";
        lEmptyFormula: DateFormula;
    begin
        GLSetup.Get();
        if pTmpPurchLine."Buy-from Vendor No." = '' then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::VendorNo);
        if pTmpPurchLine."FA Posting Date" = 0D then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::PostingDate);
        if pTmpPurchLine."Order Date" = 0D then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::DocumentDate);
        If pTmpPurchLine.Type = pTmpPurchLine.Type::" " then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::DocumentType);
        if pTmpPurchLine."Description 2" = '' then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::VendorDocumentNo);
        if pTmpPurchLine."No." = '' then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::AccountNo);
        if pTmpPurchLine.Description = '' then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::Description);
        if pTmpPurchLine.Quantity <= 0 then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::Quantity);
        if pTmpPurchLine.Amount <= 0 then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::Amount);
        if pTmpPurchLine."VAT Bus. Posting Group" = '' then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::VATPostGroup);
        if pTmpPurchLine."Shortcut Dimension 1 Code" = '' then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::Dim1);
        if pTmpPurchLine."Shortcut Dimension 2 Code" = '' then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::Dim2);
        if ((pTmpPurchLine.Type <> pTmpPurchLine.Type::"G/L Account") and (pTmpPurchLine."Contract No." <> '')) or
           ((pTmpPurchLine."Entry Type Contract" <> "Entry Type Contract"::" ") and (pTmpPurchLine."Contract No." = '')) then
            Error(TextErrorShouldbeEmptyField, pTmpPurchLine."Line No.", FieldsEnum::ContractNo);
        if (pTmpPurchLine."Entry Type Contract" = "Entry Type Contract"::" ") and (pTmpPurchLine."Contract No." <> '') then
            Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::EntryTypeContract);
        If NOT lVendor.get(pTmpPurchLine."Buy-from Vendor No.") then
            Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::VendorNo, pTmpPurchLine."Buy-from Vendor No.");
        If NOT lVatPostGroup.get(pTmpPurchLine."VAT Bus. Posting Group") then
            Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::VATPostGroup, pTmpPurchLine."VAT Bus. Posting Group");
        If NOT lDimValue.get(GLSetup."Global Dimension 1 Code", pTmpPurchLine."Shortcut Dimension 1 Code") then
            Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::Dim1, pTmpPurchLine."Shortcut Dimension 1 Code");
        If NOT lDimValue.get(GLSetup."Global Dimension 2 Code", pTmpPurchLine."Shortcut Dimension 2 Code") then
            Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::Dim1, pTmpPurchLine."Shortcut Dimension 2 Code");
        if pTmpPurchLine."Job No." <> '' then
            If not lDimValue.get(GLSetup."Shortcut Dimension 3 Code", pTmpPurchLine."Job No.") then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::Dim3, pTmpPurchLine."Job No.");
        if VendorInvoiceValid(pTmpPurchLine."Description 2", pTmpPurchLine."Buy-from Vendor No.") then
            Error(TextErrorMuiltiDocs, pTmpPurchLine."Line No.", FieldsEnum::VendorDocumentNo);
        if pTmpPurchLine.Deferement then begin
            if (pTmpPurchLine.Type <> pTmpPurchLine.Type::"G/L Account") then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::Deferement, pTmpPurchLine.Deferement);
            if pTmpPurchLine."Deferement Start Date" = 0D then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::DeferementStartDate);
            if pTmpPurchLine."Deferement Periodicity" = lEmptyFormula then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::DeferementPeriodicity);
            if pTmpPurchLine."Deferement Account" = '' then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::DeferementAccount);
        end else begin
            if pTmpPurchLine."Deferement Start Date" <> 0D then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::DeferementStartDate, pTmpPurchLine."Deferement Start Date");
            if pTmpPurchLine."Deferement Periodicity" <> lEmptyFormula then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::DeferementPeriodicity, pTmpPurchLine."Deferement Periodicity");
            if pTmpPurchLine."Deferement Account" <> '' then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::DeferementAccount, pTmpPurchLine."Deferement Account");
        end;
        if pTmpPurchLine.Intrastat then begin
            if (pTmpPurchLine.Type <> pTmpPurchLine.Type::"Fixed Asset") then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::Intrastat, pTmpPurchLine.Intrastat);
            if pTmpPurchLine."Reception Entry Date" = 0D then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::ReceptionEntryDate);
            if pTmpPurchLine."Tariff No." = '' then begin
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::TariffNo);
                if not lTariffNumber.Get(pTmpPurchLine."Tariff No.") then
                    Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::TariffNo, pTmpPurchLine."Tariff No.");
            end;
            if pTmpPurchLine."Manufactor Country/Region Code" = '' then begin
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::ManufactorCountryRegionCode);
                if (not lCountry.Get(pTmpPurchLine."Manufactor Country/Region Code")) or (lCountry."EU Country/Region Code" = '') then
                    Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::ManufactorCountryRegionCode, pTmpPurchLine."Manufactor Country/Region Code");
            end;
            if pTmpPurchLine."Origin Country/Region Code" = '' then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::OriginCountryRegionCode);
            if pTmpPurchLine.Region = '' then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::Region);
            if pTmpPurchLine."Delivery Conditions" = '' then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::DeliveryConditions);
            if pTmpPurchLine.Region = '' then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::Region);
            if pTmpPurchLine."Trans. Type" = '' then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::TransType);
            if pTmpPurchLine."Trans. Method" = '' then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::TransMethod);
            if pTmpPurchLine."Entry/Exit Point" <> '' then begin
                if (not lTransportMethod.Get(pTmpPurchLine."Trans. Method")) or (not lTransportMethod."PTSS Port/Airport") then
                    Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::EntryExitPoint, pTmpPurchLine."Entry/Exit Point");
            end;
            if pTmpPurchLine."Net Mass" = 0 then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::NetMass);
            if pTmpPurchLine."Statistical Amount" = 0 then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::StatisticalAmount);
            if pTmpPurchLine."VAT Registration No." = '' then
                Error(TextEmptyField, pTmpPurchLine."Line No.", FieldsEnum::VATRegistrationNo);
        end else begin
            if pTmpPurchLine."Reception Entry Date" <> 0D then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::ReceptionEntryDate, pTmpPurchLine."Reception Entry Date");
            if pTmpPurchLine."Tariff No." <> '' then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::TariffNo, pTmpPurchLine."Tariff No.");
            if pTmpPurchLine."Manufactor Country/Region Code" <> '' then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::ManufactorCountryRegionCode, pTmpPurchLine."Manufactor Country/Region Code");
            if pTmpPurchLine."Origin Country/Region Code" <> '' then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::OriginCountryRegionCode, pTmpPurchLine."Origin Country/Region Code");
            if pTmpPurchLine."Delivery Conditions" <> '' then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::DeliveryConditions, pTmpPurchLine."Delivery Conditions");
            if pTmpPurchLine.Region <> '' then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::Region, pTmpPurchLine.Region);
            if pTmpPurchLine."Trans. Type" <> '' then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::TransType, pTmpPurchLine."Trans. Type");
            if pTmpPurchLine."Trans. Method" <> '' then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::TransMethod, pTmpPurchLine."Trans. Method");
            if pTmpPurchLine."Entry/Exit Point" <> '' then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::EntryExitPoint, pTmpPurchLine."Entry/Exit Point");
            if pTmpPurchLine."Net Mass" <> 0 then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::NetMass, pTmpPurchLine."Net Mass");
            if pTmpPurchLine."Statistical Amount" <> 0 then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::StatisticalAmount, pTmpPurchLine."Statistical Amount");
            if pTmpPurchLine."VAT Registration No." <> '' then
                Error(TextErrorField, pTmpPurchLine."Line No.", FieldsEnum::VATRegistrationNo, pTmpPurchLine."VAT Registration No.");
        end;
    end;

    local procedure CreateInvoice(pVendorNo: Code[20]; pVendorInvoiceNo: Text; VAR pTmpPurchLine: Record "Purchase Line" temporary)
    var
        lPurchHeader: Record "Purchase Header";
        lPurchLine: Record "Purchase Line";
        LineNo: Integer;
    begin
        pTmpPurchLine.Reset();
        pTmpPurchLine.SetFilter("Description 2", pVendorInvoiceNo);
        pTmpPurchLine.SetFilter("Buy-from Vendor No.", pVendorNo);
        if pTmpPurchLine.FindSet() then begin
            Clear(lPurchHeader);
            lPurchHeader.SetHideValidationDialog(true);
            lPurchHeader.Init();
            lPurchHeader.Validate("Document Type", lPurchHeader."Document Type"::Invoice);
            lPurchHeader.Validate("Posting Date", pTmpPurchLine."FA Posting Date");
            lPurchHeader.Insert(true);
            lPurchHeader.Validate("Document Date", pTmpPurchLine."Order Date");
            lPurchHeader.Validate("Buy-from Vendor No.", pTmpPurchLine."Buy-from Vendor No.");
            lPurchHeader.Validate("Vendor Invoice No.", pTmpPurchLine."Description 2");
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
                lPurchLine.VALIDATE(Type, pTmpPurchLine.Type);
                lPurchLine.VALIDATE("No.", pTmpPurchLine."No.");
                lPurchLine.VALIDATE("VAT Prod. Posting Group", pTmpPurchLine."VAT Bus. Posting Group");
                lPurchLine.VALIDATE(Description, pTmpPurchLine.Description);
                lPurchLine.VALIDATE(Quantity, pTmpPurchLine.Quantity);
                lPurchLine.Validate("Direct Unit Cost", pTmpPurchLine.Amount);
                lPurchLine.Validate("Dimension Set ID", GetDimensions(pTmpPurchLine."Shortcut Dimension 1 Code", pTmpPurchLine."Shortcut Dimension 2 Code", pTmpPurchLine."Job No."));
                DimMgt.UpdateGlobalDimFromDimSetID(lPurchLine."Dimension Set ID", lPurchLine."Shortcut Dimension 1 Code", lPurchLine."Shortcut Dimension 2 Code");
                lPurchLine.Validate("Contract No.", pTmpPurchLine."Contract No.");
                if lPurchLine."Contract No." <> '' then
                    lPurchLine.Validate("Entry Type Contract", pTmpPurchLine."Entry Type Contract");
                lPurchLine.Validate(Deferement, pTmpPurchLine.Deferement);
                if lPurchLine.Deferement then begin
                    lPurchLine.Validate("Deferement Start Date", pTmpPurchLine."Deferement Start Date");
                    lPurchLine.Validate("Deferement Periodicity", pTmpPurchLine."Deferement Periodicity");
                    lPurchLine.Validate("Deferement Account", pTmpPurchLine."Deferement Account");
                end;
                lPurchLine.Validate(Intrastat, pTmpPurchLine.Intrastat);
                if lPurchLine.Intrastat then begin
                    lPurchLine.Validate("Reception Entry Date", pTmpPurchLine."Reception Entry Date");
                    lPurchLine.Validate("Tariff No.", pTmpPurchLine."Tariff No.");
                    lPurchLine.Validate("Manufactor Country/Region Code", pTmpPurchLine."Manufactor Country/Region Code");
                    lPurchLine.Validate("Origin Country/Region Code", pTmpPurchLine."Origin Country/Region Code");
                    lPurchLine.Validate(Region, pTmpPurchLine.Region);
                    lPurchLine.Validate("Delivery Conditions", pTmpPurchLine."Delivery Conditions");
                    lPurchLine.Validate(Region, pTmpPurchLine.Region);
                    lPurchLine.Validate("Trans. Type", pTmpPurchLine."Trans. Type");
                    lPurchLine.Validate("Trans. Method", pTmpPurchLine."Trans. Method");
                    lPurchLine.Validate("Net Mass", pTmpPurchLine."Net Mass");
                    lPurchLine.Validate("VAT Registration No.", pTmpPurchLine."VAT Registration No.");
                    lPurchLine.Validate("Statistical Amount", pTmpPurchLine."Statistical Amount");
                end;
                lPurchLine.Modify(true);
                LineNo += 10000;
            until pTmpPurchLine.Next() = 0;
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

    procedure VendorInvoiceValid(pVendorInvoice: Text; pVendorNo: Code[20]): Boolean
    var
        PurchaseInvoiceHeader: Record "Purch. Inv. Header";
        PurchaseHeader: Record "Purchase Header";
    begin
        PurchaseHeader.Reset();
        PurchaseHeader.SetFilter("Vendor Invoice No.", pVendorInvoice);
        PurchaseHeader.SetRange("Buy-from Vendor No.", pVendorNo);
        PurchaseHeader.SetRange("Document Type", PurchaseHeader."Document Type"::Invoice);

        PurchaseInvoiceHeader.Reset();
        PurchaseInvoiceHeader.SetFilter("Vendor Invoice No.", pVendorInvoice);
        PurchaseInvoiceHeader.SetRange("Buy-from Vendor No.", pVendorNo);

        exit((not PurchaseInvoiceHeader.IsEmpty) or (not PurchaseHeader.IsEmpty));
    end;

    procedure EntryContractValidate(ValueAtCell: Text): Enum "Entry Type Contract"
    var
        OptionEntryEnum: Enum "Entry Type Contract";
    begin
        Case ValueAtCell of
            'Juros', 'Fees':
                exit(OptionEntryEnum::Fees);
            'Aquisição', 'Acquisition':
                exit(OptionEntryEnum::Acquisition);
            'Capital', 'Funds':
                exit(OptionEntryEnum::Funds);
            'Renda', 'Rent':
                exit(OptionEntryEnum::Rent);
            else
                exit(OptionEntryEnum::" ")
        end;
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