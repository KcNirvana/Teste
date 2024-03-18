report 50012 "Import Payment Journal"
{
    Caption = 'Import Payments Journal Lines';
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
                FileName: Text;
                SheetName: Text;
                RowNo: Integer;
                Instr: InStream;
            begin
                CLEAR(FileName);
                CLEAR(SheetName);
                CLEAR(ExcelBuffer);
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

                FOR RowNo := 4 TO TotalRows DO begin
                    InsertData(RowNo);
                end;
            end;
        }
    }

    trigger OnPostReport()
    begin
        MESSAGE(Text0001);
    end;

    procedure InsertData(RowNo: Integer)
    var
        BeforeInsert: Record "Gen. Journal Template";
        ConvInt: Decimal;
        StrDate: Text;
        Date: Date;
        JournalType: Option Sales,Purchase;
        BankTypes: Enum "Bank Payment Type";
    begin
        with GenJournalLine do begin

            Init();
            IF GetFilter("Journal Template Name") <> '' then
                Validate("Journal Template Name", GetFilter("Journal Template Name"));

            IF GetFilter("Journal Batch Name") <> '' then
                Validate("Journal Batch Name", GetFilter("Journal Batch Name"));

            Evaluate("Line No.", GetValueAtCell(RowNo, 3));
            Validate("Account Type", "Account Type"::Vendor);

            "Account No." := GetValueAtCell(RowNo, 7);

            Evaluate("Posting Date", GetValueAtCell(RowNo, 4));

            "Document Type" := "Document Type"::Payment;

            Validate("Document No.", GetValueAtCell(RowNo, 8));
            Validate(Description, GetValueAtCell(RowNo, 9));
            Validate("Bal. Account Type", "Bal. Account Type"::"Bank Account");
            Validate("Bal. Account No.", GetValueAtCell(RowNo, 11));


            Evaluate(ConvInt, GetValueAtCell(RowNo, 12));

            Validate(Amount, ConvInt);
            Validate("Amount (LCY)", ConvInt);

            Validate("Shortcut Dimension 1 Code", GetValueAtCell(RowNo, 13));
            Validate("Shortcut Dimension 2 Code", GetValueAtCell(RowNo, 14));
            If GetValueAtCell(RowNo, 15) IN ['Pagamento eletrónico', 'Electronic Payment'] then begin
                Validate("Bank Payment Type", 3);
            End;
            If GetValueAtCell(RowNo, 15) IN ['Cheque Digital', 'Computer Check'] then begin
                Validate("Bank Payment Type", 1);
            End;
            If GetValueAtCell(RowNo, 15) IN ['Cheque Manual', 'Manual Check'] then begin
                Validate("Bank Payment Type", 2);
            End;
            If GetValueAtCell(RowNo, 15) IN ['Documento eletrónico-IAT', 'Electronic Payment-IAT'] then begin
                Validate("Bank Payment Type", 4);
            End;


            Validate("Recipient Bank Account", GetValueAtCell(RowNo, 16));
            Validate("PTSS Bal: cash-flow code", GetValueAtCell(RowNo, 17));

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
        ExcelBuffer: Record "Excel Buffer";
        GenJournalLine: Record "Gen. Journal Line";
        TotalRows: Integer;
        TotalColumns: Integer;
        Text0001: Label 'Lines Imported Sucessfully';
        Error0001: Label 'There is no information';
        ImpFilter: Label 'Excel files(*.xlsx)|*.xlsx|All files (*.*)|*.*';
        Text001: Label 'Payments Journal Lines';
        Text002: Label 'No file found.';
}
