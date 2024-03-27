report 57030 "UNILEO BA"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/UNILEOBA.rdl';

    Caption = 'Analitical Trial Balance';
    Permissions = TableData "UNILEO BA Balances" = rimd;
    ApplicationArea = All;

    dataset
    {
        dataitem(Header; Integer)
        {
            DataItemTableView = SORTING(Number)
                                ORDER(Ascending)
                                WHERE(Number = CONST(1));
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(USERID; USERID)
            {
            }
            column(TextHeader_1_; TextHeader[1])
            {
            }
            column(TextHeader_2_; TextHeader[2])
            {
            }
            column(TextHeader_3_; TextHeader[3])
            {
            }
            column(TextHeader_4_; TextHeader[4])
            {
            }
            column(TitleReport; TitleReport)
            {
            }
            column(HeaderText; HeaderText)
            {
            }
            column(NameCaption; NameCaptionLbl)
            {
            }
            column(Accum__PeriodDateCaption; Accum__PeriodDateCaptionLbl)
            {
            }
            column(Acc_Caption; Acc_CaptionLbl)
            {
            }
            column(AccumulatedCaption; AccumulatedCaptionLbl)
            {
            }
            column(Acc_Caption_Control13; Acc_Caption_Control13Lbl)
            {
            }
            column(NameCaption_Control14; NameCaption_Control14Lbl)
            {
            }
            column(Accum__Before_PeriodCaption; Accum__Before_PeriodCaptionLbl)
            {
            }
            column(Accum__at_End_of_PeriodCaption; Accum__at_End_of_PeriodCaptionLbl)
            {
            }
            column(Accum__PeriodDateCaption_Control75; Accum__PeriodDateCaption_Control75Lbl)
            {
            }
            column(Number; Number)
            {
            }
            dataitem(OrcAccounts; "UNILEO G/L Account UNILEO-PCC")
            {
                DataItemTableView = SORTING("G/L Account Type", "No.")
                                    WHERE("G/L Account Type" = FILTER(PCC),
                                          "Account Type" = CONST(M),
                                          "No." = FILTER('0*'));
                PrintOnlyIfDetail = true;
                column(G_L_Account_No_; "No.")
                {
                }
                dataitem(GLEntries; Integer)
                {
                    DataItemTableView = SORTING(Number);
                    column(GB2; TempGLEntry."Global Dimension 1 Code")
                    {
                    }
                    column(GB3; TempGLEntry."Global Dimension 2 Code")
                    {
                    }
                    column(DebitAmount; TempGLEntry."Debit Amount")
                    {
                    }
                    column(CreditAmount; TempGLEntry."Credit Amount")
                    {
                    }
                    column(CreditFinal; CreditFinal)
                    {
                    }
                    column(DebitFinal; DebitFinal)
                    {
                    }
                    column(EntryNo; TempGLEntry."Entry No.")
                    {
                    }
                    column(Entity; TempGLEntry."Source Code")
                    {
                    }
                    column(Open_DebitAmount; TempGLEntry."Add.-Currency Debit Amount")
                    {
                    }
                    column(Open_CreditAmount; TempGLEntry."Add.-Currency Credit Amount")
                    {
                    }
                    column(CreditBalance; TempGLEntry."Add.-Currency Credit Amount" + TempGLEntry.Quantity)
                    {
                    }
                    column(DebitBalance; TempGLEntry."Add.-Currency Debit Amount" + TempGLEntry."VAT Amount")
                    {
                    }

                    trigger OnAfterGetRecord()
                    var
                        FinalBalance: Decimal;
                    begin
                        WITH TempGLEntry DO BEGIN
                            IF Number = 1 THEN
                                FINDFIRST
                            ELSE
                                NEXT;
                        END;

                        IF (TempGLEntry."Debit Amount" = 0) AND (TempGLEntry."Credit Amount" = 0)
                          AND (TempGLEntry."Add.-Currency Debit Amount" = 0) AND (TempGLEntry."Add.-Currency Credit Amount" = 0)
                          AND (TempGLEntry.Quantity = 0) AND (TempGLEntry."VAT Amount" = 0) THEN
                            CurrReport.SKIP;

                        CLEAR(CreditFinal);
                        CLEAR(DebitFinal);

                        FinalBalance := (TempGLEntry."Add.-Currency Debit Amount" + TempGLEntry."VAT Amount") - (TempGLEntry."Add.-Currency Credit Amount" + TempGLEntry.Quantity);
                        IF FinalBalance > 0 THEN
                            DebitFinal := FinalBalance
                        ELSE
                            CreditFinal := ABS(FinalBalance);
                    end;

                    trigger OnPreDataItem()
                    begin
                        TempGLEntry.RESET;
                        SETRANGE(Number, 1, TempGLEntry.COUNT);
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    CLEAR(OrcEntryNo);
                    TempGLEntry.DELETEALL;
                    CLEAR(TempGLEntry);
                    OrcEntryNo := 1;
                    FillOrcGLEntries("No.");
                    Window.UPDATE(1, OrcAccounts."No.");
                end;

                trigger OnPostDataItem()
                begin
                    TempGLEntry.RESET;
                end;
            }
            dataitem(FinAccounts; "UNILEO G/L Account UNILEO-PCC")
            {
                DataItemTableView = SORTING("G/L Account Type", "No.")
                                    WHERE("G/L Account Type" = FILTER(PCC),
                                          "Account Type" = CONST(M),
                                          "No." = FILTER('<>0*'));
                PrintOnlyIfDetail = true;
                column(G_L_Account_No_2; "No.")
                {
                }
                dataitem(GLEntries2; Integer)
                {
                    DataItemTableView = SORTING(Number);
                    column(DebitAmount2; TempGLEntry2."Debit Amount")
                    {
                    }
                    column(CreditAmount2; TempGLEntry2."Credit Amount")
                    {
                    }
                    column(CreditFinal2; CreditFinal2)
                    {
                    }
                    column(DebitFinal2; DebitFinal2)
                    {
                    }
                    column(EntryNo2; TempGLEntry2."Entry No.")
                    {
                    }
                    column(Entity2; TempGLEntry2."Source Code")
                    {
                    }
                    column(Open_DebitAmount2; TempGLEntry2."Add.-Currency Debit Amount")
                    {
                    }
                    column(Open_CreditAmount2; TempGLEntry2."Add.-Currency Credit Amount")
                    {
                    }
                    column(CreditBalance2; TempGLEntry2."Add.-Currency Credit Amount" + TempGLEntry2.Quantity)
                    {
                    }
                    column(DebitBalance2; TempGLEntry2."Add.-Currency Debit Amount" + TempGLEntry2."VAT Amount")
                    {
                    }

                    trigger OnAfterGetRecord()
                    var
                        FinalBalance2: Decimal;
                    begin
                        WITH TempGLEntry2 DO BEGIN
                            IF Number = 1 THEN
                                FINDFIRST
                            ELSE
                                NEXT;
                        END;

                        IF (TempGLEntry2."Debit Amount" = 0) AND (TempGLEntry2."Credit Amount" = 0)
                          AND (TempGLEntry2."Add.-Currency Debit Amount" = 0) AND (TempGLEntry2."Add.-Currency Credit Amount" = 0)
                          AND (TempGLEntry2.Quantity = 0) AND (TempGLEntry2."VAT Amount" = 0) THEN
                            CurrReport.SKIP;

                        CLEAR(CreditFinal2);
                        CLEAR(DebitFinal2);

                        FinalBalance2 := (TempGLEntry2."Add.-Currency Debit Amount" + TempGLEntry2."VAT Amount") - (TempGLEntry2."Add.-Currency Credit Amount" + TempGLEntry2.Quantity);
                        IF FinalBalance2 > 0 THEN
                            DebitFinal2 := FinalBalance2
                        ELSE
                            CreditFinal2 := ABS(FinalBalance2);
                    end;

                    trigger OnPreDataItem()
                    begin
                        TempGLEntry2.RESET;
                        SETRANGE(Number, 1, TempGLEntry2.COUNT);
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    CLEAR(FinEntryNo);
                    TempGLEntry2.DELETEALL;
                    CLEAR(TempGLEntry2);
                    FinEntryNo := 1;

                    FillFinGLEntries("No.");

                    Window.UPDATE(1, FinAccounts."No.");
                end;

                trigger OnPreDataItem()
                begin
                    IF Frequency = Frequency::Week THEN
                        CurrReport.BREAK;
                end;
            }
        }
    }

    requestpage
    {
        SourceTable = "G/L Account";

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(Frequency; Frequency)
                    {
                        Caption = 'Frequency';
                        OptionCaption = 'Week,Month';

                        trigger OnValidate()
                        begin
                            IF Frequency = Frequency::Month THEN BEGIN
                                PeriodNumber := DATE2DMY(TODAY, 2);
                                PeriodYear := DATE2DWY(TODAY, 3);
                                IF PeriodNumber > 12 THEN
                                    StartDate1 := DMY2DATE(1, 12, PeriodYear)
                                ELSE
                                    StartDate1 := DMY2DATE(1, PeriodNumber, PeriodYear);
                                EndDate1 := CALCDATE('<CM>', StartDate1);
                                IF PeriodNumber = 14 THEN
                                    EndDate1 := CLOSINGDATE(EndDate1);
                            END;

                            IF Frequency = Frequency::Week THEN BEGIN
                                PeriodNumber := DATE2DWY(TODAY, 2);
                                PeriodYear := DATE2DWY(TODAY, 3);
                                UNILEOMgt.WeekStartEndDate(StartDate1, EndDate1, PeriodNumber, PeriodYear);
                            END;
                        end;
                    }
                    field(PeriodNumber; PeriodNumber)
                    {
                        Caption = 'Period';

                        trigger OnValidate()
                        begin
                            IF Frequency = Frequency::Month THEN BEGIN
                                IF PeriodNumber > 12 THEN
                                    StartDate1 := DMY2DATE(1, 12, PeriodYear)
                                ELSE
                                    StartDate1 := DMY2DATE(1, PeriodNumber, PeriodYear);
                                EndDate1 := CALCDATE('<CM>', StartDate1);
                                IF PeriodNumber = 14 THEN
                                    EndDate1 := CLOSINGDATE(EndDate1);
                            END;

                            IF Frequency = Frequency::Week THEN
                                UNILEOMgt.WeekStartEndDate(StartDate1, EndDate1, PeriodNumber, PeriodYear);
                        end;
                    }
                    field(StartDate1; StartDate1)
                    {
                        Caption = 'Start Date';
                        Editable = false;
                    }
                    field(EndDate1; EndDate1)
                    {
                        Caption = 'End Date';
                        Editable = false;
                    }
                    field(PeriodYear; PeriodYear)
                    {
                        Caption = 'Year';

                        trigger OnValidate()
                        begin
                            IF Frequency = Frequency::Month THEN BEGIN
                                IF PeriodNumber > 12 THEN
                                    StartDate1 := DMY2DATE(1, 12, PeriodYear)
                                ELSE
                                    StartDate1 := DMY2DATE(1, PeriodNumber, PeriodYear);
                                EndDate1 := CALCDATE('<CM>', StartDate1);
                                IF PeriodNumber = 14 THEN
                                    EndDate1 := CLOSINGDATE(EndDate1);
                            END;

                            IF Frequency = Frequency::Week THEN
                                UNILEOMgt.WeekStartEndDate(StartDate1, EndDate1, PeriodNumber, PeriodYear);
                        end;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            AberturaEnable := TRUE;
        end;
    }

    labels
    {
        Trial_BalanceCaptionLbl = 'Analitical Trial Balance';
        PageCaptionLbl = 'Page';
        PeriodCaptionLbl = 'Period';
        DebitCaptionLbl = 'Debit';
        CreditCaptionLbl = 'Credit';
        BalanceCaptionLbl = 'Balance';
        TotalCaptionLbl = 'Total:';
        SaldoInicialLbl = 'Initial Balance';
        MovPeriodoLbl = 'Period Entries';
        MovAcumLbl = 'Accumulated Entries';
        SaldoFinalLbl = 'Final Balance';
    }

    trigger OnInitReport()
    begin
        InitPeriodDate;
    end;

    trigger OnPostReport()
    begin

        Window.CLOSE;

        TimeFinal := CREATEDATETIME(TODAY, TIME);
        MESSAGE(FORMAT(TimeFinal - TimeInitial));
    end;

    trigger OnPreReport()
    var
        FreqMonth: Label 'Monthly';
        FreqWeek: Label 'Weekly';
        FreqText: Text;
    begin
        TimeInitial := CREATEDATETIME(TODAY, TIME);
        CASE Frequency OF
            Frequency::Month:
                FreqText := FreqMonth;
            Frequency::Week:
                FreqText := FreqWeek;
        END;

        TextHeader[1] := STRSUBSTNO(Text50000, PeriodNumber);
        TextHeader[2] := STRSUBSTNO(Text50001, FreqText);
        TextHeader[3] := STRSUBSTNO(Text50002, StartDate1, EndDate1);
        TitleReport := Text1110031;

        FillPartnerEntity;

        Window.OPEN(Text50003 + Text50004);
    end;

    var
        GLSetup: Record "General Ledger Setup";
        GLAcc: Record "G/L Account";
        Periods: Record "Accounting Period";
        TempGLEntry: Record "G/L Entry" temporary;
        TempGLEntry2: Record "G/L Entry" temporary;
        OpeningFilter: Text[30];
        BeforeFilter: Text[30];
        PeriodFilter: Text[30];
        AccFilter: Text[30];
        TitleReport: Text[40];
        TextHeader: array[4] of Text[150];
        StartDate: Date;
        EndDate: Date;
        OpenCreditAmt: Decimal;
        OpenDebitAmt: Decimal;
        CreditBalance: Decimal;
        DebitBalance: Decimal;
        DebitPeriod: Decimal;
        CreditPeriod: Decimal;
        DebitFinal: Decimal;
        CreditFinal: Decimal;
        Text1110031: Label 'Analitical Trial Balance';
        Text1110032: Label 'Fiscal period do not exist.';
        Text1110033: Label '<= %1';
        DebitFinal2: Decimal;
        CreditFinal2: Decimal;
        HeaderText: Text[30];
        [InDataSet]
        AberturaEnable: Boolean;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        NameCaptionLbl: Label 'Name';
        Accum__PeriodDateCaptionLbl: Label 'Accum. PeriodDate';
        Acc_CaptionLbl: Label 'Account';
        AccumulatedCaptionLbl: Label 'Accumulated';
        Acc_Caption_Control13Lbl: Label 'Account';
        NameCaption_Control14Lbl: Label 'Name';
        Accum__Before_PeriodCaptionLbl: Label 'Accum. Before Period';
        Accum__at_End_of_PeriodCaptionLbl: Label 'Accum. at End of Period';
        Accum__PeriodDateCaption_Control75Lbl: Label 'Accum. PeriodDate';
        UnknowEntity: Label '999999990';
        Frequency: Option Week,Month;
        PeriodNumber: Integer;
        StartDate1: Date;
        EndDate1: Date;
        FinEntryNo: Integer;
        OrcEntryNo: Integer;
        PartnerIdentity: Record "G/L Entry" temporary;
        TimeInitial: DateTime;
        TimeFinal: DateTime;
        Text50000: Label 'Frequency: %1';
        Text50001: Label 'Period: %1';
        Text50002: Label 'Date: From %1 to %2';
        Window: Dialog;
        Text50003: Label 'Generating informations...\\';
        Text50004: Label 'Account No.         #1##################\';
        PeriodYear: Integer;
        UNILEOMgt: Codeunit "UNILEO Management";

    procedure StartPeriod(Date: Date): Date
    var
        PerContco: Record "Accounting Period";
    begin
        PerContco.SETRANGE("New Fiscal Year", TRUE);
        PerContco.SETFILTER("Starting Date", Text1110033, Date);
        IF PerContco.FIND('+') THEN
            EXIT(PerContco."Starting Date")
        ELSE
            ERROR(Text1110032);
    end;

    local procedure InitPeriodDate()
    begin
        Frequency := Frequency::Week;
        PeriodNumber := DATE2DWY(TODAY, 2);
        PeriodYear := DATE2DWY(TODAY, 3);
        StartDate1 := DWY2DATE(1, PeriodNumber, PeriodYear);
        EndDate1 := CALCDATE('<CW>', StartDate1);
        UNILEOMgt.WeekStartEndDate(StartDate1, EndDate1, PeriodNumber, PeriodYear);
    end;

    local procedure IsPartnerEntity(GLEntry2: Record "G/L Entry"): Boolean
    var
        Vendor: Record Vendor;
        Customer: Record Customer;
    begin
        CASE GLEntry2."Source Type" OF
            GLEntry2."Source Type"::Vendor:
                IF (Vendor.GET(GLEntry2."Source No.")) AND Vendor."Partner Identity" THEN
                    EXIT(TRUE);
            GLEntry2."Source Type"::Customer:
                IF (Customer.GET(GLEntry2."Source No.")) AND Customer."Partner Identity" THEN
                    EXIT(TRUE);
        END;
        EXIT(FALSE);
    end;

    local procedure FillOrcGLEntries(GLPCCNo: Code[20])
    var
        GLAccount: Record "G/L Account";
        BudgetDimensions: Query "UNILEO Budget Dimensions";
    begin
        GLAccount.RESET;
        GLAccount.SETRANGE(CodeDot_PCC, GLPCCNo);
        IF GLAccount.FINDSET THEN
            REPEAT
                BudgetDimensions.OPEN;
                WHILE BudgetDimensions.READ DO BEGIN
                    IF (OrcHaveMov(GLAccount."No.", StartDate1, EndDate1, BudgetDimensions.Global_Dimension_1_Code, BudgetDimensions.Budget_Dimension_3_Code)
                        OR OrcHaveOpenEntries(GLAccount."No.", StartDate1, BudgetDimensions.Global_Dimension_1_Code, BudgetDimensions.Budget_Dimension_3_Code)) THEN BEGIN
                        PartnerIdentity.RESET;
                        IF PartnerIdentity.FINDSET THEN
                            REPEAT
                                FillOrcEntries(GLPCCNo, GLAccount."No.", BudgetDimensions.Global_Dimension_1_Code, BudgetDimensions.Budget_Dimension_3_Code, PartnerIdentity, 0);
                                FillOrcEntries(GLPCCNo, GLAccount."No.", BudgetDimensions.Global_Dimension_1_Code, BudgetDimensions.Budget_Dimension_3_Code, PartnerIdentity, 1);
                                FillOrcEntries(GLPCCNo, GLAccount."No.", BudgetDimensions.Global_Dimension_1_Code, BudgetDimensions.Budget_Dimension_3_Code, PartnerIdentity, 2);
                            UNTIL PartnerIdentity.NEXT = 0;
                    END;
                END;
                BudgetDimensions.CLOSE;
            UNTIL GLAccount.NEXT = 0;
    end;

    local procedure FillOrcEntries(GLNoPCC: Code[20]; GLNo: Code[20]; Dim1: Code[20]; Dim3: Code[20]; var PEntity: Record "G/L Entry" temporary; Type: Option Open,Period,Accumulated)
    var
        EntryNo: Integer;
        GLEntry2: Record "G/L Entry";
        ODAmt: Decimal;
        OCAmt: Decimal;
        StartDate: Date;
        EndDate: Date;
        OpenAmount: Decimal;
        BAOpenAmount: Decimal;
        BABalances: Record "UNILEO BA Balances";
    begin
        CLEAR(ODAmt);
        CLEAR(OCAmt);
        CLEAR(OpenAmount);
        CLEAR(BAOpenAmount);

        CASE Type OF
            Type::Open:
                BEGIN
                    BABalances.RESET;
                    BABalances.SETRANGE(GLNoPCC, GLNoPCC);
                    BABalances.SETRANGE(GLNo, GLNo);
                    BABalances.SETRANGE("Shortcut Dimension 1 Code", Dim1);
                    BABalances.SETRANGE("Shortcut Dimension 3 Code", Dim3);
                    BABalances.SETFILTER(Date, '<%1', StartDate1);
                    IF BABalances.FINDLAST THEN BEGIN
                        BAOpenAmount := BABalances.AmountOpen;
                        StartDate := CALCDATE('+1D', BABalances.Date);
                    END ELSE
                        StartDate := 0D;
                    EndDate := CLOSINGDATE(CALCDATE('-1D', StartPeriod(StartDate1)));
                END;
            Type::Period:
                BEGIN
                    StartDate := StartDate1;
                    EndDate := EndDate1;
                END;
            Type::Accumulated:
                BEGIN
                    StartDate := StartPeriod(StartDate1);
                    EndDate := EndDate1;
                END;
        END;

        GLEntry2.RESET;
        GLEntry2.SETCURRENTKEY("G/L Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date");
        GLEntry2.SETFILTER("Posting Date", '%1..%2', StartDate, EndDate);
        GLEntry2.SETRANGE("G/L Account No.", GLNo);
        GLEntry2.SETRANGE("Global Dimension 1 Code", Dim1);
        GLEntry2.SETRANGE("Shortcut Dimension 3 Code", Dim3);
        IF PEntity."Source Code" <> UnknowEntity THEN BEGIN
            GLEntry2.SETRANGE("Source Type", PEntity."Source Type");
            GLEntry2.SETRANGE("Source No.", PEntity."Source No.");
            GLEntry2.CALCSUMS(Amount, "Debit Amount", "Credit Amount");
            CASE Type OF
                Type::Open:
                    BEGIN
                        IF COPYSTR(FORMAT(GLNo), 1, 2) = '07' THEN
                            OpenAmount := GLEntry2.Amount
                        ELSE
                            OpenAmount := 0;
                    END;
                Type::Period:
                    BEGIN
                        ODAmt := GLEntry2."Debit Amount";
                        OCAmt := GLEntry2."Credit Amount";
                    END;
                Type::Accumulated:
                    BEGIN
                        ODAmt := GLEntry2."Debit Amount";
                        OCAmt := GLEntry2."Credit Amount";
                    END;
            END;
        END ELSE BEGIN
            OpenAmount := BAOpenAmount;
            IF GLEntry2.FINDSET THEN
                REPEAT
                    IF NOT IsPartnerEntity(GLEntry2) THEN BEGIN
                        CASE Type OF
                            Type::Open:
                                BEGIN
                                    IF COPYSTR(FORMAT(GLNo), 1, 2) = '07' THEN
                                        OpenAmount += GLEntry2.Amount
                                    ELSE
                                        OpenAmount += 0;
                                END;
                            Type::Period:
                                BEGIN
                                    ODAmt += GLEntry2."Debit Amount";
                                    OCAmt += GLEntry2."Credit Amount";
                                END;
                            Type::Accumulated:
                                BEGIN
                                    ODAmt += GLEntry2."Debit Amount";
                                    OCAmt += GLEntry2."Credit Amount";
                                END;
                        END;
                    END;
                UNTIL GLEntry2.NEXT = 0;
        END;

        TempGLEntry.RESET;
        TempGLEntry.SETCURRENTKEY("G/L Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date");
        TempGLEntry.SETRANGE("G/L Account No.", GLNoPCC);
        TempGLEntry.SETRANGE("Global Dimension 1 Code", Dim1);
        TempGLEntry.SETRANGE("Global Dimension 2 Code", Dim3);
        TempGLEntry.SETRANGE("Source No.", PEntity."Source No.");
        IF NOT TempGLEntry.FINDFIRST THEN BEGIN
            TempGLEntry.INIT;
            TempGLEntry."Entry No." := OrcEntryNo;
            TempGLEntry."G/L Account No." := GLNoPCC;
            TempGLEntry."Source Code" := PEntity."Source Code";
            TempGLEntry."Source Type" := PEntity."Source Type";
            TempGLEntry."Source No." := PEntity."Source No.";
            TempGLEntry."Global Dimension 1 Code" := Dim1;
            TempGLEntry."Global Dimension 2 Code" := Dim3;
            CASE Type OF
                Type::Open:
                    BEGIN
                        TempGLEntry.Amount += OpenAmount;
                        TempGLEntry."Add.-Currency Credit Amount" := 0;
                        TempGLEntry."Add.-Currency Debit Amount" := 0;
                        IF TempGLEntry.Amount > 0 THEN
                            TempGLEntry."Add.-Currency Debit Amount" := TempGLEntry.Amount
                        ELSE
                            TempGLEntry."Add.-Currency Credit Amount" := ABS(TempGLEntry.Amount);
                    END;
                Type::Period:
                    BEGIN
                        TempGLEntry."Debit Amount" := ODAmt;
                        TempGLEntry."Credit Amount" := OCAmt;
                    END;
                Type::Accumulated:
                    BEGIN
                        TempGLEntry."VAT Amount" := ODAmt;
                        TempGLEntry.Quantity := OCAmt;
                    END;
            END;
            TempGLEntry.INSERT;
            OrcEntryNo += 1;
        END ELSE BEGIN
            CASE Type OF
                Type::Open:
                    BEGIN
                        TempGLEntry.Amount += OpenAmount;
                        TempGLEntry."Add.-Currency Credit Amount" := 0;
                        TempGLEntry."Add.-Currency Debit Amount" := 0;
                        IF TempGLEntry.Amount > 0 THEN
                            TempGLEntry."Add.-Currency Debit Amount" := TempGLEntry.Amount
                        ELSE
                            TempGLEntry."Add.-Currency Credit Amount" := ABS(TempGLEntry.Amount);
                    END;
                Type::Period:
                    BEGIN
                        TempGLEntry."Debit Amount" += ODAmt;
                        TempGLEntry."Credit Amount" += OCAmt;
                    END;
                Type::Accumulated:
                    BEGIN
                        TempGLEntry."VAT Amount" += ODAmt;
                        TempGLEntry.Quantity += OCAmt;
                    END;
            END;
            TempGLEntry.MODIFY;
        END;
    end;

    local procedure OrcHaveMov(GLNo: Code[20]; StartDate: Date; EndDate: Date; Dim1: Code[20]; Dim3: Code[20]): Boolean
    var
        GLEntry2: Record "G/L Entry";
    begin
        GLEntry2.RESET;
        GLEntry2.SETRANGE("Global Dimension 1 Code", Dim1);
        GLEntry2.SETRANGE("Shortcut Dimension 3 Code", Dim3);
        GLEntry2.SETRANGE("G/L Account No.", GLNo);
        GLEntry2.SETFILTER("Posting Date", '..%1', EndDate);
        EXIT(GLEntry2.FINDFIRST);
    end;

    local procedure OrcHaveOpenEntries(GLNo: Code[20]; StartDate: Date; Dim1: Code[20]; Dim3: Code[20]): Boolean
    var
        GLEntry2: Record "G/L Entry";
    begin
        GLEntry2.RESET;
        GLEntry2.SETRANGE("Global Dimension 1 Code", Dim1);
        GLEntry2.SETRANGE("Shortcut Dimension 3 Code", Dim3);
        GLEntry2.SETRANGE("G/L Account No.", GLNo);
        GLEntry2.SETFILTER("Posting Date", '..%1', CLOSINGDATE(CALCDATE('-1D', StartPeriod(StartDate))));
        EXIT(GLEntry2.FINDFIRST);
    end;

    local procedure FillFinGLEntries(GLPCCNo: Code[20])
    var
        EntryNo: Integer;
        GLEntry2: Record "G/L Entry";
        GLAccount: Record "G/L Account";
    begin
        GLAccount.RESET;
        GLAccount.SETRANGE(CodeDot_PCC, GLPCCNo);
        IF GLAccount.FINDSET THEN
            REPEAT
                IF (FinHaveMov(GLAccount."No.", StartDate1, EndDate1) OR FinHaveOpenEntries(GLAccount."No.", StartDate1)) THEN BEGIN
                    PartnerIdentity.RESET;
                    IF PartnerIdentity.FINDSET THEN
                        REPEAT
                            FillFinEntries(GLPCCNo, GLAccount."No.", PartnerIdentity, 0);
                            FillFinEntries(GLPCCNo, GLAccount."No.", PartnerIdentity, 1);
                            FillFinEntries(GLPCCNo, GLAccount."No.", PartnerIdentity, 2);
                        UNTIL PartnerIdentity.NEXT = 0;
                END;
            UNTIL GLAccount.NEXT = 0;
    end;

    local procedure FillFinEntries(GLNoPCC: Code[20]; GLNo: Code[20]; var PEntity: Record "G/L Entry" temporary; Type: Option Open,Period,Accumulated)
    var
        EntryNo: Integer;
        GLEntry2: Record "G/L Entry";
        ODAmt: Decimal;
        OCAmt: Decimal;
        StartDate: Date;
        EndDate: Date;
        OpenAmount: Decimal;
        BAOpenAmount: Decimal;
        BABalances: Record "UNILEO BA Balances";
    begin
        CLEAR(ODAmt);
        CLEAR(OCAmt);
        CLEAR(OpenAmount);
        CLEAR(BAOpenAmount);

        CASE Type OF
            Type::Open:
                BEGIN
                    BABalances.RESET;
                    BABalances.SETRANGE(GLNoPCC, GLNoPCC);
                    BABalances.SETRANGE(GLNo, GLNo);
                    BABalances.SETFILTER(Date, '<%1', StartDate1);
                    IF BABalances.FINDLAST THEN BEGIN
                        BAOpenAmount := BABalances.AmountOpen;
                        StartDate := CALCDATE('+1D', BABalances.Date);
                    END ELSE
                        StartDate := 0D;
                    EndDate := CLOSINGDATE(CALCDATE('-1D', StartPeriod(StartDate1)));
                END;
            Type::Period:
                BEGIN
                    StartDate := StartDate1;
                    EndDate := EndDate1;
                END;
            Type::Accumulated:
                BEGIN
                    StartDate := StartPeriod(StartDate1);
                    EndDate := EndDate1;
                END;
        END;
        GLEntry2.RESET;
        GLEntry2.SETCURRENTKEY("G/L Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date");
        GLEntry2.SETFILTER("Posting Date", '%1..%2', StartDate, EndDate);
        GLEntry2.SETRANGE("G/L Account No.", GLNo);
        IF PEntity."Source Code" <> UnknowEntity THEN BEGIN
            GLEntry2.SETRANGE("Source Type", PEntity."Source Type");
            GLEntry2.SETRANGE("Source No.", PEntity."Source No.");
            GLEntry2.CALCSUMS(Amount, "Debit Amount", "Credit Amount");
            CASE Type OF
                Type::Open:
                    BEGIN
                        OpenAmount := GLEntry2.Amount;
                    END;
                Type::Period:
                    BEGIN
                        ODAmt := GLEntry2."Debit Amount";
                        OCAmt := GLEntry2."Credit Amount";
                    END;
                Type::Accumulated:
                    BEGIN
                        ODAmt := GLEntry2."Debit Amount";
                        OCAmt := GLEntry2."Credit Amount";
                    END;
            END;
        END ELSE BEGIN
            OpenAmount := BAOpenAmount;
            IF GLEntry2.FINDSET THEN
                REPEAT
                    IF NOT IsPartnerEntity(GLEntry2) THEN BEGIN
                        CASE Type OF
                            Type::Open:
                                BEGIN
                                    OpenAmount += GLEntry2.Amount;
                                END;
                            Type::Period:
                                BEGIN
                                    ODAmt += GLEntry2."Debit Amount";
                                    OCAmt += GLEntry2."Credit Amount";
                                END;
                            Type::Accumulated:
                                BEGIN
                                    ODAmt += GLEntry2."Debit Amount";
                                    OCAmt += GLEntry2."Credit Amount";
                                END;
                        END;
                    END;
                UNTIL GLEntry2.NEXT = 0;
        END;

        TempGLEntry2.RESET;
        TempGLEntry2.SETCURRENTKEY("G/L Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date");
        TempGLEntry2.SETRANGE("G/L Account No.", GLNoPCC);
        TempGLEntry2.SETRANGE("Source No.", PEntity."Source No.");
        IF NOT TempGLEntry2.FINDFIRST THEN BEGIN
            TempGLEntry2.INIT;
            TempGLEntry2."Entry No." := FinEntryNo;
            TempGLEntry2."G/L Account No." := GLNoPCC;
            TempGLEntry2."Source Code" := PEntity."Source Code";
            TempGLEntry2."Source Type" := PEntity."Source Type";
            TempGLEntry2."Source No." := PEntity."Source No.";
            CASE Type OF
                Type::Open:
                    BEGIN
                        TempGLEntry2.Amount += OpenAmount;
                        TempGLEntry2."Add.-Currency Credit Amount" := 0;
                        TempGLEntry2."Add.-Currency Debit Amount" := 0;
                        IF TempGLEntry2.Amount > 0 THEN
                            TempGLEntry2."Add.-Currency Debit Amount" := TempGLEntry2.Amount
                        ELSE
                            TempGLEntry2."Add.-Currency Credit Amount" := ABS(TempGLEntry2.Amount);
                    END;
                Type::Period:
                    BEGIN
                        TempGLEntry2."Debit Amount" := ODAmt;
                        TempGLEntry2."Credit Amount" := OCAmt;
                    END;
                Type::Accumulated:
                    BEGIN
                        TempGLEntry2."VAT Amount" := ODAmt;
                        TempGLEntry2.Quantity := OCAmt;
                    END;
            END;
            TempGLEntry2.INSERT;
            FinEntryNo += 1;
        END ELSE BEGIN
            CASE Type OF
                Type::Open:
                    BEGIN
                        TempGLEntry2.Amount += OpenAmount;
                        TempGLEntry2."Add.-Currency Credit Amount" := 0;
                        TempGLEntry2."Add.-Currency Debit Amount" := 0;
                        IF TempGLEntry2.Amount > 0 THEN
                            TempGLEntry2."Add.-Currency Debit Amount" := TempGLEntry2.Amount
                        ELSE
                            TempGLEntry2."Add.-Currency Credit Amount" := ABS(TempGLEntry2.Amount);
                    END;
                Type::Period:
                    BEGIN
                        TempGLEntry2."Debit Amount" += ODAmt;
                        TempGLEntry2."Credit Amount" += OCAmt;
                    END;
                Type::Accumulated:
                    BEGIN
                        TempGLEntry2."VAT Amount" += ODAmt;
                        TempGLEntry2.Quantity += OCAmt;
                    END;
            END;
            TempGLEntry2.MODIFY;
        END;
    end;

    local procedure FinHaveMov(GLNo: Code[20]; StartDate: Date; EndDate: Date): Boolean
    var
        GLEntry2: Record "G/L Entry";
    begin
        GLEntry2.RESET;
        GLEntry2.SetCurrentKey("G/L Account No.", "Posting Date");
        GLEntry2.SETFILTER("Posting Date", '..%1', EndDate);
        GLEntry2.SETRANGE("G/L Account No.", GLNo);
        EXIT(GLEntry2.FINDFIRST);
    end;

    local procedure FinHaveOpenEntries(GLNo: Code[20]; StartDate: Date): Boolean
    var
        GLEntry2: Record "G/L Entry";
    begin
        GLEntry2.RESET;
        GLEntry2.SetCurrentKey("G/L Account No.", "Posting Date");
        GLEntry2.SETFILTER("Posting Date", '..%1', CLOSINGDATE(CALCDATE('-1D', StartPeriod(StartDate))));
        GLEntry2.SETRANGE("G/L Account No.", GLNo);
        EXIT(GLEntry2.FINDFIRST);
    end;

    local procedure FillPartnerEntity()
    var
        EntryNo: Integer;
        Customer: Record Customer;
        Vendor: Record Vendor;
    begin
        CLEAR(EntryNo);
        PartnerIdentity.DELETEALL;
        EntryNo := 1;
        PartnerIdentity.INIT;
        PartnerIdentity."Entry No." := EntryNo;
        PartnerIdentity."Source Code" := UnknowEntity;
        PartnerIdentity."Source No." := UnknowEntity;
        PartnerIdentity.INSERT;
        EntryNo += 1;

        Customer.RESET;
        Customer.SETRANGE("Partner Identity", TRUE);
        IF Customer.FINDSET THEN
            REPEAT
                PartnerIdentity.INIT;
                PartnerIdentity."Entry No." := EntryNo;
                PartnerIdentity."Source Code" := Customer."VAT Registration No.";
                PartnerIdentity."Source Type" := PartnerIdentity."Source Type"::Customer;
                PartnerIdentity."Source No." := Customer."No.";
                PartnerIdentity.INSERT;
                EntryNo += 1;
            UNTIL Customer.NEXT = 0;

        Vendor.RESET;
        Vendor.SETRANGE("Partner Identity", TRUE);
        IF Vendor.FINDSET THEN
            REPEAT
                PartnerIdentity.INIT;
                PartnerIdentity."Entry No." := EntryNo;
                PartnerIdentity."Source Code" := Vendor."VAT Registration No.";
                PartnerIdentity."Source Type" := PartnerIdentity."Source Type"::Vendor;
                PartnerIdentity."Source No." := Vendor."No.";
                PartnerIdentity.INSERT;
                EntryNo += 1;
            UNTIL Vendor.NEXT = 0;
    end;

    local procedure CreatePeriodDate()
    begin
        IF Frequency = Frequency::Month THEN BEGIN
            PeriodNumber := DATE2DMY(TODAY, 2);
            StartDate1 := DMY2DATE(1, PeriodNumber, DATE2DMY(TODAY, 3));
            EndDate1 := CALCDATE('<CM>', StartDate1);
        END;

        IF Frequency = Frequency::Week THEN BEGIN
            PeriodNumber := DATE2DWY(TODAY, 2);
            StartDate1 := DWY2DATE(1, PeriodNumber, DATE2DMY(TODAY, 3));
            EndDate1 := CALCDATE('<CW>', StartDate1);
        END;
    end;
}

