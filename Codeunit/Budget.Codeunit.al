codeunit 57000 Budget
{

    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        DimMgt: Codeunit DimensionManagement;

    procedure DeleteBudget(TempBudEntryName: Code[20])
    var
        GLBudgetEntry: Record "G/L Budget Entry";
        Text001: Label 'Do you want to delete budget?';
    begin
        If not Confirm(Text001) then
            exit;
        GLBudgetEntry.Reset();
        GLBudgetEntry.SetRange("Budget Name", TempBudEntryName);
        if GLBudgetEntry.FindFirst() then
            GLBudgetEntry.DeleteAll;
    end;

    procedure PostBudget(TempBudgetName: Code[20]; BudgetMovType: enum "Budget Mov Type"; DateFilter: Text)
    var
        GLSetup: Record "General Ledger Setup";
        BudgetConfig: Record "Budget Configuration";
        GnlJnlLine: Record "Gen. Journal Line";
        GLBudgetName: Record "G/L Budget Name";
        GLBudgetEntry: Record "G/L Budget Entry";
        TempGLBudgetEntry: Record "G/L Budget Entry" temporary;
        BudgetPermissions: Record "Budget Permissions";
        BudgetEntries: Query "Budget Entry By Dimensions";
        TempBudgetAmount: Decimal;
        TemDate: Date;
        DocumentNo: Code[20];
        AuxDim1: Code[20];
        AuxDim2: Code[20];
        AuxDim3: Code[20];
        AuxDim4: Code[20];
        AuxDimCode1: Code[20];
        AuxDimCode2: Code[20];
        AuxDimCode3: Code[20];
        AuxDimCode4: Code[20];
        Text001: Label 'There is nothing to post.';
        Text002: Label 'You will post %1 entries from budget %2 on date %3.\\Do you want to continue?';
        Text003: Label 'You will post %1 entries from budget %2.\\Do you want to continue?';
        Text004: Label 'You must select a budget dim type.';
        Text005: Label 'You dont have permission to post budget.';
    begin
        BudgetPermissions.GET(USERID, BudgetPermissions.Type::User);
        IF not BudgetPermissions."Post Budget" then
            Error(Text005);

        Clear(DocumentNo);
        BudgetConfig.Get();
        BudgetConfig.TestField("Budget Template Header");
        BudgetConfig.TestField("Budget Batch Name");
        BudgetConfig.TestField("Budget Nos.");

        if BudgetMovType = BudgetMovType::" " then
            Error(Text004);
        if DateFilter <> '' then begin
            if not Confirm(Text002, false, BudgetMovType, TempBudgetName, DateFilter) then
                exit;
        end else begin
            if not Confirm(Text003, false, BudgetMovType, TempBudgetName) then
                exit;
        end;

        GnlJnlLine.Reset;
        GnlJnlLine.SetRange("Journal Template Name", BudgetConfig."Budget Template Header");
        GnlJnlLine.SetRange("Journal Batch Name", BudgetConfig."Budget Batch Name");
        GnlJnlLine.DeleteAll;

        Clear(TempBudgetAmount);
        case BudgetMovType of
            BudgetMovType::"Budget ChangeP":
                VerifyBudgetP(TempBudgetName);
            BudgetMovType::Descative:
                VerifyBudgetDescative(TempBudgetName);
            else
                if BudgetConfig."Revenue Equal Expense" then
                    VerifyExpRev(TempBudgetName, BudgetMovType);
        end;

        DocumentNo := NoSeriesMgt.GetNextNo(BudgetConfig."Budget Nos.", WorkDate, true);

        GLBudgetName.Reset();
        GLBudgetName.SetRange(Name, TempBudgetName);
        if GLBudgetName.FindFirst() then begin
            AuxDimCode1 := GLBudgetName."Budget Dimension 1 Code";
            AuxDimCode2 := GLBudgetName."Budget Dimension 2 Code";
            AuxDimCode3 := GLBudgetName."Budget Dimension 3 Code";
            AuxDimCode4 := GLBudgetName."Budget Dimension 4 Code";
        end;

        GLSetup.Get();
        if AuxDimCode1 = '' then
            AuxDimCode1 := GLSetup."Global Dimension 1 Code";
        if AuxDimCode2 = '' then
            AuxDimCode2 := GLSetup."Global Dimension 2 Code";

        GLBudgetEntry.Reset();
        GLBudgetEntry.SetCurrentKey("Budget Name", "Global Dimension 1 Code", "Global Dimension 2 Code", "Budget Dimension 3 Code", "Budget Dimension 4 Code");
        GLBudgetEntry.SetRange("Budget Name", TempBudgetName);
        GLBudgetEntry.SetRange(Posted, false);
        GLBudgetEntry.SetRange("Budget Mov Type", BudgetMovType);
        if GLBudgetEntry.Findset then begin
            repeat
                if (AuxDim1 <> GLBudgetEntry."Global Dimension 1 Code") or (AuxDim2 <> GLBudgetEntry."Global Dimension 2 Code") or
                    (AuxDim3 <> GLBudgetEntry."Budget Dimension 3 Code") or (TemDate <> GLBudgetEntry.Date) then begin
                    Clear(TempBudgetAmount);
                    AuxDim1 := GLBudgetEntry."Global Dimension 1 Code";
                    AuxDim2 := GLBudgetEntry."Global Dimension 2 Code";
                    AuxDim3 := GLBudgetEntry."Budget Dimension 3 Code";
                    TemDate := GLBudgetEntry.Date;

                    Clear(BudgetEntries);
                    BudgetEntries.SetRange(Budget_Name, TempBudgetName);
                    BudgetEntries.SetRange(Global_Dimension_1_Code, GLBudgetEntry."Global Dimension 1 Code");
                    BudgetEntries.SetRange(Global_Dimension_2_Code, GLBudgetEntry."Global Dimension 2 Code");
                    BudgetEntries.SetRange(Budget_Dimension_3_Code, GLBudgetEntry."Budget Dimension 3 Code");
                    BudgetEntries.SetRange(Date, TemDate);
                    BudgetEntries.SetRange(Budget_Mov_Type, GLBudgetEntry."Budget Mov Type");
                    BudgetEntries.SetRange(Posted, false);
                    BudgetEntries.Open();
                    while BudgetEntries.Read() do
                        TempBudgetAmount += BudgetEntries.Sum_Amount;

                    if TempBudgetAmount <> 0 then
                        InsertBudgetLines(AuxDimCode1, GLBudgetEntry."Global Dimension 1 Code", AuxDimCode2, GLBudgetEntry."Global Dimension 2 Code",
                                          AuxDimCode3, GLBudgetEntry."Budget Dimension 3 Code", AuxDimCode4, GLBudgetEntry."Budget Dimension 4 Code",
                                          TempBudgetAmount, GLBudgetEntry."Budget Mov Type", GLBudgetEntry."Budget Dim Type", GLBudgetEntry."Mov Type",
                                          DocumentNo, GLBudgetEntry.Date);
                end;
                TempGLBudgetEntry.Init;
                TempGLBudgetEntry := GLBudgetEntry;
                TempGLBudgetEntry.Insert;
            until GLBudgetEntry.Next = 0;

            GnlJnlLine.Reset();
            GnlJnlLine.SetRange("Journal Template Name", BudgetConfig."Budget Template Header");
            GnlJnlLine.SetRange("Journal Batch Name", BudgetConfig."Budget Batch Name");
            if GnlJnlLine.FindFirst() then begin
                CODEUNIT.Run(CODEUNIT::"Gen. Jnl.-Post", GnlJnlLine);
                TempGLBudgetEntry.Reset;
                if TempGLBudgetEntry.FindSet then
                    repeat
                        GLBudgetEntry.Get(TempGLBudgetEntry."Entry No.");
                        GLBudgetEntry.Posted := true;
                        GLBudgetEntry.Modify(true);
                    until TempGLBudgetEntry.Next = 0;
                GnlJnlLine.DeleteAll;
            end;
        end else
            Message(Text001);
    end;

    local procedure InsertBudgetLines(Dimcode1: Code[20]; DimValueCode1: Code[20]; Dimcode2: Code[20]; DimValueCode2: Code[20]; Dimcode3: Code[20];
                                DimValueCode3: Code[20]; Dimcode4: Code[20]; DimValueCode4: Code[20]; TempAmount: Decimal; TempBudgetMovType: enum "Budget Mov Type";
                                TempBudgetType: enum "Budget Dim Type"; MovType: enum "GLBudget Mov Type"; TempBudgetDocNumber: Code[20]; PostDate: Date)
    var
        BudgetConfig: Record "Budget Configuration";
        SourceCodeSetup: Record "Source Code Setup";
        GLSetup: Record "General Ledger Setup";
        Class0Setup: Record "Class 0 Setup";
        GenJnlLine: Record "Gen. Journal Line";
        LineNo: Integer;
        TempDocumentNumber: Code[20];
        TempClass0Code: Code[20];
        FreeDotation: Decimal;
        Text001: Label 'The available dotation amount is less than the amount for dimensions %2 %3 %4 %5 %6 %7 %8 %9';
        Text002: Label 'The Conf Class0 Code cant be empty.';
    begin
        BudgetConfig.Get();
        GLSetup.Get();
        SourceCodeSetup.Get();

        BudgetConfig.TestField("Budget Template Header");
        BudgetConfig.TestField("Budget Batch Name");
        BudgetConfig.TestField("Budget Nos.");
        SourceCodeSetup.TestField(Budget);

        Clear(TempClass0code);

        TempDocumentNumber := TempBudgetDocNumber;
        case TempBudgetMovType of
            TempBudgetMovType::"Initial Budget":
                case TempBudgetType of
                    TempBudgetType::Revenue:
                        case MovType of
                            MovType::Increase:
                                begin
                                    BudgetConfig.TestField("Budget Original Regists Rcpt");
                                    TempClass0code := BudgetConfig."Budget Original Regists Rcpt";
                                end;
                            MovType::Decrease:
                                begin
                                    BudgetConfig.TestField("Budget Original Decrease Rcpt");
                                    TempClass0code := BudgetConfig."Budget Original Decrease Rcpt";
                                end;
                        end;
                    TempBudgetType::Expenditure:
                        case MovType of
                            MovType::Increase:
                                begin
                                    BudgetConfig.TestField("Budget Original Regists");
                                    TempClass0code := BudgetConfig."Budget Original Regists";
                                end;
                            MovType::Decrease:
                                begin
                                    BudgetConfig.TestField("Budget Original Decrease");
                                    TempClass0code := BudgetConfig."Budget Original Decrease";
                                end;
                        end;
                end;
            TempBudgetMovType::"Budget ChangeA":
                case TempBudgetType of
                    TempBudgetType::Revenue:
                        case MovType of
                            MovType::Increase:
                                begin
                                    BudgetConfig.TestField("BudgetA Increase Regists Rcpt");
                                    TempClass0code := BudgetConfig."BudgetA Increase Regists Rcpt";
                                end;
                            MovType::Decrease:
                                begin
                                    BudgetConfig.TestField("BudgetA Decrease Regists Rcpt");
                                    TempClass0code := BudgetConfig."BudgetA Decrease Regists Rcpt";
                                end;
                        end;
                    TempBudgetType::Expenditure:
                        case MovType of
                            MovType::Increase:
                                begin
                                    BudgetConfig.TestField("BudgetA Increase Regists");
                                    TempClass0code := BudgetConfig."BudgetA Increase Regists";
                                end;
                            MovType::Decrease:
                                begin
                                    BudgetConfig.TestField("BudgetA Decrease Regists");
                                    TempClass0code := BudgetConfig."BudgetA Decrease Regists";
                                end;
                        end;
                end;
            TempBudgetMovType::"Budget ChangeP":
                case TempBudgetType of
                    TempBudgetType::Revenue:
                        case MovType of
                            MovType::Increase:
                                begin
                                    BudgetConfig.TestField("BudgetP Increase Regists Rcpt");
                                    TempClass0code := BudgetConfig."BudgetP Increase Regists Rcpt";
                                end;
                            MovType::Decrease:
                                begin
                                    BudgetConfig.TestField("BudgetP Decrease Regists Rcpt");
                                    TempClass0code := BudgetConfig."BudgetP Decrease Regists Rcpt";
                                end;
                        end;
                    TempBudgetType::Expenditure:
                        case MovType of
                            MovType::Increase:
                                begin
                                    BudgetConfig.TestField("BudgetP Increase Regists");
                                    TempClass0code := BudgetConfig."BudgetP Increase Regists";
                                end;
                            MovType::Decrease:
                                begin
                                    BudgetConfig.TestField("BudgetP Decrease Regists");
                                    TempClass0code := BudgetConfig."BudgetP Decrease Regists";
                                end;
                        end;
                end;
            TempBudgetMovType::"Budget ChangeC":
                case TempBudgetType of
                    TempBudgetType::Revenue:
                        case MovType of
                            MovType::Increase:
                                begin
                                    BudgetConfig.TestField("BudgetC Increase Regists Rcpt");
                                    TempClass0code := BudgetConfig."BudgetC Increase Regists Rcpt";
                                end;
                            MovType::Decrease:
                                begin
                                    BudgetConfig.TestField("BudgetC Decrease Regists Rcpt");
                                    TempClass0code := BudgetConfig."BudgetC Decrease Regists Rcpt";
                                end;
                        end;
                    TempBudgetType::Expenditure:
                        case MovType of
                            MovType::Increase:
                                begin
                                    BudgetConfig.TestField("BudgetC Increase Regists");
                                    TempClass0code := BudgetConfig."BudgetC Increase Regists";
                                end;
                            MovType::Decrease:
                                begin
                                    BudgetConfig.TestField("BudgetC Decrease Regists");
                                    TempClass0code := BudgetConfig."BudgetC Decrease Regists";
                                end;
                        end;
                end;
            TempBudgetMovType::Cative:
                case TempBudgetType of
                    TempBudgetType::Revenue:
                        case MovType of
                            MovType::Decrease:
                                begin
                                    BudgetConfig.TestField("Cative Rcpt");
                                    TempClass0code := BudgetConfig."Cative Rcpt";
                                end;
                        end;
                    TempBudgetType::Expenditure:
                        case MovType of
                            MovType::Decrease:
                                begin
                                    BudgetConfig.TestField("Cative Exp");
                                    TempClass0code := BudgetConfig."Cative Exp";
                                end;
                        end;
                end;
            TempBudgetMovType::Descative:
                case TempBudgetType of
                    TempBudgetType::Revenue:
                        case MovType of
                            MovType::Increase:
                                begin
                                    BudgetConfig.TestField("Descative Rcpt");
                                    TempClass0code := BudgetConfig."Descative Rcpt";
                                end;
                        end;
                    TempBudgetType::Expenditure:
                        case MovType of
                            MovType::Increase:
                                begin
                                    BudgetConfig.TestField("Descative Exp");
                                    TempClass0code := BudgetConfig."Descative Exp";
                                end;
                        end;
                end;
        end;
        if TempClass0code = '' then
            Error(Text002);

        Clear(LineNo);
        GenJnlLine.Reset();
        GenJnlLine.SetRange("Journal Template Name", BudgetConfig."Budget Template Header");
        GenJnlLine.SetRange("Journal Batch Name", BudgetConfig."Budget Batch Name");
        if GenJnlLine.FindLast() then
            LineNo := GenJnlLine."Line No." + 10000
        else
            LineNo := 10000;

        Clear(GenJnlLine);
        Class0Setup.Reset;
        Class0Setup.SetRange("Regist type", TempClass0code);
        if Class0Setup.FindSet() then begin
            repeat
                if ((TempBudgetType = TempBudgetType::Expenditure) and (MovType = MovType::Decrease) and (Class0Setup."Verify Avaylable Amount")
                        and not (TempBudgetMovType = TempBudgetMovType::Descative)) or
                  (TempBudgetMovType = TempBudgetMovType::Cative)
                then begin
                    Clear(FreeDotation);
                    FreeDotation := CalcFreeDotation(Dimcode1, DimValueCode1, Dimcode2, DimValueCode2, Dimcode3, DimValueCode3, Dimcode4, DimValueCode4, PostDate);
                    if Abs(TempAmount) > FreeDotation then
                        Error(Text001, FreeDotation, Abs(TempAmount), Dimcode1, DimValueCode1, Dimcode2, DimValueCode2, Dimcode3, DimValueCode3, Dimcode4, DimValueCode4);
                end;
                GenJnlLine.Init();
                GenJnlLine.Validate("Journal Template Name", BudgetConfig."Budget Template Header");
                GenJnlLine.Validate("Journal Batch Name", BudgetConfig."Budget Batch Name");
                GenJnlLine.Validate("Line No.", LineNo);
                GenJnlLine.Validate("Posting Date", PostDate);
                GenJnlLine.Validate("Document No.", TempDocumentNumber);
                GenJnlLine.Validate("Account Type", GenJnlLine."Account Type"::"G/L Account");
                GenJnlLine.Validate("Account No.", Class0Setup."Debt count");
                GenJnlLine.Validate("Bal. Account Type", GenJnlLine."Bal. Account Type"::"G/L Account");
                GenJnlLine.Validate("Bal. Account No.", Class0Setup."Credit count");
                GenJnlLine.Validate(Amount, Abs(TempAmount));
                GenJnlLine."Budget Mov Type" := TempBudgetMovType;
                GenJnlLine."Budget Dim Type" := TempBudgetType;
                GenJnlLine.Validate("Dimension Set ID", GetDimensions(Dimcode1, DimValueCode1, Dimcode2, DimValueCode2, Dimcode3, DimValueCode3, Dimcode4, DimValueCode4));
                GenJnlLine.Validate("Source Code", SourceCodeSetup.Budget);
                DimMgt.UpdateGlobalDimFromDimSetID(GenJnlLine."Dimension Set ID", GenJnlLine."Shortcut Dimension 1 Code", GenJnlLine."Shortcut Dimension 2 Code");
                GenJnlLine.Insert(true);
                LineNo += 10000;
            until Class0Setup.Next = 0;
        end;
    end;

    procedure VerifyBudgetP(BudgetName: Code[20])
    var
        GLBudgetEntry: Record "G/L Budget Entry";
        TempRevenueAmount: Decimal;
        TempExpenditureAmount: Decimal;
        Text001: Label 'The budget dont have zero balance.';
    begin
        Clear(TempRevenueAmount);
        Clear(TempExpenditureAmount);

        GLBudgetEntry.Reset();
        GLBudgetEntry.SetRange("Budget Name", BudgetName);
        GLBudgetEntry.SetRange(Posted, false);
        GLBudgetEntry.SetRange("Budget Mov Type", GLBudgetEntry."Budget Mov Type"::"Budget ChangeP");
        GLBudgetEntry.SetRange("Budget Dim Type", "Budget Dim Type"::Expenditure);
        GLBudgetEntry.CalcSums(Amount);
        TempExpenditureAmount := GLBudgetEntry.Amount;

        GLBudgetEntry.Reset();
        GLBudgetEntry.SetRange("Budget Name", BudgetName);
        GLBudgetEntry.SetRange(Posted, false);
        GLBudgetEntry.SetRange("Budget Mov Type", "Budget Mov Type"::"Budget ChangeP");
        GLBudgetEntry.SetRange("Budget Dim Type", "Budget Dim Type"::Revenue);
        GLBudgetEntry.CalcSums(Amount);
        TempRevenueAmount := GLBudgetEntry.Amount;

        if not ((TempExpenditureAmount = 0) and (TempRevenueAmount = 0)) then
            Error(Text001, TempRevenueAmount, TempExpenditureAmount);
    end;

    procedure VerifyBudgetDescative(BudgetName: Code[20])
    var
        GLBudgetEntry: Record "G/L Budget Entry";
        GLBudgetEntry1: Record "G/L Budget Entry";
        TempRevenueAmount: Decimal;
        TempExpenditureAmount: Decimal;
        TempRevenueAmountCative: Decimal;
        TempExpenditureAmountCative: Decimal;
        TempRevenueAmountDescative: Decimal;
        TempExpenditureAmountDescative: Decimal;
        TempPeriodInitDate: Date;
        TempPeriodEndDate: Date;
        Text001: Label 'You cant descative more than catived for dimensions %1 %2 %3. Revenue cative = %4 | Revenue already descative = %5 | Revenue to descative = %6';
        Text002: Label 'You cant descative more than catived for dimensions %1 %2 %3. Expenses cative = %4 | Expense already descative = %5 | Expense to descative = %6';
        Text003: Label 'There is no cative amount for dimensions %1 %2 %3';
    begin
        Clear(TempRevenueAmount);
        Clear(TempExpenditureAmount);

        GLBudgetEntry.Reset();
        GLBudgetEntry.SetRange("Budget Name", BudgetName);
        GLBudgetEntry.SetRange(posted, false);
        GLBudgetEntry.SetRange("Budget Mov Type", "Budget Mov Type"::Descative);
        if GLBudgetEntry.FindSet then begin
            repeat
                TempPeriodInitDate := CalcDate('<-CY>', GLBudgetEntry.Date);
                TempPeriodEndDate := CalcDate('<CY>', GLBudgetEntry.Date);
                if GLBudgetEntry."Budget Dim Type" = GLBudgetEntry."Budget Dim Type"::Expenditure then
                    TempExpenditureAmount += GLBudgetEntry.Amount;
                if GLBudgetEntry."Budget Dim Type" = GLBudgetEntry."Budget Dim Type"::Revenue then
                    TempRevenueAmount += GLBudgetEntry.Amount;

                GLBudgetEntry1.Reset();
                GLBudgetEntry1.SetRange("Budget Name", BudgetName);
                GLBudgetEntry1.SetRange(Posted, true);
                GLBudgetEntry1.SetRange("Budget Mov Type", "Budget Mov Type"::Cative);
                GLBudgetEntry1.SetRange("Global Dimension 1 Code", GLBudgetEntry."Global Dimension 1 Code");
                GLBudgetEntry1.SetRange("Global Dimension 2 Code", GLBudgetEntry."Global Dimension 2 Code");
                GLBudgetEntry1.SetRange("Budget Dimension 3 Code", GLBudgetEntry."Budget Dimension 3 Code");
                If not GLBudgetEntry.IsEmpty then begin
                    GLBudgetEntry1.Reset();
                    GLBudgetEntry1.SetRange("Budget Name", BudgetName);
                    GLBudgetEntry1.SetRange(Posted, true);
                    GLBudgetEntry1.SetRange("Budget Mov Type", "Budget Mov Type"::Cative);
                    GLBudgetEntry1.SetRange("Global Dimension 1 Code", GLBudgetEntry."Global Dimension 1 Code");
                    GLBudgetEntry1.SetRange("Global Dimension 2 Code", GLBudgetEntry."Global Dimension 2 Code");
                    GLBudgetEntry1.SetRange("Budget Dimension 3 Code", GLBudgetEntry."Budget Dimension 3 Code");
                    GLBudgetEntry1.SetRange("Budget Dim Type", "Budget Dim Type"::Expenditure);
                    GLBudgetEntry1.CalcSums(Amount);
                    TempExpenditureAmountCative := GLBudgetEntry1.Amount;

                    GLBudgetEntry1.Reset();
                    GLBudgetEntry1.SetRange("Budget Name", BudgetName);
                    GLBudgetEntry1.SetRange(Posted, true);
                    GLBudgetEntry1.SetRange("Budget Mov Type", "Budget Mov Type"::Cative);
                    GLBudgetEntry1.SetRange("Global Dimension 1 Code", GLBudgetEntry."Global Dimension 1 Code");
                    GLBudgetEntry1.SetRange("Global Dimension 2 Code", GLBudgetEntry."Global Dimension 2 Code");
                    GLBudgetEntry1.SetRange("Budget Dimension 3 Code", GLBudgetEntry."Budget Dimension 3 Code");
                    GLBudgetEntry1.SetRange("Budget Dim Type", "Budget Dim Type"::Revenue);
                    GLBudgetEntry1.CalcSums(Amount);
                    TempRevenueAmountCative := GLBudgetEntry1.Amount;

                    GLBudgetEntry1.Reset();
                    GLBudgetEntry1.SetRange("Budget Name", BudgetName);
                    GLBudgetEntry1.SetRange(Posted, true);
                    GLBudgetEntry1.SetRange("Budget Mov Type", "Budget Mov Type"::Descative);
                    GLBudgetEntry1.SetRange("Global Dimension 1 Code", GLBudgetEntry."Global Dimension 1 Code");
                    GLBudgetEntry1.SetRange("Global Dimension 2 Code", GLBudgetEntry."Global Dimension 2 Code");
                    GLBudgetEntry1.SetRange("Budget Dimension 3 Code", GLBudgetEntry."Budget Dimension 3 Code");
                    GLBudgetEntry1.SetRange("Budget Dim Type", "Budget Dim Type"::Expenditure);
                    GLBudgetEntry1.CalcSums(Amount);
                    TempExpenditureAmountDescative := GLBudgetEntry1.Amount;

                    GLBudgetEntry1.Reset();
                    GLBudgetEntry1.SetRange("Budget Name", BudgetName);
                    GLBudgetEntry1.SetRange(Posted, true);
                    GLBudgetEntry1.SetRange("Budget Mov Type", "Budget Mov Type"::Descative);
                    GLBudgetEntry1.SetRange("Global Dimension 1 Code", GLBudgetEntry."Global Dimension 1 Code");
                    GLBudgetEntry1.SetRange("Global Dimension 2 Code", GLBudgetEntry."Global Dimension 2 Code");
                    GLBudgetEntry1.SetRange("Budget Dimension 3 Code", GLBudgetEntry."Budget Dimension 3 Code");
                    GLBudgetEntry1.SetRange("Budget Dim Type", "Budget Dim Type"::Revenue);
                    GLBudgetEntry1.CalcSums(Amount);
                    TempRevenueAmountDescative := GLBudgetEntry1.Amount;
                    if (Abs(TempExpenditureAmount) + Abs(TempExpenditureAmountDesCative) > Abs(TempExpenditureAmountCative)) then
                        Error(Text002, GLBudgetEntry."Global Dimension 1 Code", GLBudgetEntry."Global Dimension 2 Code", GLBudgetEntry."Budget Dimension 3 Code",
                        Abs(TempExpenditureAmountCative), Abs(TempExpenditureAmountDesCative), Abs(TempExpenditureAmount));
                    if (Abs(TempRevenueAmount) + Abs(TempRevenueAmountDesCative) > Abs(TempRevenueAmountCative)) then
                        Error(Text001, GLBudgetEntry."Global Dimension 1 Code", GLBudgetEntry."Global Dimension 2 Code", GLBudgetEntry."Budget Dimension 3 Code",
                            Abs(TempRevenueAmountCative), Abs(TempRevenueAmountDesCative), Abs(TempRevenueAmount));
                end else
                    Error(Text003, GLBudgetEntry."Global Dimension 1 Code", GLBudgetEntry."Global Dimension 2 Code", GLBudgetEntry."Budget Dimension 3 Code");
            until GLBudgetEntry.Next = 0;
        end;
    end;

    local procedure VerifyExpRev(BudgetName: Code[20]; BudgetMovType: enum "Budget Mov Type")
    var
        GLBudgetEntry: Record "G/L Budget Entry";
        TempRevenueAmount: Decimal;
        TempExpenditureAmount: Decimal;
        Text001: Label 'The budget is not balanced. Revenue Amount %1 | Expense Amount %2';
    begin
        Clear(TempRevenueAmount);
        Clear(TempExpenditureAmount);

        GLBudgetEntry.Reset();
        GLBudgetEntry.SetRange("Budget Name", BudgetName);
        GLBudgetEntry.SetRange(Posted, false);
        GLBudgetEntry.SetRange("Budget Mov Type", BudgetMovType);
        GLBudgetEntry.SetRange("Budget Dim Type", "Budget Dim Type"::Expenditure);
        GLBudgetEntry.CalcSums(Amount);
        TempExpenditureAmount := GLBudgetEntry.Amount;

        GLBudgetEntry.Reset();
        GLBudgetEntry.SetRange("Budget Name", BudgetName);
        GLBudgetEntry.SetRange(Posted, false);
        GLBudgetEntry.SetRange("Budget Mov Type", BudgetMovType);
        GLBudgetEntry.SetRange("Budget Dim Type", "Budget Dim Type"::Revenue);
        GLBudgetEntry.CalcSums(Amount);
        TempRevenueAmount := GLBudgetEntry.Amount;

        if not (TempExpenditureAmount - TempRevenueAmount = 0) then
            Error(Text001, TempRevenueAmount, TempExpenditureAmount);
    end;

    local procedure CalcFreeDotation(Dimcode1: Code[20]; DimValueCode1: Code[20]; Dimcode2: Code[20]; DimValueCode2: Code[20]; Dimcode3: Code[20]; DimValueCode3: Code[20]; Dimcode4: Code[20]; DimValueCode4: Code[20]; PostDate: Date) decValue: Decimal
    var
        BudgetConfig: Record "Budget Configuration";
        TempPeriodInitDate: Date;
        TempPeriodEndDate: Date;
        GLAccount: Record "G/L Account";
        InitialFreeDotation: Decimal;
        GetDim: Record "Dimension Set Entry";
        DimCode: array[4] of Code[20];
        DimValue: array[4] of Code[20];
        i: Integer;
        DimFilter1: Code[20];
        DimFilter2: Code[20];
        DimFilter3: Code[20];
        DimFilter4: Code[20];
    begin
        decValue := 0;
        BudgetConfig.Get();
        BudgetConfig.TestField("Avaylable Endowment Account");
        BudgetConfig.TestField("Analysis Code");

        DimCode[1] := Dimcode1;
        DimCode[2] := Dimcode2;
        DimCode[3] := Dimcode3;
        DimCode[4] := Dimcode4;
        DimValue[1] := DimValueCode1;
        DimValue[2] := DimValueCode2;
        DimValue[3] := DimValueCode3;
        DimValue[4] := DimValueCode4;

        for i := 1 to 4 do begin
            if (DimCode[i] = BudgetConfig.dim1) and (BudgetConfig.Sd1 = true) then
                DimFilter1 := DimValue[i];
            if (DimCode[i] = BudgetConfig.dim2) and (BudgetConfig.Sd2 = true) then
                DimFilter2 := DimValue[i];
            if (DimCode[i] = BudgetConfig.dim3) and (BudgetConfig.Sd3 = true) then
                DimFilter3 := DimValue[i];
            if (DimCode[i] = BudgetConfig.dim4) and (BudgetConfig.Sd4 = true) then
                DimFilter4 := DimValue[i];
        end;

        TempPeriodInitDate := CalcDate('<-CY>', PostDate);
        TempPeriodEndDate := CalcDate('<CY>', PostDate);

        GLAccount.Reset;
        GLAccount.SetRange("No.", BudgetConfig."Avaylable Endowment Account");
        GLAccount.SetRange("Analisys View Filter", BudgetConfig."Analysis Code");
        GLAccount.SetRange("Date Filter", TempPeriodInitDate, TempPeriodEndDate);
        if DimFilter1 <> '' then
            GLAccount.SetRange("Shortcut Filter", DimFilter1);
        if DimFilter2 <> '' then
            GLAccount.SetRange("Shortcut Filter2", DimFilter2);
        if DimFilter3 <> '' then
            GLAccount.SetRange("Shortcut Filter3", DimFilter3);
        if DimFilter4 <> '' then
            GLAccount.SetRange("Shortcut Filter4", DimFilter4);
        If GLAccount.FindFirst() then begin
            GLAccount.CalcFields("Shortcut Dim3");
            InitialFreeDotation := GLAccount."Shortcut Dim3" * -1;
            decValue := InitialFreeDotation;
        end;
        exit(decValue);
    end;

    local procedure GetDimensions(Dimcode1: Code[20]; DimValueCode1: Code[20]; Dimcode2: Code[20]; DimValueCode2: Code[20]; Dimcode3: Code[20]; DimValueCode3: Code[20]; Dimcode4: Code[20]; DimValueCode4: Code[20]): Integer
    var
        TempDimSetEntry: record "Dimension Set Entry" temporary;
    begin
        Clear(TempDimSetEntry);
        if (Dimcode1 <> '') and (DimValueCode1 <> '') then begin
            TempDimSetEntry.Init;
            TempDimSetEntry.Validate("Dimension Code", Dimcode1);
            TempDimSetEntry.Validate("Dimension Value Code", DimValueCode1);
            TempDimSetEntry.Insert(true);
        end;
        if (Dimcode2 <> '') and (DimValueCode2 <> '') then begin
            TempDimSetEntry.Init;
            TempDimSetEntry.Validate("Dimension Code", Dimcode2);
            TempDimSetEntry.Validate("Dimension Value Code", DimValueCode2);
            TempDimSetEntry.Insert(true);

        end;
        if (Dimcode3 <> '') and (DimValueCode3 <> '') then begin
            TempDimSetEntry.Init;
            TempDimSetEntry.Validate("Dimension Code", Dimcode3);
            TempDimSetEntry.Validate("Dimension Value Code", DimValueCode3);
            TempDimSetEntry.Insert(true);

        end;
        if (Dimcode4 <> '') and (DimValueCode4 <> '') then begin
            TempDimSetEntry.Init;
            TempDimSetEntry.Validate("Dimension Code", Dimcode4);
            TempDimSetEntry.Validate("Dimension Value Code", DimValueCode4);
            TempDimSetEntry.Insert(true);
        end;
        exit(DimMgt.GetDimensionSetID(TempDimSetEntry));
    end;

    procedure GetDotation(TempPeriodInitDate: Date; TempPeriodEndDate: Date; DotationDim1: Code[20]; DotationDim2: Code[20]; DotationDim3: Code[20]; DotationDim4: Code[20]): Decimal
    var
        BudgetConfig: Record "Budget Configuration";
        AnalysisViewEntry: Record "Analysis View Entry" temporary;
        TempGLEntry: Record "G/L Entry" temporary;
        AnalysisViewEntryToGLEntries: Codeunit AnalysisViewEntryToGLEntries;
        DotCreAmount: Decimal;
        DotDebAmount: Decimal;
    begin
        Clear(AnalysisViewEntry);
        BudgetConfig.Get;

        TempGLEntry.Reset;
        TempGLEntry.DeleteAll;

        AnalysisViewEntry.Init;
        AnalysisViewEntry."Analysis View Code" := BudgetConfig."Analysis Code";
        AnalysisViewEntry."Account No." := BudgetConfig."Avaylable Endowment Account";
        AnalysisViewEntry."Posting Date" := TempPeriodInitDate;
        if DotationDim1 <> '' then
            AnalysisViewEntry."Dimension 1 Value Code" := DotationDim1;
        if DotationDim2 <> '' then
            AnalysisViewEntry."Dimension 2 Value Code" := DotationDim2;
        if DotationDim3 <> '' then
            AnalysisViewEntry."Dimension 3 Value Code" := DotationDim3;
        if DotationDim4 <> '' then
            AnalysisViewEntry."Dimension 4 Value Code" := DotationDim4;
        AnalysisViewEntryToGLEntries.GetGLEntries(AnalysisViewEntry, TempGLEntry);
        TempGLEntry.Reset;
        TempGLEntry.SetFilter("Posting Date", '%1..%2', TempPeriodInitDate, TempPeriodEndDate);
        TempGLEntry.SetFilter(Amount, '>0');
        TempGLEntry.CalcSums(Amount);
        DotDebAmount := TempGLEntry.Amount;
        TempGLEntry.Reset;
        TempGLEntry.SetFilter("Posting Date", '%1..%2', TempPeriodInitDate, TempPeriodEndDate);
        TempGLEntry.SetFilter(Amount, '<0');
        TempGLEntry.CalcSums(Amount);
        DotCreAmount := TempGLEntry.Amount;
        exit((DotCreAmount + DotDebAmount) * -1);
    end;

    procedure CalcDocumentsDotation(DotationType: Enum "Budget Dotation Document Type"; DocumentNo: Code[20])
    var
        Requisition: Record Requisition;
        AvaylableBudget: Record "Avaylable Budget";
        PurchaseHeader: Record "Purchase Header";
    begin
        Case DotationType of
            DotationType::Requisition:
                begin
                    Requisition.Get(DocumentNo);
                    CalcLinesDotation(Requisition);
                end;
            DotationType::"Avaylable Budget":
                begin
                    AvaylableBudget.Get(DocumentNo);
                    CalcLinesDotation(AvaylableBudget);
                end;
            DotationType::Quote:
                begin
                    PurchaseHeader.Get("Purchase Document Type"::Quote, DocumentNo);
                    CalcLinesDotation(PurchaseHeader);
                end;
            DotationType::Order:
                begin
                    PurchaseHeader.Get("Purchase Document Type"::Order, DocumentNo);
                    CalcLinesDotation(PurchaseHeader);
                end;
            DotationType::Invoice:
                begin
                    PurchaseHeader.Get("Purchase Document Type"::Invoice, DocumentNo);
                    CalcLinesDotation(PurchaseHeader);
                end;
        end;
    end;

    local procedure CalcLinesDotation(Requisition: Record Requisition)
    var
        BudgetConfig: Record "Budget Configuration";
        RequisitionLines: Record "Requisition Lines";
        AuxRequisitionLines: Record "Requisition Lines";
        DimSetEntry: Record "Dimension Set Entry";
        DimFilter1: Code[20];
        DimFilter2: Code[20];
        DimFilter3: Code[20];
        DimFilter4: Code[20];
        AuxDimFilter1: Code[20];
        AuxDimFilter2: Code[20];
        AuxDimFilter3: Code[20];
        AuxDimFilter4: Code[20];
        TempAmount: Decimal;
        TempPeriodInitDate: Date;
        TempPeriodEndDate: Date;
        InitialDotation: Decimal;

    begin
        Clear(DimFilter1);
        Clear(DimFilter2);
        Clear(DimFilter3);
        Clear(DimFilter4);
        Clear(AuxDimFilter1);
        Clear(AuxDimFilter2);
        Clear(AuxDimFilter3);
        Clear(AuxDimFilter4);

        BudgetConfig.Get();
        BudgetConfig.TestField("Avaylable Endowment Account");
        BudgetConfig.TestField("Analysis Code");

        TempPeriodInitDate := CalcDate('<-CY>', Requisition."Requisition Date");
        TempPeriodEndDate := Requisition."Requisition Date";

        RequisitionLines.Reset();
        RequisitionLines.SetCurrentKey("Requisition Code", "Line No.");
        RequisitionLines.SetRange("Requisition Code", Requisition."Requisition Code");
        RequisitionLines.SetFilter(Type, '<>%1', "Documents Line Type"::" ");
        if RequisitionLines.FindSet(true) then
            repeat
                Clear(InitialDotation);
                RequisitionLines."Initial Avaylable Dotation" := 0;
                RequisitionLines."End Avaylable Dotation" := 0;
                DimSetEntry.Reset;
                DimSetEntry.SetRange("Dimension Set ID", RequisitionLines."Dimension Set ID");
                if DimSetEntry.FindSet then
                    repeat
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim1) and (BudgetConfig.Sd1 = true) then
                            DimFilter1 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim2) and (BudgetConfig.Sd2 = true) then
                            DimFilter2 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim3) and (BudgetConfig.Sd3 = true) then
                            DimFilter3 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim4) and (BudgetConfig.Sd4 = true) then
                            DimFilter4 := DimSetEntry."Dimension Value Code";
                    until DimSetEntry.Next = 0;
                InitialDotation := GetDotation(TempPeriodInitDate, TempPeriodEndDate, DimFilter1, DimFilter2, DimFilter3, DimFilter4);
                RequisitionLines."Initial Avaylable Dotation" := InitialDotation;
                RequisitionLines."End Avaylable Dotation" := InitialDotation;
                RequisitionLines.Modify(true);
                //Outras Linhas
                if (DimFilter1 <> '') or (DimFilter2 <> '') or (DimFilter3 <> '') or (DimFilter4 <> '') then begin
                    AuxRequisitionLines.Reset();
                    AuxRequisitionLines.SetCurrentKey("Requisition Code", "Line No.");
                    AuxRequisitionLines.SetRange("Requisition Code", Requisition."Requisition Code");
                    AuxRequisitionLines.SetFilter("Line No.", '<=%1', RequisitionLines."Line No.");
                    if AuxRequisitionLines.FindSet() then begin
                        TempAmount := InitialDotation;
                        repeat
                            DimSetEntry.Reset;
                            DimSetEntry.SetRange("Dimension Set ID", AuxRequisitionLines."Dimension Set ID");
                            if DimSetEntry.FindSet then begin
                                repeat
                                    if (DimSetEntry."Dimension Code" = BudgetConfig.dim1) and (BudgetConfig.Sd1 = true) then
                                        AuxDimFilter1 := DimSetEntry."Dimension Value Code";
                                    if (DimSetEntry."Dimension Code" = BudgetConfig.dim2) and (BudgetConfig.Sd2 = true) then
                                        AuxDimFilter2 := DimSetEntry."Dimension Value Code";
                                    if (DimSetEntry."Dimension Code" = BudgetConfig.dim3) and (BudgetConfig.Sd3 = true) then
                                        AuxDimFilter3 := DimSetEntry."Dimension Value Code";
                                    if (DimSetEntry."Dimension Code" = BudgetConfig.dim4) and (BudgetConfig.Sd4 = true) then
                                        AuxDimFilter4 := DimSetEntry."Dimension Value Code";
                                until DimSetEntry.Next = 0;
                            end;

                            if (DimFilter1 = AuxDimFilter1) and (DimFilter2 = AuxDimFilter2) and (DimFilter3 = AuxDimFilter3) and
                                (DimFilter4 = AuxDimFilter4) then begin
                                AuxRequisitionLines."Initial Avaylable Dotation" := InitialDotation;
                                case Requisition."Budget Appropriation Method" of
                                    "Budget Appropriation Method"::"Amount Without VAT":
                                        TempAmount := TempAmount - AuxRequisitionLines.Amount;
                                    "Budget Appropriation Method"::"Amount With VAT":
                                        TempAmount := TempAmount - AuxRequisitionLines."Amount Including VAT";
                                    "Budget Appropriation Method"::"Cost Amount":
                                        TempAmount := TempAmount - AuxRequisitionLines."Cost Amount";
                                end;
                                AuxRequisitionLines."End Avaylable Dotation" := TempAmount;
                                AuxRequisitionLines.Modify(true);
                            end;
                        until AuxRequisitionLines.Next = 0;
                    end;
                end;
            until RequisitionLines.Next() = 0;
    end;

    local procedure CalcLinesDotation(AvaylableBudget: Record "Avaylable Budget")
    var
        BudgetConfig: Record "Budget Configuration";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        AuxAvaylableBudgetLines: Record "Avaylable Budget Line";
        DimSetEntry: Record "Dimension Set Entry";
        DimFilter1: Code[20];
        DimFilter2: Code[20];
        DimFilter3: Code[20];
        DimFilter4: Code[20];
        AuxDimFilter1: Code[20];
        AuxDimFilter2: Code[20];
        AuxDimFilter3: Code[20];
        AuxDimFilter4: Code[20];
        TempAmount: Decimal;
        TempPeriodInitDate: Date;
        TempPeriodEndDate: Date;
        InitialDotation: Decimal;

    begin
        Clear(DimFilter1);
        Clear(DimFilter2);
        Clear(DimFilter3);
        Clear(DimFilter4);
        Clear(AuxDimFilter1);
        Clear(AuxDimFilter2);
        Clear(AuxDimFilter3);
        Clear(AuxDimFilter4);

        BudgetConfig.Get();
        BudgetConfig.TestField("Avaylable Endowment Account");
        BudgetConfig.TestField("Analysis Code");

        TempPeriodInitDate := CalcDate('<-CY>', AvaylableBudget."Avay Date");
        TempPeriodEndDate := AvaylableBudget."Avay Date";

        AvaylableBudgetLines.Reset();
        AvaylableBudgetLines.SetCurrentKey("avay Code", "Line No.");
        AvaylableBudgetLines.SetRange("Avay Code", AvaylableBudget."Avay Code");
        AvaylableBudgetLines.SetFilter("Line Type", '<>%1', "Documents Line Type"::" ");
        if AvaylableBudgetLines.FindSet(true) then
            repeat
                Clear(InitialDotation);
                AvaylableBudgetLines."Initial Avaylable Dotation" := 0;
                AvaylableBudgetLines."End Avaylable Dotation" := 0;
                DimSetEntry.Reset;
                DimSetEntry.SetRange("Dimension Set ID", AvaylableBudgetLines."Dimension Set ID");
                if DimSetEntry.FindSet then
                    repeat
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim1) and (BudgetConfig.Sd1 = true) then
                            DimFilter1 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim2) and (BudgetConfig.Sd2 = true) then
                            DimFilter2 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim3) and (BudgetConfig.Sd3 = true) then
                            DimFilter3 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim4) and (BudgetConfig.Sd4 = true) then
                            DimFilter4 := DimSetEntry."Dimension Value Code";
                    until DimSetEntry.Next = 0;
                InitialDotation := GetDotation(TempPeriodInitDate, TempPeriodEndDate, DimFilter1, DimFilter2, DimFilter3, DimFilter4);
                AvaylableBudgetLines."Initial Avaylable Dotation" := InitialDotation;
                AvaylableBudgetLines."End Avaylable Dotation" := InitialDotation;
                AvaylableBudgetLines.Modify(true);
                //Outras Linhas
                if (DimFilter1 <> '') or (DimFilter2 <> '') or (DimFilter3 <> '') or (DimFilter4 <> '') then begin
                    AuxAvaylableBudgetLines.Reset();
                    AuxAvaylableBudgetLines.SetCurrentKey("Avay Code", "Line No.");
                    AuxAvaylableBudgetLines.SetRange("Avay Code", AvaylableBudget."Avay Code");
                    AuxAvaylableBudgetLines.SetFilter("Line No.", '<=%1', AvaylableBudgetLines."Line No.");
                    if AuxAvaylableBudgetLines.FindSet() then begin
                        TempAmount := InitialDotation;
                        repeat
                            DimSetEntry.Reset;
                            DimSetEntry.SetRange("Dimension Set ID", AuxAvaylableBudgetLines."Dimension Set ID");
                            if DimSetEntry.FindSet then begin
                                repeat
                                    if (DimSetEntry."Dimension Code" = BudgetConfig.dim1) and (BudgetConfig.Sd1 = true) then
                                        AuxDimFilter1 := DimSetEntry."Dimension Value Code";
                                    if (DimSetEntry."Dimension Code" = BudgetConfig.dim2) and (BudgetConfig.Sd2 = true) then
                                        AuxDimFilter2 := DimSetEntry."Dimension Value Code";
                                    if (DimSetEntry."Dimension Code" = BudgetConfig.dim3) and (BudgetConfig.Sd3 = true) then
                                        AuxDimFilter3 := DimSetEntry."Dimension Value Code";
                                    if (DimSetEntry."Dimension Code" = BudgetConfig.dim4) and (BudgetConfig.Sd4 = true) then
                                        AuxDimFilter4 := DimSetEntry."Dimension Value Code";
                                until DimSetEntry.Next = 0;
                            end;

                            if (DimFilter1 = AuxDimFilter1) and (DimFilter2 = AuxDimFilter2) and (DimFilter3 = AuxDimFilter3) and
                                (DimFilter4 = AuxDimFilter4) then begin
                                AuxAvaylableBudgetLines."Initial Avaylable Dotation" := InitialDotation;
                                case AvaylableBudget."Budget Appropriation Method" of
                                    "Budget Appropriation Method"::"Amount Without VAT":
                                        TempAmount := TempAmount - AuxAvaylableBudgetLines.Amount;
                                    "Budget Appropriation Method"::"Amount With VAT":
                                        TempAmount := TempAmount - AuxAvaylableBudgetLines."Amount Including VAT";
                                    "Budget Appropriation Method"::"Cost Amount":
                                        TempAmount := TempAmount - AuxAvaylableBudgetLines."Cost Amount";
                                end;
                                AuxAvaylableBudgetLines."End Avaylable Dotation" := TempAmount;
                                AuxAvaylableBudgetLines.Modify(true);
                            end;
                        until AuxAvaylableBudgetLines.Next = 0;
                    end;
                End;
            until AvaylableBudgetLines.Next() = 0;
    end;

    local procedure CalcLinesDotation(PurchaseHeader: Record "Purchase Header")
    var
        BudgetConfig: Record "Budget Configuration";
        PurchaseLines: Record "Purchase Line";
        AuxPurchaseLines: Record "Purchase Line";
        DimSetEntry: Record "Dimension Set Entry";
        DimFilter1: Code[20];
        DimFilter2: Code[20];
        DimFilter3: Code[20];
        DimFilter4: Code[20];
        AuxDimFilter1: Code[20];
        AuxDimFilter2: Code[20];
        AuxDimFilter3: Code[20];
        AuxDimFilter4: Code[20];
        TempAmount: Decimal;
        TempPeriodInitDate: Date;
        TempPeriodEndDate: Date;
        InitialDotation: Decimal;

    begin
        Clear(DimFilter1);
        Clear(DimFilter2);
        Clear(DimFilter3);
        Clear(DimFilter4);
        Clear(AuxDimFilter1);
        Clear(AuxDimFilter2);
        Clear(AuxDimFilter3);
        Clear(AuxDimFilter4);

        BudgetConfig.Get();
        BudgetConfig.TestField("Avaylable Endowment Account");
        BudgetConfig.TestField("Analysis Code");

        TempPeriodInitDate := CalcDate('<-CY>', PurchaseHeader."Posting Date");
        TempPeriodEndDate := PurchaseHeader."Posting Date";

        PurchaseLines.Reset();
        PurchaseLines.SetCurrentKey("Document Type", "Document No.");
        PurchaseLines.SetRange("Document Type", PurchaseHeader."Document Type");
        PurchaseLines.SetRange("Document No.", PurchaseHeader."No.");
        PurchaseLines.SetFilter(Type, '<>%1', "Purchase Line Type"::" ");
        if PurchaseLines.FindSet(true) then
            repeat
                Clear(InitialDotation);
                PurchaseLines."Initial Avaylable Dotation" := 0;
                PurchaseLines."End Avaylable Dotation" := 0;
                DimSetEntry.Reset;
                DimSetEntry.SetRange("Dimension Set ID", PurchaseLines."Dimension Set ID");
                if DimSetEntry.FindSet then
                    repeat
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim1) and (BudgetConfig.Sd1 = true) then
                            DimFilter1 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim2) and (BudgetConfig.Sd2 = true) then
                            DimFilter2 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim3) and (BudgetConfig.Sd3 = true) then
                            DimFilter3 := DimSetEntry."Dimension Value Code";
                        if (DimSetEntry."Dimension Code" = BudgetConfig.dim4) and (BudgetConfig.Sd4 = true) then
                            DimFilter4 := DimSetEntry."Dimension Value Code";
                    until DimSetEntry.Next = 0;
                InitialDotation := GetDotation(TempPeriodInitDate, TempPeriodEndDate, DimFilter1, DimFilter2, DimFilter3, DimFilter4);
                PurchaseLines."Initial Avaylable Dotation" := InitialDotation;
                PurchaseLines."End Avaylable Dotation" := InitialDotation;
                PurchaseLines.Modify(true);
                //Outras Linhas
                if (DimFilter1 <> '') or (DimFilter2 <> '') or (DimFilter3 <> '') or (DimFilter4 <> '') then begin
                    AuxPurchaseLines.Reset();
                    AuxPurchaseLines.SetCurrentKey("Document No.", "Line No.");
                    AuxPurchaseLines.SetRange("Document Type", PurchaseHeader."Document Type");
                    AuxPurchaseLines.SetRange("Document No.", PurchaseHeader."No.");
                    AuxPurchaseLines.SetFilter("Line No.", '<=%1', PurchaseLines."Line No.");
                    if AuxPurchaseLines.FindSet() then begin
                        TempAmount := InitialDotation;
                        repeat
                            DimSetEntry.Reset;
                            DimSetEntry.SetRange("Dimension Set ID", AuxPurchaseLines."Dimension Set ID");
                            if DimSetEntry.FindSet then begin
                                repeat
                                    if (DimSetEntry."Dimension Code" = BudgetConfig.dim1) and (BudgetConfig.Sd1 = true) then
                                        AuxDimFilter1 := DimSetEntry."Dimension Value Code";
                                    if (DimSetEntry."Dimension Code" = BudgetConfig.dim2) and (BudgetConfig.Sd2 = true) then
                                        AuxDimFilter2 := DimSetEntry."Dimension Value Code";
                                    if (DimSetEntry."Dimension Code" = BudgetConfig.dim3) and (BudgetConfig.Sd3 = true) then
                                        AuxDimFilter3 := DimSetEntry."Dimension Value Code";
                                    if (DimSetEntry."Dimension Code" = BudgetConfig.dim4) and (BudgetConfig.Sd4 = true) then
                                        AuxDimFilter4 := DimSetEntry."Dimension Value Code";
                                until DimSetEntry.Next = 0;
                            end;

                            if (DimFilter1 = AuxDimFilter1) and (DimFilter2 = AuxDimFilter2) and (DimFilter3 = AuxDimFilter3) and
                                (DimFilter4 = AuxDimFilter4) then begin
                                AuxPurchaseLines."Initial Avaylable Dotation" := InitialDotation;
                                case PurchaseHeader."Budget Appropriation Method" of
                                    "Budget Appropriation Method"::"Amount Without VAT":
                                        TempAmount := TempAmount - AuxPurchaseLines.Amount;
                                    "Budget Appropriation Method"::"Amount With VAT":
                                        TempAmount := TempAmount - AuxPurchaseLines."Amount Including VAT";
                                    "Budget Appropriation Method"::"Cost Amount":
                                        TempAmount := TempAmount - AuxPurchaseLines."Cost Amount";
                                end;
                                AuxPurchaseLines."End Avaylable Dotation" := TempAmount;
                                AuxPurchaseLines.Modify(true);
                            end;
                        until AuxPurchaseLines.Next = 0;
                    end;
                End;
            until PurchaseLines.Next() = 0;
    end;
}