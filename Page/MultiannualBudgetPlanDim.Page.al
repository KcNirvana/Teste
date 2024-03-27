page 57102 "Multiannual Budget Plan Dim"
{
    Caption = 'Multiannual Budget Plan Report';
    DataCaptionExpression = BudgetName;
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
                field(Code; Rec.Code1)
                {
                    Caption = 'Code';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field(Name; Rec.Text1)
                {
                    Caption = 'Name';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field(PeriodAmount; Rec.Decimal1)
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
                field(PeriodAmountN1; Rec.Decimal2)
                {
                    Caption = 'T+1';
                    BlankZero = true;
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilter1);
                    end;
                }
                field(PeriodAmountN2; Rec.Decimal3)
                {
                    Caption = 'T+2';
                    BlankZero = true;
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilter2);
                    end;
                }
                field(PeriodAmountN3; Rec.Decimal4)
                {
                    Caption = 'T+3';
                    BlankZero = true;
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilter3);
                    end;
                }
                field(PeriodAmountN4; Rec.Decimal5)
                {
                    Caption = 'T+4';
                    BlankZero = true;
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownPeriodAmounts(Rec.Code2, Rec.Text3, DateFilter4);
                    end;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        FillTempTable();
    end;

    var
        BudgetName: Code[10];
        DimensionCode: Code[20];
        DateFilter: Text[30];
        DateFilter1: Text[30];
        DateFilter2: Text[30];
        DateFilter3: Text[30];
        DateFilter4: Text[30];
        PrintOption: Enum "Budget Report Print Options";
        PrintGLEntry: Enum "Budget Report Print GLEntry";
        ShowLines: Enum "Budget Report Show Lines";
        BudgetMovType: Enum "Budget Mov Type";

    procedure SetParam(pBudgetName: Code[10]; pDimensionCode: Code[20]; pDateFilter: Text[30]; pPrintOption: Enum "Budget Report Print Options"; pPrintGLEntry: Enum "Budget Report Print GLEntry"; pShowLines: Enum "Budget Report Show Lines"; pBudgetMovType: Enum "Budget Mov Type")
    begin
        BudgetName := pBudgetName;
        DimensionCode := pDimensionCode;
        DateFilter := pDateFilter;
        PrintOption := pPrintOption;
        PrintGLEntry := pPrintGLEntry;
        ShowLines := pShowLines;
        BudgetMovType := pBudgetMovType;
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
                Rec.Decimal1 := GetAmounts(RubricFilter, DateFilter);
                Rec.Decimal2 := GetPeriodAmounts(GlBudgetName."Future Years", RubricFilter, DateFilter1);
                Rec.Decimal3 := GetPeriodAmounts(GlBudgetName."Future Years", RubricFilter, DateFilter2);
                Rec.Decimal4 := GetPeriodAmounts(GlBudgetName."Future Years", RubricFilter, DateFilter3);
                Rec.Decimal5 := GetPeriodAmounts(GlBudgetName."Future Years", RubricFilter, DateFilter4);
                Rec.Boolean1 := DimensionValue.Totaling <> '';
                Rec.Text3 := RubricFilter;
                Rec.Code2 := GlBudgetName."Future Years";
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
        if BudgetMovType <> BudgetMovType::" " then
            BudgetEntryByType.SetRange(Budget_Mov_Type, BudgetMovType);
        case PrintGLEntry of
            PrintGLEntry::No:
                BudgetEntryByType.SetRange(Posted, false);
            PrintGLEntry::Yes:
                BudgetEntryByType.SetRange(Posted, true);
        end;
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
        if BudgetMovType <> BudgetMovType::" " then
            BudgetEntryByType.SetRange(Budget_Mov_Type, BudgetMovType);
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
        if BudgetMovType <> BudgetMovType::" " then
            GLBudgetEntry.SetRange("Budget Mov Type", BudgetMovType);
        case PrintGLEntry of
            PrintGLEntry::No:
                GLBudgetEntry.SetRange(Posted, false);
            PrintGLEntry::Yes:
                GLBudgetEntry.SetRange(Posted, true);
        end;
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
        if BudgetMovType <> BudgetMovType::" " then
            GLBudgetEntry.SetRange("Budget Mov Type", BudgetMovType);

        Clear(GLBudgetEntryPage);
        GLBudgetEntryPage.SetTableView(GLBudgetEntry);
        GLBudgetEntryPage.Editable(false);
        GLBudgetEntryPage.Run();
    end;

    local procedure GetDates()
    var
        GlAccount: Record "G/L Account" temporary;
        AuxStartDate: Date;
        AuxEndDate: Date;
        AuxYear: Integer;
        Text001: Label 'The date interval must be on the same year.';
    begin
        Clear(GlAccount);
        GlAccount.Setfilter("Date Filter", DateFilter);

        AuxStartDate := GlAccount.GETRANGEMIN("Date Filter");
        AuxEndDate := GlAccount.GETRANGEMAX("Date Filter");
        IF DATE2DMY(AuxStartDate, 3) <> DATE2DMY(AuxEndDate, 3) THEN
            ERROR(Text001);

        AuxYear := DATE2DMY(AuxStartDate, 3);
        DateFilter1 := FORMAT(DMY2DATE(1, 1, AuxYear + 1)) + '..' + Format(DMY2DATE(31, 12, AuxYear + 1));
        DateFilter2 := FORMAT(DMY2DATE(1, 1, AuxYear + 2)) + '..' + Format(DMY2DATE(31, 12, AuxYear + 2));
        DateFilter3 := FORMAT(DMY2DATE(1, 1, AuxYear + 3)) + '..' + Format(DMY2DATE(31, 12, AuxYear + 3));
        DateFilter4 := FORMAT(DMY2DATE(1, 1, AuxYear + 4)) + '..' + Format(DMY2DATE(31, 12, AuxYear + 4));
    end;
}

