page 57104 "Revenue Budget Changes Report"
{
    Caption = 'Revenue Budget Changes';
    Editable = false;
    PageType = List;
    DataCaptionExpression = GetCaption();
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
                field(Text1; Rec.Text1)
                {
                    Caption = 'Name';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }

                field(Code2; Rec.Code2)
                {
                    Caption = 'Type';
                    Editable = false;
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field(Decimal1; Rec.Decimal1)
                {
                    Caption = 'Initial forecasts';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.FieldNo(Decimal1), Rec.Text4);
                    end;
                }
                field(Decimal2; Rec.Decimal2)
                {
                    Caption = 'Inscriptions / Reinforcements';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.FieldNo(Decimal2), Rec.Text4);
                    end;
                }

                field(Decimal3; Rec.Decimal3)
                {
                    Caption = 'Decreases / Cancellations';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.FieldNo(Decimal3), Rec.Text4);
                    end;
                }
                field(Decimal4; Rec.Decimal4)
                {
                    Caption = 'Special Credits';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.FieldNo(Decimal4), Rec.Text4);
                    end;
                }
                field(Decimal5; Rec.Decimal5)
                {
                    Caption = 'Corrected Previsions';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field(Text3; Rec.Text3)
                {
                    Caption = 'Observations';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
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
        BudgetMovType: Enum "Budget Mov Type";
        MovType: Enum "GLBudget Mov Type";
        BudgetName: Code[10];
        DateFilter: Text[30];
        DimensionCode: Code[20];

    procedure SetParam(pBudgetName: Code[10]; pDimensionCode: Code[20]; pDateFilter: Text[30]);
    begin
        BudgetName := pBudgetName;
        DateFilter := pDateFilter;
        DimensionCode := pDimensionCode;
    end;

    local procedure FillTempTable()
    var
        DimensionValue: Record "Dimension Value";
        RubricFilter: Text;
        EntryNo: Integer;
    begin
        Clear(Rec);
        Rec.DeleteAll();
        EntryNo := 1;

        GetDates();

        DimensionValue.Reset();
        DimensionValue.SetRange("Dimension Code", DimensionCode);
        DimensionValue.SetRange("Budget Dim Type", "Budget Dim Type"::Revenue);
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
                Rec.Decimal1 := GetAmounts(Rec.FieldNo(Decimal1), BudgetName, DateFilter, RubricFilter);
                Rec.Decimal2 := GetAmounts(Rec.FieldNo(Decimal2), BudgetName, DateFilter, RubricFilter);
                Rec.Decimal3 := GetAmounts(Rec.FieldNo(Decimal3), BudgetName, DateFilter, RubricFilter);
                Rec.Decimal4 := GetAmounts(Rec.FieldNo(Decimal4), BudgetName, DateFilter, RubricFilter);
                Rec.Decimal5 := (Rec.Decimal1 + Rec.Decimal2) - (Rec.Decimal3 + Rec.Decimal4);
                Rec.Boolean1 := DimensionValue.Totaling <> '';
                Rec.Code2 := GetType(BudgetName, DateFilter, RubricFilter);
                Rec.Text3 := '';
                Rec.Text4 := RubricFilter;
                Rec.Insert();
                EntryNo += 1;
            until DimensionValue.Next() = 0;
        Rec.Reset();
        if Rec.FindFirst() then;
    end;

    local procedure GetAmounts(FieldNo: Integer; BudgetFilter: Code[10]; DateFilter: Text[30]; RubricFilter: text): Decimal
    var
        BudgetEntryByDimensions: Query "Budget Entry By Dimensions";
        ReturnAmount: Decimal;
    begin
        Clear(ReturnAmount);
        Clear(BudgetEntryByDimensions);
        BudgetEntryByDimensions.SetRange(Budget_Name, BudgetFilter);
        BudgetEntryByDimensions.SetRange(Posted, true);
        BudgetEntryByDimensions.SetFilter(Rubric_Code, RubricFilter);
        BudgetEntryByDimensions.SetFilter(Date, DateFilter);
        case FieldNo of
            401:
                BudgetEntryByDimensions.SetRange(Budget_Mov_Type, BudgetMovType::"Initial Budget");
            402:
                begin
                    BudgetEntryByDimensions.SetFilter(Budget_Mov_Type, '%1|%2', BudgetMovType::"Budget ChangeA", BudgetMovType::"Budget ChangeP");
                    BudgetEntryByDimensions.SetRange(Mov_Type, MovType::Increase);
                end;
            403:
                begin
                    BudgetEntryByDimensions.SetFilter(Budget_Mov_Type, '%1|%2', BudgetMovType::"Budget ChangeA", BudgetMovType::"Budget ChangeP");
                    BudgetEntryByDimensions.SetRange(Mov_Type, MovType::Decrease);
                end;
            404:
                begin
                    BudgetEntryByDimensions.SetRange(Budget_Mov_Type, BudgetMovType::"Budget ChangeC");
                    BudgetEntryByDimensions.SetFilter(Mov_Type, '%1|%2', MovType::Increase, MovType::Decrease);
                end;
        end;
        BudgetEntryByDimensions.Open();
        while BudgetEntryByDimensions.Read() do
            ReturnAmount += BudgetEntryByDimensions.Sum_Amount;

        BudgetEntryByDimensions.Close();
        exit(ReturnAmount);
    end;

    local procedure DrillDownAmounts(FieldNo: Integer; RubricFilter: text)
    var
        GLBudgetEntry: Record "G/L Budget Entry";
        GLBudgetEntryPage: Page "G/L Budget Entries";
    begin
        GLBudgetEntry.Reset();
        GLBudgetEntry.FilterGroup(2);
        GLBudgetEntry.SetRange("Budget Name", BudgetName);
        GLBudgetEntry.SetFilter(Date, DateFilter);
        GLBudgetEntry.SetFilter("Rubric Code", RubricFilter);
        GLBudgetEntry.SetRange(Posted, true);
        case FieldNo of
            401:
                GLBudgetEntry.SetRange("Budget Mov Type", BudgetMovType::"Initial Budget");
            402:
                begin
                    GLBudgetEntry.SetFilter("Budget Mov Type", '%1|%2', BudgetMovType::"Budget ChangeA", BudgetMovType::"Budget ChangeP");
                    GLBudgetEntry.SetRange("Mov Type", MovType::Increase);
                end;
            403:
                begin
                    GLBudgetEntry.SetFilter("Budget Mov Type", '%1|%2', BudgetMovType::"Budget ChangeA", BudgetMovType::"Budget ChangeP");
                    GLBudgetEntry.SetRange("Mov Type", MovType::Decrease);
                end;
            404:
                begin
                    GLBudgetEntry.SetRange("Budget Mov Type", BudgetMovType::"Budget ChangeC");
                    GLBudgetEntry.SetFilter("Mov Type", '%1|%2', MovType::Increase, MovType::Decrease);
                end;
        end;
        Clear(GLBudgetEntryPage);
        GLBudgetEntryPage.SetTableView(GLBudgetEntry);
        GLBudgetEntryPage.Editable(false);
        GLBudgetEntryPage.Run();
    end;

    local procedure GetType(BudgetFilter: Code[10]; DateFilter: Text[30]; RubricFilter: text): Code[20]
    var
        GLBudgetEntry: Record "G/L Budget Entry";
        PermissiveChange: Boolean;
        ModifyingAmendment: Boolean;
        Result: Code[20];
    begin
        Clear(PermissiveChange);
        Clear(ModifyingAmendment);

        GLBudgetEntry.Reset();
        GLBudgetEntry.SetCurrentKey(Posted, "Rubric Code", "Budget Mov Type", "Budget Dim Type");
        GLBudgetEntry.SetRange("Budget Name", BudgetFilter);
        GLBudgetEntry.SetRange("Budget Mov Type", BudgetMovType::"Budget ChangeP");
        GLBudgetEntry.SetFilter(Date, DateFilter);
        GLBudgetEntry.SetFilter("Rubric Code", RubricFilter);
        PermissiveChange := Not GLBudgetEntry.IsEmpty;

        GLBudgetEntry.Reset();
        GLBudgetEntry.SetCurrentKey(Posted, "Rubric Code", "Budget Mov Type", "Budget Dim Type");
        GLBudgetEntry.SetRange("Budget Name", BudgetFilter);
        GLBudgetEntry.SetRange("Budget Mov Type", BudgetMovType::"Budget ChangeA");
        GLBudgetEntry.SetFilter(Date, DateFilter);
        GLBudgetEntry.SetFilter("Rubric Code", RubricFilter);
        ModifyingAmendment := Not GLBudgetEntry.IsEmpty;

        case true of
            PermissiveChange and ModifyingAmendment:
                Result := 'P + M';
            PermissiveChange:
                Result := 'P';
            ModifyingAmendment:
                Result := 'M';
        end;
        exit(Result);
    end;

    local procedure GetCaption(): Text[250]
    begin
        EXIT(STRSUBSTNO('%1 %2', Rec.Code1, Rec.Text1))
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
    end;

}

