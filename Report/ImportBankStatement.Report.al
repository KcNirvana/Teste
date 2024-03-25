report 50020 "Import Bank Statements"
{
    Caption = 'Import Bank Statements';
    ProcessingOnly = true;
    UseRequestPage = true;
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
    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(BankName; BankName)
                    {
                        Caption = 'Bank Name';
                        TableRelation = "Bank Layout Setup"."No.";
                    }
                }
            }
        }
    }
    trigger OnPostReport()
    begin
        MESSAGE(TextImportSucess);
    end;

    var
        TextImportSucess: Label 'Documents imported with success.';
        TextNoRecords: Label 'No records to import.';
        ImptTitle: Label 'Import Bank Statements';
        ImpFilter: Label 'Excel files(*.xlsx)|*.xlsx|All files (*.*)|*.*';
        Text002: Label 'No file found.';
        JnlTemplate: Code[10];
        JnlBatch: Code[10];

    procedure SetParam(pJnlTemplateName: Code[10]; pJnlBatchName: Code[10])
    begin
        JnlTemplate := pJnlTemplateName;
        JnlBatch := pJnlBatchName;
    end;

    local procedure ImportLines()
    var
        FileName: Text;
        SheetName: Text;
        RowNumber: Integer;
        TotalRows: Integer;
        LineNo: Integer;
        i: Integer;
        TempExcelBufferTmp: Record "Excel Buffer" temporary;
        FileMgt: Codeunit "File Management";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        GenJnlBatch: Record "Gen. Journal Batch";
        Instr: InStream;
    begin
        BankLayoutSetup.Reset();
        BankLayoutSetup.Get(BankName);
        GenLedgerSetup.Get();
        GenJnlBatch.Get(JnlTemplate, JnlBatch);
        GenJnlBatch.TestField("No. Series");
        NextNo := NoSeriesMgt.DoGetNextNo(GenJnlBatch."No. Series", Today, false, true);

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

        RowNumber := BankLayoutSetup."Excel Header End" + 1;

        TempExcelBufferTmp.RESET;
        TempExcelBufferTmp.SETFILTER("Row No.", '%1..', RowNumber);
        IF TempExcelBufferTmp.FINDLAST THEN
            EVALUATE(TotalRows, TempExcelBufferTmp.xlRowID);

        IF TotalRows = 0 then
            Error(TextNoRecords);

        RecRef.Open(Database::"Gen. Journal Line");

        FieldR := RecRef.Field(1);
        FieldR.SetFilter(JnlTemplate);
        FieldR := RecRef.Field(51);
        FieldR.SetFilter(JnlBatch);
        if RecRef.FindSet() then
            if NOT Confirm(StrSubstNo(Confirm0001, JnlTemplate, JnlBatch)) then
                Error('');
        RecRef.DeleteAll();
        FOR i := RowNumber TO TotalRows DO BEGIN
            TempExcelBufferTmp.RESET;
            TempExcelBufferTmp.SETFILTER("Row No.", '%1', i);
            IF TempExcelBufferTmp.FINDFIRST THEN BEGIN
                RecRef.Init();
                SetKeys(i);
                REPEAT
                    iF BankLayoutLineSetup.Get(BankLayoutSetup."No.", UPPERCASE(TempExcelBufferTmp.xlColID)) then begin
                        FieldR := RecRef.Field(BankLayoutLineSetup."Field No.");
                        GetType(TempExcelBufferTmp."Cell Value as Text");
                    end;
                UNTIL TempExcelBufferTmp.NEXT = 0;
                NextNo := IncStr(NextNo);
                RecRef.Insert();
            END;
        END;
    end;

    local procedure SetKeys(LineNo: Integer)
    begin
        FieldR := RecRef.Field(1);
        FieldR.Validate(JnlTemplate);

        FieldR := RecRef.Field(2);
        FieldR.Validate(LineNo * 10000);

        FieldR := RecRef.Field(51);
        FieldR.Validate(JnlBatch);

        FieldR := RecRef.Field(3);
        FieldR.Validate(3);

        FieldR := RecRef.Field(4);
        FieldR.Validate(BankLayoutSetup."No.");

        FieldR := RecRef.Field(7);
        FieldR.Value(NextNo);
    end;

    local procedure GetType(ValueField: Text)
    var
        DummyInt: Integer;
        DummyDec: Decimal;
        DummyDate: Date;
        DummyBoolean: Boolean;
        DummyText: Text;
    begin
        Case FieldR.Type OF
            FieldR.Type::BigInteger, FieldR.Type::Integer:
                begin
                    If Evaluate(DummyInt, ValueField) then
                        FieldR.Validate(DummyInt);
                end;
            FieldR.Type::Decimal:
                begin
                    If Evaluate(DummyDec, ValueField) then
                        FieldR.Validate(DummyDec);
                end;
            FieldR.Type::Date:
                begin
                    If Evaluate(DummyDate, ValueField) then
                        FieldR.Validate(DummyDate);
                end;
            FieldR.Type::Option:
                begin
                    if Evaluate(DummyText, ValueField) then begin
                        DummyText := DelChr(DummyText, '>', ' ');
                        for DummyInt := 0 to FieldR.EnumValueCount() do
                            if DummyText IN [FieldR.GetEnumValueCaption(DummyInt)] then
                                FieldR.Validate(DummyInt - 1);
                    end;
                end;
            FieldR.Type::Boolean:
                begin
                    If Evaluate(DummyBoolean, ValueField) then
                        FieldR.Validate(DummyBoolean);
                end;
            else
                FieldR.Validate(ValueField);
        End;
    end;

    var
        RecRef: RecordRef;
        FieldR: FieldRef;
        BankLayoutLineSetup: Record "Bank Layout Line Setup";
        BankLayoutSetup: Record "Bank Layout Setup";
        GenLedgerSetup: Record "General Ledger Setup";
        BankName: Text;
        NextNo: Text[20];
        Confirm0001: Label 'There is already records on Template %1 - Batch %2\ Would you like to proceed?\Caution: This action is going to eliminate the existing records on Template %1 - Batch %2';

}
