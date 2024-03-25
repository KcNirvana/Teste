report 50005 "Import Sales Journal"
{
    Caption = 'Import Sales Journal Lines';
    UsageCategory = Tasks;
    ProcessingOnly = true;
    UseRequestPage = false;
    ApplicationArea = all;
    dataset
    {
        dataitem(Integer; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
            trigger OnAfterGetRecord()
            var
                Instr: InStream;
                FileName: Text;
                SheetName: Text;
                RowNo: Integer;
            begin
                UploadIntoStream(Text001, '', ImpFilter, FileName, Instr);
                if FileName <> '' then
                    SheetName := ExcelBuffer.SelectSheetsNameStream(Instr)
                else
                    Error(Text002);
                ExcelBuffer.Reset();
                ExcelBuffer.DeleteAll();
                ExcelBuffer.OpenBookStream(Instr, SheetName);
                ExcelBuffer.ReadSheet;
                GetLastRowandColumn();

                FOR RowNo := 4 TO TotalRows DO
                    InsertData(RowNo);
            end;

        }
    }

    trigger OnPostReport()
    begin
        MESSAGE(Text0001);
        GenJournalLine.FindLast();
    end;

    local procedure InsertData(RowNo: Integer)
    var
        GenJournalTemplate: Record "Gen. Journal Template";
        ConvInt: Decimal;
        StrDate: Text;
        Date: Date;
        JournalType: Option Sales,Purchase;
    begin
        GenJournalLine.Init();
        IF GenJournalLine.GetFilter("Journal Template Name") <> '' then
            GenJournalLine.Validate("Journal Template Name", GenJournalLine.GetFilter("Journal Template Name"));
        IF GenJournalLine.GetFilter("Journal Batch Name") <> '' then
            GenJournalLine.Validate("Journal Batch Name", GenJournalLine.GetFilter("Journal Batch Name"));
        GenJournalTemplate.Get(GenJournalLine."Journal Template Name");
        Evaluate(GenJournalLine."Line No.", GetValueAtCell(RowNo, 3));
        GenJournalLine.Validate("Account Type", GenJournalLine."Account Type"::Customer);
        GenJournalLine.Validate("Account No.", GetValueAtCell(RowNo, 5));
        Evaluate(GenJournalLine."Posting Date", GetValueAtCell(RowNo, 6));
        if GetValueAtCell(RowNo, 7) IN ['Fatura', 'Invoice'] then
            GenJournalLine.Validate("Document Type", GenJournalLine."Document Type"::Invoice);
        if GetValueAtCell(RowNo, 7) IN ['Nota de Crédito', 'Credit Memo'] then
            GenJournalLine.Validate("Document Type", GenJournalLine."Document Type"::"Credit Memo");
        GenJournalLine.Validate("Document No.", GetValueAtCell(RowNo, 8));
        GenJournalLine.Validate("Bal. Account No.", GetValueAtCell(RowNo, 9));
        Evaluate(ConvInt, GetValueAtCell(RowNo, 10));
        GenJournalLine.Validate(Amount, ConvInt);
        GenJournalLine.Validate("Amount (LCY)", ConvInt);
        GenJournalLine.Validate("Shortcut Dimension 1 Code", GetValueAtCell(RowNo, 11));
        GenJournalLine.Validate("Shortcut Dimension 2 Code", GetValueAtCell(RowNo, 12));
        GenJournalLine.Validate("External Document No.", GetValueAtCell(RowNo, 13));
        GenJournalLine.Validate("Source Code", GenJournalTemplate."Source Code");
        GenJournalLine.Insert(true);
    end;

    local procedure GetValueAtCell(RowNo: Integer; ColNo: Integer): Text
    begin
        IF NOT ExcelBuffer.GET(RowNo, ColNo) THEN
            EXIT('');

        ExcelBuffer.GET(RowNo, ColNo);
        EXIT(ExcelBuffer."Cell Value as Text");
    end;

    local procedure GetLastRowandColumn()
    begin
        ExcelBuffer.SETRANGE("Row No.", 1);
        TotalColumns := ExcelBuffer.COUNT;

        ExcelBuffer.RESET;
        IF ExcelBuffer.FINDLAST THEN
            TotalRows := ExcelBuffer."Row No.";

        IF TotalRows = 1 THEN BEGIN
            MESSAGE(Error0001);
            ERROR('');
        END;
    end;

    procedure InitReport(Rec: Record "Gen. Journal Line"): Date
    begin
        GenJournalLine.Copy(Rec);
    end;

    var
        ExcelBuffer: Record "Excel Buffer" temporary;
        GenJournalLine: Record "Gen. Journal Line";
        TotalRows: Integer;
        TotalColumns: Integer;
        Text0001: Label 'Line(s) Imported Sucessfully';
        Error0001: Label 'There is no information';
        ImpFilter: Label 'Excel files(*.xlsx)|*.xlsx|All files (*.*)|*.*';
        Text001: Label 'Import Sales Journal Lines';
        Text002: Label 'No file found.';
}
