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

    procedure InsertData(RowNo: Integer)
    var
        BeforeInsert: Record "Gen. Journal Template";
        ConvInt: Decimal;
        StrDate: Text;
        Date: Date;
        JournalType: Option Sales,Purchase;
    begin
        with GenJournalLine do begin
            Init();
            IF GetFilter("Journal Template Name") <> '' then
                Validate("Journal Template Name", GetFilter("Journal Template Name"));

            IF GetFilter("Journal Batch Name") <> '' then
                Validate("Journal Batch Name", GetFilter("Journal Batch Name"));
            Evaluate("Line No.", GetValueAtCell(RowNo, 3));
            Validate("Account Type", "Account Type"::Customer);
            Validate("Account No.", GetValueAtCell(RowNo, 5));
            Evaluate("Posting Date", GetValueAtCell(RowNo, 6));
            if GetValueAtCell(RowNo, 7) IN ['Fatura', 'Invoice'] then
                Validate("Document Type", "Document Type"::Invoice);
            if GetValueAtCell(RowNo, 7) IN ['Nota de Crédito', 'Credit Memo'] then
                Validate("Document Type", "Document Type"::"Credit Memo");
            Validate("Document No.", GetValueAtCell(RowNo, 8));
            Validate("Bal. Account No.", GetValueAtCell(RowNo, 9));
            Evaluate(ConvInt, GetValueAtCell(RowNo, 10));
            Validate(Amount, ConvInt);
            Validate("Amount (LCY)", ConvInt);
            Validate("Shortcut Dimension 1 Code", GetValueAtCell(RowNo, 11));
            Validate("Shortcut Dimension 2 Code", GetValueAtCell(RowNo, 12));
            Validate("External Document No.", GetValueAtCell(RowNo, 13));
            BeforeInsert.Get("Journal Template Name");
            Validate("Source Code", BeforeInsert."Source Code");
            Insert(true);
        end;
    end;


    procedure GetValueAtCell(RowNo: Integer; ColNo: Integer): Text
    begin
        IF NOT ExcelBuffer.GET(RowNo, ColNo) THEN
            EXIT('');

        ExcelBuffer.GET(RowNo, ColNo);
        EXIT(ExcelBuffer."Cell Value as Text");
    end;

    procedure GetLastRowandColumn()
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
