report 50013 "Detail Account Statement Excel"
{
    Caption = 'Detail Account Statement Excel';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Integer; "Integer")
        {
            DataItemTableView = SORTING(Number)
                                WHERE(Number = CONST(1));
            dataitem("G/L Account"; "G/L Account")
            {
                DataItemTableView = SORTING("No.");
                PrintOnlyIfDetail = true;
                RequestFilterFields = "Date Filter", "No.", "Global Dimension 2 Filter", "Global Dimension 1 Filter";
            }
        }
    }

    var
        Text31022890: Label 'You cannot deactivate the field "Only Accs. With Entries at Date" with a "C" date';
        Text31022891: Label '-1D';
        Text31022892: Label 'Period: %1';
        Text31022893: Label 'All amounts are in %1';
        Text31022894: Label '1D';
        Text31022895: Label 'There is not any period in this range of date';
        DetailAccountStatement: Label 'Detail Account Statement';
        Balanceatdate: Label 'Balance at date';
        NetChange: Label 'Net Change';
        Credit: Label 'Credit';
        Debit: Label 'Debit';
        Description: Label 'Description';
        PostingDate: Label 'Posting Date';
        NumAccount: Label 'Num.Account:';
        Total: Label 'Total';
        TotalOpeningEntries: Label 'Total Opening Entries';
        TotalClosingEntries: Label 'Total Closing Entries';
        DocumentNo: Label 'Document No.';
        DocumentDate: Label 'Document Date';
        ExternalDocNo: Label 'Ext. Doc. No.';
        DocumentType: Label 'Document Type';
        VatBusPosting: Label 'VAT Bus. Posting Group';
        VatProdPosting: Label 'VAT Prod. Posting Group';
        DialogWindowLbl: Label 'Processing...\\#1#############################################################################################\\@2@@@@@@@@@@@@@@@@@@@@@@@@@';
        GLSetup: Record "General Ledger Setup";
        GLEntry: Record "G/L Entry";
        GLEntry3: Record "G/L Entry";
        NextAccPeriod: Record "Accounting Period";
        NumAcc: Text[20];
        NameAcc: Text[100];
        Num: Integer;
        i: Integer;
        FromDate: Date;
        ToDate: Date;
        PostDate: Date;
        InitPeriodDate: Date;
        DateClose: Date;
        EndPeriodDate: Date;
        DateOpen: Date;
        LastDate: Date;
        NormPostDate: Date;
        PrintAmountsInAddCurrency: Boolean;
        Print: Boolean;
        PrintClosing: Boolean;
        HaveEntries: Boolean;
        NotFound: Boolean;
        Found: Boolean;
        Open: Boolean;
        TFTotalDebitAmt: Decimal;
        TFTotalCreditAmt: Decimal;
        TFGLBalance: Decimal;
        TD: Decimal;
        TC: Decimal;
        TB: Decimal;
        TotalDebit: Decimal;
        TotalBalance: Decimal;
        TotalCredit: Decimal;
        GLBalance: Decimal;
        CloseTotalDebitEntries: Decimal;
        CloseTotalCreditEntries: Decimal;
        CloseGLBalanceEntries: Decimal;
        TransDebit: Decimal;
        TransCredit: Decimal;
        NewPagePerAcc: Boolean;
        PreviusData: Boolean;
        IncludeAccountBalance: Boolean;
        GLAcc2: Record "G/L Account";
        IncludeZeroBalance: Boolean;

        "//--soft--//": Integer;
        PageGroupNo: Integer;
        PostingGroupBreak: Boolean;
        TDbyPG: Decimal;
        TCbyPG: Decimal;
        HasPostingGroup: Boolean;
        GLEnt: Record "G/L Entry";
        Desc: Text[100];

    procedure ExportExcel()
    var
        TempExcelBuffer: Record "Excel Buffer" temporary;
        RowNo: Integer;
        EntryNo: Integer;
        WindowDialog: Dialog;
        GLFilterDim1: Code[20];
        GLFilterDim2: Code[20];
        GLFilterAccType: Text[30];
        GLFilterAcc: Text[30];
        GLFilter: Text[30];
        GLAccount: Record "G/L Account";
        TotalRecNo: Integer;
        RecNo: Integer;
    begin
        CLEAR(TempExcelBuffer);
        CLEAR(RowNo);
        CLEAR(EntryNo);
        CLEAR(WindowDialog);
        Clear(GLAccount);

        GLAccount.Reset();
        GLAccount.CopyFilters("G/L Account");
        GLAccount.SETRANGE("Account Type", GLAccount."Account Type"::Posting);
        IF GLAccount.FindSet() then begin
            WindowDialog.OPEN(DialogWindowLbl);
            TotalRecNo := GLAccount.COUNT;
            RecNo := 0;
            RowNo := 1;
            ExcelEnterCell(TempExcelBuffer, RowNo, 1, NumAccount, TRUE, FALSE, TRUE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
            ExcelEnterCell(TempExcelBuffer, RowNo, 2, Description, TRUE, FALSE, TRUE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
            ExcelEnterCell(TempExcelBuffer, RowNo, 3, FORMAT('Nº Dependência'), TRUE, FALSE, TRUE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
            ExcelEnterCell(TempExcelBuffer, RowNo, 4, FORMAT('Nº Portaria'), TRUE, FALSE, TRUE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
            RowNo := 2;
            repeat
                IF ValidateGLAccount(GLAccount) then begin
                    ExcelEnterCell(TempExcelBuffer, RowNo, 1, NumAccount, TRUE, FALSE, TRUE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
                    ExcelEnterCell(TempExcelBuffer, RowNo, 2, Description, TRUE, FALSE, TRUE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
                end;
                RowNo += 1;
            until GLAccount.Next() = 0;
        end;
        TempExcelBuffer.CreateNewBook(DetailAccountStatement);
        TempExcelBuffer.WriteSheet(DetailAccountStatement, COMPANYNAME, USERID);
        TempExcelBuffer.CloseBook();
        TempExcelBuffer.SetFriendlyFilename(DetailAccountStatement);
        TempExcelBuffer.OpenExcel();
    end;

    procedure ValidateGLAccount(GLAccount: Record "G/L Account"): Boolean
    var
        GLAcc2: Record "G/L Account";
        GLAcc3: Record "G/L Account";
        FromDate: date;
        ToDate: date;
        GLFilterDim1: Code[20];
        GLFilterDim2: Code[20];
    begin
        FromDate := GLAccount.GETRANGEMIN("Date Filter");
        ToDate := GLAccount.GETRANGEMAX("Date Filter");
        GLAcc2 := GLAccount;
        GLAcc2.SETRANGE("Date Filter", 0D, ToDate);
        GLAcc2.CALCFIELDS("Balance at Date");
        GLAcc3 := GLAccount;
        GLAcc3.SETRANGE("Date Filter", FromDate, ToDate);
        GLAcc3.CALCFIELDS("Debit Amount", "Credit Amount", Balance, "Balance at Date", "Additional-Currency Balance", "Net Change");

        IF IncludeAccountBalance THEN BEGIN
            IF GLAcc3."Balance at Date" = 0 THEN
                HaveEntries := CalcEntries(FromDate, GLFilterDim1, GLFilterDim2)
            ELSE
                HaveEntries := CalcEntries(0D, GLFilterDim1, GLFilterDim2);
            IF (GLAcc3."Balance at Date" = 0) AND (NOT IncludeZeroBalance) THEN
                Exit(false);
        END ELSE BEGIN
            IF (GLAcc2."Balance at Date" = 0) AND (NOT IncludeZeroBalance) THEN
                Exit(false);
            IF (GLAcc3."Debit Amount" <> 0) OR (GLAcc3."Credit Amount" <> 0) THEN
                HaveEntries := FALSE
            ELSE
                HaveEntries := TRUE;
        END;
        InitPeriodDate := CalcPeriod(FromDate);
        EndPeriodDate := CalcPeriodEnd(ToDate);
        Exit(true)
    end;

    procedure CalcPeriod(InitialDate: Date): Date
    var
        AccPeriod: Record "Accounting Period";
    begin
        AccPeriod.SETRANGE(AccPeriod."New Fiscal Year", TRUE);
        AccPeriod.SETFILTER(AccPeriod."Starting Date", '<=%1', InitialDate);
        IF AccPeriod.FINDLAST THEN
            EXIT(AccPeriod."Starting Date")
        ELSE
            ERROR(Text31022895);
    end;

    procedure CalcAccountingPeriod(DateAux: Date; Lastdate: Date): Integer
    var
        AccPeriod: Record "Accounting Period";
    begin
        AccPeriod.SETRANGE(AccPeriod."New Fiscal Year", TRUE);
        AccPeriod.SETFILTER(AccPeriod."Starting Date", '>%1 & <=%2', Lastdate, DateAux);
        EXIT(AccPeriod.COUNT);
    end;

    procedure CalcEntries(EndDate: Date; GLFilterDim1: Code[20];
                             GLFilterDim2: Code[20]): Boolean
    var
        GLEntry: Record "G/L Entry";
    begin
        GLEntry.SETCURRENTKEY("Posting Date", "G/L Account No.");
        GLEntry.SETRANGE("Posting Date", EndDate, ToDate);
        IF GLFilterDim1 <> '' THEN
            GLEntry.SETFILTER("Global Dimension 1 Code", GLFilterDim1);
        IF GLFilterDim2 <> '' THEN
            GLEntry.SETFILTER("Global Dimension 2 Code", GLFilterDim2);
        GLEntry.SETFILTER("G/L Account No.", "G/L Account"."No.");
        IF GLEntry.FINDFIRST THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;

    procedure CalcPeriodEnd(EndPeriodDate: Date): Date
    var
        AccPeriod: Record "Accounting Period";
    begin
        AccPeriod.SETRANGE(AccPeriod."New Fiscal Year", TRUE);
        AccPeriod.SETFILTER(AccPeriod."Starting Date", '<=%1', CALCDATE(Text31022894, NORMALDATE(EndPeriodDate)));
        IF AccPeriod.FINDLAST THEN
            EXIT(AccPeriod."Starting Date")
        ELSE
            ERROR(Text31022895);
    end;

    procedure ExcelEnterCell(var TempExcelBuffer: Record "Excel Buffer" temporary;
                             RowNo: integer; ColumnNo: integer; CellValue: text;
                             Bold: boolean; Italic: boolean; UnderLine: boolean;
                             DoubleUnderLine: boolean; Format: text[30];
                             CellType: option
                             )
    begin
        TempExcelBuffer.INIT;
        TempExcelBuffer.VALIDATE("Row No.", RowNo);
        TempExcelBuffer.VALIDATE("Column No.", ColumnNo);
        TempExcelBuffer."Cell Value as Text" := CellValue;
        TempExcelBuffer.Formula := '';
        TempExcelBuffer.Bold := Bold;
        TempExcelBuffer.Italic := Italic;
        TempExcelBuffer.NumberFormat := Format;
        TempExcelBuffer."Cell Type" := CellType;
        TempExcelBuffer.INSERT;
    end;
}

