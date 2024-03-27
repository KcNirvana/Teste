report 57021 "Import Sales Documents"
{
    Caption = 'Import Sales Documents';
    ProcessingOnly = true;
    UsageCategory = Tasks;
    ApplicationArea = All;

    dataset
    {
        dataitem(Integer; Integer)
        {
            DataItemTableView = SORTING(Number)
                                WHERE(Number = CONST(1));

            trigger OnAfterGetRecord()
            begin
                ImportLines;
                CreateDocuments;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(HeaderLines; HeaderLines)
                {
                    Caption = 'Header Lines';
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPostReport()
    begin
        MESSAGE(SuccessMessage);
    end;

    var
        ExcelBufferTmp: Record "Excel Buffer" temporary;
        TotalRowNo: Integer;
        TotalColumnNo: Integer;
        TmpSalesLine: Record "Sales Line" temporary;
        ImptTitle: Label 'Sales Documents Import';
        ImpFilter: Label 'Excel files (*.xlsx)|*.xlsx|All files (*.*)|*.*';
        FileMgt: Codeunit "File Management";
        DimMgt: Codeunit DimensionManagement;
        HeaderLines: Integer;
        ExcelExtensionTok: Label '.xlsx', Locked = true;
        SuccessMessage: Label 'Documents imported.';

    local procedure ImportLines()
    var
        FileName: Text[1024];
        SheetName: Text[250];
        iRowNumber: Integer;
        iTotalRows: Integer;
        LineNo: Integer;
        i: Integer;
        iOption: Integer;
        TxtDate: Text;
        iDay: Integer;
        iMonth: Integer;
        iYear: Integer;
        dValue: Decimal;
    begin
        CLEAR(FileName);
        CLEAR(SheetName);
        CLEAR(ExcelBufferTmp);
        CLEAR(TmpSalesLine);

        FileName := FileMgt.UploadFile(ImptTitle, ExcelExtensionTok);
        SheetName := ExcelBufferTmp.SelectSheetsName(FileName);
        TmpSalesLine.DELETEALL;
        ExcelBufferTmp.RESET;
        ExcelBufferTmp.DELETEALL;
        ExcelBufferTmp.OpenBook(FileName, SheetName);
        ExcelBufferTmp.ReadSheet;

        iRowNumber := 1 + HeaderLines;

        ExcelBufferTmp.RESET;
        ExcelBufferTmp.SETFILTER("Row No.", '%1..', iRowNumber);
        IF ExcelBufferTmp.FINDLAST THEN
            EVALUATE(iTotalRows, ExcelBufferTmp.xlRowID);

        FOR i := iRowNumber TO iTotalRows DO BEGIN
            ExcelBufferTmp.RESET;
            ExcelBufferTmp.SETFILTER("Row No.", '%1', i);
            IF ExcelBufferTmp.FINDFIRST THEN BEGIN
                CLEAR(TmpSalesLine);
                TmpSalesLine.INIT;
                TmpSalesLine."Line No." := i * 10000;
                REPEAT
                    CASE UPPERCASE(ExcelBufferTmp.xlColID) OF
                        'A':
                            TmpSalesLine."PTSS Credit-to Doc. No." := ExcelBufferTmp."Cell Value as Text";
                        'B':
                            BEGIN
                                CASE UPPERCASE(ExcelBufferTmp."Cell Value as Text") OF
                                    '1', 'S':
                                        TmpSalesLine."Copied From Posted Doc." := TRUE;
                                    '0', 'N':
                                        TmpSalesLine."Copied From Posted Doc." := FALSE;
                                END;
                            END;
                        'C':
                            TmpSalesLine."Blanket Order No." := ExcelBufferTmp."Cell Value as Text";
                        'D':
                            BEGIN
                                EVALUATE(iOption, ExcelBufferTmp."Cell Value as Text");
                                TmpSalesLine."Document Type" := Enum::"Sales Document Type".FromInteger(iOption);
                            END;
                        'E':
                            TmpSalesLine."Document No." := ExcelBufferTmp."Cell Value as Text";
                        'F':
                            TmpSalesLine."Sell-to Customer No." := ExcelBufferTmp."Cell Value as Text";
                        'G':
                            BEGIN
                                TxtDate := ExcelBufferTmp."Cell Value as Text";
                                EVALUATE(iDay, COPYSTR(TxtDate, 1, 2));
                                EVALUATE(iMonth, COPYSTR(TxtDate, 3, 2));
                                EVALUATE(iYear, COPYSTR(TxtDate, 5, 4));
                                TmpSalesLine."Shipment Date" := DMY2DATE(iDay, iMonth, iYear);
                            END;
                        'H':
                            BEGIN
                                TxtDate := ExcelBufferTmp."Cell Value as Text";
                                EVALUATE(iDay, COPYSTR(TxtDate, 1, 2));
                                EVALUATE(iMonth, COPYSTR(TxtDate, 3, 2));
                                EVALUATE(iYear, COPYSTR(TxtDate, 5, 4));
                                TmpSalesLine."Planned Delivery Date" := DMY2DATE(iDay, iMonth, iYear);
                            END;
                        'I':
                            TmpSalesLine."Prepayment VAT Identifier" := ExcelBufferTmp."Cell Value as Text";
                        'J':
                            TmpSalesLine."Shipment No." := ExcelBufferTmp."Cell Value as Text";
                        'K':
                            TmpSalesLine."Purchase Order No." := ExcelBufferTmp."Cell Value as Text";
                        'L':
                            BEGIN
                                EVALUATE(iOption, ExcelBufferTmp."Cell Value as Text");
                                TmpSalesLine.Type := Enum::"Sales Line Type".FromInteger(iOption);
                            END;
                        'M':
                            TmpSalesLine."No." := ExcelBufferTmp."Cell Value as Text";
                        'N':
                            TmpSalesLine."VAT Prod. Posting Group" := ExcelBufferTmp."Cell Value as Text";
                        'O':
                            TmpSalesLine.Description := ExcelBufferTmp."Cell Value as Text";
                        'P':
                            BEGIN
                                EVALUATE(dValue, ExcelBufferTmp."Cell Value as Text");
                                TmpSalesLine.Quantity := dValue;
                            END;
                        'Q':
                            BEGIN
                                CASE UPPERCASE(ExcelBufferTmp."Cell Value as Text") OF
                                    '1':
                                        TmpSalesLine."PTSS Not in Vat Report" := TRUE;
                                    '0':
                                        TmpSalesLine."PTSS Not in Vat Report" := FALSE;
                                END;
                            END;
                        'R':
                            BEGIN
                                EVALUATE(dValue, ExcelBufferTmp."Cell Value as Text");
                                TmpSalesLine."Unit Price" := dValue;
                            END;
                        'S':
                            BEGIN
                                EVALUATE(dValue, ExcelBufferTmp."Cell Value as Text");
                                TmpSalesLine."Line Discount %" := dValue;
                            END;
                        /*
                        'T':
                            TmpSalesLine."DRF Code" := ExcelBufferTmp."Cell Value as Text";
                        */
                        'U':
                            TmpSalesLine."Dimension Set ID" := GetDimensions(TmpSalesLine, ExcelBufferTmp."Cell Value as Text", 1);
                        'V':
                            TmpSalesLine."Dimension Set ID" := GetDimensions(TmpSalesLine, ExcelBufferTmp."Cell Value as Text", 2);
                        'W':
                            TmpSalesLine."Dimension Set ID" := GetDimensions(TmpSalesLine, ExcelBufferTmp."Cell Value as Text", 3);
                        'X':
                            TmpSalesLine."Dimension Set ID" := GetDimensions(TmpSalesLine, ExcelBufferTmp."Cell Value as Text", 4);
                        'Y':
                            BEGIN
                                TxtDate := ExcelBufferTmp."Cell Value as Text";
                                IF TxtDate <> '' THEN BEGIN
                                    EVALUATE(iDay, COPYSTR(TxtDate, 1, 2));
                                    EVALUATE(iMonth, COPYSTR(TxtDate, 3, 2));
                                    EVALUATE(iYear, COPYSTR(TxtDate, 5, 4));
                                    TmpSalesLine."FA Posting Date" := DMY2DATE(iDay, iMonth, iYear);
                                END;
                            END;
                        'Z':
                            TmpSalesLine."Depreciation Book Code" := ExcelBufferTmp."Cell Value as Text";
                    END;
                UNTIL ExcelBufferTmp.NEXT = 0;
                TmpSalesLine.INSERT;
            END;
        END;
    end;

    procedure CreateDocuments()
    var
        LastDocNo: Code[20];
        SalesHeader: Record "Sales Header";
        SalesLine: Record "Sales Line";
        LineNo: Integer;
    begin
        CLEAR(LastDocNo);

        TmpSalesLine.RESET;
        IF TmpSalesLine.FINDSET THEN
            REPEAT
                IF LastDocNo <> TmpSalesLine."Document No." THEN BEGIN
                    CLEAR(SalesHeader);
                    CLEAR(LineNo);
                    LineNo := 10000;
                    SalesHeader.SetHideValidationDialog(TRUE);
                    SalesHeader.INIT;
                    SalesHeader.VALIDATE("Document Type", TmpSalesLine."Document Type");
                    SalesHeader.VALIDATE("Posting Date", TmpSalesLine."Shipment Date");
                    SalesHeader.INSERT(TRUE);
                    SalesHeader.VALIDATE("Sell-to Customer No.", TmpSalesLine."Sell-to Customer No.");
                    SalesHeader."No Budget" := TmpSalesLine."Copied From Posted Doc.";
                    SalesHeader.VALIDATE("Document Date", TmpSalesLine."Planned Delivery Date");
                    SalesHeader.VALIDATE("External Document No.", TmpSalesLine."Prepayment VAT Identifier");
                    SalesHeader.VALIDATE("Payment Terms Code", TmpSalesLine."Shipment No.");
                    SalesHeader.VALIDATE("Payment Method Code", TmpSalesLine."Purchase Order No.");
                    SalesHeader.VALIDATE("Dimension Set ID", TmpSalesLine."Dimension Set ID");
                    DimMgt.UpdateGlobalDimFromDimSetID(SalesHeader."Dimension Set ID", SalesHeader."Shortcut Dimension 1 Code", SalesHeader."Shortcut Dimension 2 Code");
                    SalesHeader.VALIDATE("Posting No. Series", TmpSalesLine."Blanket Order No.");
                    SalesHeader.Validate("Ship-to Code", '');
                    SalesHeader.CopySellToAddressToShipToAddress();
                    SalesHeader.MODIFY(TRUE);
                END;
                LastDocNo := TmpSalesLine."Document No.";
                CLEAR(SalesLine);
                SalesLine.SetHideValidationDialog(TRUE);
                SalesLine.INIT;
                SalesLine.VALIDATE("Document Type", SalesHeader."Document Type");
                SalesLine.VALIDATE("Document No.", SalesHeader."No.");
                SalesLine.VALIDATE("Sell-to Customer No.", SalesHeader."Sell-to Customer No.");
                SalesLine.VALIDATE("Line No.", LineNo);
                SalesLine.INSERT(TRUE);
                SalesLine.VALIDATE(Type, TmpSalesLine.Type);
                IF SalesLine.Type <> SalesLine.Type::" " THEN BEGIN
                    SalesLine.VALIDATE("No.", TmpSalesLine."No.");
                    IF TmpSalesLine."VAT Prod. Posting Group" <> '' THEN
                        SalesLine.VALIDATE("VAT Prod. Posting Group", TmpSalesLine."VAT Prod. Posting Group");
                    SalesLine.VALIDATE(Description, TmpSalesLine.Description);
                    SalesLine.VALIDATE(Quantity, TmpSalesLine.Quantity);
                    SalesLine.VALIDATE("Unit Price", TmpSalesLine."Unit Price");
                    SalesLine.VALIDATE("PTSS Not in Vat Report", TmpSalesLine."PTSS Not in Vat Report");
                    SalesLine.VALIDATE("Line Discount %", TmpSalesLine."Line Discount %");
                    SalesLine.VALIDATE("Dimension Set ID", TmpSalesLine."Dimension Set ID");
                    DimMgt.UpdateGlobalDimFromDimSetID(SalesLine."Dimension Set ID", SalesLine."Shortcut Dimension 1 Code", SalesLine."Shortcut Dimension 2 Code");
                    /*
                    IF TmpSalesLine."DRF Code" <> '' THEN
                        SalesLine.VALIDATE("DRF Code", TmpSalesLine."DRF Code");
                    */
                    IF SalesLine.Type = SalesLine.Type::"Fixed Asset" THEN BEGIN
                        IF TmpSalesLine."FA Posting Date" <> 0D THEN
                            SalesLine.VALIDATE("FA Posting Date", TmpSalesLine."FA Posting Date");
                        IF TmpSalesLine."Depreciation Book Code" <> '' THEN
                            SalesLine.VALIDATE("Depreciation Book Code", TmpSalesLine."Depreciation Book Code");
                    END;
                END ELSE
                    SalesLine.VALIDATE(Description, TmpSalesLine.Description);
                SalesLine.MODIFY(TRUE);
                LineNo += 10000;
            UNTIL TmpSalesLine.NEXT = 0;
    end;

    local procedure GetDimensions(TmpSalesLine: Record "Sales Line" temporary; pDimValue: Code[20]; pDim: Integer) intReturn: Integer
    var
        OldDim: Integer;
        NewDim: Integer;
        TempDimSetEntry: Record "Dimension Set Entry" temporary;
        DimCode: Code[20];
        Text001: Label 'There is no %1. The dimension value %2 cant be inserted.';
        GLSetup: Record "General Ledger Setup";
    begin
        GLSetup.GET;
        intReturn := 0;
        TempDimSetEntry.DELETEALL;
        OldDim := TmpSalesLine."Dimension Set ID";
        DimMgt.GetDimensionSet(TempDimSetEntry, OldDim);
        CASE pDim OF
            1:
                DimCode := GLSetup."Shortcut Dimension 1 Code";
            2:
                DimCode := GLSetup."Shortcut Dimension 2 Code";
            3:
                DimCode := GLSetup."Shortcut Dimension 3 Code";
            4:
                DimCode := GLSetup."Shortcut Dimension 4 Code";
            5:
                DimCode := GLSetup."Shortcut Dimension 5 Code";
            6:
                DimCode := GLSetup."Shortcut Dimension 6 Code";
            7:
                DimCode := GLSetup."Shortcut Dimension 7 Code";
            8:
                DimCode := GLSetup."Shortcut Dimension 8 Code";
        END;

        IF (DimCode = '') AND (pDimValue <> '') THEN
            CASE pDim OF
                1:
                    ERROR(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 1 Code"), pDimValue);
                2:
                    ERROR(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 2 Code"), pDimValue);
                3:
                    ERROR(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 3 Code"), pDimValue);
                4:
                    ERROR(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 4 Code"), pDimValue);
                5:
                    ERROR(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 5 Code"), pDimValue);
                6:
                    ERROR(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 6 Code"), pDimValue);
                7:
                    ERROR(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 7 Code"), pDimValue);
                8:
                    ERROR(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 8 Code"), pDimValue);
            END;

        TempDimSetEntry.INIT;
        TempDimSetEntry.VALIDATE("Dimension Code", DimCode);
        TempDimSetEntry.VALIDATE("Dimension Value Code", pDimValue);
        IF NOT TempDimSetEntry.INSERT(TRUE) THEN;
        NewDim := DimMgt.GetDimensionSetID(TempDimSetEntry);
        intReturn := NewDim;
    end;
}

