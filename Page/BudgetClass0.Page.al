page 57000 "Budget Class 0"
{

    Caption = 'Budget Class 0';
    DataCaptionExpression = BudgetName;
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    ModifyAllowed = false;
    PageType = ListPlus;
    UsageCategory = Tasks;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(BudgetName; BudgetName)
                {
                    Caption = 'Budget Name';

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        GLBudgetNames: Page "G/L Budget Names";
                    begin
                        GLBudgetNames.LookupMode := true;
                        GLBudgetNames.SetRecord(GLBudgetName);
                        if GLBudgetNames.RunModal() = ACTION::LookupOK then begin
                            GLBudgetNames.GetRecord(GLBudgetName);
                            BudgetName := GLBudgetName.Name;
                            Text := GLBudgetName.Name;
                            ValidateBudgetName();
                            ValidateLineDimCode();
                            ValidateColumnDimCode();
                            UpdateMatrixSubform();
                            exit(true);
                        end;
                        ValidateBudgetName();
                        ValidateLineDimCode();
                        ValidateColumnDimCode();
                        CurrPage.Update();
                        exit(false);
                    end;

                    trigger OnValidate()
                    begin
                        ValidateBudgetName();
                        ValidateLineDimCode();
                        ValidateColumnDimCode();
                        UpdateMatrixSubform();
                    end;
                }
                field(LineDimCode; LineDimCode)
                {
                    Caption = 'Show as Lines';

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        NewCode: Text[30];
                    begin
                        NewCode := GetDimSelection(LineDimCode);
                        if NewCode = LineDimCode then
                            exit(false);

                        Text := NewCode;
                        LineDimCode := NewCode;
                        ValidateLineDimCode();
                        LineDimCodeOnAfterValidate();
                        exit(true);
                    end;

                    trigger OnValidate()
                    begin
                        if (UpperCase(LineDimCode) = UpperCase(ColumnDimCode)) and (LineDimCode <> '') then begin
                            ColumnDimCode := '';
                            ValidateColumnDimCode();
                        end;
                        ValidateLineDimCode();
                        GenerateColumnCaptions("Matrix Page Step Type"::Initial);
                        LineDimCodeOnAfterValidate();
                    end;
                }
                field(ColumnDimCode; ColumnDimCode)
                {
                    Caption = 'Show as Columns';

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        NewCode: Text[30];
                        "Matrix Page Step Type": Enum "Matrix Page Step Type";
                    begin
                        NewCode := GetDimSelection(ColumnDimCode);
                        if NewCode = ColumnDimCode then
                            exit(false);

                        Text := NewCode;
                        ColumnDimCode := NewCode;
                        ValidateColumnDimCode();
                        GenerateColumnCaptions("Matrix Page Step Type"::Initial);
                        ColumnDimCodeOnAfterValidate();
                        exit(true);
                    end;

                    trigger OnValidate()
                    var
                        "Matrix Page Step Type": Enum "Matrix Page Step Type";
                    begin
                        if (UpperCase(LineDimCode) = UpperCase(ColumnDimCode)) and (LineDimCode <> '') then begin
                            LineDimCode := '';
                            ValidateLineDimCode();
                        end;
                        ValidateColumnDimCode();
                        GenerateColumnCaptions("Matrix Page Step Type"::Initial);
                        ColumnDimCodeOnAfterValidate();
                    end;
                }
                field(BudgetMovType; BudgetMovType)
                {
                    Caption = 'Budget Mov Type';

                    trigger OnValidate()
                    begin
                        BudgetMovTypeOnAfterValidate;
                    end;
                }
                field(PeriodType; PeriodType)
                {
                    Caption = 'View by';
                    Enabled = PeriodTypeEnable;
                    Importance = Promoted;

                    trigger OnValidate()
                    begin
                        FindPeriod('');
                        PeriodTypeOnAfterValidate();
                    end;
                }
                field(RoundingFactor; RoundingFactor)
                {
                    Caption = 'Rounding Factor';
                    Importance = Promoted;
                    Visible = false;

                    trigger OnValidate()
                    begin
                        UpdateMatrixSubform();
                    end;
                }
                field(ShowColumnName; ShowColumnName)
                {
                    Caption = 'Show Column Name';

                    trigger OnValidate()
                    begin
                        ShowColumnNameOnPush();
                    end;
                }
                field("Revenue Equal Expense"; BudgetConfig."Revenue Equal Expense")
                {
                    Caption = 'Revenue Equal Expense';
                    Editable = false;
                }
                field(Blocked; GLBudgetName.Blocked)
                {
                    Caption = 'Blocked';
                    Editable = false;
                }
                field(BudgetDimType; BudgetDimType)
                {
                    Caption = 'Budget Dim Type';

                    trigger OnValidate()
                    begin
                        BudgetDimTypeOnAfterValidate();
                    end;
                }
                field(ShowBlockedDim; ShowBlockedDim)
                {
                    Caption = 'Show Blocked Dimensions';

                    trigger OnValidate()
                    begin
                        GenerateColumnCaptions("Matrix Page Step Type"::Initial);
                        UpdateMatrixSubform;
                        CurrPage.Update;
                    end;
                }
            }
            part(MatrixForm; "Budget Class 0 Matrix")
            {
            }
            group(Filters)
            {
                Caption = 'Filters';
                field(DateFilter; DateFilter)
                {
                    Caption = 'Date Filter';

                    trigger OnValidate()
                    begin
                        ValidateDateFilter(DateFilter);
                    end;
                }
                field(GLAccFilter; GLAccFilter)
                {
                    Caption = 'G/L Account Filter';

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        GLAccList: Page "G/L Account List";
                    begin
                        GLAccList.LookupMode(true);
                        if not (GLAccList.RunModal() = ACTION::LookupOK) then
                            exit(false);

                        Text := GLAccList.GetSelectionFilter();
                        exit(true);
                    end;

                    trigger OnValidate()
                    begin
                        GLAccFilterOnAfterValidate();
                    end;
                }
                field(GlobalDim1Filter; GlobalDim1Filter)
                {
                    CaptionClass = '1,3,1';
                    Caption = 'Global Dimension 1 Filter';
                    Enabled = GlobalDim1FilterEnable;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        DimensionValue: Record "Dimension Value";
                    begin
                        exit(DimensionValue.LookUpDimFilter(GLSetup."Global Dimension 1 Code", Text));
                    end;

                    trigger OnValidate()
                    begin
                        GlobalDim1FilterOnAfterValidate();
                    end;
                }
                field(GlobalDim2Filter; GlobalDim2Filter)
                {
                    CaptionClass = '1,3,2';
                    Caption = 'Global Dimension 2 Filter';
                    Enabled = GlobalDim2FilterEnable;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        DimensionValue: Record "Dimension Value";
                    begin
                        exit(DimensionValue.LookUpDimFilter(GLSetup."Global Dimension 2 Code", Text));
                    end;

                    trigger OnValidate()
                    begin
                        GlobalDim2FilterOnAfterValidate();
                    end;
                }
                field(BudgetDim1Filter; BudgetDim1Filter)
                {
                    CaptionClass = GetCaptionClass(1);
                    Caption = 'Budget Dimension 1 Filter';
                    Enabled = BudgetDim1FilterEnable;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        DimensionValue: Record "Dimension Value";
                    begin
                        exit(DimensionValue.LookUpDimFilter(GLBudgetName."Budget Dimension 1 Code", Text));
                    end;

                    trigger OnValidate()
                    begin
                        BudgetDim1FilterOnAfterValidate();
                    end;
                }
                field(BudgetDim2Filter; BudgetDim2Filter)
                {
                    CaptionClass = GetCaptionClass(2);
                    Caption = 'Budget Dimension 2 Filter';
                    Enabled = BudgetDim2FilterEnable;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        DimensionValue: Record "Dimension Value";
                    begin
                        exit(DimensionValue.LookUpDimFilter(GLBudgetName."Budget Dimension 2 Code", Text));
                    end;

                    trigger OnValidate()
                    begin
                        BudgetDim2FilterOnAfterValidate();
                    end;
                }
                field(BudgetDim3Filter; BudgetDim3Filter)
                {
                    CaptionClass = GetCaptionClass(3);
                    Caption = 'Budget Dimension 3 Filter';
                    Enabled = BudgetDim3FilterEnable;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        DimensionValue: Record "Dimension Value";
                    begin
                        exit(DimensionValue.LookUpDimFilter(GLBudgetName."Budget Dimension 3 Code", Text));
                    end;

                    trigger OnValidate()
                    begin
                        BudgetDim3FilterOnAfterValidate();
                    end;
                }
                field(BudgetDim4Filter; BudgetDim4Filter)
                {
                    CaptionClass = GetCaptionClass(4);
                    Caption = 'Budget Dimension 4 Filter';
                    Enabled = BudgetDim4FilterEnable;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        DimensionValue: Record "Dimension Value";
                    begin
                        exit(DimensionValue.LookUpDimFilter(GLBudgetName."Budget Dimension 4 Code", Text));
                    end;

                    trigger OnValidate()
                    begin
                        BudgetDim4FilterOnAfterValidate();
                    end;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Balance")
            {
                Caption = '&Balance';
                Image = Balance;
                action(GLBalanceBudget)
                {
                    Caption = 'G/L Account Balance B&udget by period';
                    Image = ChartOfAccounts;
                    Visible = false;

                    trigger OnAction()
                    var
                        GLAccount: Record "G/L Account";
                    begin
                        GLAccount.SetFilter("Budget Filter", BudgetName);
                        if BusUnitFilter <> '' then
                            GLAccount.SetFilter("Business Unit Filter", BusUnitFilter);
                        if GLAccFilter <> '' then
                            GLAccount.SetFilter("No.", GLAccFilter);
                        if DateFilter <> '' then
                            GLAccount.SetFilter("Date Filter", DateFilter);
                        case IncomeBalanceGLAccFilter of
                            IncomeBalanceGLAccFilter::"Balance Sheet":
                                GLAccount.SetRange("Income/Balance", GLAccount."Income/Balance"::"Balance Sheet");
                            IncomeBalanceGLAccFilter::"Income Statement":
                                GLAccount.SetRange("Income/Balance", GLAccount."Income/Balance"::"Income Statement");
                        end;
                        if GLAccCategoryFilter <> GLAccCategoryFilter::" " then
                            GLAccount.SetRange("Account Category", GLAccCategoryFilter);
                        if GlobalDim1Filter <> '' then
                            GLAccount.SetFilter("Global Dimension 1 Filter", GlobalDim1Filter);
                        if GlobalDim2Filter <> '' then
                            GLAccount.SetFilter("Global Dimension 2 Filter", GlobalDim2Filter);
                        PAGE.Run(PAGE::"G/L Balance/Budget", GLAccount);
                    end;
                }
            }
        }
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action("Copy Budget")
                {
                    Caption = 'Copy Budget';
                    Ellipsis = true;
                    Image = CopyBudget;
                    Visible = false;

                    trigger OnAction()
                    begin
                        REPORT.RunModal(REPORT::"Copy G/L Budget", true, false);
                        CurrPage.Update();
                    end;
                }
                separator(Action1102601004)
                {
                    Caption = '';
                }
                action("Export to Excel")
                {
                    Caption = 'Export to Excel';
                    Ellipsis = true;
                    Image = ExportToExcel;

                    trigger OnAction()
                    var
                        GLBudgetEntry: Record "G/L Budget Entry";
                    begin
                        GLBudgetEntry.SetFilter("Budget Name", BudgetName);
                        GLBudgetEntry.SetFilter("Business Unit Code", BusUnitFilter);
                        GLBudgetEntry.SetFilter("G/L Account No.", GLAccFilter);
                        GLBudgetEntry.SetFilter("Global Dimension 1 Code", GlobalDim1Filter);
                        GLBudgetEntry.SetFilter("Global Dimension 2 Code", GlobalDim2Filter);
                        GLBudgetEntry.SetFilter("Budget Dimension 1 Code", BudgetDim1Filter);
                        GLBudgetEntry.SetFilter("Budget Dimension 2 Code", BudgetDim2Filter);
                        GLBudgetEntry.SetFilter("Budget Dimension 3 Code", BudgetDim3Filter);
                        GLBudgetEntry.SetFilter("Budget Dimension 4 Code", BudgetDim4Filter);
                        REPORT.Run(REPORT::"Export Budget to Excel", true, false, GLBudgetEntry);
                    end;
                }
                action("Import from Excel")
                {
                    Caption = 'Import from Excel';
                    Ellipsis = true;
                    Image = ImportExcel;

                    trigger OnAction()
                    var
                        ImportBudgetfromExcel: Report "Import Budget from Excel";
                    begin
                        ImportBudgetfromExcel.SetParameters(BudgetName, 0);
                        ImportBudgetfromExcel.RunModal();
                        UpdateMatrixSubform();
                    end;
                }
                separator(Action1102601007)
                {
                }
                action("Reverse Lines and Columns")
                {
                    Caption = 'Reverse Lines and Columns';
                    Image = Undo;

                    trigger OnAction()
                    var
                        TempDimCode: Text[30];
                    begin
                        TempDimCode := ColumnDimCode;
                        ColumnDimCode := LineDimCode;
                        LineDimCode := TempDimCode;
                        ValidateLineDimCode();
                        ValidateColumnDimCode();

                        GenerateColumnCaptions("Matrix Page Step Type"::Initial);
                        UpdateMatrixSubform();
                    end;
                }
                action("Post Budget")
                {
                    Caption = 'Post Budget';
                    Image = Post;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        RecGLBudgetEntry: Record "G/L Budget Entry";
                        RecBudgetSetup: Record "Budget Configuration";
                        Dim1: Code[20];
                        Dim2: Code[20];
                        Dim3: Code[20];
                        Dim4: Code[20];
                        RecGLBudgetEntry1: Record "G/L Budget Entry";
                        RecGLBudgetEntry2: Record "G/L Budget Entry";
                        TempBudgetAmount: Decimal;
                        AuxDim1: Code[20];
                        AuxDim2: Code[20];
                        AuxDim3: Code[20];
                        AuxDim4: Code[20];
                        TempGLBudgetEntry: Record "G/L Budget Entry" temporary;
                    begin
                        CduBudget.PostBudget(BudgetName, BudgetMovType, DateFilter);
                    end;
                }
                action("Delete Budget")
                {
                    Caption = 'Delete Budget';
                    Image = Delete;
                    Visible = false;

                    trigger OnAction()
                    begin
                        CduBudget.DeleteBudget(BudgetName);
                    end;
                }
                action(ImportExportBudget)
                {
                    Caption = 'Import/Export Budget';
                    Image = ImportExport;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    RunObject = XMLport "Budget Import Export";
                }
                group(ReportGroup)
                {
                    Caption = 'Report';
                    Image = "Report";
                    action(ReportTrialBalance)
                    {
                        ApplicationArea = Suite;
                        Caption = 'Trial Balance/Budget';
                        Image = "Report";
                        trigger OnAction()
                        begin
                            REPORT.Run(REPORT::"Trial Balance/Budget");
                        end;
                    }
                    action(ReportBudget)
                    {
                        ApplicationArea = Suite;
                        Caption = 'Budget';
                        Image = "Report";

                        trigger OnAction()
                        var
                            GLAccount: Record "G/L Account";
                            Budget: Report "Budget";
                        begin
                            GLAccount.SetRange("Budget Filter", BudgetName);
                            Budget.SetRoundingFactor(RoundingFactor);
                            Budget.SetTableView(GLAccount);
                            Budget.Run();
                        end;
                    }
                }
                action("Next Period")
                {
                    Caption = 'Next Period';
                    Image = NextRecord;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    begin
                        if (LineDimType = LineDimType::Period) or (ColumnDimType = ColumnDimType::Period) then
                            exit;
                        FindPeriod('>');
                        CurrPage.Update();
                        UpdateMatrixSubform();
                    end;
                }
                action("Previous Period")
                {
                    Caption = 'Previous Period';
                    Image = PreviousRecord;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    begin
                        if (LineDimType = LineDimType::Period) or (ColumnDimType = ColumnDimType::Period) then
                            exit;
                        FindPeriod('<');
                        CurrPage.Update();
                        UpdateMatrixSubform();
                    end;
                }
                action("Previous Set")
                {
                    Caption = 'Previous Set';
                    Image = PreviousSet;

                    trigger OnAction()
                    begin
                        GenerateColumnCaptions("Matrix Page Step Type"::Previous);
                        UpdateMatrixSubform();
                    end;
                }
                action("Previous Column")
                {
                    Caption = 'Previous Column';
                    Image = PreviousRecord;


                    trigger OnAction()
                    begin
                        GenerateColumnCaptions("Matrix Page Step Type"::PreviousColumn);
                        UpdateMatrixSubform();
                    end;
                }
                action("Next Column")
                {
                    Caption = 'Next Column';
                    Image = NextRecord;


                    trigger OnAction()
                    begin
                        GenerateColumnCaptions("Matrix Page Step Type"::NextColumn);
                        UpdateMatrixSubform();
                    end;
                }
                action("Next Set")
                {
                    Caption = 'Next Set';
                    Image = NextSet;


                    trigger OnAction()
                    begin
                        GenerateColumnCaptions("Matrix Page Step Type"::Next);
                        UpdateMatrixSubform();
                    end;
                }
            }
        }
    }

    trigger OnInit()
    begin
        BudgetDim4FilterEnable := true;
        BudgetDim3FilterEnable := true;
        BudgetDim2FilterEnable := true;
        BudgetDim1FilterEnable := true;
        PeriodTypeEnable := true;
        GlobalDim2FilterEnable := true;
        GlobalDim1FilterEnable := true;
        ShowBlockedDim := false;
    end;

    trigger OnOpenPage()
    var
        GLAcc: Record "G/L Account";
        "Matrix Page Step Type": Enum "Matrix Page Step Type";
    begin

        PeriodType := PeriodType::Year;
        BudgetConfig.Get();
        BudgetConfig.TestField("Avaylable Endowment Account");
        EndowmentAccount := BudgetConfig."Avaylable Endowment Account";
        BudgetMovType := BudgetMovType::"Initial Budget";

        if (BudgetConfig.dim1 <> '') and (BudgetConfig.Sd1) then
            LineDimCode := BudgetConfig.dim1;

        if GLAccBudgetBuf.GetFilter("Global Dimension 1 Filter") <> '' then
            GlobalDim1Filter := GLAccBudgetBuf.GetFilter("Global Dimension 1 Filter");
        if GLAccBudgetBuf.GetFilter("Global Dimension 2 Filter") <> '' then
            GlobalDim2Filter := GLAccBudgetBuf.GetFilter("Global Dimension 2 Filter");

        GLSetup.Get();

        GlobalDim1FilterEnable :=
          (GLSetup."Global Dimension 1 Code" <> '') and
          (GLAccBudgetBuf.GetFilter("Global Dimension 1 Filter") = '');
        GlobalDim2FilterEnable :=
          (GLSetup."Global Dimension 2 Code" <> '') and
          (GLAccBudgetBuf.GetFilter("Global Dimension 2 Filter") = '');

        ValidateBudgetName();

        if LineDimCode = '' then
            LineDimCode := GLAcc.TableCaption();
        if ColumnDimCode = '' then
            ColumnDimCode := Text001;

        LineDimType := DimCodeToType(LineDimCode);
        ColumnDimType := DimCodeToType(ColumnDimCode);

        if (NewBudgetName <> '') and (NewBudgetName <> BudgetName) then begin
            BudgetName := NewBudgetName;
            ValidateBudgetName();
            ValidateLineDimCode();
            ValidateColumnDimCode();
        end;

        if DateFilter = '' then begin
            if (GLBudgetName."Budget Start Date" <> 0D) or (GLBudgetName."Budget End Date" <> 0D) then
                ValidateDateFilter(Format(GLBudgetName."Budget Start Date") + '..' + Format(GLBudgetName."Budget End Date"))
            else
                ValidateDateFilter(Format(CalcDate('<-CY>', Today)) + '..' + Format(CalcDate('<CY>', Today)));
        end;
        FindPeriod('');
        GenerateColumnCaptions("Matrix Page Step Type"::Initial);
        UpdateMatrixSubform();
    end;

    var
        GLAccBudgetBuf: Record "G/L Acc. Budget Buffer";
        GLSetup: Record "General Ledger Setup";
        GLBudgetName: Record "G/L Budget Name";
        PrevGLBudgetName: Record "G/L Budget Name";
        CduBudget: Codeunit Budget;
        MATRIX_MatrixRecords: array[32] of Record "Dimension Code Buffer";
        MATRIX_CaptionSet: array[32] of Text[80];
        MATRIX_CaptionRange: Text;
        FirstColumn: Text;
        LastColumn: Text;
        MATRIX_PrimKeyFirstCaptionInCu: Text;
        MATRIX_CurrentNoOfColumns: Integer;
        Text001: Label 'Period';
        Text003: Label 'Do you want to delete the budget entries shown?';
        Text004: Label 'DEFAULT';
        Text005: Label 'Default budget';
        Text006: Label '%1 is not a valid line definition.';
        Text007: Label '%1 is not a valid column definition.';
        Text008: Label '1,6,,Budget Dimension 1 Filter';
        Text009: Label '1,6,,Budget Dimension 2 Filter';
        Text010: Label '1,6,,Budget Dimension 3 Filter';
        Text011: Label '1,6,,Budget Dimension 4 Filter';
        BudgetName: Code[10];
        NewBudgetName: Code[10];
        LineDimType: Enum "G/L Budget Matrix Dimensions";
        ColumnDimType: Enum "G/L Budget Matrix Dimensions";
        LineDimCode: Text[30];
        ColumnDimCode: Text[30];
        PeriodType: Enum "Analysis Period Type";
        RoundingFactor: Enum "Analysis Rounding Factor";
        GLAccCategoryFilter: Enum "G/L Account Category";
        IncomeBalanceGLAccFilter: Enum "G/L Account Income/Balance";
        ShowColumnName: Boolean;
        DateFilter: Text[30];
        GLAccFilter: Text;
        GlobalDim1Filter: Text;
        GlobalDim2Filter: Text;
        BudgetDim1Filter: Text;
        BudgetDim2Filter: Text;
        BudgetDim3Filter: Text;
        BudgetDim4Filter: Text;
        InternalDateFilter: Text[30];
        BusUnitFilter: Text;
        HistoricGLAccFilter: Code[250];
        BudgetMovType: enum "Budget Mov Type";

        [InDataSet]
        GlobalDim1FilterEnable: Boolean;
        [InDataSet]
        GlobalDim2FilterEnable: Boolean;
        [InDataSet]
        PeriodTypeEnable: Boolean;
        [InDataSet]
        BudgetDim1FilterEnable: Boolean;
        [InDataSet]
        BudgetDim2FilterEnable: Boolean;
        [InDataSet]
        BudgetDim3FilterEnable: Boolean;
        [InDataSet]
        BudgetDim4FilterEnable: Boolean;
        BudgetConfig: Record "Budget Configuration";
        PrevisionN: Code[10];
        FutureYears: Code[10];
        BudgetDimType: Enum "Budget Dim Type";
        ShowBlockedDim: Boolean;
        EndowmentAccount: Code[20];

    procedure GenerateColumnCaptions(StepType: Enum "Matrix Page Step Type")
    var
        MATRIX_PeriodRecords: array[32] of Record Date;
        BusUnit: Record "Business Unit";
        GLAccount: Record "G/L Account";
        MatrixMgt: Codeunit "Matrix Management Class0";
        RecRef: RecordRef;
        FieldRef: FieldRef;
        i: Integer;
    begin
        Clear(MATRIX_CaptionSet);
        Clear(MATRIX_MatrixRecords);
        FirstColumn := '';
        LastColumn := '';
        MATRIX_CurrentNoOfColumns := 12;

        if ColumnDimCode = '' then
            exit;

        case ColumnDimCode of
            Text001:  // Period
                begin
                    MatrixMgt.GeneratePeriodMatrixData(
                      StepType.AsInteger(), MATRIX_CurrentNoOfColumns, ShowColumnName,
                      PeriodType, DateFilter, MATRIX_PrimKeyFirstCaptionInCu,
                      MATRIX_CaptionSet, MATRIX_CaptionRange, MATRIX_CurrentNoOfColumns, MATRIX_PeriodRecords);
                    for i := 1 to MATRIX_CurrentNoOfColumns do begin
                        MATRIX_MatrixRecords[i]."Period Start" := MATRIX_PeriodRecords[i]."Period Start";
                        MATRIX_MatrixRecords[i]."Period End" := MATRIX_PeriodRecords[i]."Period End";
                    end;
                    FirstColumn := Format(MATRIX_PeriodRecords[1]."Period Start");
                    LastColumn := Format(MATRIX_PeriodRecords[MATRIX_CurrentNoOfColumns]."Period End");
                    PeriodTypeEnable := true;
                end;
            GLAccount.TableCaption:
                begin
                    Clear(MATRIX_CaptionSet);
                    RecRef.GetTable(GLAccount);
                    RecRef.SetTable(GLAccount);
                    if GLAccFilter <> '' then begin
                        FieldRef := RecRef.Field(GLAccount.FieldNo("No."));
                        FieldRef.SetFilter(GLAccFilter);
                    end;
                    MatrixMgt.GenerateMatrixData(
                      RecRef, StepType.AsInteger(), 12, 1,
                      MATRIX_PrimKeyFirstCaptionInCu, MATRIX_CaptionSet, MATRIX_CaptionRange, MATRIX_CurrentNoOfColumns);
                    for i := 1 to MATRIX_CurrentNoOfColumns do
                        MATRIX_MatrixRecords[i].Code := CopyStr(MATRIX_CaptionSet[i], 1, MaxStrLen(MATRIX_MatrixRecords[i].Code));
                    if ShowColumnName then
                        MatrixMgt.GenerateMatrixData(
                          RecRef, "Matrix Page Step Type"::Same.AsInteger(), 12, GLAccount.FieldNo(Name),
                          MATRIX_PrimKeyFirstCaptionInCu, MATRIX_CaptionSet, MATRIX_CaptionRange, MATRIX_CurrentNoOfColumns);
                end;
            BusUnit.TableCaption:
                begin
                    Clear(MATRIX_CaptionSet);
                    RecRef.GetTable(BusUnit);
                    RecRef.SetTable(BusUnit);
                    if BusUnitFilter <> '' then begin
                        FieldRef := RecRef.Field(BusUnit.FieldNo(Code));
                        FieldRef.SetFilter(BusUnitFilter);
                    end;
                    MatrixMgt.GenerateMatrixData(
                      RecRef, StepType.AsInteger(), 12, 1,
                      MATRIX_PrimKeyFirstCaptionInCu, MATRIX_CaptionSet, MATRIX_CaptionRange, MATRIX_CurrentNoOfColumns);
                    for i := 1 to MATRIX_CurrentNoOfColumns do
                        MATRIX_MatrixRecords[i].Code := CopyStr(MATRIX_CaptionSet[i], 1, MaxStrLen(MATRIX_MatrixRecords[i].Code));
                    if ShowColumnName then
                        MatrixMgt.GenerateMatrixData(
                          RecRef, "Matrix Page Step Type"::Same.AsInteger(), 12, BusUnit.FieldNo(Name),
                          MATRIX_PrimKeyFirstCaptionInCu, MATRIX_CaptionSet, MATRIX_CaptionRange, MATRIX_CurrentNoOfColumns);
                end;
            // Apply dimension filter
            GLSetup."Global Dimension 1 Code":
                MatrixMgt.GenerateDimColumnCaption(
                  GLSetup."Global Dimension 1 Code",
                  GlobalDim1Filter, StepType.AsInteger(), MATRIX_PrimKeyFirstCaptionInCu, FirstColumn, LastColumn,
                  MATRIX_CaptionSet, MATRIX_MatrixRecords, MATRIX_CurrentNoOfColumns, ShowColumnName, MATRIX_CaptionRange, ShowBlockedDim);
            GLSetup."Global Dimension 2 Code":
                MatrixMgt.GenerateDimColumnCaption(
                  GLSetup."Global Dimension 2 Code",
                  GlobalDim2Filter, StepType.AsInteger(), MATRIX_PrimKeyFirstCaptionInCu, FirstColumn, LastColumn,
                  MATRIX_CaptionSet, MATRIX_MatrixRecords, MATRIX_CurrentNoOfColumns, ShowColumnName, MATRIX_CaptionRange, ShowBlockedDim);
            GLBudgetName."Budget Dimension 1 Code":
                MatrixMgt.GenerateDimColumnCaption(
                  GLBudgetName."Budget Dimension 1 Code",
                  BudgetDim1Filter, StepType.AsInteger(), MATRIX_PrimKeyFirstCaptionInCu, FirstColumn, LastColumn,
                  MATRIX_CaptionSet, MATRIX_MatrixRecords, MATRIX_CurrentNoOfColumns, ShowColumnName, MATRIX_CaptionRange, ShowBlockedDim);
            GLBudgetName."Budget Dimension 2 Code":
                MatrixMgt.GenerateDimColumnCaption(
                  GLBudgetName."Budget Dimension 2 Code",
                  BudgetDim2Filter, StepType.AsInteger(), MATRIX_PrimKeyFirstCaptionInCu, FirstColumn, LastColumn,
                  MATRIX_CaptionSet, MATRIX_MatrixRecords, MATRIX_CurrentNoOfColumns, ShowColumnName, MATRIX_CaptionRange, ShowBlockedDim);
            GLBudgetName."Budget Dimension 3 Code":
                MatrixMgt.GenerateDimColumnCaption(
                  GLBudgetName."Budget Dimension 3 Code",
                  BudgetDim3Filter, StepType.AsInteger(), MATRIX_PrimKeyFirstCaptionInCu, FirstColumn, LastColumn,
                  MATRIX_CaptionSet, MATRIX_MatrixRecords, MATRIX_CurrentNoOfColumns, ShowColumnName, MATRIX_CaptionRange, ShowBlockedDim);
            GLBudgetName."Budget Dimension 4 Code":
                MatrixMgt.GenerateDimColumnCaption(
                  GLBudgetName."Budget Dimension 4 Code",
                  BudgetDim4Filter, StepType.AsInteger(), MATRIX_PrimKeyFirstCaptionInCu, FirstColumn, LastColumn,
                  MATRIX_CaptionSet, MATRIX_MatrixRecords, MATRIX_CurrentNoOfColumns, ShowColumnName, MATRIX_CaptionRange, ShowBlockedDim);
        end;
    end;

    local procedure DimCodeToType(DimCode: Text[30]) Result: Enum "G/L Budget Matrix Dimensions"
    var
        BusUnit: Record "Business Unit";
        GLAcc: Record "G/L Account";
    begin
        case DimCode of
            '':
                Result := "G/L Budget Matrix Dimensions"::Undefined;
            GLAcc.TableCaption():
                Result := "G/L Budget Matrix Dimensions"::"G/L Account";
            Text001:
                Result := "G/L Budget Matrix Dimensions"::Period;
            BusUnit.TableCaption():
                Result := "G/L Budget Matrix Dimensions"::"Business Unit";
            GLSetup."Global Dimension 1 Code":
                Result := "G/L Budget Matrix Dimensions"::"Global Dimension 1";
            GLSetup."Global Dimension 2 Code":
                Result := "G/L Budget Matrix Dimensions"::"Global Dimension 2";
            GLBudgetName."Budget Dimension 1 Code":
                Result := "G/L Budget Matrix Dimensions"::"Budget Dimension 1";
            GLBudgetName."Budget Dimension 2 Code":
                Result := "G/L Budget Matrix Dimensions"::"Budget Dimension 2";
            GLBudgetName."Budget Dimension 3 Code":
                Result := "G/L Budget Matrix Dimensions"::"Budget Dimension 3";
            GLBudgetName."Budget Dimension 4 Code":
                Result := "G/L Budget Matrix Dimensions"::"Budget Dimension 4";
            else
                Result := "G/L Budget Matrix Dimensions"::Undefined;
        end;
    end;

    local procedure FindPeriod(SearchText: Code[10])
    var
        GLAcc: Record "G/L Account";
        Calendar: Record Date;
        PeriodPageMgt: Codeunit PeriodPageManagement;
    begin
        if DateFilter <> '' then begin
            Calendar.SetFilter("Period Start", DateFilter);
            if not PeriodPageMgt.FindDate('+', Calendar, PeriodType) then
                PeriodPageMgt.FindDate('+', Calendar, PeriodType::Day);
            Calendar.SetRange("Period Start");
        end;
        PeriodPageMgt.FindDate(SearchText, Calendar, PeriodType);
        GLAcc.SetRange("Date Filter", Calendar."Period Start", Calendar."Period End");
        if GLAcc.GetRangeMin("Date Filter") = GLAcc.GetRangeMax("Date Filter") then
            GLAcc.SetRange("Date Filter", GLAcc.GetRangeMin("Date Filter"));
        InternalDateFilter := GLAcc.GetFilter("Date Filter");
        if (LineDimType <> LineDimType::Period) and (ColumnDimType <> ColumnDimType::Period) then
            DateFilter := InternalDateFilter;
    end;

    local procedure GetDimSelection(OldDimSelCode: Text[30]): Text[30]
    var
        GLAcc: Record "G/L Account";
        BusUnit: Record "Business Unit";
        DimSelection: Page "Dimension Selection";
    begin
        DimSelection.InsertDimSelBuf(false, GLAcc.TableCaption(), GLAcc.TableCaption());
        DimSelection.InsertDimSelBuf(false, BusUnit.TableCaption(), BusUnit.TableCaption());
        DimSelection.InsertDimSelBuf(false, Text001, Text001);
        if GLSetup."Global Dimension 1 Code" <> '' then
            DimSelection.InsertDimSelBuf(false, GLSetup."Global Dimension 1 Code", '');
        if GLSetup."Global Dimension 2 Code" <> '' then
            DimSelection.InsertDimSelBuf(false, GLSetup."Global Dimension 2 Code", '');
        if GLBudgetName."Budget Dimension 1 Code" <> '' then
            DimSelection.InsertDimSelBuf(false, GLBudgetName."Budget Dimension 1 Code", '');
        if GLBudgetName."Budget Dimension 2 Code" <> '' then
            DimSelection.InsertDimSelBuf(false, GLBudgetName."Budget Dimension 2 Code", '');
        if GLBudgetName."Budget Dimension 3 Code" <> '' then
            DimSelection.InsertDimSelBuf(false, GLBudgetName."Budget Dimension 3 Code", '');
        if GLBudgetName."Budget Dimension 4 Code" <> '' then
            DimSelection.InsertDimSelBuf(false, GLBudgetName."Budget Dimension 4 Code", '');

        DimSelection.LookupMode := true;
        if DimSelection.RunModal() = ACTION::LookupOK then
            exit(DimSelection.GetDimSelCode());

        exit(OldDimSelCode);
    end;

    local procedure DeleteBudget()
    var
        GLBudgetEntry: Record "G/L Budget Entry";
        UpdateAnalysisView: Codeunit "Update Analysis View";
        ConfirmManagement: Codeunit "Confirm Management";
    begin
        if ConfirmManagement.GetResponseOrDefault(Text003, true) then
            with GLBudgetEntry do begin
                SetRange("Budget Name", BudgetName);
                if BusUnitFilter <> '' then
                    SetFilter("Business Unit Code", BusUnitFilter);
                if GLAccFilter <> '' then
                    SetFilter("G/L Account No.", GLAccFilter);
                if DateFilter <> '' then
                    SetFilter(Date, DateFilter);
                if GlobalDim1Filter <> '' then
                    SetFilter("Global Dimension 1 Code", GlobalDim1Filter);
                if GlobalDim2Filter <> '' then
                    SetFilter("Global Dimension 2 Code", GlobalDim2Filter);
                if BudgetDim1Filter <> '' then
                    SetFilter("Budget Dimension 1 Code", BudgetDim1Filter);
                if BudgetDim2Filter <> '' then
                    SetFilter("Budget Dimension 2 Code", BudgetDim2Filter);
                if BudgetDim3Filter <> '' then
                    SetFilter("Budget Dimension 3 Code", BudgetDim3Filter);
                if BudgetDim4Filter <> '' then
                    SetFilter("Budget Dimension 4 Code", BudgetDim4Filter);
                SetCurrentKey("Entry No.");
                if FindFirst() then
                    UpdateAnalysisView.SetLastBudgetEntryNo("Entry No." - 1);
                SetCurrentKey("Budget Name");
                DeleteAll(true);
            end;
    end;

    local procedure ValidateBudgetName()
    begin
        GLBudgetName.Name := BudgetName;
        if not GLBudgetName.Find('=<>') then begin
            GLBudgetName.Init();
            GLBudgetName.Name := Text004;
            GLBudgetName.Description := Text005;
            GLBudgetName.Insert();
        end;
        BudgetName := GLBudgetName.Name;
        PrevisionN := GLBudgetName."Prevision N";
        FutureYears := GLBudgetName."Future Years";

        GLAccBudgetBuf.SetRange("Budget Filter", BudgetName);
        if PrevGLBudgetName.Name <> '' then begin
            if GLBudgetName."Budget Dimension 1 Code" <> PrevGLBudgetName."Budget Dimension 1 Code" then
                BudgetDim1Filter := '';
            if GLBudgetName."Budget Dimension 2 Code" <> PrevGLBudgetName."Budget Dimension 2 Code" then
                BudgetDim2Filter := '';
            if GLBudgetName."Budget Dimension 3 Code" <> PrevGLBudgetName."Budget Dimension 3 Code" then
                BudgetDim3Filter := '';
            if GLBudgetName."Budget Dimension 4 Code" <> PrevGLBudgetName."Budget Dimension 4 Code" then
                BudgetDim4Filter := '';
        end;
        GLAccBudgetBuf.SetFilter("Budget Dimension 1 Filter", BudgetDim1Filter);
        GLAccBudgetBuf.SetFilter("Budget Dimension 2 Filter", BudgetDim2Filter);
        GLAccBudgetBuf.SetFilter("Budget Dimension 3 Filter", BudgetDim3Filter);
        GLAccBudgetBuf.SetFilter("Budget Dimension 4 Filter", BudgetDim4Filter);
        BudgetDim1FilterEnable := (GLBudgetName."Budget Dimension 1 Code" <> '');
        BudgetDim2FilterEnable := (GLBudgetName."Budget Dimension 2 Code" <> '');
        BudgetDim3FilterEnable := (GLBudgetName."Budget Dimension 3 Code" <> '');
        BudgetDim4FilterEnable := (GLBudgetName."Budget Dimension 4 Code" <> '');
        if (GLBudgetName."Budget Start Date" <> 0D) or (GLBudgetName."Budget End Date" <> 0D) then
            ValidateDateFilter(Format(GLBudgetName."Budget Start Date") + '..' + Format(GLBudgetName."Budget End Date"))
        else
            ValidateDateFilter(Format(CalcDate('<-CY>', Today)) + '..' + Format(CalcDate('<CY>', Today)));
        PrevGLBudgetName := GLBudgetName;
        LineDimCode := GLBudgetName."Budget Line Option";
        ColumnDimCode := GLBudgetName."Budget Column Option";
    end;

    local procedure ValidateLineDimCode()
    begin
        ClearDimCodeOnChange(LineDimCode, Text006);
        LineDimType := DimCodeToType(LineDimCode);
        DateFilter := InternalDateFilter;
        if (LineDimType <> LineDimType::Period) and (ColumnDimType <> ColumnDimType::Period) then begin
            DateFilter := InternalDateFilter;
            if StrPos(DateFilter, '&') > 1 then
                DateFilter := CopyStr(DateFilter, 1, StrPos(DateFilter, '&') - 1);
        end else
            DateFilter := '';
    end;

    local procedure ValidateColumnDimCode()
    begin
        ClearDimCodeOnChange(ColumnDimCode, Text007);
        ColumnDimType := DimCodeToType(ColumnDimCode);
        DateFilter := InternalDateFilter;
        if (LineDimType <> LineDimType::Period) and (ColumnDimType <> ColumnDimType::Period) then begin
            DateFilter := InternalDateFilter;
            if StrPos(DateFilter, '&') > 1 then
                DateFilter := CopyStr(DateFilter, 1, StrPos(DateFilter, '&') - 1);
        end else
            DateFilter := '';
    end;

    local procedure ClearDimCodeOnChange(var DimCode: Text[30]; MessageText: Text)
    var
        BusUnit: Record "Business Unit";
        GLAcc: Record "G/L Account";
    begin
        if (UpperCase(DimCode) <> UpperCase(GLAcc.TableCaption())) and
            (UpperCase(DimCode) <> UpperCase(BusUnit.TableCaption())) and
            (UpperCase(DimCode) <> UpperCase(Text001)) and
            (UpperCase(DimCode) <> GLBudgetName."Budget Dimension 1 Code") and
            (UpperCase(DimCode) <> GLBudgetName."Budget Dimension 2 Code") and
            (UpperCase(DimCode) <> GLBudgetName."Budget Dimension 3 Code") and
            (UpperCase(DimCode) <> GLBudgetName."Budget Dimension 4 Code") and
            (UpperCase(DimCode) <> GLSetup."Global Dimension 1 Code") and
            (UpperCase(DimCode) <> GLSetup."Global Dimension 2 Code") and
            (DimCode <> '')
        then begin
            Message(MessageText, DimCode);
            DimCode := '';
        end;
    end;

    local procedure GetCaptionClass(BudgetDimType: Integer): Text[250]
    begin
        if GLBudgetName.Name <> BudgetName then
            GLBudgetName.Get(BudgetName);
        case BudgetDimType of
            1:
                begin
                    if GLBudgetName."Budget Dimension 1 Code" <> '' then
                        exit('1,6,' + GLBudgetName."Budget Dimension 1 Code");

                    exit(Text008);
                end;
            2:
                begin
                    if GLBudgetName."Budget Dimension 2 Code" <> '' then
                        exit('1,6,' + GLBudgetName."Budget Dimension 2 Code");

                    exit(Text009);
                end;
            3:
                begin
                    if GLBudgetName."Budget Dimension 3 Code" <> '' then
                        exit('1,6,' + GLBudgetName."Budget Dimension 3 Code");

                    exit(Text010);
                end;
            4:
                begin
                    if GLBudgetName."Budget Dimension 4 Code" <> '' then
                        exit('1,6,' + GLBudgetName."Budget Dimension 4 Code");

                    exit(Text011);
                end;
        end;
    end;

    procedure SetBudgetName(NextBudgetName: Code[10])
    begin
        NewBudgetName := NextBudgetName;
    end;

    procedure GetBudgetName(): Code[10]
    begin
        exit(BudgetName);
    end;

    procedure SetBudgetDimFilters(NewGlobalDim1Filter: Text; NewGlobalDim2Filter: Text; NewBudgetDim1Filter: Text; NewBudgetDim2Filter: Text; NewBudgetDim3Filter: Text; NewBudgetDim4Filter: Text);
    begin
        GlobalDim1Filter := NewGlobalDim1Filter;
        GlobalDim2Filter := NewGlobalDim2Filter;
        BudgetDim1Filter := NewBudgetDim1Filter;
        BudgetDim2Filter := NewBudgetDim2Filter;
        BudgetDim3Filter := NewBudgetDim3Filter;
        BudgetDim4Filter := NewBudgetDim4Filter;
    end;

    protected procedure UpdateMatrixSubform()
    begin
        CurrPage.MatrixForm.PAGE.LoadMatrix(
          MATRIX_CaptionSet, MATRIX_MatrixRecords, MATRIX_CurrentNoOfColumns, LineDimCode,
          LineDimType, ColumnDimType, GlobalDim1Filter, GlobalDim2Filter, BudgetDim1Filter,
          BudgetDim2Filter, BudgetDim3Filter, BudgetDim4Filter, GLBudgetName, DateFilter,
          GLAccFilter, IncomeBalanceGLAccFilter, GLAccCategoryFilter, RoundingFactor, PeriodType,
          BudgetMovType, BudgetDimType, EndowmentAccount);
        CurrPage.Update();
    end;

    local procedure LineDimCodeOnAfterValidate()
    begin
        UpdateMatrixSubform();
    end;

    local procedure ColumnDimCodeOnAfterValidate()
    begin
        UpdateMatrixSubform();
    end;

    local procedure PeriodTypeOnAfterValidate()
    begin
        if ColumnDimType = ColumnDimType::Period then
            GenerateColumnCaptions("Matrix Page Step Type"::Initial);
        UpdateMatrixSubform();
    end;

    local procedure BudgetMovTypeOnAfterValidate()
    begin
        UpdateMatrixSubform;
    end;

    local procedure BudgetDimTypeOnAfterValidate()
    begin
        GLAccBudgetBuf.SetRange("Budget Dim Type", BudgetDimType);
        UpdateMatrixSubform;
    end;

    local procedure GLAccFilterOnAfterValidate()
    begin
        GLAccBudgetBuf.SetFilter("G/L Account Filter", GLAccFilter);
        if ColumnDimType = ColumnDimType::"G/L Account" then
            GenerateColumnCaptions("Matrix Page Step Type"::Initial);
        UpdateMatrixSubform();
    end;

    local procedure GlobalDim2FilterOnAfterValidate()
    begin
        GLAccBudgetBuf.SetFilter("Global Dimension 2 Filter", GlobalDim2Filter);
        if ColumnDimType = ColumnDimType::"Global Dimension 2" then
            GenerateColumnCaptions("Matrix Page Step Type"::Initial);
        UpdateMatrixSubform();
    end;

    local procedure GlobalDim1FilterOnAfterValidate()
    begin
        GLAccBudgetBuf.SetFilter("Global Dimension 1 Filter", GlobalDim1Filter);
        if ColumnDimType = ColumnDimType::"Global Dimension 1" then
            GenerateColumnCaptions("Matrix Page Step Type"::Initial);
        UpdateMatrixSubform();
    end;

    local procedure BudgetDim2FilterOnAfterValidate()
    begin
        GLAccBudgetBuf.SetFilter("Budget Dimension 2 Filter", BudgetDim2Filter);
        if ColumnDimType = ColumnDimType::"Budget Dimension 2" then
            GenerateColumnCaptions("Matrix Page Step Type"::Initial);
        UpdateMatrixSubform();
    end;

    local procedure BudgetDim1FilterOnAfterValidate()
    begin
        GLAccBudgetBuf.SetFilter("Budget Dimension 1 Filter", BudgetDim1Filter);
        if ColumnDimType = ColumnDimType::"Budget Dimension 1" then
            GenerateColumnCaptions("Matrix Page Step Type"::Initial);
        UpdateMatrixSubform();
    end;

    local procedure BudgetDim4FilterOnAfterValidate()
    begin
        GLAccBudgetBuf.SetFilter("Budget Dimension 4 Filter", BudgetDim4Filter);
        if ColumnDimType = ColumnDimType::"Budget Dimension 4" then
            GenerateColumnCaptions("Matrix Page Step Type"::Initial);
        UpdateMatrixSubform();
    end;

    local procedure BudgetDim3FilterOnAfterValidate()
    begin
        GLAccBudgetBuf.SetFilter("Budget Dimension 3 Filter", BudgetDim3Filter);
        if ColumnDimType = ColumnDimType::"Budget Dimension 3" then
            GenerateColumnCaptions("Matrix Page Step Type"::Initial);
        UpdateMatrixSubform();
    end;

    local procedure DateFilterOnAfterValidate()
    begin
        if ColumnDimType = ColumnDimType::Period then
            GenerateColumnCaptions("Matrix Page Step Type"::Initial);
        UpdateMatrixSubform();
    end;

    local procedure ShowColumnNameOnPush()
    begin
        GenerateColumnCaptions("Matrix Page Step Type"::Same);
        UpdateMatrixSubform();
    end;

    protected procedure ValidateDateFilter(NewDateFilter: Text[30])
    var
        FilterTokens: Codeunit "Filter Tokens";
    begin
        FilterTokens.MakeDateFilter(NewDateFilter);
        GLAccBudgetBuf.SetFilter("Date Filter", NewDateFilter);
        DateFilter := CopyStr(GLAccBudgetBuf.GetFilter("Date Filter"), 1, MaxStrLen(DateFilter));
        InternalDateFilter := NewDateFilter;
        DateFilterOnAfterValidate();
    end;

}

