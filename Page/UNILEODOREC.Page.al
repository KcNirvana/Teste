page 57221 "UNILEO DOREC"
{
    Caption = 'UNILEO DOREC';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = ListPlus;
    SourceTable = "UNILEO Aux Table";
    SourceTableTemporary = true;
    DataCaptionExpression = gTextPageCaption;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(Filters)
            {
                Caption = 'Filters';

                field(PeriodType; gOptPeriodType)
                {
                    Caption = 'Periodicity';
                    OptionCaption = 'Weekly,Monthly';

                    trigger OnValidate()
                    begin
                        IF gOptPeriodType = gOptPeriodType::M THEN BEGIN
                            PeriodNumber := DATE2DMY(WORKDATE, 2);
                            PeriodYear := DATE2DMY(WORKDATE, 3);
                        END;

                        IF gOptPeriodType = gOptPeriodType::S THEN BEGIN
                            PeriodNumber := DATE2DWY(WORKDATE, 2);
                            PeriodYear := DATE2DWY(WORKDATE, 3);
                        END;
                        MakeDateFilter;
                    end;
                }
                field(PeriodYear; PeriodYear)
                {
                    Caption = 'Year';

                    trigger OnValidate()
                    begin
                        MakeDateFilter;
                    end;
                }
                field(PeriodNumber; PeriodNumber)
                {
                    Caption = 'Period';

                    trigger OnValidate()
                    begin
                        MakeDateFilter;
                    end;
                }
                field("Start Date"; gDStartDate)
                {
                    Caption = 'Start Date';
                    Editable = false;
                }
                field("End Date"; gDEndDate)
                {
                    Caption = 'End Date';
                    Editable = false;
                }
            }
            repeater(group)
            {
                Editable = false;
                field(Code1; Rec.Code1)
                {
                    Caption = 'Rubric';
                }
                field(Description1; Rec.Description1)
                {
                    Caption = 'Description';
                }
                field(Code3; Rec.Code3)
                {
                    Caption = 'Financing Source';
                }
                field(Code2; Rec.Code2)
                {
                    Caption = 'Economics';
                }
                field("Corrected Forecasts"; Rec."BA Debit Amount 1")
                {
                    Caption = 'Corrected Forecasts';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(1);
                    end;
                }
                field("Outstanding Forecasts"; Rec."Amount 1")
                {
                    Caption = 'Outstanding Forecasts';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(9);
                    end;
                }
                field("Uncollected Revenues from Previous Periods"; Rec."BA Credit Amount 1")
                {
                    Caption = 'Uncollected Revenues from Previous Periods';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(2);
                    end;
                }
                field("Settled Income"; Rec."BA Debit Amount 2")
                {
                    Caption = 'Settled Income';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(3);
                    end;
                }
                field("Annulled Settlements"; Rec."BA Credit Amount 2")
                {
                    Caption = 'Annulled Settlements';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(4);
                    end;
                }
                field("Gross Collected Revenues"; Rec."BA Debit Amount 3")
                {
                    Caption = 'Gross Collected Revenues';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(5);
                    end;
                }
                field("Refunds Refunds Issued"; Rec."BA Credit Amount 3")
                {
                    Caption = 'Refunds Refunds Issued';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(6);
                    end;
                }
                field("Refunds Refunds Paid"; Rec."BA Debit Amount 4")
                {
                    Caption = 'Refunds Refunds Paid';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(7);
                    end;
                }
                field("Net Collected Revenues from Previous Periods"; Rec."Amount 8")
                {
                    Caption = 'Net Collected Revenues from Previous Periods';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(16);
                    end;
                }
                field("Net Collected Revenues from Actual Period"; Rec."Amount 9")
                {
                    Caption = 'Net Collected Revenues from Actual Period';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(17);
                    end;
                }
                field("Total Net Collected Revenues"; Rec."Amount 8" + Rec."Amount 9")
                {
                    Caption = 'Total Net Collected Revenues';
                }
                field("Deferred Receipts"; Rec."Amount 2")
                {
                    Caption = 'Deferred Receipts';
                    Visible = PeriodYear <= 2018;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(10);
                    end;
                }
                field("Income to Collect End of Period"; Rec."BA Credit Amount 4")
                {
                    Caption = 'Income to Collect End of Period';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(8);
                    end;
                }
                field("Settlements of Future Periods Year N+1"; Rec."Amount 3")
                {
                    Caption = 'Settlements of Future Periods Year N+1';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(11);
                    end;
                }
                field("Settlements of Future Periods Year N+2"; Rec."Amount 4")
                {
                    Caption = 'Settlements of Future Periods Year N+2';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(12);
                    end;
                }
                field("Settlements of Future Periods Year N+3"; Rec."Amount 5")
                {
                    Caption = 'Settlements of Future Periods Year N+3';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(13);
                    end;
                }
                field("Settlements of Future Periods Year N+4"; Rec."Amount 6")
                {
                    Caption = 'Settlements of Future Periods Year N+4';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(14);
                    end;
                }
                field("Settlements of Future Periods Year N+N"; Rec."Amount 7")
                {
                    Caption = 'Settlements of Future Periods Year N+N';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(15);
                    end;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Update Amounts")
            {
                Caption = 'Update Amounts';
                Image = PostApplication;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    MakeDateFilter;
                    ValidateConfiguration();
                    SetData;
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        gTextPageCaption := Text50000;
        InitPeriodDate;
        MakeDateFilter;
    end;

    var
        gRecDimValue: Record "Dimension Value";
        BudgetReportConfig: Record "Budget Report Configuration";
        gOptPeriodType: Option S,M;
        gDStartDate: Date;
        gDEndDate: Date;
        gTextPageCaption: Text[100];
        Text50000: Label 'DOREC - Statement of Budget Execution of Revenue';
        lIntInteger: Integer;
        lAux_Code1: Code[20];
        Window: Dialog;
        Text50010: Label 'Generating informations...\\';
        Text50011: Label '       #1##################';
        PeriodNumber: Integer;
        PeriodYear: Integer;
        UNILEOMgt: Codeunit "UNILEO Management";

    local procedure MakeDateFilter()
    var
        lRecDate: Record Date;
        lAux_Month: Integer;
        lAux_Year: Integer;
        lWeekNumber: Integer;
    begin

        CASE gOptPeriodType OF
            gOptPeriodType::S:
                BEGIN
                    UNILEOMgt.WeekStartEndDate(gDStartDate, gDEndDate, PeriodNumber, PeriodYear);
                    gDStartDate := DMY2DATE(1, 1, PeriodYear);
                END;

            gOptPeriodType::M:
                BEGIN
                    gDStartDate := DMY2DATE(1, 1, PeriodYear);
                    IF PeriodNumber > 12 THEN
                        gDEndDate := CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear))
                    ELSE
                        gDEndDate := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber, PeriodYear));
                    IF PeriodNumber = 14 THEN
                        gDEndDate := CLOSINGDATE(gDEndDate);
                END;
        END;
    end;

    local procedure ValidateConfiguration()
    begin
        BudgetReportConfig.Get;
        BudgetReportConfig.TestField("Rubric Dimension");
    end;

    local procedure SetData()
    var
        GLQuery: Query "UNILEO DODES DOREC";
        lDAmount1: Decimal;
        UNILEOAuxTable: Record "UNILEO Aux Table";
        DateSetup: Date;
        Text001: Label '%1 - %2';
    begin
        lIntInteger := 1;
        CLEAR(lAux_Code1);

        Window.OPEN(Text50010 + Text50011);

        Rec.RESET;
        Rec.DELETEALL;

        Clear(gRecDimValue);
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DOREC, gDStartDate);

        gRecDimValue.SetFilter("Dimension Code", BudgetReportConfig."Rubric Dimension");
        gRecDimValue.SetRange("Budget Dim Type", gRecDimValue."Budget Dim Type"::"Revenue");
        gRecDimValue.SetRange(Totaling, '');
        IF gRecDimValue.FINDSET THEN
            REPEAT
                Window.UPDATE(1, StrSubstNo(Text001, gRecDimValue.Code, gRecDimValue.Name));
                Clear(UNILEOAuxTable);
                UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DOREC);
                UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
                if UNILEOAuxTable.FindSet then
                    repeat
                        SetDataField(UNILEOAuxTable.Totaling, UNILEOAuxTable.Integer / 10);
                    until UNILEOAuxTable.Next = 0;
            UNTIL gRecDimValue.NEXT = 0;
        Window.CLOSE;
        Rec.Reset();
        if Rec.FindFirst() then;
    end;

    local procedure SetDataField(pAccFilter: Text; pFieldNo: Integer)
    var
        GLQuery: Query "UNILEO DODES DOREC";
        lDAmount: Decimal;
    begin
        GLQuery.SetFilter(No, pAccFilter);
        GLQuery.SetFilter(DateFilter, '%1..%2', gDStartDate, gDEndDate);
        if gRecDimValue.Totaling <> '' then
            GLQuery.SetFilter(Rubric_Code, gRecDimValue.Totaling)
        else
            GLQuery.SetFilter(Rubric_Code, gRecDimValue.Code);
        GLQuery.Open;

        WHILE GLQuery.READ DO BEGIN
            lDAmount := GetValuesByDim(pAccFilter, gDStartDate, gDEndDate, GLQuery.Global_Dimension_1_Code,
                                        GLQuery.Shortcut_Dimension_3_Code, gRecDimValue.Code, gRecDimValue.Totaling);

            Rec.Reset;
            Rec.SetRange("Report Type", "UNILEO Report Type"::" ");
            Rec.SetRange(Code1, gRecDimValue.Code);
            Rec.SetRange(Code2, GLQuery.Global_Dimension_1_Code);
            Rec.SetRange(Code3, GLQuery.Shortcut_Dimension_3_Code);
            IF Rec.FindSet(true) THEN BEGIN
                CASE pFieldNo OF
                    1:
                        Rec."BA Debit Amount 1" := lDAmount;
                    2:
                        Rec."BA Credit Amount 1" := lDAmount;
                    3:
                        Rec."BA Debit Amount 2" := lDAmount;
                    4:
                        Rec."BA Credit Amount 2" := lDAmount;
                    5:
                        Rec."BA Debit Amount 3" := lDAmount;
                    6:
                        Rec."BA Credit Amount 3" := lDAmount;
                    7:
                        Rec."BA Debit Amount 4" := lDAmount;
                    8:
                        Rec."BA Credit Amount 4" := lDAmount;
                    9:
                        Rec."Amount 1" := lDAmount;
                    10:
                        Rec."Amount 2" := lDAmount;
                    11:
                        Rec."Amount 3" := lDAmount;
                    12:
                        Rec."Amount 4" := lDAmount;
                    13:
                        Rec."Amount 5" := lDAmount;
                    14:
                        Rec."Amount 6" := lDAmount;
                    15:
                        Rec."Amount 7" := lDAmount;
                    16:
                        Rec."Amount 8" := lDAmount;
                    17:
                        Rec."Amount 9" := lDAmount;
                END;
                Rec.MODIFY;
            END ELSE BEGIN
                Rec.Reset;
                Rec.Init;
                Rec.Integer := lIntInteger;
                Rec."Report Type" := Rec."Report Type"::" ";
                Rec.Code1 := gRecDimValue.Code;
                Rec.Code2 := GLQuery.Global_Dimension_1_Code;
                Rec.Code3 := GLQuery.Shortcut_Dimension_3_Code;
                Rec.Description1 := gRecDimValue.Name;
                CASE pFieldNo OF
                    1:
                        Rec."BA Debit Amount 1" := lDAmount;
                    2:
                        Rec."BA Credit Amount 1" := lDAmount;
                    3:
                        Rec."BA Debit Amount 2" := lDAmount;
                    4:
                        Rec."BA Credit Amount 2" := lDAmount;
                    5:
                        Rec."BA Debit Amount 3" := lDAmount;
                    6:
                        Rec."BA Credit Amount 3" := lDAmount;
                    7:
                        Rec."BA Debit Amount 4" := lDAmount;
                    8:
                        Rec."BA Credit Amount 4" := lDAmount;
                    9:
                        Rec."Amount 1" := lDAmount;
                    10:
                        Rec."Amount 2" := lDAmount;
                    11:
                        Rec."Amount 3" := lDAmount;
                    12:
                        Rec."Amount 4" := lDAmount;
                    13:
                        Rec."Amount 5" := lDAmount;
                    14:
                        Rec."Amount 6" := lDAmount;
                    15:
                        Rec."Amount 7" := lDAmount;
                    16:
                        Rec."Amount 8" := lDAmount;
                    17:
                        Rec."Amount 9" := lDAmount;
                END;

                IF lAux_Code1 <> Rec.Code1 THEN
                    Rec.GroupCode := TRUE;

                Rec.INSERT;
                lIntInteger += 1;
                lAux_Code1 := Rec.Code1;
            END;

        END;
    end;

    procedure GetValuesByDim(p_Account: Text[60]; p_StartDate: Date; p_EndDate: Date; p_Dim1: Code[60]; p_Dim3: Code[60]; p_Rubrica: Code[20]; p_Totaling: Text[250]) lAmount: Decimal
    var
        l_GLAcc: Record "G/L Account";
        l_GLQuery: Query "UNILEO DODES DOREC";
    begin
        l_GLQuery.SetFilter(NoFilter, p_Account);
        l_GLQuery.SetRange(Dim1, p_Dim1);
        l_GLQuery.SetRange(Dim3, p_Dim3);
        if p_Totaling <> '' then
            l_GLQuery.SetFilter(Rubric_Code, p_Totaling)
        else
            l_GLQuery.SetFilter(Rubric_Code, p_Rubrica);

        l_GLQuery.SetFilter(DateFilter, '%1..%2', p_StartDate, p_EndDate);
        l_GLQuery.Open;

        while l_GLQuery.Read do
            lAmount := lAmount + l_GLQuery.Sum_Amount;
        exit(lAmount);
    end;

    local procedure PageDrillDown(pFieldNo: Integer)
    var
        lRecGLEntry: Record "G/L Entry";
        lRecDimValue: Record "Dimension Value";
        UNILEOAuxTable: Record "UNILEO Aux Table";
        GLEntriesPage: page "General Ledger Entries";
    begin
        CLEAR(lRecGLEntry);
        lRecGLEntry.FilterGroup(2);

        CLEAR(UNILEOAuxTable);
        UNILEOAuxTable.SETRANGE("Report Type", "UNILEO Report Type"::DOREC);
        UNILEOAuxTable.SETRANGE("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DOREC, gDStartDate));
        UNILEOAuxTable.SETRANGE(Integer, pFieldNo * 10);
        IF UNILEOAuxTable.FINDLAST THEN
            lRecGLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable.Totaling);

        lRecGLEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
        CLEAR(lRecDimValue);
        lRecDimValue.GET(BudgetReportConfig."Rubric Dimension", Rec.Code1);
        IF lRecDimValue.Totaling <> '' THEN
            lRecGLEntry.SETFILTER("Rubric Code", lRecDimValue.Totaling)
        ELSE
            lRecGLEntry.SETFILTER("Rubric Code", Rec.Code1);
        lRecGLEntry.SETFILTER("Global Dimension 1 Code", Rec.Code2);
        lRecGLEntry.SETFILTER("Shortcut Dimension 3 Code", Rec.Code3);

        Clear(GLEntriesPage);
        GLEntriesPage.SetTableView(lRecGLEntry);
        GLEntriesPage.Run();
    end;

    local procedure InitPeriodDate()
    begin
        gOptPeriodType := gOptPeriodType::S;
        PeriodNumber := DATE2DWY(WORKDATE, 2);
        PeriodYear := DATE2DWY(WORKDATE, 3);
        UNILEOMgt.WeekStartEndDate(gDStartDate, gDEndDate, PeriodNumber, PeriodYear);
    end;
}

