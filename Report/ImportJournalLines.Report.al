report 57024 "Import Journal Lines"
{
    Caption = 'Import Journal Lines';
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
        MESSAGE(SuccessMessage);
    end;

    var
        JournalTemplateName: Code[10];
        JournalBatchName: Code[10];
        ImpTitle: Label 'Journal Lines Import';
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
        DtDate: Date;
        IntDay: Integer;
        IntMonth: Integer;
        IntYear: Integer;
        IntOption: Integer;
        DecAmount: Decimal;
        DummyText: Text;
        DummyInt: Integer;
        GenJournalDocType: Enum "Gen. Journal Document Type";
        RecRef: RecordRef;
        FieldR: FieldRef;
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
        HeaderLines := 1;
        FileName := FileMgt.UploadFile(ImpTitle, ExcelExtensionTok);
        SheetName := ExcelBufferTmp.SelectSheetsName(FileName);

        Clear(ExcelBufferTmp);
        ExcelBufferTmp.DeleteAll();
        ExcelBufferTmp.OpenBook(FileName, SheetName);
        ExcelBufferTmp.ReadSheet();

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
                            GenJnlLine.ConfClass0 := ExcelBufferTmp."Cell Value as Text";
                        'B':
                            begin
                                case UpperCase(ExcelBufferTmp."Cell Value as Text") OF
                                    UpperCase('verdadeiro'), '1':
                                        GenJnlLine."No Budget" := true;
                                    UpperCase('falso'), '0':
                                        GenJnlLine."No Budget" := false;
                                end;
                            end;
                        'C':
                            begin
                                TxtDate := ExcelBufferTmp."Cell Value as Text";
                                Evaluate(DtDate, TxtDate);
                                GenJnlLine.Validate("Posting Date", DtDate);
                            end;
                        'D':
                            begin
                                Clear(RecRef);
                                RecRef.Open(Database::"Gen. Journal Line");
                                Evaluate(DummyText, ExcelBufferTmp."Cell Value as Text");
                                DummyText := DelChr(DummyText, '>', ' ');
                                FieldR := RecRef.Field(GenJnlLine.FieldNo("Account Type"));
                                for DummyInt := 0 to FieldR.EnumValueCount() do
                                    if DummyText IN [FieldR.GetEnumValueCaption(DummyInt)] then
                                        GenJnlLine."Account Type" := "Gen. Journal Account Type".FromInteger((DummyInt - 1));
                            end;
                        'E':
                            GenJnlLine.Validate("Account No.", ExcelBufferTmp."Cell Value as Text");
                        'F':
                            GenJnlLine.Description := ExcelBufferTmp."Cell Value as Text";
                        'G':
                            GenJnlLine."Recipient Bank Account" := ExcelBufferTmp."Cell Value as Text";
                        'H':
                            GenJnlLine."Document No." := ExcelBufferTmp."Cell Value as Text";
                        'I':
                            begin
                                Clear(RecRef);
                                RecRef.Open(Database::"Gen. Journal Line");
                                Evaluate(DummyText, ExcelBufferTmp."Cell Value as Text");
                                DummyText := DelChr(DummyText, '>', ' ');
                                FieldR := RecRef.Field(GenJnlLine.FieldNo("Document Type"));
                                for DummyInt := 0 to FieldR.EnumValueCount() do
                                    if DummyText IN [FieldR.GetEnumValueCaption(DummyInt)] then
                                        GenJnlLine."Document Type" := "Gen. Journal Document Type".FromInteger((DummyInt - 1));
                            end;
                        'J':
                            begin
                                Clear(RecRef);
                                RecRef.Open(Database::"Gen. Journal Line");
                                Evaluate(DummyText, ExcelBufferTmp."Cell Value as Text");
                                DummyText := DelChr(DummyText, '>', ' ');
                                FieldR := RecRef.Field(GenJnlLine.FieldNo("Entity Type"));
                                for DummyInt := 0 to FieldR.EnumValueCount() do
                                    if DummyText IN [FieldR.GetEnumValueCaption(DummyInt)] then
                                        GenJnlLine.Validate("Entity Type", "Entity Type".FromInteger((DummyInt - 1)));
                            end;
                        'K':
                            GenJnlLine."External Document No." := ExcelBufferTmp."Cell Value as Text";
                        /*
                        'L':
                            GenJnlLine."VAT Prod. Posting Group" := ExcelBufferTmp."Cell Value as Text";
                        'M':
                            GenJnlLine.Description := ExcelBufferTmp."Cell Value as Text";
                        */
                        'N':
                            begin
                                Evaluate(DecAmount, ExcelBufferTmp."Cell Value as Text");
                                GenJnlLine.Validate("Amount (LCY)", DecAmount);
                            end;
                        'O':
                            GenJnlLine."SEPA Category" := ExcelBufferTmp."Cell Value as Text";
                        'P':
                            begin
                                Clear(RecRef);
                                RecRef.Open(Database::"Gen. Journal Line");
                                Evaluate(DummyText, ExcelBufferTmp."Cell Value as Text");
                                DummyText := DelChr(DummyText, '>', ' ');
                                FieldR := RecRef.Field(GenJnlLine.FieldNo("Bal. Account Type"));
                                for DummyInt := 0 to FieldR.EnumValueCount() do
                                    if DummyText IN [FieldR.GetEnumValueCaption(DummyInt)] then
                                        GenJnlLine."Bal. Account Type" := "Gen. Journal Account Type".FromInteger((DummyInt - 1));
                            end;
                        'Q':
                            GenJnlLine."Bal. Account No." := ExcelBufferTmp."Cell Value as Text";
                        'T':
                            GenJnlLine."Message to Recipient" := ExcelBufferTmp."Cell Value as Text";
                        'U':
                            GenJnlLine."EasyDoc No." := ExcelBufferTmp."Cell Value as Text";
                        'V':
                            GenJnlLine."PTSS Bal: cash-flow code" := ExcelBufferTmp."Cell Value as Text";
                        'W':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 4);
                        'X':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 1);
                        'Y':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 3);
                        'Z':
                            GenJnlLine."Dimension Set ID" := GetDimensions(GenJnlLine, ExcelBufferTmp."Cell Value as Text", 2);
                        'AA':
                            begin
                                Clear(RecRef);
                                RecRef.Open(Database::"Gen. Journal Line");
                                Evaluate(DummyText, ExcelBufferTmp."Cell Value as Text");
                                DummyText := DelChr(DummyText, '>', ' ');
                                FieldR := RecRef.Field(GenJnlLine.FieldNo("Applies-to Doc. Type"));
                                for DummyInt := 0 to FieldR.EnumValueCount() do
                                    if DummyText IN [FieldR.GetEnumValueCaption(DummyInt)] then
                                        GenJnlLine."Applies-to Doc. Type" := "Gen. Journal Document Type".FromInteger((DummyInt - 1));
                            end;
                        'AB':
                            GenJnlLine."Applies-to Doc. No." := ExcelBufferTmp."Cell Value as Text";
                    end;
                until ExcelBufferTmp.Next() = 0;
                DimMgt.UpdateGlobalDimFromDimSetID(GenJnlLine."Dimension Set ID", GenJnlLine."Shortcut Dimension 1 Code", GenJnlLine."Shortcut Dimension 2 Code");
                GenJnlLine.Insert(true);
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

