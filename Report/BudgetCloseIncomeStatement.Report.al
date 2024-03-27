report 57007 "Budget Close Income Statement"
{
    ApplicationArea = all;
    Caption = 'Close Income Statement - Budget';
    ProcessingOnly = true;
    UsageCategory = Tasks;

    dataset
    {
        dataitem("G/L Account"; "G/L Account")
        {
            DataItemTableView = SORTING("No.") WHERE("No." = FILTER('0*'), "Account Type" = CONST(Posting), "Income/Balance" = CONST("Balance Sheet"));
            dataitem("G/L Entry"; "G/L Entry")
            {
                DataItemLink = "G/L Account No." = FIELD("No.");
                DataItemTableView = SORTING("G/L Account No.", "Posting Date");

                trigger OnAfterGetRecord()
                var
                    TempDimBuf: Record "Dimension Buffer" temporary;
                    TempDimBuf2: Record "Dimension Buffer" temporary;
                    DimensionBufferID: Integer;
                    RowOffset: Integer;
                begin
                    EntryCount := EntryCount + 1;
                    IF CURRENTDATETIME - LastWindowUpdateDateTime > 1000 THEN BEGIN
                        LastWindowUpdateDateTime := CURRENTDATETIME;
                        Window.UPDATE(3, ROUND(EntryCount / MaxEntry * 10000, 1));
                    END;

                    if GroupSum then begin
                        CalcSumsInFilter("G/L Entry", RowOffset);
                        GetGLEntryDimensions("Entry No.", TempDimBuf, "Dimension Set ID");
                    end;

                    if (Amount <> 0) or ("Additional-Currency Amount" <> 0) then begin
                        if not GroupSum then begin
                            TotalAmount += Amount;
                            if GLSetup."Additional Reporting Currency" <> '' then
                                TotalAmountAddCurr += "Additional-Currency Amount";

                            GetGLEntryDimensions("Entry No.", TempDimBuf, "Dimension Set ID");
                        end;

                        if TempSelectedDim.Find('-') then
                            repeat
                                if TempDimBuf.Get(DATABASE::"G/L Entry", "Entry No.", TempSelectedDim."Dimension Code")
                                then begin
                                    TempDimBuf2."Table ID" := TempDimBuf."Table ID";
                                    TempDimBuf2."Dimension Code" := TempDimBuf."Dimension Code";
                                    TempDimBuf2."Dimension Value Code" := TempDimBuf."Dimension Value Code";
                                    TempDimBuf2.Insert;
                                end;
                            until TempSelectedDim.Next = 0;

                        DimensionBufferID := DimBufMgt.GetDimensionId(TempDimBuf2);

                        EntryNoAmountBuf.Reset;
                        if ClosePerBusUnit and FieldActive("Business Unit Code") then
                            EntryNoAmountBuf."Business Unit Code" := "Business Unit Code"
                        else
                            EntryNoAmountBuf."Business Unit Code" := '';
                        EntryNoAmountBuf."Entry No." := DimensionBufferID;
                        if EntryNoAmountBuf.Find then begin
                            EntryNoAmountBuf.Amount := EntryNoAmountBuf.Amount + Amount;
                            EntryNoAmountBuf.Amount2 := EntryNoAmountBuf.Amount2 + "Additional-Currency Amount";
                            EntryNoAmountBuf.Modify;
                        end else begin
                            EntryNoAmountBuf.Amount := Amount;
                            EntryNoAmountBuf.Amount2 := "Additional-Currency Amount";
                            EntryNoAmountBuf.Insert;
                        end;
                    end;

                    if GroupSum then
                        Next(RowOffset);
                end;

                trigger OnPostDataItem()
                var
                    TempDimBuf2: Record "Dimension Buffer" temporary;
                    GlobalDimVal1: Code[20];
                    GlobalDimVal2: Code[20];
                    NewDimensionID: Integer;
                begin
                    EntryNoAmountBuf.Reset;
                    MaxEntry := EntryNoAmountBuf.Count;
                    EntryCount := 0;
                    Window.Update(2, Text012);
                    Window.Update(3, 0);

                    if EntryNoAmountBuf.Find('-') then
                        repeat
                            EntryCount := EntryCount + 1;
                            IF CURRENTDATETIME - LastWindowUpdateDateTime > 1000 THEN BEGIN
                                LastWindowUpdateDateTime := CURRENTDATETIME;
                                Window.UPDATE(3, ROUND(EntryCount / MaxEntry * 10000, 1));
                            END;

                            if (EntryNoAmountBuf.Amount <> 0) or (EntryNoAmountBuf.Amount2 <> 0) then begin
                                GenJnlLine."Line No." := GenJnlLine."Line No." + 10000;
                                GenJnlLine."Account No." := "G/L Account No.";
                                GenJnlLine."Source Code" := SourceCodeSetup."Close Income Statement";
                                GenJnlLine."Reason Code" := GenJnlBatch."Reason Code";
                                GenJnlLine.Validate(Amount, -EntryNoAmountBuf.Amount);
                                GenJnlLine."System-Created Entry" := true;
                                GenJnlLine."Source Currency Amount" := -EntryNoAmountBuf.Amount2;
                                GenJnlLine."Business Unit Code" := EntryNoAmountBuf."Business Unit Code";

                                TempDimBuf2.DeleteAll;
                                DimBufMgt.RetrieveDimensions(EntryNoAmountBuf."Entry No.", TempDimBuf2);
                                NewDimensionID := DimMgt.CreateDimSetIDFromDimBuf(TempDimBuf2);
                                GenJnlLine."Dimension Set ID" := NewDimensionID;
                                DimMgt.UpdateGlobalDimFromDimSetID(NewDimensionID, GlobalDimVal1, GlobalDimVal2);
                                GenJnlLine."Shortcut Dimension 1 Code" := '';
                                if ClosePerGlobalDim1 then
                                    GenJnlLine."Shortcut Dimension 1 Code" := GlobalDimVal1;
                                GenJnlLine."Shortcut Dimension 2 Code" := '';
                                if ClosePerGlobalDim2 then
                                    GenJnlLine."Shortcut Dimension 2 Code" := GlobalDimVal2;

                                IF PostToRetainedEarningsAcc = PostToRetainedEarningsAcc::Details THEN BEGIN
                                    GenJnlLine."Bal. Account Type" := GenJnlLine."Bal. Account Type"::"G/L Account";
                                    GenJnlLine."Bal. Account No." := RetainedEarningsGLAcc."No.";
                                END;

                                HandleGenJnlLine;
                                UpdateBalAcc(GenJnlLine."Account No.");
                            end;
                        until EntryNoAmountBuf.Next = 0;

                    EntryNoAmountBuf.DeleteAll;
                end;

                trigger OnPreDataItem()
                begin
                    Window.Update(2, Text013);
                    Window.Update(3, 0);

                    if ClosePerGlobalDimOnly or ClosePerBusUnit then
                        case true of
                            ClosePerBusUnit and (ClosePerGlobalDim1 or ClosePerGlobalDim2):
                                SetCurrentKey(
                                  "G/L Account No.", "Business Unit Code",
                                  "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date");
                            ClosePerBusUnit and not (ClosePerGlobalDim1 or ClosePerGlobalDim2):
                                SetCurrentKey(
                                  "G/L Account No.", "Business Unit Code", "Posting Date");
                            not ClosePerBusUnit and (ClosePerGlobalDim1 or ClosePerGlobalDim2):
                                SetCurrentKey(
                                  "G/L Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date");
                        end;

                    SetRange("Posting Date", FiscalYearStartDate, FiscYearClosingDate);

                    MaxEntry := Count;

                    EntryNoAmountBuf.DeleteAll;
                    EntryCount := 0;

                    LastWindowUpdateDateTime := CURRENTDATETIME;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                ThisAccountNo := ThisAccountNo + 1;
                Window.Update(1, "No.");
                Window.Update(4, Round(ThisAccountNo / NoOfAccounts * 10000, 1));
                Window.Update(2, '');
                Window.Update(3, 0);

            end;

            trigger OnPreDataItem()
            begin
                NoOfAccounts := Count;
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
                group(Options)
                {
                    Caption = 'Options';
                    field(FiscalYearEndingDate; EndDateReq)
                    {
                        Caption = 'Fiscal Year Ending Date';

                        trigger OnValidate()
                        begin
                            ValidateEndDate(true);
                        end;
                    }
                    field(GenJournalTemplate; GenJnlLine."Journal Template Name")
                    {
                        Caption = 'Gen. Journal Template';
                        TableRelation = "Gen. Journal Template";

                        trigger OnValidate()
                        begin
                            GenJnlLine."Journal Batch Name" := '';
                            DocNo := '';
                        end;
                    }
                    field(GenJournalBatch; GenJnlLine."Journal Batch Name")
                    {
                        Caption = 'Gen. Journal Batch';
                        Lookup = true;

                        trigger OnLookup(var Text: Text): Boolean
                        begin
                            GenJnlLine.TestField("Journal Template Name");
                            GenJnlTemplate.Get(GenJnlLine."Journal Template Name");
                            GenJnlBatch.FilterGroup(2);
                            GenJnlBatch.SetRange("Journal Template Name", GenJnlLine."Journal Template Name");
                            GenJnlBatch.FilterGroup(0);
                            GenJnlBatch."Journal Template Name" := GenJnlLine."Journal Template Name";
                            GenJnlBatch.Name := GenJnlLine."Journal Batch Name";
                            if PAGE.RunModal(0, GenJnlBatch) = ACTION::LookupOK then begin
                                Text := GenJnlBatch.Name;
                                exit(true);
                            end;
                        end;

                        trigger OnValidate()
                        begin
                            if GenJnlLine."Journal Batch Name" <> '' then begin
                                GenJnlLine.TestField("Journal Template Name");
                                GenJnlBatch.Get(GenJnlLine."Journal Template Name", GenJnlLine."Journal Batch Name");
                            end;
                            ValidateJnl;
                        end;
                    }
                    field(DocumentNo; DocNo)
                    {
                        Caption = 'Document No.';
                    }

                    field(PostingDescription; PostingDescription)
                    {
                        Caption = 'Posting Description';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        var
            GLAccount: Record "G/L Account";
            GLAccountCategory: Record "G/L Account Category";
        begin
            IF PostingDescription = '' THEN
                PostingDescription :=
                  COPYSTR(ObjTransl.TranslateObject(ObjTransl."Object Type"::Report, REPORT::"Close Income Statement"), 1, 30);
            EndDateReq := 0D;
            AccountingPeriod.SETRANGE("New Fiscal Year", TRUE);
            AccountingPeriod.SETRANGE("Date Locked", TRUE);
            IF AccountingPeriod.FINDLAST THEN BEGIN
                EndDateReq := AccountingPeriod."Starting Date" - 1;
                IF NOT ValidateEndDate(FALSE) THEN
                    EndDateReq := 0D;
            END ELSE
                IF EndDateReq = 0D THEN
                    ERROR(NoFiscalYearsErr);
            ValidateJnl;
            ColumnDim := DimSelectionBuf.GetDimSelectionText(3, REPORT::"Close Income Statement", '');
        end;
    }

    labels
    {
    }

    trigger OnPostReport()
    var
        UpdateAnalysisView: Codeunit "Update Analysis View";
    begin
        InsBalLines;

        IF PostEntries OR (GLSetup."Additional Reporting Currency" <> '') THEN BEGIN
            Window.CLOSE;
            Window.OPEN(Text31022890);
            NoOfRecords := GenJnlLine.COUNT;
            Window.UPDATE(1, LineCount);
            GenJnlLine.FINDSET;
            REPEAT
                GenJnlLine2 := GenJnlLine;
                LineCount := LineCount + 1;
                Window.UPDATE(2, ROUND(LineCount / NoOfRecords * 10000, 1));
                GenJnlPostLine.RunWithCheck(GenJnlLine2);
            UNTIL GenJnlLine.NEXT = 0;
            GenJnlLine.DELETEALL;
            Window.CLOSE;
        END ELSE
            GenJnlManagement.TemplateSelectionFromBatch(GenJnlBatch);

        COMMIT;
        IF PostEntries OR (GLSetup."Additional Reporting Currency" <> '') THEN BEGIN
            MESSAGE(Text016);
            UpdateAnalysisView.UpdateAll(0, TRUE);
        END ELSE
            MESSAGE(Text017);
    end;

    trigger OnPreReport()
    var
        s: Text[1024];
        BudgetConfig: Record "Budget Configuration";
    begin
        if EndDateReq = 0D then
            Error(Text000);
        ValidateEndDate(true);
        if DocNo = '' then
            Error(Text001);

        InsertTempDim;

        GenJnlBatch.GET(GenJnlLine."Journal Template Name", GenJnlLine."Journal Batch Name");
        SourceCodeSetup.GET;
        GLSetup.GET;
        IF GLSetup."Additional Reporting Currency" <> '' THEN BEGIN
            IF NOT CONFIRM(
                 Text003 +
                 Text005 +
                 Text007, FALSE)
            THEN
                ERROR('');
        END;

        Window.Open(Text008 + Text009 + Text019 + Text010 + Text011);

        ClosePerGlobalDim1 := FALSE;
        ClosePerGlobalDim2 := FALSE;
        ClosePerGlobalDimOnly := TRUE;

        IF TempSelectedDim.FIND('-') THEN
            REPEAT
                IF TempSelectedDim."Dimension Code" = GLSetup."Global Dimension 1 Code" THEN
                    ClosePerGlobalDim1 := TRUE;
                IF TempSelectedDim."Dimension Code" = GLSetup."Global Dimension 2 Code" THEN
                    ClosePerGlobalDim2 := TRUE;
                IF (TempSelectedDim."Dimension Code" <> GLSetup."Global Dimension 1 Code") AND
                   (TempSelectedDim."Dimension Code" <> GLSetup."Global Dimension 2 Code")
                THEN
                    ClosePerGlobalDimOnly := FALSE;
            UNTIL TempSelectedDim.NEXT = 0;

        GenJnlLine.SETRANGE("Journal Template Name", GenJnlLine."Journal Template Name");
        GenJnlLine.SETRANGE("Journal Batch Name", GenJnlLine."Journal Batch Name");
        IF NOT GenJnlLine.FINDLAST THEN;
        GenJnlLine.INIT;
        GenJnlLine."Posting Date" := FiscYearClosingDate;
        GenJnlLine."Document No." := DocNo;
        GenJnlLine.Description := PostingDescription;
        GenJnlLine."Posting No. Series" := GenJnlBatch."Posting No. Series";
        GenJnlLine."Budget Closing Entry" := true;
        CLEAR(GenJnlPostLine);
    end;

    var
        AccountingPeriod: Record "Accounting Period";
        SourceCodeSetup: Record "Source Code Setup";
        GenJnlTemplate: Record "Gen. Journal Template";
        GenJnlBatch: Record "Gen. Journal Batch";
        GenJnlLine: Record "Gen. Journal Line" temporary;
        RetainedEarningsGLAcc: Record "G/L Account";
        GLSetup: Record "General Ledger Setup";
        DimSelectionBuf: Record "Dimension Selection Buffer";
        SelectedDim: Record "Selected Dimension";
        TempSelectedDim: Record "Selected Dimension" temporary;
        EntryNoAmountBuf: Record "Entry No. Amount Buffer" temporary;
        NoSeriesMgt: Codeunit NoSeriesManagement;
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
        DimMgt: Codeunit DimensionManagement;
        DimBufMgt: Codeunit "Dimension Buffer Management";
        Window: Dialog;
        FiscalYearStartDate: Date;
        FiscYearClosingDate: Date;
        EndDateReq: Date;
        DocNo: Code[20];
        PostingDescription: Text[100];
        ClosePerBusUnit: Boolean;
        ClosePerGlobalDim1: Boolean;
        ClosePerGlobalDim2: Boolean;
        ClosePerGlobalDimOnly: Boolean;
        TotalAmount: Decimal;
        TotalAmountAddCurr: Decimal;
        ColumnDim: Text[250];
        ObjTransl: Record "Object Translation";
        NoOfAccounts: Integer;
        ThisAccountNo: Integer;
        Text000: Label 'Enter the ending date for the fiscal year.';
        Text001: Label 'Enter a Document No.';
        Text002: Label 'Enter Retained Earnings Account No.';
        Text003: Label 'By using an additional reporting currency, this batch job will post closing entries directly to the general ledger.  ';
        Text005: Label 'These closing entries will not be transferred to a general journal before the program posts them to the general ledger.\\ ';
        Text007: Label '\Do you want to continue?';
        Text008: Label 'Creating general journal lines...\\';
        Text009: Label 'Account No.         #1##################\';
        Text010: Label 'Now performing      #2##################\';
        Text011: Label '                    @3@@@@@@@@@@@@@@@@@@\';
        Text019: Label '                    @4@@@@@@@@@@@@@@@@@@\';
        Text012: Label 'Creating Gen. Journal lines';
        Text013: Label 'Calculating Amounts';
        Text014: Label 'The fiscal year must be closed before the income statement can be closed.';
        Text015: Label 'The fiscal year does not exist.';
        Text017: Label 'The journal lines have successfully been created.';
        Text016: Label 'The closing entries have successfully been posted.';
        Text020: Label 'The following G/L Accounts have mandatory dimension codes that have not been selected:';
        Text021: Label '\\In order to post to these accounts you must also select these dimensions:';
        MaxEntry: Integer;
        EntryCount: Integer;
        LastWindowUpdateDateTime: DateTime;
        NoFiscalYearsErr: Label 'No closed fiscal year exists.';
        PostToRetainedEarningsAcc: Option Balance,Details;
        GenJnlLine2: Record "Gen. Journal Line";
        BalLineBuffer: Record "PTSS Inc. Stmt. Clos. Buffer" temporary;
        TempGLAcc: Record "G/L Account" temporary;
        HidePrintDialog: Boolean;
        LineCount: Integer;
        NoOfRecords: Integer;
        Text31022890: Label 'Posting lines         #1###### @2@@@@@@@@@@@@@';
        Text31022891: Label 'Collecting dimension informação';
        PostEntries: Boolean;
        GenJnlManagement: Codeunit GenJnlManagement;

    local procedure ValidateEndDate(RealMode: Boolean): Boolean
    var
        OK: Boolean;
    begin
        if EndDateReq = 0D then
            exit;

        OK := AccountingPeriod.GET(EndDateReq + 1);
        IF OK THEN
            OK := AccountingPeriod."New Fiscal Year";
        IF OK THEN BEGIN
            IF NOT AccountingPeriod."Date Locked" THEN BEGIN
                IF NOT RealMode THEN
                    EXIT;
            END;
            FiscYearClosingDate := CLOSINGDATE(EndDateReq);
            AccountingPeriod.SETRANGE("New Fiscal Year", TRUE);
            OK := AccountingPeriod.FIND('<');
            FiscalYearStartDate := AccountingPeriod."Starting Date";
        END;
        IF NOT OK THEN BEGIN
            IF NOT RealMode THEN
                EXIT;
            ERROR(Text015);
        END;
        EXIT(TRUE);
    end;

    local procedure ValidateJnl()
    begin
        DocNo := '';
        IF GenJnlBatch.GET(GenJnlLine."Journal Template Name", GenJnlLine."Journal Batch Name") THEN
            IF GenJnlBatch."No. Series" <> '' THEN
                DocNo := NoSeriesMgt.TryGetNextNo(GenJnlBatch."No. Series", EndDateReq);
    end;

    local procedure HandleGenJnlLine()
    begin
        GenJnlLine."Additional-Currency Posting" :=
          GenJnlLine."Additional-Currency Posting"::None;
        IF GLSetup."Additional Reporting Currency" <> '' THEN BEGIN
            GenJnlLine."Source Currency Code" := GLSetup."Additional Reporting Currency";
            IF ZeroGenJnlAmount THEN BEGIN
                GenJnlLine."Additional-Currency Posting" :=
                  GenJnlLine."Additional-Currency Posting"::"Additional-Currency Amount Only";
                GenJnlLine.VALIDATE(Amount, GenJnlLine."Source Currency Amount");
                GenJnlLine."Source Currency Amount" := 0;
            END;
            IF GenJnlLine.Amount <> 0 THEN BEGIN
                GenJnlPostLine.RUN(GenJnlLine);
                IF DocNo = NoSeriesMgt.GetNextNo(GenJnlBatch."No. Series", EndDateReq, FALSE) THEN
                    NoSeriesMgt.SaveNoSeries;
            END;
        END ELSE
            IF NOT ZeroGenJnlAmount THEN
                GenJnlLine.INSERT;
    end;

    local procedure CalcSumsInFilter(var GLEntrySource: Record "G/L Entry"; var Offset: Integer)
    var
        GLEntry: Record "G/L Entry";
    begin
        GLEntry.COPYFILTERS(GLEntrySource);
        IF ClosePerBusUnit THEN BEGIN
            GLEntry.SETRANGE("Business Unit Code", GLEntrySource."Business Unit Code");
            GenJnlLine."Business Unit Code" := GLEntrySource."Business Unit Code";
        END;
        IF ClosePerGlobalDim1 THEN BEGIN
            GLEntry.SETRANGE("Global Dimension 1 Code", GLEntrySource."Global Dimension 1 Code");
            IF ClosePerGlobalDim2 THEN
                GLEntry.SETRANGE("Global Dimension 2 Code", GLEntrySource."Global Dimension 2 Code");
        END;

        GLEntry.CalcSums(Amount);
        GLEntrySource.Amount := GLEntry.Amount;
        TotalAmount += GLEntrySource.Amount;
        IF GLSetup."Additional Reporting Currency" <> '' THEN BEGIN
            GLEntry.CALCSUMS("Additional-Currency Amount");
            GLEntrySource."Additional-Currency Amount" := GLEntry."Additional-Currency Amount";
            TotalAmountAddCurr += GLEntrySource."Additional-Currency Amount";
        END;
        Offset := GLEntry.COUNT - 1;
    end;

    local procedure GetGLEntryDimensions(EntryNo: Integer; var DimBuf: Record "Dimension Buffer"; DimensionSetID: Integer)
    var
        DimSetEntry: Record "Dimension Set Entry";
    begin
        DimSetEntry.SETRANGE("Dimension Set ID", DimensionSetID);
        IF DimSetEntry.FINDSET THEN
            REPEAT
                DimBuf."Table ID" := DATABASE::"G/L Entry";
                DimBuf."Entry No." := EntryNo;
                DimBuf."Dimension Code" := DimSetEntry."Dimension Code";
                DimBuf."Dimension Value Code" := DimSetEntry."Dimension Value Code";
                DimBuf.INSERT;
            UNTIL DimSetEntry.NEXT = 0;
    end;

    local procedure CheckDimPostingRules(var SelectedDim: Record "Selected Dimension"): Text[1024]
    var
        DefaultDim: Record "Default Dimension";
        ErrorText: Text[1024];
        DimText: Text[1024];
        PrevAcc: Code[20];
    begin
        DefaultDim.SETRANGE("Table ID", DATABASE::"G/L Account");
        DefaultDim.SETFILTER(
          "Value Posting", '%1|%2',
          DefaultDim."Value Posting"::"Same Code", DefaultDim."Value Posting"::"Code Mandatory");

        IF DefaultDim.FIND('-') THEN
            REPEAT
                SelectedDim.SETRANGE("Dimension Code", DefaultDim."Dimension Code");
                IF NOT SelectedDim.FIND('-') THEN BEGIN
                    IF STRPOS(DimText, DefaultDim."Dimension Code") < 1 THEN
                        DimText := DimText + ' ' + FORMAT(DefaultDim."Dimension Code");
                    IF PrevAcc <> DefaultDim."No." THEN BEGIN
                        PrevAcc := DefaultDim."No.";
                        IF ErrorText = '' THEN
                            ErrorText := Text020;
                        ErrorText := ErrorText + ' ' + FORMAT(DefaultDim."No.");
                    END;
                END;
                SelectedDim.SETRANGE("Dimension Code");
            UNTIL (DefaultDim.NEXT = 0) OR (STRLEN(ErrorText) > MAXSTRLEN(ErrorText) - MAXSTRLEN(DefaultDim."No.") - STRLEN(Text021) - 1);
        IF ErrorText <> '' THEN
            ErrorText := COPYSTR(ErrorText + Text021 + DimText, 1, MAXSTRLEN(ErrorText));
        EXIT(ErrorText);
    end;

    local procedure IsInvtPeriodClosed(): Boolean
    var
        AccPeriod: Record "Accounting Period";
        InvtPeriod: Record "Inventory Period";
    begin
        IF EndDateReq = 0D THEN
            EXIT;
        AccPeriod.GET(EndDateReq + 1);
        AccPeriod.NEXT(-1);
        EXIT(InvtPeriod.IsInvtPeriodClosed(AccPeriod."Starting Date"));
    end;

    procedure InitializeRequestTest(EndDate: Date; GenJournalLine: Record "Gen. Journal Line"; GLAccount: Record "G/L Account"; CloseByBU: Boolean)
    begin
        EndDateReq := EndDate;
        GenJnlLine := GenJournalLine;
        ValidateJnl;
        RetainedEarningsGLAcc := GLAccount;
        ClosePerBusUnit := CloseByBU;
    end;

    local procedure ZeroGenJnlAmount(): Boolean
    begin
        exit((GenJnlLine.Amount = 0) and (GenJnlLine."Source Currency Amount" <> 0))
    end;

    local procedure GroupSum(): Boolean
    begin
        exit(ClosePerGlobalDimOnly and (ClosePerBusUnit or ClosePerGlobalDim1));
    end;

    procedure InsBalLines()
    begin
        IF NOT BalLineBuffer.ISEMPTY THEN BEGIN
            BalLineBuffer.FINDSET;
            REPEAT
                GenJnlLine."Line No." := GenJnlLine."Line No." + 10000;
                GLSetup.GET;
                IF NOT GLSetup."PTSS Use Dim. Inc. Bal. Acc." THEN BEGIN
                    GenJnlLine."Shortcut Dimension 1 Code" := '';
                    GenJnlLine."Shortcut Dimension 2 Code" := '';
                    GenJnlLine."Business Unit Code" := '';
                END ELSE BEGIN
                    GenJnlLine."Business Unit Code" := BalLineBuffer."Business Unit Code";
                    GenJnlLine."Shortcut Dimension 1 Code" := BalLineBuffer."Shortcut Dimension 1 Code";
                    GenJnlLine."Shortcut Dimension 2 Code" := BalLineBuffer."Shortcut Dimension 2 Code";
                    GenJnlLine."Dimension Set ID" := BalLineBuffer."Dimension Set ID";
                END;
                GenJnlLine."Account No." := BalLineBuffer."Account No.";
                GenJnlLine."Source Code" := SourceCodeSetup."Close Income Statement";
                GenJnlLine."Reason Code" := GenJnlBatch."Reason Code";
                GenJnlLine."Additional-Currency Posting" := GenJnlLine."Additional-Currency Posting"::None;
                IF GLSetup."Additional Reporting Currency" <> '' THEN BEGIN
                    GenJnlLine."Source Currency Code" := GLSetup."Additional Reporting Currency";
                    IF (BalLineBuffer.Amount = 0) AND (BalLineBuffer."Additional-Currency Amount" <> 0) THEN BEGIN
                        GenJnlLine.VALIDATE(Amount, -BalLineBuffer."Additional-Currency Amount");
                        GenJnlLine.VALIDATE("Source Currency Amount", 0);
                        GenJnlLine."Additional-Currency Posting" := GenJnlLine."Additional-Currency Posting"::"Additional-Currency Amount Only";
                    END ELSE BEGIN
                        GenJnlLine.VALIDATE(Amount, -BalLineBuffer.Amount);
                        GenJnlLine.VALIDATE("Source Currency Amount", -BalLineBuffer."Additional-Currency Amount");
                    END;
                END ELSE
                    GenJnlLine.VALIDATE(Amount, -BalLineBuffer.Amount);
                GenJnlLine."System-Created Entry" := TRUE;
                GenJnlLine.INSERT;

                GenJnlLine."Line No." := GenJnlLine."Line No." + 10000;
                IF BalLineBuffer."Closing Account?" THEN BEGIN
                    GenJnlLine."Line No." := GenJnlLine."Line No." + 10000;
                    GenJnlLine."Account No." := BalLineBuffer."Account No.";
                    GenJnlLine."Source Code" := SourceCodeSetup."Close Income Statement";
                    GenJnlLine."Reason Code" := GenJnlBatch."Reason Code";
                    GenJnlLine."Additional-Currency Posting" := GenJnlLine."Additional-Currency Posting"::None;
                    IF GLSetup."Additional Reporting Currency" <> '' THEN BEGIN
                        GenJnlLine."Source Currency Code" := GLSetup."Additional Reporting Currency";
                        IF (BalLineBuffer.Amount = 0) AND (BalLineBuffer."Additional-Currency Amount" <> 0) THEN BEGIN
                            GenJnlLine.VALIDATE(Amount, BalLineBuffer."Additional-Currency Amount");
                            GenJnlLine.VALIDATE("Source Currency Amount", 0);
                            GenJnlLine."Additional-Currency Posting" := GenJnlLine."Additional-Currency Posting"::"Additional-Currency Amount Only";
                        END ELSE BEGIN
                            GenJnlLine.VALIDATE(Amount, BalLineBuffer.Amount);
                            GenJnlLine.VALIDATE("Source Currency Amount", BalLineBuffer."Additional-Currency Amount");
                        END;
                    END ELSE
                        GenJnlLine.VALIDATE(Amount, BalLineBuffer.Amount);
                    GenJnlLine."System-Created Entry" := TRUE;
                    GenJnlLine.INSERT;
                    GenJnlLine."Line No." := GenJnlLine."Line No." + 10000;
                END;
            UNTIL BalLineBuffer.NEXT = 0;
        END;
    end;

    procedure UpdateBalAcc(AccountNo: Code[20])
    var
        GLAcc: Record "G/L Account";
        BalAcc: Code[20];
    begin
        GLAcc.GET(GenJnlLine."Account No.");
        InsertBalLineBuffer(AccountNo, GLAcc."PTSS Income Stmt. Bal. Acc.");

        BalAcc := GLAcc."PTSS Income Stmt. Bal. Acc.";
        GLAcc.GET(BalAcc);
        IF GLAcc."PTSS Income Stmt. Bal. Acc." <> '' THEN BEGIN
            BalLineBuffer."Closing Account?" := TRUE;
            BalLineBuffer.MODIFY;
            UpdateBalAcc2(BalAcc);
        END;
    end;

    procedure UpdateBalAcc2(AccountNo: Code[20])
    var
        GLAcc: Record "G/L Account";
        BalAcc: Code[20];
    begin
        GLAcc.GET(AccountNo);
        InsertBalLineBuffer(AccountNo, GLAcc."PTSS Income Stmt. Bal. Acc.");

        BalAcc := GLAcc."PTSS Income Stmt. Bal. Acc.";
        GLAcc.GET(BalAcc);
        IF GLAcc."PTSS Income Stmt. Bal. Acc." <> '' THEN BEGIN
            BalLineBuffer."Closing Account?" := TRUE;
            BalLineBuffer.MODIFY;
            UpdateBalAcc2(BalAcc);
        END ELSE BEGIN
            BalLineBuffer."Closing Account?" := FALSE;
            BalLineBuffer.MODIFY;
        END;
    end;

    local procedure InsertBalLineBuffer(AccountNo: Code[20]; GLAccIncStmtBalAcc: Code[20])
    var
        GLAcc: Record "G/L Account";
    begin
        GLSetup.GET;
        GLAcc.GET(AccountNo);
        IF NOT GLSetup."PTSS Use Dim. Inc. Bal. Acc." THEN BEGIN
            IF NOT BalLineBuffer.GET(0, GLAccIncStmtBalAcc) THEN BEGIN
                GLAcc.TESTFIELD("PTSS Income Stmt. Bal. Acc.");
                BalLineBuffer."Entry No." := 0;
                BalLineBuffer."Account No." := GLAccIncStmtBalAcc;
                IF GenJnlLine."Additional-Currency Posting" =
                  GenJnlLine."Additional-Currency Posting"::"Additional-Currency Amount Only" THEN BEGIN
                    BalLineBuffer."Additional-Currency Amount" := GenJnlLine.Amount;
                    BalLineBuffer.Amount := 0;
                END ELSE BEGIN
                    BalLineBuffer.Amount := GenJnlLine.Amount;
                    BalLineBuffer."Additional-Currency Amount" := GenJnlLine."Source Currency Amount";
                END;
                BalLineBuffer.INSERT;
            END ELSE BEGIN
                IF GenJnlLine."Additional-Currency Posting" = GenJnlLine."Additional-Currency Posting"::"Additional-Currency Amount Only" THEN
                    BalLineBuffer."Additional-Currency Amount" := GenJnlLine.Amount + BalLineBuffer."Additional-Currency Amount"
                ELSE BEGIN
                    BalLineBuffer.Amount := BalLineBuffer.Amount + GenJnlLine.Amount;
                    BalLineBuffer."Additional-Currency Amount" := GenJnlLine."Source Currency Amount" + BalLineBuffer."Additional-Currency Amount";
                END;
                BalLineBuffer.MODIFY;
            END;
        END ELSE BEGIN
            BalLineBuffer.INIT;
            BalLineBuffer."Entry No." := BalLineBuffer."Entry No." + 1;
            BalLineBuffer."Account No." := GLAccIncStmtBalAcc;
            BalLineBuffer."Business Unit Code" := GenJnlLine."Business Unit Code";
            BalLineBuffer."Shortcut Dimension 1 Code" := GenJnlLine."Shortcut Dimension 1 Code";
            BalLineBuffer."Shortcut Dimension 2 Code" := GenJnlLine."Shortcut Dimension 2 Code";
            IF GenJnlLine."Additional-Currency Posting" = GenJnlLine."Additional-Currency Posting"::"Additional-Currency Amount Only" THEN BEGIN
                BalLineBuffer."Additional-Currency Amount" := GenJnlLine.Amount;
                BalLineBuffer.Amount := 0;
            END ELSE BEGIN
                BalLineBuffer.Amount := GenJnlLine.Amount;
                BalLineBuffer."Additional-Currency Amount" := GenJnlLine."Source Currency Amount";
            END;
            BalLineBuffer."Dimension Set ID" := GenJnlLine."Dimension Set ID";
            BalLineBuffer.INSERT;
        END;
    end;

    local procedure InsertTempDim()
    var
        BudgetConfig: Record "Budget Configuration";
    begin
        TempSelectedDim.DeleteAll;
        BudgetConfig.Get;
        BudgetConfig.TestField("Analysis Code");
        if BudgetConfig.Sd1 then begin
            TempSelectedDim.Init;
            TempSelectedDim."Dimension Code" := BudgetConfig.dim1;
            TempSelectedDim.Insert;
        end;
        if BudgetConfig.Sd2 then begin
            TempSelectedDim.Init;
            TempSelectedDim."Dimension Code" := BudgetConfig.dim2;
            TempSelectedDim.Insert;
        end;
        if BudgetConfig.Sd3 then begin
            TempSelectedDim.Init;
            TempSelectedDim."Dimension Code" := BudgetConfig.dim3;
            TempSelectedDim.Insert;
        end;
        if BudgetConfig.Sd4 then begin
            TempSelectedDim.Init;
            TempSelectedDim."Dimension Code" := BudgetConfig.dim4;
            TempSelectedDim.Insert;
        end;
    end;
}
