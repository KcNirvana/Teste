report 50016 "Import Fixed Assets"
{
    Caption = 'Import Fixed Assets';
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
                FOR I := 2 TO TotalRows DO
                    InsertData(I);
            end;
        }
    }

    trigger OnPostReport()
    begin
        MESSAGE(Msg0001);
    end;

    procedure InsertData(RowNo: Integer)
    begin
        FixedAsset.Init();
        FixedAsset.Validate(FixedAsset."No.", GetSerieNo(GetValueAtCell(RowNo, 1)));
        FixedAsset.Validate(FixedAsset.Description, GetValueAtCell(RowNo, 3));
        FixedAsset.Validate(FixedAsset."Search Description", GetValueAtCell(RowNo, 4));
        FixedAsset.Insert(true);
        FixedAsset.Validate(FixedAsset."FA Class Code", GetValueAtCell(RowNo, 5));
        FixedAsset.Validate(FixedAsset."FA Subclass Code", GetValueAtCell(RowNo, 6));
        FixedAsset.Validate(FixedAsset."Global Dimension 1 Code", GetValueAtCell(RowNo, 7));
        FixedAsset.Validate(FixedAsset."Global Dimension 2 Code", GetValueAtCell(RowNo, 8));
        FixedAsset.Validate(FixedAsset."FA Location Code", GetValueAtCell(RowNo, 9));
        FixedAsset.Validate(FixedAsset."Serial No.", GetValueAtCell(RowNo, 10));
        FixedAsset.Validate(FixedAsset."No. Series", GetValueAtCell(RowNo, 11));
        FixedAsset.Validate(FixedAsset."FA Posting Group", GetValueAtCell(RowNo, 12));
        AssetTypeValidate(GetValueAtCell(RowNo, 13));
        FixedAsset.Modify(true);
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

    procedure AssetTypeValidate(ValueAtCell: Text)
    begin
        IF ValueAtCell IN ['Ativo Fixo Tangível', 'Tangible'] THEN begin

            FixedAsset.Validate("PTSSFA Asset Type", FixedAsset."PTSSFA Asset Type"::Tangible);
        end else
            IF ValueAtCell IN ['Ativo Intangível', 'Intangible'] THEN begin

                FixedAsset.Validate("PTSSFA Asset Type", FixedAsset."PTSSFA Asset Type"::Intangible);
            end else
                IF ValueAtCell IN ['Propriedades Investimento', 'Finance'] THEN begin

                    FixedAsset.Validate("PTSSFA Asset Type", FixedAsset."PTSSFA Asset Type"::Finance);
                end else
                    IF ValueAtCell IN ['Ativo Biológico Não Consumível', 'Not Consumable Biological Asset'] THEN begin

                        FixedAsset.Validate("PTSSFA Asset Type", FixedAsset."PTSSFA Asset Type"::"Not Consumable Biological Asset");
                    end else
                        IF ValueAtCell IN ['Partes de Capital', 'Capital Asset'] THEN begin

                            FixedAsset.Validate("PTSSFA Asset Type", FixedAsset."PTSSFA Asset Type"::"Capital Asset");
                        end else
                            Error(Error0002, ValueAtCell, FixedAsset.TableName);
    end;

    procedure GetSerieNo(Prefix: Text): Code[20]
    var
        NoSeriesMgmt: Codeunit NoSeriesManagement;
        PrefixAux: Text;
    Begin
        NoSeriesLine.Reset();
        PrefixAux := Prefix + '*';
        NoSeriesLine.SetFilter("Starting No.", PrefixAux);
        NoSeriesLine.FindFirst();
        exit(NoSeriesMgmt.GetNextNo(NoSeriesLine."Series Code", WorkDate(), true));
        //Error(Error0002, Prefix, NoSeriesLine.TableName);
    End;

    var
        Msg0001: Label 'Import is Complete';
        Error0002: Label 'The value %1 could not be found in the %2 table.';
        ExcelBuffer: Record "Excel Buffer";
        NoSeriesLine: Record "No. Series Line";
        FixedAsset: Record "Fixed Asset";
        TotalRows: Integer;
        TotalColumns: Integer;
        FileName: Text;
        SheetName: Text;
        I: Integer;
        ImpFilter: Label 'Excel files(*.xlsx)|*.xlsx|All files (*.*)|*.*';
        Text001: Label 'Import Fixed Assets';
        Text002: Label 'No file found.';
}
