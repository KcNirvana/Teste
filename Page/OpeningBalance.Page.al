page 57080 OpeningBalance
{
    Caption = 'Opening Balance';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Worksheet;
    Permissions = TableData "Vendor Ledger Entry" = rimd;
    SourceTable = "Vendor Ledger Entry";
    SourceTableTemporary = true;
    SourceTableView = SORTING("Vendor No.", "Posting Date", "Currency Code")
                      ORDER(Ascending);
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(Filters)
            {
                Caption = 'Filters';
                field(CloseYear; CloseYear)
                {
                    Caption = 'Close Year';
                    Editable = false;
                }
            }
            repeater(Group)
            {
                FreezeColumn = "Vendor No.";
                field("Posting Date"; Rec."Posting Date")
                {
                    Editable = false;
                }
                field("Document Type"; Rec."Document Type")
                {
                    Editable = false;
                    StyleExpr = StyleTxt;
                }
                field("Document No."; Rec."Document No.")
                {
                    Editable = false;
                    StyleExpr = StyleTxt;
                }
                field("External Document No."; Rec."External Document No.")
                {
                    Editable = false;
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    Editable = false;
                }
                field(Description; Rec.Description)
                {
                    Editable = false;
                }
                field("Closed by Amount"; Rec."Closed by Amount")
                {
                    Caption = 'Pending Amount (DL)';
                    Editable = false;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    CaptionClass = '1,2,1';
                    Editable = false;
                    Importance = Additional;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    CaptionClass = '1,2,2';
                    Editable = false;
                    Importance = Additional;
                }
                field("ShortcutDimCode[3]"; ShortcutDimCode[3])
                {
                    CaptionClass = '1,2,3';
                    Editable = false;
                }
                field("ShortcutDimCode[4]"; ShortcutDimCode[4])
                {
                    CaptionClass = '1,2,4';
                    Importance = Additional;
                    Editable = false;
                }
                field("ShortcutDimCode[5]"; ShortcutDimCode[5])
                {
                    CaptionClass = '1,2,5';
                    Importance = Additional;
                    Editable = false;
                    Visible = false;
                }
                field("ShortcutDimCode[6]"; ShortcutDimCode[6])
                {
                    CaptionClass = '1,2,6';
                    Importance = Additional;
                    Editable = false;
                    Visible = false;
                }
                field("ShortcutDimCode[7]"; ShortcutDimCode[7])
                {
                    CaptionClass = '1,2,7';
                    Importance = Additional;
                    Editable = false;
                    Visible = false;
                }
                field("ShortcutDimCode[8]"; ShortcutDimCode[8])
                {
                    CaptionClass = '1,2,8';
                    Importance = Additional;
                    Editable = false;
                    Visible = false;
                }
                field(Prepayment; Rec.Prepayment)
                {
                    Caption = 'Selected';
                }

            }

        }
    }
    actions
    {
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action(Posting)
                {
                    Caption = 'Post';
                    Image = Post;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        Post;
                    end;
                }
                action("Mark all")
                {
                    Caption = 'Mark all';
                    Image = SelectLineToApply;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        Rec.ModifyAll(Prepayment, true);
                    end;
                }
                action("Unmark all")
                {
                    Caption = 'Unmark all';
                    Image = Undo;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        Rec.ModifyAll(Prepayment, false);
                    end;
                }
            }
        }
    }


    var
        DimMgt: Codeunit DimensionManagement;
        ShortcutDimCode: array[8] of Code[20];
        CloseYear: Integer;
        Text000: Label 'Do you want to post the opening balance?';
        Text001: Label 'Diary %1 Section %2 cant have default series';
        Text002: Label 'The amount (%1) for dimensions %2, %3, %4, %5 is greater thant the avaylable dotation (%6).';
        Text004: Label 'There is nothing to post.';
        Text005: Label 'Opening balance posted.';
        StyleTxt: Text;


    trigger OnAfterGetRecord()
    begin
        StyleTxt := Rec.SetStyle;
        DimMgt.GetShortcutDimensions(Rec."Dimension Set ID", ShortcutDimCode);
    end;

    trigger OnOpenPage()
    begin
        InitTempTable;
    end;

    procedure SetCloseYear(NewCloseYear: Integer)
    begin
        CloseYear := NewCloseYear;
    end;

    local procedure InitTempTable()
    var
        VendorLedgerEntry: Record "Vendor Ledger Entry";

    begin
        CLEAR(Rec);

        Rec.DELETEALL;

        VendorLedgerEntry.RESET;
        VendorLedgerEntry.SETFILTER(YearClosed, '<>%1', CloseYear);
        VendorLedgerEntry.SETFILTER("Posting Date", '..%1', DMY2DATE(31, 12, CloseYear));
        VendorLedgerEntry.SETFILTER("Date Filter", '..%1', DMY2DATE(31, 12, CloseYear));
        VendorLedgerEntry.SETFILTER("Remaining Amt. (LCY)", '<0');
        IF VendorLedgerEntry.FINDSET THEN
            REPEAT
                Rec.INIT;
                VendorLedgerEntry.CALCFIELDS("Remaining Amt. (LCY)");
                Rec := VendorLedgerEntry;
                Rec."Closed by Amount" := VendorLedgerEntry."Remaining Amt. (LCY)";
                Rec.Prepayment := FALSE;
                Rec.INSERT;
            UNTIL VendorLedgerEntry.NEXT = 0;

        IF Rec.FINDFIRST THEN;
    end;

    local procedure Post()
    var
        BudgetConfig: Record "Budget Configuration";
        VendorLedgerEntry: Record "Vendor Ledger Entry";
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalBatch: Record "Gen. Journal Batch";
        Class0Setup: Record "Class 0 Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        LineNo: Integer;
        DocumentNo: Code[20];
        DocumentNo2: Code[20];
        GenJnlCheckLine: Codeunit "Gen. Jnl.-Check Line";
        Text001: Label 'is not within your range of allowed posting dates';
    begin
        IF NOT CONFIRM(Text000, FALSE) THEN
            EXIT;

        BudgetConfig.GET;
        BudgetConfig.TESTFIELD(CloseYearOpeningVendor);
        BudgetConfig.TESTFIELD("CloseYear Batch Diary");
        BudgetConfig.TESTFIELD("CloseYearTemplate Diary");
        BudgetConfig.TESTFIELD(CloseYearClosingVendor);

        Rec.RESET;
        Rec.SETRANGE(Prepayment, TRUE);
        Rec.SETFILTER(YearClosed, '<>%1', CloseYear);
        IF Rec.FINDSET THEN BEGIN

            GenJournalLine.RESET;
            GenJournalLine.SETRANGE("Journal Template Name", BudgetConfig."CloseYearTemplate Diary");
            GenJournalLine.SETRANGE("Journal Batch Name", BudgetConfig."CloseYear Batch Diary");
            GenJournalLine.DELETEALL;
            CLEAR(GenJournalBatch);

            GenJournalBatch.GET(BudgetConfig."CloseYearTemplate Diary", BudgetConfig."CloseYear Batch Diary");
            IF GenJournalBatch."No. Series" <> '' THEN BEGIN
                CLEAR(NoSeriesMgt);
                DocumentNo := NoSeriesMgt.GetNextNo(GenJournalBatch."No. Series", DMY2DATE(1, 1, CloseYear + 1), FALSE);
            END;

            GenJournalBatch.GET(BudgetConfig."CloseYearTemplate Diary", BudgetConfig."CloseYear Batch Diary");
            IF GenJournalBatch."No. Series" <> '' THEN BEGIN
                CLEAR(NoSeriesMgt);
                DocumentNo2 := NoSeriesMgt.GetNextNo(GenJournalBatch."No. Series", CLOSINGDATE(DMY2DATE(31, 12, CloseYear)), FALSE);
            END;

            GenJournalLine.RESET;
            GenJournalLine.SETRANGE("Journal Template Name", BudgetConfig."CloseYearTemplate Diary");
            GenJournalLine.SETRANGE("Journal Batch Name", BudgetConfig."CloseYear Batch Diary");
            IF GenJournalLine.FINDLAST THEN
                LineNo := GenJournalLine."Line No." + 10000
            ELSE
                LineNo := 10000;

            REPEAT
                Class0Setup.RESET;
                Class0Setup.SETRANGE("Regist type", BudgetConfig.CloseYearOpeningVendor);
                IF Class0Setup.FINDSET THEN
                    REPEAT
                        GenJournalLine.INIT;
                        GenJournalLine."Line No." := LineNo;
                        GenJournalLine.VALIDATE(ClosedByCloseYear, TRUE);
                        GenJournalLine.VALIDATE(YearClosed, CloseYear);
                        GenJournalLine.VALIDATE("Journal Template Name", BudgetConfig."CloseYearTemplate Diary");
                        GenJournalLine.VALIDATE("Journal Batch Name", BudgetConfig."CloseYear Batch Diary");
                        GenJournalLine.VALIDATE("Posting Date", DMY2DATE(1, 1, CloseYear + 1));
                        GenJournalLine.VALIDATE("Account Type", GenJournalLine."Account Type"::"G/L Account");
                        GenJournalLine.VALIDATE("Account No.", Class0Setup."Debt count");
                        GenJournalLine.VALIDATE("Document Type", GenJournalLine."Document Type"::" ");
                        GenJournalLine.VALIDATE("Document No.", DocumentNo);
                        GenJournalLine.VALIDATE(Amount, ABS(Rec."Closed by Amount"));
                        GenJournalLine.VALIDATE("Bal. Account Type", GenJournalLine."Bal. Account Type"::"G/L Account");
                        GenJournalLine.VALIDATE("Bal. Account No.", Class0Setup."Credit count");
                        GenJournalLine.VALIDATE("System-Created Entry", TRUE);
                        GenJournalLine.VALIDATE("Dimension Set ID", Rec."Dimension Set ID");
                        DimMgt.UpdateGlobalDimFromDimSetID(GenJournalLine."Dimension Set ID", GenJournalLine."Shortcut Dimension 1 Code", GenJournalLine."Shortcut Dimension 2 Code");
                        IF IsDateNotAllowed(GenJournalLine."Posting Date") THEN
                            GenJournalLine.FIELDERROR("Posting Date", Text001);
                        GenJournalLine.INSERT(TRUE);
                        LineNo += 10000;
                    UNTIL Class0Setup.NEXT = 0;

                Class0Setup.RESET;
                Class0Setup.SETRANGE("Regist type", BudgetConfig.CloseYearClosingVendor);
                IF Class0Setup.FINDSET THEN
                    REPEAT
                        GenJournalLine.INIT;
                        GenJournalLine."Line No." := LineNo;
                        GenJournalLine.VALIDATE(ClosedByCloseYear, TRUE);
                        GenJournalLine.VALIDATE(YearClosed, CloseYear);
                        GenJournalLine.VALIDATE("Journal Template Name", BudgetConfig."CloseYearTemplate Diary");
                        GenJournalLine.VALIDATE("Journal Batch Name", BudgetConfig."CloseYear Batch Diary");
                        GenJournalLine.VALIDATE("Posting Date", CLOSINGDATE(DMY2DATE(31, 12, CloseYear)));
                        GenJournalLine.VALIDATE("Account Type", GenJournalLine."Account Type"::"G/L Account");
                        GenJournalLine.VALIDATE("Account No.", Class0Setup."Debt count");
                        GenJournalLine.VALIDATE("Document Type", GenJournalLine."Document Type"::" ");
                        GenJournalLine.VALIDATE("Document No.", DocumentNo2);
                        GenJournalLine.VALIDATE(Amount, ABS(Rec."Closed by Amount"));
                        GenJournalLine.VALIDATE("Bal. Account Type", GenJournalLine."Bal. Account Type"::"G/L Account");
                        GenJournalLine.VALIDATE("Bal. Account No.", Class0Setup."Credit count");
                        GenJournalLine.VALIDATE("System-Created Entry", TRUE);
                        GenJournalLine.VALIDATE("Dimension Set ID", Rec."Dimension Set ID");
                        GenJournalLine.VALIDATE("Budget Closing Entry", TRUE);
                        DimMgt.UpdateGlobalDimFromDimSetID(GenJournalLine."Dimension Set ID", GenJournalLine."Shortcut Dimension 1 Code", GenJournalLine."Shortcut Dimension 2 Code");
                        GenJournalLine.INSERT(TRUE);
                        LineNo += 10000;
                    UNTIL Class0Setup.NEXT = 0;

                VendorLedgerEntry.GET(Rec."Entry No.");
                VendorLedgerEntry.ClosedByCloseYear := TRUE;
                VendorLedgerEntry.YearClosed := CloseYear;
                VendorLedgerEntry.MODIFY;
            UNTIL Rec.NEXT = 0;
            ValidateBudget(GenJournalLine);
            GenJournalLine.SETRANGE("Document No.", DocumentNo);
            CODEUNIT.RUN(CODEUNIT::"Gen. Jnl.-Post - Req", GenJournalLine);
            GenJournalLine.SETRANGE("Document No.", DocumentNo2);
            CODEUNIT.RUN(CODEUNIT::"Gen. Jnl.-Post - Req", GenJournalLine);
            MESSAGE(Text005);
            ClearRec;
            InitTempTable;
        END ELSE
            ERROR(Text004);
    end;

    local procedure ClearRec()
    begin
        CLEAR(Rec);
        Rec.DELETEALL;
    end;

    local procedure ValidateBudget(GenJournalLine: Record "Gen. Journal Line")
    var
        GenJournalLine2: Record "Gen. Journal Line";
        BudgetConfig: Record "Budget Configuration";
        GLAccount: Record "G/L Account";
        GLAccountBudget: Record "G/L Account" temporary;
        AnalysisViewEntry: Record "Analysis View Entry" temporary;
        TempGLEntry: Record "G/L Entry" temporary;
        AnalysisViewEntryToGLEntries: Codeunit AnalysisViewEntryToGLEntries;
        TempPeriodInitDate: Date;
        TempPeriodEndDate: Date;
        DotCreAmount: Decimal;
        DotDebAmount: Decimal;
    begin
        CLEAR(GLAccountBudget);
        CLEAR(AnalysisViewEntry);
        GLAccountBudget.DELETEALL;

        BudgetConfig.GET;
        GenJournalLine2.RESET;
        GenJournalLine2.COPYFILTERS(GenJournalLine);
        GenJournalLine2.SETRANGE("Journal Template Name", GenJournalLine."Journal Template Name");
        GenJournalLine2.SETRANGE("Journal Batch Name", GenJournalLine."Journal Batch Name");
        IF GenJournalLine2.FINDSET THEN
            REPEAT
                IF (GenJournalLine2."Account No." = BudgetConfig."Avaylable Endowment Account") OR (GenJournalLine2."Bal. Account No." = BudgetConfig."Avaylable Endowment Account") THEN
                    InsertGLAccountBudget(GLAccountBudget, GenJournalLine2."Dimension Set ID", ABS(GenJournalLine2."Amount (LCY)"), GenJournalLine2."Posting Date");
            UNTIL GenJournalLine2.NEXT = 0;

        GLAccountBudget.RESET;
        IF GLAccountBudget.FINDSET THEN
            REPEAT
                TempGLEntry.RESET;
                TempGLEntry.DELETEALL;
                TempPeriodInitDate := CALCDATE('<-CY>', GLAccountBudget.DotationDate);
                TempPeriodEndDate := CALCDATE('<CY>', GLAccountBudget.DotationDate);
                AnalysisViewEntry.INIT;
                AnalysisViewEntry."Analysis View Code" := BudgetConfig."Analysis Code";
                AnalysisViewEntry."Account No." := BudgetConfig."Avaylable Endowment Account";
                AnalysisViewEntry."Posting Date" := TempPeriodInitDate;
                IF GLAccountBudget.DotationDim1 <> '' THEN
                    AnalysisViewEntry."Dimension 1 Value Code" := GLAccountBudget.DotationDim1;
                IF GLAccountBudget.DotationDim2 <> '' THEN
                    AnalysisViewEntry."Dimension 2 Value Code" := GLAccountBudget.DotationDim2;
                IF GLAccountBudget.DotationDim3 <> '' THEN
                    AnalysisViewEntry."Dimension 3 Value Code" := GLAccountBudget.DotationDim3;
                IF GLAccountBudget.DotationDim4 <> '' THEN
                    AnalysisViewEntry."Dimension 4 Value Code" := GLAccountBudget.DotationDim4;
                AnalysisViewEntryToGLEntries.GetGLEntries(AnalysisViewEntry, TempGLEntry);
                TempGLEntry.RESET;
                TempGLEntry.SETFILTER("Posting Date", '%1..%2', TempPeriodInitDate, TempPeriodEndDate);
                TempGLEntry.SETFILTER(Amount, '>0');
                TempGLEntry.CALCSUMS(Amount);
                DotDebAmount := TempGLEntry.Amount;
                TempGLEntry.RESET;
                TempGLEntry.SETFILTER("Posting Date", '%1..%2', TempPeriodInitDate, GLAccountBudget.DotationDate);
                TempGLEntry.SETFILTER(Amount, '<0');
                TempGLEntry.CALCSUMS(Amount);
                DotCreAmount := TempGLEntry.Amount;
                IF GLAccountBudget.DotationAmount > ((DotCreAmount + DotDebAmount) * -1) THEN
                    ERROR(Text002, GLAccountBudget.DotationAmount, GLAccountBudget.DotationDim1, GLAccountBudget.DotationDim2, GLAccountBudget.DotationDim3, GLAccountBudget.DotationDim4, ((DotCreAmount + DotDebAmount) * -1))
            UNTIL GLAccountBudget.NEXT = 0;
    end;

    local procedure InsertGLAccountBudget(var GLAccountBudget: Record "G/L Account" temporary; DimSetID: Integer; Amount: Decimal; DotDate: Date)
    var
        BudgetConfig: Record "Budget Configuration";
        DimSetEntry: Record "Dimension Set Entry";
        Dim1: Code[20];
        Dim2: Code[20];
        Dim3: Code[20];
        Dim4: Code[20];
        GLAccountNoBudget: Code[20];
    begin
        GLAccountBudget.RESET;
        IF GLAccountBudget.FINDLAST THEN
            GLAccountNoBudget := GLAccountBudget."No."
        ELSE
            GLAccountNoBudget := '00000001';

        GLAccountNoBudget := INCSTR(GLAccountNoBudget);

        BudgetConfig.GET;
        DimSetEntry.RESET;
        DimSetEntry.SETRANGE("Dimension Set ID", DimSetID);
        IF DimSetEntry.FINDSET THEN
            REPEAT
                IF (DimSetEntry."Dimension Code" = BudgetConfig.dim1) AND BudgetConfig.Sd1 THEN
                    Dim1 := DimSetEntry."Dimension Value Code";
                IF (DimSetEntry."Dimension Code" = BudgetConfig.dim2) AND BudgetConfig.Sd2 THEN
                    Dim2 := DimSetEntry."Dimension Value Code";
                IF (DimSetEntry."Dimension Code" = BudgetConfig.dim3) AND BudgetConfig.Sd3 THEN
                    Dim3 := DimSetEntry."Dimension Value Code";
                IF (DimSetEntry."Dimension Code" = BudgetConfig.dim4) AND BudgetConfig.Sd4 THEN
                    Dim4 := DimSetEntry."Dimension Value Code";
            UNTIL DimSetEntry.NEXT = 0;

        IF (Dim1 <> '') OR (Dim2 <> '') OR (Dim3 <> '') OR (Dim4 <> '') THEN BEGIN
            GLAccountBudget.RESET;
            GLAccountBudget.SETRANGE(DotationDim1, Dim1);
            GLAccountBudget.SETRANGE(DotationDim2, Dim2);
            GLAccountBudget.SETRANGE(DotationDim3, Dim3);
            GLAccountBudget.SETRANGE(DotationDim4, Dim4);
            GLAccountBudget.SETRANGE(DotationDate, DotDate);
            IF GLAccountBudget.FINDFIRST THEN BEGIN
                GLAccountBudget.DotationAmount += Amount;
                GLAccountBudget.MODIFY;
            END ELSE BEGIN
                GLAccountBudget.INIT;
                GLAccountBudget."No." := FORMAT(GLAccountNoBudget);
                GLAccountBudget.DotationDim1 := Dim1;
                GLAccountBudget.DotationDim2 := Dim2;
                GLAccountBudget.DotationDim3 := Dim3;
                GLAccountBudget.DotationDim4 := Dim4;
                GLAccountBudget.DotationDate := DotDate;
                GLAccountBudget.DotationAmount := Amount;
                GLAccountBudget.INSERT;
            END;
        END;
    end;

    local procedure IsDateNotAllowed(PostingDate: Date) DateIsNotAllowed: Boolean
    var
        UserSetupManagement: Codeunit "User Setup Management";
        SetupRecordID: RecordID;
    begin
        DateIsNotAllowed := not UserSetupManagement.IsPostingDateValidWithSetup(PostingDate, SetupRecordID);
        exit(DateIsNotAllowed);
    end;


}

