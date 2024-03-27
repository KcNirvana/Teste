Codeunit 57015 "Deeds Events"
{
    var
        DimMgt: Codeunit DimensionManagement;
        BudgetConfig: Record "Budget Configuration";

    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnValidateItemNoOnAfterCalcUnitCost', '', false, false)]
    local procedure OnValidateItemNoOnAfterCalcUnitCost(var ItemJournalLine: Record "Item Journal Line"; Item: Record Item)
    begin
        ItemJournalLine."Source Currency Code" := Item."Currency Code";
        ItemJournalLine.Validate("Source Currency Code");
    end;

    [EventSubscriber(ObjectType::Table, Database::"Bank Account Ledger Entry", 'OnAfterCopyFromGenJnlLine', '', false, false)]
    procedure OnAfterCopyFromGenJnlLine(var BankAccountLedgerEntry: Record "Bank Account Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        BankAccountLedgerEntry."Revaluation Type" := GenJournalLine."Revaluation Type";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Check Line", 'OnAfterGetItem', '', false, false)]
    local procedure OnAfterGetItem(Item: Record Item; var ItemJournalLine: Record "Item Journal Line"; var IsHandled: Boolean)
    var
        BudgetConfig: Record "Budget Configuration";
    begin
        BudgetConfig.Get();
        If Item.Deed then begin
            BudgetConfig.TestField("Deeds Diary");
            BudgetConfig.TestField("Deeds Batch Diary");
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnInitValueEntryOnAfterAssignFields', '', false, false)]
    local procedure OnInitValueEntryOnAfterAssignFields(var ValueEntry: Record "Value Entry"; ItemLedgEntry: Record "Item Ledger Entry"; ItemJnlLine: Record "Item Journal Line")
    begin
        ValueEntry."Tax Rate" := ItemJnlLine."Tax Rate";
        ValueEntry."Original Currency Amount" := ItemJnlLine.Amount;
        ValueEntry."Original Currency Code" := ItemJnlLine."Source Currency Code";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeInsertValueEntry', '', false, false)]
    local procedure OnBeforeInsertValueEntry(var ValueEntry: Record "Value Entry"; ItemJournalLine: Record "Item Journal Line"; var ItemLedgerEntry: Record "Item Ledger Entry"; var ValueEntryNo: Integer; var InventoryPostingToGL: Codeunit "Inventory Posting To G/L"; CalledFromAdjustment: Boolean; var OldItemLedgEntry: Record "Item Ledger Entry"; var Item: Record Item; TransferItem: Boolean; var GlobalValueEntry: Record "Value Entry")
    begin
        If ItemJournalLine."Source Currency Code" <> '' then
            PostBankAccount(ItemJournalLine);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Batch", 'OnAfterCheckLines', '', false, false)]
    local procedure OnAfterCheckLines(var ItemJnlLine: Record "Item Journal Line")
    begin
        ValidateBudgetDotation(ItemJnlLine);
        InsertBudgetLines(ItemJnlLine);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inventory Posting To G/L", 'OnPostInvtPostBufOnAfterInitGenJnlLine', '', false, false)]
    local procedure OnPostInvtPostBufOnAfterInitGenJnlLine(var GenJournalLine: Record "Gen. Journal Line"; var ValueEntry: Record "Value Entry")
    var
        Text000: Label '%1 %2 on %3';
    begin
        if ValueEntry."Entry Type" = ValueEntry."Entry Type"::Revaluation then begin
            GenJournalLine.Description := COPYSTR(STRSUBSTNO(Text000, ValueEntry."Revaluation Type", ValueEntry."Item No.",
                                                    ValueEntry."Posting Date"), 1, MAXSTRLEN(GenJournalLine.Description));
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inventory Posting To G/L", 'OnBeforeInitInvtPostBufPerAccount', '', false, false)]
    local procedure OnBeforeInitInvtPostBufPerAccount(var ValueEntry: Record "Value Entry"; AccType: Enum "Invt. Posting Buffer Account Type"; BalAccType: Enum "Invt. Posting Buffer Account Type"; CostToPost: Decimal; CostToPostACY: Decimal; InterimAccount: Boolean; BalancingRecord: Boolean; var IsHandled: Boolean)
    begin
        ValueEntry."Balancing Record" := BalancingRecord;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inventory Posting To G/L", 'OnBeforeSetAccNo', '', false, false)]
    local procedure OnBeforeSetAccNo(var InvtPostBuf: Record "Invt. Posting Buffer"; ValueEntry: Record "Value Entry"; AccType: Option; BalAccType: Option; CalledFromItemPosting: Boolean; var IsHandled: Boolean)
    var
        InvtPostSetup: Record "Inventory Posting Setup";
    begin
        InvtPostSetup.GET(ValueEntry."Location Code", ValueEntry."Inventory Posting Group");
        If ValueEntry."Balancing Record" then begin
            case ValueEntry."Revaluation Type" of
                ValueEntry."Revaluation Type"::"Elapsed Interests":
                    begin
                        InvtPostSetup.TESTFIELD("Credit Elapsed Int. Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Credit Elapsed Int. Account";
                    end;
                ValueEntry."Revaluation Type"::Impairments:
                    begin
                        InvtPostSetup.TESTFIELD("Credit Impairements Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Credit Impairements Account";
                    end;
                ValueEntry."Revaluation Type"::"Result Revaluation":
                    begin
                        InvtPostSetup.TESTFIELD("Credit Reservations Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Credit Reservations Account";
                    end;
                ValueEntry."Revaluation Type"::"Receipts of Interest":
                    begin
                        InvtPostSetup.TESTFIELD("Credit Receipts Int. Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Credit Receipts Int. Account";
                    end;
                ValueEntry."Revaluation Type"::"Interests Adjustments":
                    begin
                        InvtPostSetup.TESTFIELD("Credit Inter. Adjust. Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Credit Inter. Adjust. Account";
                    end;
                ValueEntry."Revaluation Type"::Amortization:
                    begin
                        InvtPostSetup.TESTFIELD("Credit Amortization Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Credit Amortization Account";
                    end;
                ValueEntry."Revaluation Type"::Dividends:
                    begin
                        InvtPostSetup.TESTFIELD("Credit Dividends Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Credit Dividends Account";
                    end;
                ValueEntry."Revaluation Type"::"Amortizations Adjustments":
                    begin
                        InvtPostSetup.TESTFIELD("Credit Amort. Adjust. Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Credit Amort. Adjust. Account";
                    end;
                ValueEntry."Revaluation Type"::"Negative Result Revaluation":
                    begin
                        InvtPostSetup.TESTFIELD("Credit ANL Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Credit ANL Account";
                    end;
            end;
        end else begin
            case ValueEntry."Revaluation Type" of
                ValueEntry."Revaluation Type"::"Elapsed Interests":
                    begin
                        InvtPostSetup.TESTFIELD("Elapsed Interests Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Elapsed Interests Account";
                    end;
                ValueEntry."Revaluation Type"::Impairments:
                    begin
                        InvtPostSetup.TESTFIELD("Impairements Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Impairements Account";
                    end;
                ValueEntry."Revaluation Type"::"Result Revaluation":
                    begin
                        InvtPostSetup.TESTFIELD("Reservations Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Reservations Account";
                    end;
                ValueEntry."Revaluation Type"::"Receipts of Interest":
                    begin
                        InvtPostSetup.TESTFIELD("Receipts of Interest Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Receipts of Interest Account";
                    end;
                ValueEntry."Revaluation Type"::"Interests Adjustments":
                    begin
                        InvtPostSetup.TESTFIELD("Interests Adjustments Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Interests Adjustments Account";
                    end;
                ValueEntry."Revaluation Type"::Amortization:
                    begin
                        InvtPostSetup.TESTFIELD("Amortization Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Amortization Account";
                    end;
                ValueEntry."Revaluation Type"::Dividends:
                    begin
                        InvtPostSetup.TESTFIELD("Dividends Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Dividends Account";
                    end;
                ValueEntry."Revaluation Type"::"Amortizations Adjustments":
                    begin
                        InvtPostSetup.TESTFIELD("Amortizations Adjust. Account");
                        InvtPostBuf."Account No." := InvtPostSetup."Amortizations Adjust. Account";
                    end;
                ValueEntry."Revaluation Type"::"Negative Result Revaluation":
                    begin
                        InvtPostSetup.TESTFIELD("ANL Account");
                        InvtPostBuf."Account No." := InvtPostSetup."ANL Account";
                    end;
            end;
        end;
    end;

    local procedure PostBankAccount(ItemJnlLine: Record "Item Journal Line")
    var
        BudgetConfig: Record "Budget Configuration";
        GenJnlLine: Record "Gen. Journal Line";
        SourceCodeSetup: Record "Source Code Setup";
        BankAccount: Record "Bank Account";
        BankAccPostingGroup: Record "Bank Account Posting Group";
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
        LineNo: Integer;
    begin
        BudgetConfig.Get;
        BankAccount.Get(ItemJnlLine."Item No.");
        BankAccPostingGroup.Get(BankAccount."No.");

        GenJnlLine.Reset();
        GenJnlLine.SetRange("Journal Template Name", BudgetConfig."Deeds Diary");
        GenJnlLine.SetRange("Journal Batch Name", BudgetConfig."Deeds Batch Diary");
        If GenJnlLine.FindLast() then
            LineNo := GenJnlLine."Line No." + 10000
        else
            LineNo := 10000;

        SourceCodeSetup.Get();
        Clear(GenJnlLine);
        GenJnlLine.Init();
        GenJnlLine.Validate("Journal Template Name", BudgetConfig."Deeds Diary");
        GenJnlLine.Validate("Journal Batch Name", BudgetConfig."Deeds Batch Diary");
        GenJnlLine.Validate("Posting Date", ItemJnlLine."Posting Date");
        GenJnlLine.Validate("Document Date", ItemJnlLine."Document Date");
        GenJnlLine.Validate("Line No.", LineNo);
        GenJnlLine."Document Type" := GenJnlLine."Document Type"::" ";
        GenJnlLine.Validate("Document No.", ItemJnlLine."Document No.");
        GenJnlLine.Validate("Account Type", GenJnlLine."Account Type"::"Bank Account");
        GenJnlLine.Validate("Account No.", BankAccount."No.");
        GenJnlLine.Validate("Bal. Account Type", GenJnlLine."Bal. Account Type"::"G/L Account");
        GenJnlLine.Validate("Bal. Account No.", BankAccPostingGroup."G/L Account No.");
        GenJnlLine.Validate("System-Created Entry", TRUE);
        GenJnlLine.Validate("External Document No.", ItemJnlLine."External Document No.");
        GenJnlLine.Validate("Currency Code", ItemJnlLine."Source Currency Code");
        GenJnlLine.Validate("Revaluation Type", ItemJnlLine."Revaluation Type");
        GenJnlLine.Validate(Amount, ItemJnlLine.Amount);
        GenJnlLine.Validate("Source Code", SourceCodeSetup."Revaluation Journal");
        GenJnlLine.Validate("Dimension Set ID", ItemJnlLine."Dimension Set ID");
        DimMgt.UpdateGlobalDimFromDimSetID(GenJnlLine."Dimension Set ID", GenJnlLine."Shortcut Dimension 1 Code", GenJnlLine."Shortcut Dimension 2 Code");
        GenJnlLine.Insert(true);
        GenJnlPostLine.RunWithCheck(GenJnlLine);
        GenJnlLine.Delete();
    end;

    local procedure ValidateConfClass(ItemJournalLine: Record "Item Journal Line")
    begin
        BudgetConfig.Get();
        If (ItemJournalLine.ConfClass0 <> '') and not ItemJournalLine."No Budget" then begin
            BudgetConfig.TestField("Deeds Diary");
            BudgetConfig.TESTFIELD("Deeds Batch Diary");
        end;
    end;

    local procedure InsertBudgetLines(var ItemJournalLine: Record "Item Journal Line")
    var
        GenJnlLine: Record "Gen. Journal Line";
        ItemJournalLine2: Record "Item Journal Line";
        Class0Setup: Record "Class 0 Setup";
        BudgetConfig: Record "Budget Configuration";
        GLSetup: Record "General Ledger Setup";
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
        LineNo: Integer;
        CostAmount: Decimal;
    begin
        BudgetConfig.Get();

        CLEAR(LineNo);
        GenJnlLine.Reset();
        GenJnlLine.SetRange("Journal Template Name", BudgetConfig."Deeds Diary");
        GenJnlLine.SetRange("Journal Batch Name", BudgetConfig."Deeds Batch Diary");
        GenJnlLine.DeleteAll();

        LineNo := 10000;

        ItemJournalLine2.RESET;
        ItemJournalLine2.COPYFILTERS(ItemJournalLine);
        ItemJournalLine2.SETRANGE("Journal Template Name", ItemJournalLine."Journal Template Name");
        ItemJournalLine2.SETRANGE("Journal Batch Name", ItemJournalLine."Journal Batch Name");
        //ItemJournalLine2.SETRANGE("System-Created Entry", false);
        ItemJournalLine2.SETFILTER(ConfClass0, '<>%1', '');
        ItemJournalLine2.SetRange("No Budget", false);
        IF ItemJournalLine2.FINDSET THEN
            REPEAT
                Clear(CostAmount);
                IF ItemJournalLine2."Tax Rate" <> 0 THEN
                    CostAmount := ABS(ROUND(ItemJournalLine2.Amount / ItemJournalLine2."Tax Rate", GLSetup."Amount Rounding Precision"))
                ELSE
                    CostAmount := ABS(ROUND(ItemJournalLine2.Amount, GLSetup."Amount Rounding Precision"));
                Class0Setup.Reset();
                Class0Setup.SETRANGE("Regist type", ItemJournalLine2.ConfClass0);
                IF Class0Setup.FINDSET THEN
                    REPEAT
                        GenJnlLine.Init();
                        GenJnlLine.Validate("Journal Template Name", BudgetConfig."Deeds Diary");
                        GenJnlLine.Validate("Journal Batch Name", BudgetConfig."Deeds Batch Diary");
                        GenJnlLine.Validate("Posting Date", ItemJournalLine2."Posting Date");
                        GenJnlLine.Validate("Document Date", ItemJournalLine2."Document Date");
                        GenJnlLine.Validate("Line No.", LineNo);
                        GenJnlLine."Document Type" := GenJnlLine."Document Type"::" ";
                        GenJnlLine.Validate("Document No.", ItemJournalLine2."Document No.");
                        GenJnlLine.ConfClass0 := '';
                        GenJnlLine.VALIDATE("System-Created Entry", TRUE);
                        GenJnlLine.VALIDATE("Account Type", GenJnlLine."Account Type"::"G/L Account");
                        GenJnlLine.VALIDATE("Account No.", Class0Setup."Debt count");
                        GenJnlLine.VALIDATE("Bal. Account Type", GenJnlLine."Bal. Account Type"::"G/L Account");
                        GenJnlLine.VALIDATE("Bal. Account No.", Class0Setup."Credit count");
                        GenJnlLine.Validate("External Document No.", ItemJournalLine2."External Document No.");
                        GenJnlLine.Validate(Amount, CostAmount);
                        GenJnlLine.VALIDATE("Budget Appropriation Method", BudgetConfig."Budget Appropriation Method");
                        GenJnlLine.Validate("Dimension Set ID", ItemJournalLine2."Dimension Set ID");
                        DimMgt.UpdateGlobalDimFromDimSetID(GenJnlLine."Dimension Set ID", GenJnlLine."Shortcut Dimension 1 Code", GenJnlLine."Shortcut Dimension 2 Code");
                        GenJnlLine.Insert(true);
                        GenJnlPostLine.RunWithCheck(GenJnlLine);
                        GenJnlLine.Delete();
                        LineNo += 10000;
                    UNTIL Class0Setup.NEXT = 0;
            UNTIL ItemJournalLine2.NEXT = 0;
    end;

    local procedure ValidateBudgetDotation(var ItemJournalLine: Record "Item Journal Line")
    var
        GLSetup: Record "General Ledger Setup";
        GLAccountDim: Record "G/L Account Dimensions" temporary;
        GLAccountDim2: Record "G/L Account Dimensions" temporary;
        ItemJournalLine2: Record "Item Journal Line";
        Class0Setup: Record "Class 0 Setup";
        CduBudget: Codeunit Budget;
        TempPeriodInitDate: Date;
        TempPeriodEndDate: Date;
        DimFilter1: Code[20];
        DimFilter2: Code[20];
        DimFilter3: Code[20];
        DimFilter4: Code[20];
        Dotation: Decimal;
        CostAmount: Decimal;
        Text001: Label 'The amount (%1) for dimensions %2, %3, %4, %5 is greater than the avaylable dotation (%6).';
    begin
        GLSetup.Get();
        Clear(GLAccountDim);

        GLAccountDim.DeleteAll();
        ItemJournalLine2.RESET;
        ItemJournalLine2.COPYFILTERS(ItemJournalLine);
        ItemJournalLine2.SETRANGE("Journal Template Name", ItemJournalLine."Journal Template Name");
        ItemJournalLine2.SETRANGE("Journal Batch Name", ItemJournalLine."Journal Batch Name");
        //ItemJournalLine2.SetRange("System-Created Entry", false);
        ItemJournalLine2.SetRange("No Budget", false);
        ItemJournalLine2.SETFILTER(ConfClass0, '<>%1', '');
        IF ItemJournalLine2.FINDSET THEN
            REPEAT
                Clear(CostAmount);
                IF ItemJournalLine2."Tax Rate" <> 0 THEN
                    CostAmount := ABS(ROUND(ItemJournalLine2.Amount / ItemJournalLine2."Tax Rate", GLSetup."Amount Rounding Precision"))
                ELSE
                    CostAmount := ABS(ROUND(ItemJournalLine2.Amount, GLSetup."Amount Rounding Precision"));
                Class0Setup.Reset();
                Class0Setup.SetRange("Regist Type", ItemJournalLine2.ConfClass0);
                Class0Setup.SetRange("Verify Avaylable Amount", true);
                if not Class0Setup.IsEmpty then begin
                    GLAccountDim2.FillDimensions(GLAccountDim2, ItemJournalLine2."Dimension Set ID");
                    GLAccountDim.Reset();
                    GLAccountDim.SetRange(Dimension1, GLAccountDim2.Dimension1);
                    GLAccountDim.SetRange("Dimension Value1", GLAccountDim2."Dimension Value1");
                    GLAccountDim.SetRange(Dimension2, GLAccountDim2.Dimension2);
                    GLAccountDim.SetRange("Dimension Value2", GLAccountDim2."Dimension Value2");
                    GLAccountDim.SetRange(Dimension3, GLAccountDim2.Dimension3);
                    GLAccountDim.SetRange("Dimension Value3", GLAccountDim2."Dimension Value3");
                    GLAccountDim.SetRange(Dimension4, GLAccountDim2.Dimension4);
                    GLAccountDim.SetRange("Dimension Value4", GLAccountDim2."Dimension Value4");
                    If GLAccountDim.FindFirst() then begin
                        GLAccountDim."Cost Amount" += CostAmount;
                        GLAccountDim.Modify();
                    end else begin
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Item Journal Line");
                        GLAccountDim."Document No." := ItemJournalLine2."Document No.";
                        GLAccountDim."Line No." := ItemJournalLine2."Line No.";
                        GLAccountDim."Cost Amount" := CostAmount;
                        GLAccountDim."Date Posted" := ItemJournalLine2."Posting Date";
                        GLAccountDim."Budget Year" := Format(Date2DMY(ItemJournalLine2."Posting Date", 3));
                        GLAccountDim.FillDimensions(GLAccountDim, ItemJournalLine2."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    end;
                end;
            UNTIL ItemJournalLine2.NEXT = 0;

        GLAccountDim.RESET;
        IF GLAccountDim.FINDSET THEN
            REPEAT
                Clear(DimFilter1);
                Clear(DimFilter2);
                Clear(DimFilter3);
                Clear(DimFilter4);
                Clear(Dotation);

                TempPeriodInitDate := CALCDATE('<-CY>', GLAccountDim."Date Posted");
                TempPeriodEndDate := CALCDATE('<CY>', GLAccountDim."Date Posted");
                DimFilter1 := GLAccountDim."Dimension Value1";
                DimFilter2 := GLAccountDim."Dimension Value2";
                DimFilter3 := GLAccountDim."Dimension Value3";
                DimFilter4 := GLAccountDim."Dimension Value4";
                Dotation := CduBudget.GetDotation(TempPeriodInitDate, TempPeriodEndDate, DimFilter1, DimFilter2, DimFilter3, DimFilter4);
                If GLAccountDim."Cost Amount" > Dotation then
                    Error(Text001, GLAccountDim."Cost Amount", DimFilter1, DimFilter2, DimFilter3, DimFilter4, Dotation);
            until GLAccountDim.Next() = 0;
    end;
}
