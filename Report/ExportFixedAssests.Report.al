report 50021 "Export Fixed Assests"
{
    ApplicationArea = All;
    Caption = 'Export Fixed Assests';
    UsageCategory = Tasks;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Integer; Integer)
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
            trigger OnAfterGetRecord()
            begin
                ExportLines();
            end;
        }
    }
    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Dates)
                {
                    Caption = 'Dates';
                    field(StartingDate; StartDate)
                    {
                        Caption = 'Starting Date';
                    }
                    field(EndingDate; EndDate)
                    {
                        Caption = 'Ending Date';
                    }
                }

                group(Filters)
                {
                    Caption = 'Filters';
                    field("FA Class Code"; ClassCode)
                    {
                        Caption = 'FA Class Code';
                        TableRelation = "FA Class";
                    }
                    field("FA Subclass Code"; SubclassCode)
                    {
                        Caption = 'FA Subclass Code';
                        TableRelation = "FA Subclass";
                    }
                    field("Ledger Value"; LedgerValue)
                    {
                        Caption = 'Minimum Ledger Value';
                    }
                }
            }
        }

        trigger OnOpenPage()
        begin
            EndDate := WorkDate;
        end;
    }

    trigger OnPostReport()
    begin
        MESSAGE(TextImportSucess);
    end;

    var
        TextImportSucess: Label 'Documents exported with success.';
        TempTable: Record "PTSS Temporary Table" temporary;

    local procedure ExportLines()
    var
        FixedAsset: Record "Fixed Asset";
        FixedAssestLedger: Record "FA Ledger Entry";
        FADepreciationBook: Record "FA Depreciation Book";
        DepreciationBook: Record "Depreciation Book";
        EntryNo: Integer;
        DepreciationBookCode: Code[10];
        Window: Dialog;
        TotalRecNo: Integer;
        RecNo: Integer;
        Text001: Label 'Analyzing Data % #1###';
    begin
        EntryNo := 1;
        DepreciationBook.Reset();
        if DepreciationBook.FindFirst() then
            DepreciationBookCode := DepreciationBook.Code;
        FixedAsset.Reset();
        FADepreciationBook.Reset();
        if ClassCode <> '' THEN
            FixedAsset.SetFilter("FA Class Code", ClassCode);
        if SubclassCode <> '' THEN
            FixedAsset.SetFilter("FA Subclass Code", SubclassCode);
        If FixedAsset.FindSet() then begin
            Window.Open(Text001);
            Window.Update(1, 0);
            TotalRecNo := FixedAsset.Count();
            RecNo := 0;
            repeat
                RecNo := RecNo + 1;
                Window.Update(1, 100 * RecNo div TotalRecNo);
                if FADepreciationBook.Get(FixedAsset."No.", DepreciationBookCode) then;
                TempTable.Init();
                TempTable."Entry No." := EntryNo;
                TempTable.Code1 := FixedAsset."No.";
                TempTable.Text1 := FixedAsset.Description;
                TempTable.Code2 := FixedAsset."FA Class Code";
                TempTable.Code3 := FixedAsset."FA Subclass Code";
                TempTable.Code4 := FixedAsset."FA Location Code";
                TempTable.Text2 := FixedAsset."Serial No.";
                TempTable.Text3 := FixedAsset."Search Description";
                TempTable.Boolean1 := FixedAsset.Inactive;
                TempTable.Boolean2 := FixedAsset.Blocked;
                TempTable.Code5 := GetLeasingContract(FixedAsset."No.");
                TempTable.Decimal1 := FADepreciationBook."Straight-Line %";
                TempTable.Date1 := GetAcquisitionDate(FixedAsset."No.", DepreciationBookCode);
                TempTable.Decimal2 := GetAcquisitionCost(FixedAsset."No.", DepreciationBookCode, EndDate);
                TempTable.Decimal3 := GetSalvageValue(FixedAsset."No.", DepreciationBookCode, EndDate);
                TempTable.Decimal7 := GetAccountingDepreciationValue(FixedAsset."No.", DepreciationBookCode, StartDate, EndDate);
                TempTable.Decimal5 := GetAccumulatedDepreciationValue(FixedAsset."No.", DepreciationBookCode, EndDate);
                TempTable.Decimal4 := GetLastDepreciationValue(FixedAsset."No.", DepreciationBookCode, EndDate);
                if IsSold(FixedAsset."No.", DepreciationBookCode, EndDate) then
                    GetSalesInfo(TempTable, FixedAsset."No.", DepreciationBookCode, EndDate)
                else begin
                    TempTable.Decimal6 := GetPeriodDepreciationValue(FixedAsset."No.", DepreciationBookCode, StartDate, EndDate);
                    TempTable.Decimal8 := TempTable.Decimal2 - Abs(TempTable.Decimal3); //Valor depre = Custo aquisição - Valor residual
                    TempTable.Decimal9 := TempTable.Decimal2 - TempTable.Decimal5; //Valor liquido contabilistico = Custo aquisição - Armotização acumulada
                end;
                TempTable.Insert();
                EntryNo += 1;
            until FixedAsset.next = 0;
            Window.Close();
        end;
        ExportExcel(TempTable);
    end;


    local procedure IsSold(FANo: Code[20]; FADeprBookCode: Code[10]; EndDate: Date): Boolean
    var
        FALedgerEntry: Record "FA Ledger Entry";
        FADepreciationBook: Record "FA Depreciation Book";
        HaveSales: Boolean;
        IsDisposed: Boolean;
    begin
        FALedgerEntry.Reset();
        FALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code");
        FALedgerEntry.SetRange("FA No.", FANo);
        FALedgerEntry.SetRange("Depreciation Book Code", FADeprBookCode);
        FALedgerEntry.SetRange("FA Posting Type", FALedgerEntry."FA Posting Type"::"Proceeds on Disposal");
        if EndDate <> 0D then
            FALedgerEntry.SetFilter("Posting Date", '..%1', EndDate);
        HaveSales := not FALedgerEntry.IsEmpty;

        FADepreciationBook.Reset();
        FADepreciationBook.SetRange("Depreciation Book Code", FADeprBookCode);
        FADepreciationBook.SetRange("FA No.", FANo);
        if EndDate <> 0D then
            FADepreciationBook.SetFilter("Disposal Date", '..%1&<>%2', EndDate, 0D)
        else
            FADepreciationBook.SetFilter("Disposal Date", '>%1', 0D);
        IsDisposed := not FADepreciationBook.IsEmpty;
        if HaveSales or IsDisposed then
            exit(true);
    end;

    local procedure GetSalesInfo(var TempTable: Record "PTSS Temporary Table"; FANo: Code[20]; FADeprBookCode: Code[10]; EndDate: Date)
    var
        FALedgerEntry: Record "FA Ledger Entry";
    begin
        FALedgerEntry.Reset();
        FALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code");
        FALedgerEntry.SetRange("FA No.", FANo);
        FALedgerEntry.SetRange("Depreciation Book Code", FADeprBookCode);
        FALedgerEntry.SetRange("FA Posting Type", FALedgerEntry."FA Posting Type"::"Proceeds on Disposal");
        if EndDate <> 0D then
            FALedgerEntry.SetFilter("Posting Date", '..%1', EndDate);
        FALedgerEntry.CalcSums(Amount);
        TempTable.Decimal10 := -FALedgerEntry.Amount;

        FALedgerEntry.Reset();
        FALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code");
        FALedgerEntry.SetRange("FA No.", FANo);
        FALedgerEntry.SetRange("Depreciation Book Code", FADeprBookCode);
        FALedgerEntry.SetRange("FA Posting Type", FALedgerEntry."FA Posting Type"::"Gain/Loss");
        if EndDate <> 0D then
            FALedgerEntry.SetFilter("Posting Date", '..%1', EndDate);
        FALedgerEntry.CalcSums(Amount);
        TempTable.Decimal11 := -FALedgerEntry.Amount;

        FALedgerEntry.Reset();
        FALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code");
        FALedgerEntry.SetRange("FA No.", FANo);
        FALedgerEntry.SetRange("Depreciation Book Code", FADeprBookCode);
        FALedgerEntry.SetRange("FA Posting Type", FALedgerEntry."FA Posting Type"::"Proceeds on Disposal");
        if EndDate <> 0D then
            FALedgerEntry.SetFilter("Posting Date", '..%1', EndDate);
        if FALedgerEntry.FindFirst() then begin
            TempTable.Code6 := FALedgerEntry."Document No.";
            TempTable.Date2 := FALedgerEntry."Posting Date";
        end;
    end;

    local procedure GetAccountingDepreciationValue(FANo: Code[20]; FADeprBookCode: Code[10]; StartDate: Date; EndDate: Date): Decimal
    var
        FALedgerEntry: Record "FA Ledger Entry";
        DateCalc: Date;
    begin
        case true of
            StartDate <> 0D:
                DateCalc := StartDate;
            EndDate <> 0D:
                DateCalc := EndDate;
            else
                DateCalc := WorkDate();
        end;

        StartDate := CalcDate('<-CY>', DateCalc);
        EndDate := CalcDate('<CY>', DateCalc);

        FALedgerEntry.Reset();
        FALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code");
        FALedgerEntry.SetRange("FA No.", FANo);
        FALedgerEntry.SetRange("Depreciation Book Code", FADeprBookCode);
        FALedgerEntry.SetRange("FA Posting Type", FALedgerEntry."FA Posting Type"::Depreciation);
        FALedgerEntry.SetRange("FA Posting Category", FALedgerEntry."FA Posting Category"::" ");
        FALedgerEntry.SetFilter("Posting Date", '%1..%2', StartDate, EndDate);
        FALedgerEntry.CalcSums(Amount);
        exit(-FALedgerEntry.Amount)
    end;

    local procedure GetPeriodDepreciationValue(FANo: Code[20]; FADeprBookCode: Code[10]; StartDate: Date; EndDate: Date): Decimal
    var
        FALedgerEntry: Record "FA Ledger Entry";
    begin
        FALedgerEntry.Reset();
        FALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code");
        FALedgerEntry.SetRange("FA No.", FANo);
        FALedgerEntry.SetRange("Depreciation Book Code", FADeprBookCode);
        FALedgerEntry.SetRange("FA Posting Type", FALedgerEntry."FA Posting Type"::Depreciation);
        FALedgerEntry.SetRange("FA Posting Category", FALedgerEntry."FA Posting Category"::" ");
        FALedgerEntry.SetFilter("Posting Date", '%1..%2', StartDate, EndDate);
        FALedgerEntry.CalcSums(Amount);
        exit(-FALedgerEntry.Amount)
    end;

    local procedure GetAccumulatedDepreciationValue(FANo: Code[20]; FADeprBookCode: Code[10]; EndDate: Date): Decimal
    var
        FALedgerEntry: Record "FA Ledger Entry";
    begin
        FALedgerEntry.Reset();
        FALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code");
        FALedgerEntry.SetRange("FA No.", FANo);
        FALedgerEntry.SetRange("Depreciation Book Code", FADeprBookCode);
        FALedgerEntry.SetRange("FA Posting Type", FALedgerEntry."FA Posting Type"::Depreciation);
        FALedgerEntry.SetRange("FA Posting Category", FALedgerEntry."FA Posting Category"::" ");
        if EndDate <> 0D then
            FALedgerEntry.SetFilter("Posting Date", '..%1', EndDate);
        FALedgerEntry.CalcSums(Amount);
        exit(-FALedgerEntry.Amount)
    end;

    local procedure GetLastDepreciationValue(FANo: Code[20]; FADeprBookCode: Code[10]; EndDate: Date): Decimal
    var
        FALedgerEntry: Record "FA Ledger Entry";
    begin
        FALedgerEntry.Reset();
        FALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code");
        FALedgerEntry.SetRange("FA No.", FANo);
        FALedgerEntry.SetRange("Depreciation Book Code", FADeprBookCode);
        FALedgerEntry.SetRange("FA Posting Type", FALedgerEntry."FA Posting Type"::Depreciation);
        FALedgerEntry.SetRange("FA Posting Category", FALedgerEntry."FA Posting Category"::" ");
        if EndDate <> 0D then
            FALedgerEntry.SetFilter("Posting Date", '..%1', EndDate);
        if FALedgerEntry.FindLast() then
            exit(-FALedgerEntry.Amount)
    end;

    local procedure GetSalvageValue(FANo: Code[20]; FADeprBookCode: Code[10]; EndDate: Date): Decimal
    var
        FALedgerEntry: Record "FA Ledger Entry";
    begin
        FALedgerEntry.Reset();
        FALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code");
        FALedgerEntry.SetRange("FA No.", FANo);
        FALedgerEntry.SetRange("Depreciation Book Code", FADeprBookCode);
        FALedgerEntry.SetRange("FA Posting Category", FALedgerEntry."FA Posting Category"::" ");
        FALedgerEntry.SetRange("FA Posting Type", FALedgerEntry."FA Posting Type"::"Salvage Value");
        if EndDate <> 0D then
            FALedgerEntry.SetFilter("Posting Date", '..%1', EndDate);
        FALedgerEntry.CalcSums(Amount);
        exit(FALedgerEntry.Amount)
    end;

    local procedure GetAcquisitionCost(FANo: Code[20]; FADeprBookCode: Code[10]; EndDate: Date): Decimal
    var
        FALedgerEntry: Record "FA Ledger Entry";
    begin
        FALedgerEntry.Reset();
        FALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code");
        FALedgerEntry.SetRange("FA No.", FANo);
        FALedgerEntry.SetRange("Depreciation Book Code", FADeprBookCode);
        FALedgerEntry.SetRange("PTSSFA Disposal Option", "PTSSFA Disposal Option"::" ");
        FALedgerEntry.SetRange("FA Posting Type", FALedgerEntry."FA Posting Type"::"Acquisition Cost");
        if EndDate <> 0D then
            FALedgerEntry.SetFilter("Posting Date", '..%1', EndDate);
        FALedgerEntry.CalcSums(Amount);
        exit(FALedgerEntry.Amount)
    end;

    local procedure GetAcquisitionDate(FANo: Code[20]; FADeprBookCode: Code[10]): Date
    var
        FALedgerEntry: Record "FA Ledger Entry";
    begin
        FALedgerEntry.Reset();
        FALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code");
        FALedgerEntry.SetRange("FA No.", FANo);
        FALedgerEntry.SetRange("Depreciation Book Code", FADeprBookCode);
        FALedgerEntry.SetRange("Document Type", FALedgerEntry."Document Type"::Invoice);
        FALedgerEntry.SetRange("PTSSFA Disposal Option", "PTSSFA Disposal Option"::" ");
        FALedgerEntry.SetRange("FA Posting Type", FALedgerEntry."FA Posting Type"::"Acquisition Cost");
        if FALedgerEntry.FindFirst() then
            exit(FALedgerEntry."Posting Date");
    end;

    local procedure GetLeasingContract(FANo: Code[20]): Code[20]
    var
        LeasingContractHeader: Record "Leasing Contract Header";
    begin
        Clear(LeasingContractHeader);
        LeasingContractHeader.SetRange("Fixed Asset No.", FANo);
        if LeasingContractHeader.FindFirst() then
            exit(LeasingContractHeader."No.");
    end;

    local procedure GetDate(lDate: Date; DateOption: Option Starting,Ending): Date
    begin
        case DateOption of
            DateOption::Starting:
                exit(DMY2Date(01, 01, Date2DMY(lDate, 3)));
            DateOption::Ending:
                exit(DMY2Date(31, 12, Date2DMY(lDate, 3)));
        end;
    end;

    local procedure ExportExcel(var TempTable: Record "PTSS Temporary Table")
    var
        ExportExcel: Record "Excel Buffer" temporary;
        FA: Record "Fixed Asset";
        Text001: Label 'Fixed Assets';
        Text002: Label 'Acquisition Date';
        Text003: Label 'Depreciation Tax';
        Text004: Label 'Acquisition Cost';
        Text005: Label 'Salvage Value';
        Text006: Label 'Depreciation';
        Text007: Label 'Accumuled Depreciation';
        Text008: Label 'Period Depreciation';
        Text009: Label 'Accounting Period Depreciation';
        Text010: Label 'Value To Depreciate';
        Text011: Label 'Accounting Net Value';
        Text012: Label 'Sales Amount';
        Text013: Label 'Gain/Loss Amount';
        Text014: Label 'Leasing Contract No.';
        Text015: Label 'Sales Date';
        Text016: Label 'Sales Document No.';
    begin
        ExportExcel.Reset();
        ExportExcel.DeleteAll();
        TempTable.Reset();
        TempTable.SetFilter(Decimal10, '>=%1', LedgerValue);
        if TempTable.FindSet() then begin
            ExportExcel.NewRow;
            ExportExcel.AddColumn(FA.FieldCaption("No."), FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(FA.FieldCaption(Description), FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(FA.FieldCaption("FA Class Code"), FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(FA.FieldCaption("FA Subclass Code"), FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(FA.FieldCaption("FA Location Code"), FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(FA.FieldCaption("Serial No."), FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(FA.FieldCaption("Search Description"), FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(FA.FieldCaption(Inactive), FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(FA.FieldCaption(Blocked), FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text002, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text003, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text004, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text005, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text006, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text007, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text008, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text009, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text010, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text011, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text012, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text013, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text014, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text015, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            ExportExcel.AddColumn(Text016, FALSE, '', true, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            REPEAT
                ExportExcel.NewRow;
                ExportExcel.AddColumn(TempTable.Code1, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
                ExportExcel.AddColumn(TempTable.Text1, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
                ExportExcel.AddColumn(TempTable.Code2, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
                ExportExcel.AddColumn(TempTable.Code3, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
                ExportExcel.AddColumn(TempTable.Code4, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
                ExportExcel.AddColumn(TempTable.Text2, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
                ExportExcel.AddColumn(TempTable.Text3, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
                ExportExcel.AddColumn(TempTable.Boolean1, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
                ExportExcel.AddColumn(TempTable.Boolean2, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
                ExportExcel.AddColumn(TempTable.Date1, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Date);
                ExportExcel.AddColumn(TempTable.Decimal1, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Number);
                ExportExcel.AddColumn(TempTable.Decimal2, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Number);
                ExportExcel.AddColumn(TempTable.Decimal3, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Number);
                ExportExcel.AddColumn(TempTable.Decimal4, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Number);
                ExportExcel.AddColumn(TempTable.Decimal5, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Number);
                ExportExcel.AddColumn(TempTable.Decimal6, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Number);
                ExportExcel.AddColumn(TempTable.Decimal7, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Number);
                ExportExcel.AddColumn(TempTable.Decimal8, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Number);
                ExportExcel.AddColumn(TempTable.Decimal9, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Number);
                ExportExcel.AddColumn((TempTable.Decimal10), FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Number);
                ExportExcel.AddColumn((TempTable.Decimal11), FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Number);
                ExportExcel.AddColumn(TempTable.Code5, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
                ExportExcel.AddColumn(TempTable.Date2, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Date);
                ExportExcel.AddColumn(TempTable.Code6, FALSE, '', FALSE, FALSE, FALSE, '', ExportExcel."Cell Type"::Text);
            UNTIL TempTable.NEXT = 0;
            ExportExcel.CreateNewBook(Text001);
            ExportExcel.WriteSheet(Text001, COMPANYNAME, USERID);
            ExportExcel.CloseBook();
            ExportExcel.SetFriendlyFilename(Text001);
            ExportExcel.OpenExcel();
        end;
    end;

    var
        StartDate: Date;
        EndDate: Date;
        ClassCode: Code[10];
        SubclassCode: Code[10];
        LedgerValue: Decimal;
}


