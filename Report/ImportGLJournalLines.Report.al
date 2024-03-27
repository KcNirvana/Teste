report 57026 "Import GL Journal Lines"
{
    Caption = 'Import GL Journal Lines';
    ProcessingOnly = true;
    UseRequestPage = false;
    ApplicationArea = All;
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
        Message(SuccessMessage);
    end;

    var
        JournalTemplateName: Code[10];
        JournalBatchName: Code[10];
        ImpTitle: Label 'GL Journal Lines Import';
        HeaderLines: Integer;
        ExcelExtensionTok: Label '.xlsx', Locked = true;
        DimMgt: Codeunit DimensionManagement;
        FileMgt: Codeunit "File Management";
        SuccessMessage: Label 'Lines imported.';

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
        IntDay: Integer;
        IntMonth: Integer;
        IntYear: Integer;
        IntOption: Integer;
        DecAmount: Decimal;
        Text001: Label 'There are entries in section %1 of template %2. Do you want to delete the entries?';
        Text002: Label 'Operation canceled by user.';
    begin
        GenJnlTemplate.Get(JournalTemplateName);
        GenJnlLine.Reset();
        GenJnlLine.SetRange("Journal Template Name", JournalTemplateName);
        GenJnlLine.SetRange("Journal Batch Name", JournalBatchName);
        if not GenJnlLine.IsEmpty then
            if Confirm(Text001, false, JournalBatchName, JournalTemplateName) then
                GenJnlLine.DeleteAll(true)
            else
                Error(Text002);

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
        FileName := FileMgt.UploadFile(ImpTitle, ExcelExtensionTok);
        SheetName := ExcelBufferTmp.SelectSheetsName(FileName);

        Clear(ExcelBufferTmp);
        ExcelBufferTmp.DeleteAll();
        ExcelBufferTmp.OpenBook(FileName, SheetName);
        ExcelBufferTmp.ReadSheet();

        RowNumber := 2;

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
                            GenJnlLine.ConfClass0 := ExcelBufferTmp."Cell Value as Text";
                        'B':
                            begin
                                case UpperCase(ExcelBufferTmp."Cell Value as Text") OF
                                    'S':
                                        GenJnlLine."No Budget" := true;
                                    'N':
                                        GenJnlLine."No Budget" := false;
                                end;
                            end;
                        'C':
                            begin
                                TxtDate := ExcelBufferTmp."Cell Value as Text";
                                EVALUATE(IntDay, COPYSTR(TxtDate, 1, 2));
                                EVALUATE(IntMonth, COPYSTR(TxtDate, 3, 2));
                                EVALUATE(IntYear, COPYSTR(TxtDate, 5, 4));
                                GenJnlLine."Document Date" := DMY2DATE(IntDay, IntMonth, IntYear);
                            end;
                        'D':
                            begin
                                TxtDate := ExcelBufferTmp."Cell Value as Text";
                                EVALUATE(IntDay, COPYSTR(TxtDate, 1, 2));
                                EVALUATE(IntMonth, COPYSTR(TxtDate, 3, 2));
                                EVALUATE(IntYear, COPYSTR(TxtDate, 5, 4));
                                GenJnlLine."Posting Date" := DMY2DATE(IntDay, IntMonth, IntYear);
                            end;
                        'E':
                            begin
                                EVALUATE(IntOption, ExcelBufferTmp."Cell Value as Text");
                                GenJnlLine."Document Type" := "Gen. Journal Document Type".FromInteger(IntOption);
                            end;
                        'F':
                            GenJnlLine."Document No." := ExcelBufferTmp."Cell Value as Text";
                        'G':
                            GenJnlLine."External Document No." := ExcelBufferTmp."Cell Value as Text";
                        'H':
                            BEGIN
                                EVALUATE(IntOption, ExcelBufferTmp."Cell Value as Text");
                                GenJnlLine."Account Type" := "Gen. Journal Account Type".FromInteger(IntOption);
                            END;
                        'I':
                            GenJnlLine."Account No." := ExcelBufferTmp."Cell Value as Text";
                        'J':
                            BEGIN
                                EVALUATE(IntOption, ExcelBufferTmp."Cell Value as Text");
                                GenJnlLine."Gen. Posting Type" := "General Posting Type".FromInteger(IntOption);
                            END;
                        'K':
                            GenJnlLine."VAT Bus. Posting Group" := ExcelBufferTmp."Cell Value as Text";
                        'L':
                            GenJnlLine."VAT Prod. Posting Group" := ExcelBufferTmp."Cell Value as Text";
                        'M':
                            GenJnlLine.Description := ExcelBufferTmp."Cell Value as Text";
                        'N':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 1);
                        'O':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 2);
                        'P':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 3);
                        'Q':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 4);
                        'R':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 5);
                        'S':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 6);
                        'T':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 7);
                        'U':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 8);
                        /*
                        'V':
                            GenJnlLine."DRF Code" := ExcelBufferTmp."Cell Value as Text";
                        */
                        'W':
                            begin
                                Evaluate(DecAmount, ExcelBufferTmp."Cell Value as Text");
                                GenJnlLine.Validate("Debit Amount", DecAmount);
                            end;
                        'X':
                            begin
                                Evaluate(DecAmount, ExcelBufferTmp."Cell Value as Text");
                                GenJnlLine.Validate("Credit Amount", DecAmount);
                            end;
                        'Y':
                            begin
                                Evaluate(IntOption, ExcelBufferTmp."Cell Value as Text");
                                GenJnlLine.Validate("Cust. Type Entry", "Customer Type Entry".FromInteger(IntOption));
                            end;
                        'Z':
                            GenJnlLine."PTSS Acc: cash-flow code" := ExcelBufferTmp."Cell Value as Text";
                        'AA':
                            GenJnlLine."Gen. Bus. Posting Group" := ExcelBufferTmp."Cell Value as Text";
                        'AB':
                            GenJnlLine."Gen. Prod. Posting Group" := ExcelBufferTmp."Cell Value as Text";
                        'AC':
                            begin
                                Evaluate(IntOption, ExcelBufferTmp."Cell Value as Text");
                                GenJnlLine.Validate("Entity Type", "Entity Type".FromInteger(IntOption));
                            end;
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

