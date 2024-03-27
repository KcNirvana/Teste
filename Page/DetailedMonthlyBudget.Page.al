page 57103 "Detailed Monthly Budget Report"
{
    Caption = 'Detailed Monthly Budget Report';
    Editable = false;
    PageType = List;
    SourceTable = "PTSS Temporary Table";
    SourceTableTemporary = true;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code1; Rec.Code1)
                {
                    Caption = 'Code';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field(Name1; Rec.Text1)
                {
                    Caption = 'Name';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field(PeriodAmount; Rec.Decimal13)
                {
                    Caption = 'Period Amount';
                    BlankZero = true;
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter);
                    end;
                }
                field(PeriodAmountN1; Rec.Decimal1)
                {
                    BlankZero = true;
                    Caption = 'January';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilterAux[1]);
                    end;
                }
                field(PeriodAmountN2; Rec.Decimal2)
                {
                    BlankZero = true;
                    Caption = 'February';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilterAux[2]);
                    end;
                }
                field(PeriodAmountN3; Rec.Decimal3)
                {
                    BlankZero = true;
                    Caption = 'March';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilterAux[3]);
                    end;
                }
                field(PeriodAmountN4; Rec.Decimal4)
                {
                    BlankZero = true;
                    Caption = 'April';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilterAux[4]);
                    end;
                }
                field(PeriodAmountM5; Rec.Decimal5)
                {
                    BlankZero = true;
                    Caption = 'May';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilterAux[5]);
                    end;
                }
                field(PeriodAmountM6; Rec.Decimal6)
                {
                    BlankZero = true;
                    Caption = 'June';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilterAux[6]);
                    end;
                }
                field(PeriodAmountM7; Rec.Decimal7)
                {
                    BlankZero = true;
                    Caption = 'July';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilterAux[7]);
                    end;
                }
                field(PeriodAmountM8; Rec.Decimal8)
                {
                    BlankZero = true;
                    Caption = 'August';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilterAux[8]);
                    end;
                }
                field(PeriodAmountM9; Rec.Decimal9)
                {
                    BlankZero = true;
                    Caption = 'September';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilterAux[9]);
                    end;
                }
                field(PeriodAmountM10; Rec.Decimal10)
                {
                    BlankZero = true;
                    Caption = 'October';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilterAux[10]);
                    end;
                }
                field(PeriodAmountM11; Rec.Decimal11)
                {
                    BlankZero = true;
                    Caption = 'November';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilterAux[11]);
                    end;
                }
                field(PeriodAmountM12; Rec.Decimal12)
                {
                    BlankZero = true;
                    Caption = 'December';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilterAux[12]);
                    end;
                }
            }
        }
    }

    actions
    {
    }
    var
        BudgetName: Code[10];
        DimensionCode: Code[20];
        DateFilter: Text[30];
        DateFilterAux: array[12] of Text[30];
        PrintOption: Enum "Budget Report Print Options";

    trigger OnOpenPage()
    begin
        FillTempTable();
    end;

    procedure SetParam(pBudgetName: Code[10]; pDimensionCode: Code[20]; pDateFilter: Text[30]; pPrintOption: Enum "Budget Report Print Options")
    begin
        BudgetName := pBudgetName;
        DimensionCode := pDimensionCode;
        DateFilter := pDateFilter;
        PrintOption := pPrintOption;
    end;

    local procedure FillTempTable()
    var
        DimensionValue: Record "Dimension Value";
        GlBudgetName: Record "G/L Budget Name";
        RubricFilter: Text;
        EntryNo: Integer;
    begin
        Clear(Rec);
        Rec.DeleteAll();
        EntryNo := 1;

        GlBudgetName.Get(BudgetName);
        GetDates();

        DimensionValue.Reset();
        DimensionValue.SetRange("Dimension Code", DimensionCode);
        if PrintOption <> PrintOption::All then
            DimensionValue.SetRange("Budget Dim Type", PrintOption.AsInteger());
        if DimensionValue.FindSet() then
            repeat
                Clear(RubricFilter);
                If DimensionValue.Totaling <> '' then
                    RubricFilter := DimensionValue.Totaling
                else
                    RubricFilter := DimensionValue.Code;
                Rec.Init();
                Rec."Entry No." := EntryNo;
                Rec.Code1 := DimensionValue.Code;
                Rec.Text1 := DimensionValue.Name;
                Rec.Decimal13 := GetAmounts(RubricFilter, DateFilter);
                Rec.Decimal1 := GetPeriodAmounts(GlBudgetName.Name, RubricFilter, DateFilterAux[1]);
                Rec.Decimal2 := GetPeriodAmounts(GlBudgetName.Name, RubricFilter, DateFilterAux[2]);
                Rec.Decimal3 := GetPeriodAmounts(GlBudgetName.Name, RubricFilter, DateFilterAux[3]);
                Rec.Decimal4 := GetPeriodAmounts(GlBudgetName.Name, RubricFilter, DateFilterAux[4]);
                Rec.Decimal5 := GetPeriodAmounts(GlBudgetName.Name, RubricFilter, DateFilterAux[5]);
                Rec.Decimal6 := GetPeriodAmounts(GlBudgetName.Name, RubricFilter, DateFilterAux[6]);
                Rec.Decimal7 := GetPeriodAmounts(GlBudgetName.Name, RubricFilter, DateFilterAux[7]);
                Rec.Decimal8 := GetPeriodAmounts(GlBudgetName.Name, RubricFilter, DateFilterAux[8]);
                Rec.Decimal9 := GetPeriodAmounts(GlBudgetName.Name, RubricFilter, DateFilterAux[9]);
                Rec.Decimal10 := GetPeriodAmounts(GlBudgetName.Name, RubricFilter, DateFilterAux[10]);
                Rec.Decimal11 := GetPeriodAmounts(GlBudgetName.Name, RubricFilter, DateFilterAux[11]);
                Rec.Decimal12 := GetPeriodAmounts(GlBudgetName.Name, RubricFilter, DateFilterAux[12]);
                Rec.Boolean1 := DimensionValue.Totaling <> '';
                Rec.Text3 := RubricFilter;
                Rec.Code2 := GlBudgetName.Name;
                Rec.Insert();
                EntryNo += 1;
            until DimensionValue.Next() = 0;
        Rec.Reset();
        if Rec.FindFirst() then;
    end;

    local procedure GetAmounts(RubricFilter: text; DateFilter: text): Decimal
    var
        BudgetEntryByType: Query "Budget Entry By Type";
        ReturnAmount: Decimal;
    begin
        Clear(ReturnAmount);
        Clear(BudgetEntryByType);
        BudgetEntryByType.SetRange(Budget_Name, BudgetName);
        BudgetEntryByType.SetFilter(Date, DateFilter);
        BudgetEntryByType.SetFilter(Rubric_Code, RubricFilter);
        BudgetEntryByType.Open();
        while BudgetEntryByType.Read() do
            ReturnAmount += BudgetEntryByType.Sum_Amount;

        BudgetEntryByType.Close();
        exit(ReturnAmount);
    end;

    local procedure GetPeriodAmounts(Budget_Name: text; RubricFilter: text; DateFilter: text): Decimal
    var
        BudgetEntryByType: Query "Budget Entry By Type";
        ReturnAmount: Decimal;
    begin
        Clear(ReturnAmount);
        Clear(BudgetEntryByType);
        BudgetEntryByType.SetRange(Budget_Name, Budget_Name);
        BudgetEntryByType.SetFilter(Date, DateFilter);
        BudgetEntryByType.SetFilter(Rubric_Code, RubricFilter);
        BudgetEntryByType.Open();
        while BudgetEntryByType.Read() do
            ReturnAmount += BudgetEntryByType.Sum_Amount;

        BudgetEntryByType.Close();
        exit(ReturnAmount);
    end;

    local procedure DrillDownAmounts(RubricFilter: text; DateFilter: text)
    var
        GLBudgetEntry: Record "G/L Budget Entry";
        GLBudgetEntryPage: Page "G/L Budget Entries";
    begin
        GLBudgetEntry.Reset();
        GLBudgetEntry.FilterGroup(2);
        GLBudgetEntry.SetRange("Budget Name", BudgetName);
        GLBudgetEntry.SetFilter(Date, DateFilter);
        GLBudgetEntry.SetFilter("Rubric Code", RubricFilter);

        Clear(GLBudgetEntryPage);
        GLBudgetEntryPage.SetTableView(GLBudgetEntry);
        GLBudgetEntryPage.Editable(false);
        GLBudgetEntryPage.Run();
    end;

    local procedure DrillDownPeriodAmounts(Budget_Name: text; RubricFilter: text; DateFilter: text)
    var
        GLBudgetEntry: Record "G/L Budget Entry";
        GLBudgetEntryPage: Page "G/L Budget Entries";
    begin
        GLBudgetEntry.Reset();
        GLBudgetEntry.FilterGroup(2);
        GLBudgetEntry.SetRange("Budget Name", Budget_Name);
        GLBudgetEntry.SetFilter(Date, DateFilter);
        GLBudgetEntry.SetFilter("Rubric Code", RubricFilter);

        Clear(GLBudgetEntryPage);
        GLBudgetEntryPage.SetTableView(GLBudgetEntry);
        GLBudgetEntryPage.Editable(false);
        GLBudgetEntryPage.Run();
    end;

    local procedure GetDates()
    var
        GlAccount: Record "G/L Account" temporary;
        StartDate: Date;
        EndDate: Date;
        AuxStartDate: array[12] of Date;
        AuxEndDate: array[12] of Date;
        AuxYear: Integer;
        i: Integer;
        Text001: Label 'The date interval must be on the same year.';
    begin
        Clear(DateFilterAux);
        Clear(GlAccount);
        GlAccount.Setfilter("Date Filter", DateFilter);

        StartDate := GlAccount.GETRANGEMIN("Date Filter");
        EndDate := GlAccount.GETRANGEMAX("Date Filter");
        IF DATE2DMY(StartDate, 3) <> DATE2DMY(EndDate, 3) THEN
            ERROR(Text001);

        AuxYear := DATE2DMY(StartDate, 3);

        FOR i := 1 TO 12 DO BEGIN
            AuxStartDate[i] := DMY2DATE(1, i, AuxYear);
            AuxEndDate[i] := CALCDATE('<CM>', AuxStartDate[i]);
        END;

        FOR i := 1 TO 12 DO
            DateFilterAux[i] := FORMAT(AuxStartDate[i]) + '..' + Format(AuxEndDate[i]);

    end;
}

