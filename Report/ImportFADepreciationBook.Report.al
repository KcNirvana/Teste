report 50015 "Import FA Depreciation Book"
{
    Caption = 'Import FA Depreciation Book';
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

                FOR I := 4 TO TotalRows DO
                    InsertData(I);
            end;
        }
    }

    trigger OnPostReport()
    begin
        MESSAGE(Error0001);
    end;

    procedure InsertData(RowNo: Integer)
    begin
        if FixedAsset.Get(GetValueAtCell(RowNo, 1)) then begin
            if DepreciationBook.GET(GetValueAtCell(RowNo, 1), 'KLASS') then begin
                /*If (Format(DepreciationBook."Depreciation Method") <> '') then begin
                    if not Confirm(Message0001, true, GetValueAtCell(RowNo, 1)) then
                        exit;*/
                Import(RowNo, true);
                exit;
                //end;
            end;
            Import(RowNo, false);
        end else
            Error(Error0002, RowNo);
    end;

    procedure GetLastRowandColumn()
    begin
        ExcelBuffer.SetRange("Row No.", 1);
        TotalColumns := ExcelBuffer.Count();
        ExcelBuffer.Reset;
        if ExcelBuffer.FindLast() THEN begin
            TotalRows := ExcelBuffer."Row No.";
        end;
    end;

    procedure GetValueAtCell(RowNo: Integer; ColNo: Integer): Text
    begin
        If ExcelBuffer.GET(RowNo, ColNo) THEN;
        EXIT(ExcelBuffer."Cell Value as Text")
    end;

    procedure DepMethodValidate(ValueAtCell: Text)
    begin
        IF ValueAtCell IN ['Constantes', 'Straight-Line'] THEN begin

            DepreciationBook.Validate("Depreciation Method", DepreciationBook."Depreciation Method"::"Straight-Line");
        end else
            IF ValueAtCell IN ['Saldo Decrescente 1', 'Declining-Balance 1'] THEN begin

                DepreciationBook.Validate("Depreciation Method", DepreciationBook."Depreciation Method"::"Declining-Balance 1");
            end else
                IF ValueAtCell IN ['Saldo Decrescente 2', 'Declining-Balance 2'] THEN begin

                    DepreciationBook.Validate("Depreciation Method", DepreciationBook."Depreciation Method"::"Declining-Balance 2");
                end else
                    IF ValueAtCell IN ['SD1/C', 'DB1/SL'] THEN begin

                        DepreciationBook.Validate("Depreciation Method", DepreciationBook."Depreciation Method"::"DB1/SL");
                    end else
                        IF ValueAtCell IN ['SD2/C', 'DB2/SL'] THEN begin

                            DepreciationBook.Validate("Depreciation Method", DepreciationBook."Depreciation Method"::"DB2/SL");
                        end else
                            IF ValueAtCell IN ['Definido pelo Utilizador', 'User-Defined'] THEN begin

                                DepreciationBook.Validate("Depreciation Method", DepreciationBook."Depreciation Method"::"User-Defined");
                            end else
                                IF ValueAtCell IN ['Manual', 'Manual'] THEN begin

                                    DepreciationBook.Validate("Depreciation Method", DepreciationBook."Depreciation Method"::Manual);
                                end else
                                    Error(Error0003, ValueAtCell);
    end;


    procedure AnnMonthValidate(ValueAtCell: Text)
    begin
        IF ValueAtCell IN ['Mensal', 'Monthly'] THEN begin

            DepreciationBook.Validate("PTSSFA Annual or Monthly Depr.", DepreciationBook."PTSSFA Annual or Monthly Depr."::Monthly);
        end else
            IF ValueAtCell IN ['Anual', 'Annual'] THEN begin

                DepreciationBook.Validate("PTSSFA Annual or Monthly Depr.", DepreciationBook."PTSSFA Annual or Monthly Depr."::Annual);
            end else
                Error(Error0003, ValueAtCell);
    end;

    procedure Import(RowNo: Integer; ToModify: Boolean)
    Begin
        DepreciationBook.Validate(DepreciationBook."FA No.", GetValueAtCell(RowNo, 1));
        DepreciationBook.Validate(DepreciationBook."Depreciation Book Code", GetValueAtCell(RowNo, 2));

        DepMethodValidate(GetValueAtCell(RowNo, 3));

        Evaluate(EvalDate, GetValueAtCell(RowNo, 4));
        DepreciationBook.Validate(DepreciationBook."Depreciation Starting Date", EvalDate);
        Clear(EvalDate);

        Evaluate(EvalDec, GetValueAtCell(RowNo, 5));
        DepreciationBook.Validate(DepreciationBook."Straight-Line %", EvalDec);
        Clear(EvalDec);

        Evaluate(EvalDec, GetValueAtCell(RowNo, 6));
        DepreciationBook.Validate(DepreciationBook."No. of Depreciation Years", EvalDec);
        Clear(EvalDec);

        Evaluate(EvalDec, GetValueAtCell(RowNo, 7));
        DepreciationBook.Validate(DepreciationBook."Final Rounding Amount", EvalDec);
        Clear(EvalDec);

        DepreciationBook.Validate(DepreciationBook."FA Posting Group", GetValueAtCell(RowNo, 8));

        Evaluate(EvalDate, GetValueAtCell(RowNo, 9));
        DepreciationBook.Validate(DepreciationBook."Acquisition Date", EvalDate);
        Clear(EvalDate);

        Evaluate(EvalDate, GetValueAtCell(RowNo, 10));
        DepreciationBook.Validate(DepreciationBook."G/L Acquisition Date", EvalDate);
        Clear(EvalDate);

        Evaluate(EvalBool, GetValueAtCell(RowNo, 12));
        DepreciationBook.Validate(DepreciationBook."Use FA Ledger Check", EvalBool);//Bool
        Clear(EvalBool);

        DepreciationBook.Validate(DepreciationBook.Description, GetValueAtCell(RowNo, 13));

        Evaluate(EvalInt, GetValueAtCell(RowNo, 14));
        DepreciationBook.Validate(DepreciationBook."PTSSFA Acquisition year", EvalInt);
        Clear(EvalInt);

        AnnMonthValidate(GetValueAtCell(RowNo, 15));

        DepreciationBook.Validate(DepreciationBook."PTSSFA Depr. Start Month", GetValueAtCell(RowNo, 16));

        Evaluate(EvalInt, GetValueAtCell(RowNo, 17));
        DepreciationBook.Validate(DepreciationBook."PTSSFA Depreciation Start Year", EvalInt);
        Clear(EvalInt);

        DepreciationBook.Validate(DepreciationBook."PTSSFA Legal Document No.", GetValueAtCell(RowNo, 18));
        DepreciationBook.Validate(DepreciationBook."PTSSFA Legal Tax Code", GetValueAtCell(RowNo, 19));

        if ToModify = False then
            DepreciationBook.Insert(true)
        else
            DepreciationBook.Modify(true);
    End;

    var
        Error0001: Label 'Import is complete!';
        Error0002: Label 'There is no Fixed Asset for this line. (Line %1)';
        Error0003: Label 'The value %1 could not be found in the Fixed Assets table.'; //Mesmo erro que quando um valor não existe na tabela
        Message0001: Label 'The value Nº %1 has already been created.\Do you wish to proceed?';
        ExcelBuffer: Record "Excel Buffer";
        TotalRows: Integer;
        TotalColumns: Integer;
        FixedAsset: Record "Fixed Asset";
        DepreciationBook: Record "FA Depreciation Book";
        FileName: Text;
        SheetName: Text;
        I: Integer;
        EvalInt: Integer;
        EvalDate: Date;
        EvalDec: Decimal;
        EvalBool: Boolean;
        ImpFilter: Label 'Excel files(*.xlsx)|*.xlsx|All files (*.*)|*.*';
        Text001: Label 'Import FA Depreciation Book';
        Text002: Label 'No file found.';
}
