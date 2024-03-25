report 50002 "Import Journal Lines"
{
    Caption = 'Import Journal Lines';
    ProcessingOnly = true;
    UseRequestPage = false;
    dataset
    {
        dataitem(Integer; Integer)
        {
            DataItemTableView = SORTING(Number)
                                    WHERE(Number = CONST(1));

            trigger OnAfterGetRecord()
            begin
                ImportGenJnlLines();
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
        JournalTemplateName: Code[10];
        JournalBatchName: Code[10];
        ImpTitle: Label 'Journal Lines Import';
        HeaderLines: Integer;
        DimMgt: Codeunit DimensionManagement;
        SuccessMessage: Label 'Lines imported.';
        ImpFilter: Label 'Excel files(*.xlsx)|*.xlsx|All files (*.*)|*.*';

    procedure SetParam(pJnlTemplateName: Code[10]; pJnlBatchName: Code[10])
    begin
        JournalTemplateName := pJnlTemplateName;
        JournalBatchName := pJnlBatchName;
    end;

    local procedure ImportGenJnlLines()
    var
        GenJnlLine: Record "Gen. Journal Line";
        SourceCodeSetup: Record "Source Code Setup";
        GenJnlTemplate: Record "Gen. Journal Template";
        ExcelBufferTmp: Record "Excel Buffer" temporary;
        Filename: Text;
        SheetName: Text[250];
        RowNumber: Integer;
        TotalRows: Integer;
        i: Integer;
        SourceCode: Code[10];
        TxtDate: Text;
        IntOption: Integer;
        DecAmount: Decimal;
        LDate: Date;
        Text001: Label 'There are entries in section %1 of template %2. Do you want to delete the entries?';
        Text002: Label 'Operation canceled by user.';
        Text003: Label 'Document Type %1 on line %2 not valid.';
        Text004: Label 'Account Type %1 on line %2 not valid.';
        Text005: Label 'No file found.';
        Instr: InStream;
    begin
        HeaderLines := 1;
        GenJnlTemplate.Get(JournalTemplateName);
        GenJnlLine.Reset();
        GenJnlLine.SetRange("Journal Template Name", JournalTemplateName);
        GenJnlLine.SetRange("Journal Batch Name", JournalBatchName);
        if not GenJnlLine.IsEmpty then
            if Confirm(Text001, false, JournalBatchName, JournalTemplateName) then
                GenJnlLine.DeleteAll(true)
            else
                Error(Text005);

        SourceCodeSetup.GET();
        case GenJnlTemplate.Type of
            "Gen. Journal Template Type"::General:
                begin
                    SourceCodeSetup.TestField("General Journal");
                    SourceCode := SourceCodeSetup."General Journal";
                end;
            "Gen. Journal Template Type"::Purchases:
                begin
                    SourceCodeSetup.TestField("Purchase Journal");
                    SourceCode := SourceCodeSetup."Purchase Journal";
                end;
            "Gen. Journal Template Type"::Sales:
                begin
                    SourceCodeSetup.TestField("Sales Journal");
                    SourceCode := SourceCodeSetup."Sales Journal";
                end;
            "Gen. Journal Template Type"::"Cash Receipts":
                begin
                    SourceCodeSetup.TestField("Cash Receipt Journal");
                    SourceCode := SourceCodeSetup."Cash Receipt Journal";
                end;
            "Gen. Journal Template Type"::Payments:
                begin
                    SourceCodeSetup.TestField("Payment Journal");
                    SourceCode := SourceCodeSetup."Payment Journal";
                end;
        end;

        CLEAR(FileName);
        CLEAR(SheetName);
        CLEAR(ExcelBufferTmp);
        UploadIntoStream(ImpTitle, '', ImpFilter, FileName, Instr);
        if FileName <> '' then
            SheetName := ExcelBufferTmp.SelectSheetsNameStream(Instr)
        else
            Error(Text002);

        ExcelBufferTmp.Reset();
        ExcelBufferTmp.DeleteAll();
        ExcelBufferTmp.OpenBookStream(Instr, SheetName);
        ExcelBufferTmp.ReadSheet;

        RowNumber := 1 + HeaderLines;

        ExcelBufferTmp.Reset();
        ExcelBufferTmp.SetFilter("Row No.", '%1..', RowNumber);
        IF ExcelBufferTmp.FindLast() then
            EVALUATE(TotalRows, ExcelBufferTmp.xlRowID);

        FOR i := RowNumber to TotalRows do begin
            ExcelBufferTmp.Reset();
            ExcelBufferTmp.SetFilter("Row No.", '%1', i);
            if ExcelBufferTmp.FindFirst() then begin
                Clear(GenJnlLine);
                GenJnlLine.Init();
                GenJnlLine.VALIDATE("Journal Template Name", JournalTemplateName);
                GenJnlLine.VALIDATE("Journal Batch Name", JournalBatchName);
                GenJnlLine."Source Code" := SourceCode;
                GenJnlLine."Line No." := i * 10000;
                repeat
                    case UpperCase(ExcelBufferTmp.xlColID) of
                        'A':
                            begin
                                TxtDate := ExcelBufferTmp."Cell Value as Text";
                                Evaluate(LDate, TxtDate);
                                GenJnlLine.Validate("Document Date", LDate);
                            end;
                        'B':
                            begin
                                TxtDate := ExcelBufferTmp."Cell Value as Text";
                                Evaluate(LDate, TxtDate);
                                GenJnlLine.Validate("Posting Date", LDate);
                            end;
                        'C':
                            begin
                                case UpperCase(ExcelBufferTmp."Cell Value as Text") of
                                    'PAGAMENTO':
                                        GenJnlLine.Validate("Document Type", "Gen. Journal Document Type"::Payment);
                                    'FATURA':
                                        GenJnlLine.Validate("Document Type", "Gen. Journal Document Type"::Invoice);
                                    'NOTA DE CRÉDITO':
                                        GenJnlLine.Validate("Document Type", "Gen. Journal Document Type"::"Credit Memo");
                                    else
                                        Error(Text003, ExcelBufferTmp."Cell Value as Text", Format(i));
                                end;
                            end;
                        'D':
                            GenJnlLine."Document No." := ExcelBufferTmp."Cell Value as Text";
                        'E':
                            begin
                                case UpperCase(ExcelBufferTmp."Cell Value as Text") of
                                    'CONTA C/G':
                                        GenJnlLine.Validate("Account Type", "Gen. Journal Account Type"::"G/L Account");
                                    'CONTA BANCÁRIA':
                                        GenJnlLine.Validate("Account Type", "Gen. Journal Account Type"::"Bank Account");
                                    else
                                        Error(Text004, ExcelBufferTmp."Cell Value as Text", Format(i));
                                end;
                            end;
                        'F':
                            begin
                                GenJnlLine.Validate("Account No.", ExcelBufferTmp."Cell Value as Text");
                                Clear(GenJnlLine."Gen. Posting Type");
                                Clear(GenJnlLine."Gen. Bus. Posting Group");
                                Clear(GenJnlLine."Gen. Prod. Posting Group");
                                Clear(GenJnlLine."VAT Bus. Posting Group");
                                Clear(GenJnlLine."VAT Prod. Posting Group");
                            end;
                        'G':
                            GenJnlLine.Validate(Description, CopyStr(ExcelBufferTmp."Cell Value as Text", 1, 100));
                        'H':
                            GenJnlLine.Validate("PTSS Acc: cash-flow code", ExcelBufferTmp."Cell Value as Text");
                        'I':
                            begin
                                case UpperCase(ExcelBufferTmp."Cell Value as Text") of
                                    'COMPRA':
                                        GenJnlLine.Validate("Gen. Posting Type", "General Posting Type"::Purchase);
                                    'VENDA':
                                        GenJnlLine.Validate("Gen. Posting Type", "General Posting Type"::Sale);
                                    'LIQUIDAÇÃO':
                                        GenJnlLine.Validate("Gen. Posting Type", "General Posting Type"::Settlement);
                                    else
                                        Error(Text004, ExcelBufferTmp."Cell Value as Text", Format(i));
                                end;
                            end;
                        'J':
                            GenJnlLine.Validate("Gen. Bus. Posting Group", ExcelBufferTmp."Cell Value as Text");
                        'K':
                            GenJnlLine.Validate("Gen. Prod. Posting Group", ExcelBufferTmp."Cell Value as Text");
                        'L':
                            GenJnlLine.Validate("VAT Bus. Posting Group", ExcelBufferTmp."Cell Value as Text");
                        'M':
                            GenJnlLine.Validate("VAT Prod. Posting Group", ExcelBufferTmp."Cell Value as Text");
                        'N':
                            begin
                                EVALUATE(DecAmount, ExcelBufferTmp."Cell Value as Text");
                                GenJnlLine.Validate(Amount, DecAmount);
                            end;
                        'O':
                            begin
                                case UpperCase(ExcelBufferTmp."Cell Value as Text") of
                                    'CONTA C/G':
                                        GenJnlLine.Validate("Bal. Account Type", "Gen. Journal Account Type"::"G/L Account");
                                    'CONTA BANCÁRIA':
                                        GenJnlLine.Validate("Bal. Account Type", "Gen. Journal Account Type"::"Bank Account");
                                    else
                                        Error(Text004, ExcelBufferTmp."Cell Value as Text", Format(i));
                                end;
                            end;
                        'P':
                            begin
                                GenJnlLine.Validate("Bal. Account No.", ExcelBufferTmp."Cell Value as Text");
                                Clear(GenJnlLine."Bal. Gen. Posting Type");
                                Clear(GenJnlLine."Bal. Gen. Bus. Posting Group");
                                Clear(GenJnlLine."Bal. Gen. Prod. Posting Group");
                                Clear(GenJnlLine."Bal. VAT Bus. Posting Group");
                                Clear(GenJnlLine."Bal. VAT Prod. Posting Group");
                            end;
                        'Q':
                            GenJnlLine.Validate("PTSS Bal: cash-flow code", ExcelBufferTmp."Cell Value as Text");
                        'R':
                            begin
                                case UpperCase(ExcelBufferTmp."Cell Value as Text") of
                                    'COMPRA':
                                        GenJnlLine.Validate("Bal. Gen. Posting Type", "General Posting Type"::Purchase);
                                    'VENDA':
                                        GenJnlLine.Validate("Bal. Gen. Posting Type", "General Posting Type"::Sale);
                                    'LIQUIDAÇÃO':
                                        GenJnlLine.Validate("Bal. Gen. Posting Type", "General Posting Type"::Settlement);
                                    else
                                        Error(Text004, ExcelBufferTmp."Cell Value as Text", Format(i));
                                end;
                            end;
                        'S':
                            GenJnlLine.Validate("Bal. Gen. Bus. Posting Group", ExcelBufferTmp."Cell Value as Text");
                        'T':
                            GenJnlLine.Validate("Bal. Gen. Prod. Posting Group", ExcelBufferTmp."Cell Value as Text");
                        'U':
                            GenJnlLine.Validate("Bal. VAT Bus. Posting Group", ExcelBufferTmp."Cell Value as Text");
                        'V':
                            GenJnlLine.Validate("Bal. VAT Prod. Posting Group", ExcelBufferTmp."Cell Value as Text");
                        'W':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 1);
                        'X':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 2);
                    end;
                until ExcelBufferTmp.Next() = 0;
                DimMgt.UpdateGlobalDimFromDimSetID(GenJnlLine."Dimension Set ID", GenJnlLine."Shortcut Dimension 1 Code", GenJnlLine."Shortcut Dimension 2 Code");
                GenJnlLine.INSERT(TRUE);
            end;
        end;
    end;

    local procedure GetDimensions(GenJnlLine: Record "Gen. Journal Line"; pDimValue: Code[20]; pDim: Integer): Integer
    var
        TempDimSetEntry: Record "Dimension Set Entry" temporary;
        GLSetup: Record "General Ledger Setup";
        DimCode: Code[20];
        NewDimSetID: Integer;
        Text001: Label 'There is no %1. The dimension value %2 cant be inserted.';
    begin
        GLSetup.Get();
        Clear(TempDimSetEntry);
        TempDimSetEntry.DELETEALL;
        DimMgt.GetDimensionSet(TempDimSetEntry, GenJnlLine."Dimension Set ID");
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
                    Error(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 1 Code"), pDimValue);
                2:
                    Error(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 2 Code"), pDimValue);
                3:
                    Error(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 3 Code"), pDimValue);
                4:
                    Error(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 4 Code"), pDimValue);
                5:
                    Error(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 5 Code"), pDimValue);
                6:
                    Error(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 6 Code"), pDimValue);
                7:
                    Error(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 7 Code"), pDimValue);
                8:
                    Error(Text001, GLSetup.FIELDCAPTION("Shortcut Dimension 8 Code"), pDimValue);
            END;

        TempDimSetEntry.INIT;
        TempDimSetEntry.VALIDATE("Dimension Code", DimCode);
        TempDimSetEntry.VALIDATE("Dimension Value Code", pDimValue);
        IF NOT TempDimSetEntry.INSERT(TRUE) THEN;
        NewDimSetID := DimMgt.GetDimensionSetID(TempDimSetEntry);
        exit(NewDimSetID);
    end;
}