page 57220 "UNILEO DODES"
{
    Caption = 'UNILEO DODES';
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
            repeater(Group)
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
                field("Payable Expenses from Previous Periods"; Rec."BA Debit Amount 1")
                {
                    Caption = 'Payable Expenses from Previous Periods';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(1);
                    end;
                }
                field("Corrected Endowments"; Rec."BA Credit Amount 1")
                {
                    Caption = 'Corrected Endowments';

                    trigger OnAssistEdit()
                    begin
                        PageDrillDown(2);
                    end;
                }
                field("Catives"; -Rec."Amount 13")
                {
                    Caption = 'Catives';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(21);
                    end;
                }
                field("Descatives"; Rec."Amount 14")
                {
                    Caption = 'Descatives';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(22);
                    end;
                }
                field("Available Endowments"; -Rec."BA Credit Amount 3")
                {
                    Caption = 'Available Endowments';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(6);
                    end;
                }
                field("Avaylable Budgets"; -Rec."BA Debit Amount 4")
                {
                    Caption = 'Avaylable Budgets';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(7);
                    end;
                }
                field("Adjudications"; -Rec."BA Credit Amount 2")
                {
                    Caption = 'Adjudications';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(4);
                    end;
                }
                field("Obligations"; -Rec."BA Debit Amount 3")
                {
                    Caption = 'Obligations';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(5);
                    end;
                }
                field("Gross Paid Expenses"; -Rec."BA Credit Amount 4")
                {
                    Caption = 'Gross Paid Expenses';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(8);
                    end;
                }
                field("Replacements Deducted from Issued Payments"; Rec."Amount 1")
                {
                    Caption = 'Replacements Deducted from Issued Payments';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(9);
                    end;
                }
                field("Replacements Deducted from Payments Received"; Rec."Amount 2")
                {
                    Caption = 'Replacements Deducted from Payments Received';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(10);
                    end;
                }
                field("Net Paid Expenses of Previous Periods"; -Rec."Amount 15")
                {
                    Caption = 'Net Paid Expenses of Previous Periods';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(23);
                    end;
                }
                field("Net Paid Expenses for the Current Period"; -Rec."Amount 16")
                {
                    Caption = 'Net Paid Expenses for the Current Period';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(24);
                    end;
                }
                field("Total Net Paid Expenses"; -(Rec."Amount 15" + Rec."Amount 16"))
                {
                    Caption = 'Total Net Paid Expenses';
                }
                field("Commitments to Transmit"; -(Rec."BA Credit Amount 2" - Rec."BA Debit Amount 3"))
                {
                    Caption = 'Commitments to Transmit';
                }
                field("Obligations to Be Paid"; -(Rec."BA Debit Amount 3" - (Rec."Amount 15" + Rec."Amount 16")))
                {
                    Caption = 'Obligations to Be Paid';
                }
                field("Commitments Assumed for Future Periods Year N+1"; Rec."Amount 3")
                {
                    Caption = 'Commitments Assumed for Future Periods Year N+1';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(11);
                    end;
                }
                field("Commitments Assumed for Future Periods Year N+2"; Rec."Amount 4")
                {
                    Caption = 'Commitments Assumed for Future Periods Year N+2';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(12);
                    end;
                }
                field("Commitments Assumed for Future Periods Year N+3"; Rec."Amount 5")
                {
                    Caption = 'Commitments Assumed for Future Periods Year N+3';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(13);
                    end;
                }
                field("Commitments Assumed for Future Periods Year N+4"; Rec."Amount 6")
                {
                    Caption = 'Commitments Assumed for Future Periods Year N+4';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(14);
                    end;
                }
                field("Commitments Assumed for Future Periods Year N+N"; Rec."Amount 7")
                {
                    Caption = 'Commitments Assumed for Future Periods Year N+N';

                    trigger OnControlAddIn(Index: Integer; Data: Text)
                    begin
                        PageDrillDown(15);
                    end;
                }
                field("Obligations for Future Periods Year N+1"; Rec."Amount 8")
                {
                    Caption = 'Obligations for Future Periods Year N+1';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(16);
                    end;
                }
                field("Obligations for Future Periods Year N+2"; Rec."Amount 9")
                {
                    Caption = 'Obligations for Future Periods Year N+2';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(17);
                    end;
                }
                field("Obligations for Future Periods Year N+3"; Rec."Amount 10")
                {
                    Caption = 'Obligations for Future Periods Year N+3';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(18);
                    end;
                }
                field("Obligations for Future Periods Year N+4"; Rec."Amount 11")
                {
                    Caption = 'Obligations for Future Periods Year N+4';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(19);
                    end;
                }
                field("Obligations for Future Periods Year N+N"; Rec."Amount 12")
                {
                    Caption = 'Obligations for Future Periods Year N+N';

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(20);
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
        Text50000: Label 'DODES - Statement of Budget Execution of Expenditure';
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
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DODES, gDStartDate);

        gRecDimValue.SetFilter("Dimension Code", BudgetReportConfig."Rubric Dimension");
        gRecDimValue.SetRange("Budget Dim Type", gRecDimValue."Budget Dim Type"::Expenditure);
        gRecDimValue.SetRange(Totaling, '');
        IF gRecDimValue.FINDSET THEN
            REPEAT
                Window.UPDATE(1, StrSubstNo(Text001, gRecDimValue.Code, gRecDimValue.Name));
                Clear(UNILEOAuxTable);
                UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DODES);
                UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
                if UNILEOAuxTable.FindSet then
                    repeat
                        SetDataField(UNILEOAuxTable.Totaling, UNILEOAuxTable.Integer / 10);
                    until UNILEOAuxTable.Next = 0;
            UNTIL gRecDimValue.NEXT = 0;

        Rec.RESET;
        Window.CLOSE;
        Rec.Reset();
        if Rec.FindFirst() then;
    end;

    local procedure SetDataField(pAccFilter: Text; pFieldNo: Integer)
    var
        GLQuery: Query "UNILEO DODES DOREC";
        lDAmount: Decimal;
        gDate: Date;
    begin
        gDate := DMY2Date(31, 12, Date2DMY(gDEndDate, 3));

        Clear(GLQuery);
        GLQuery.SetFilter(No, pAccFilter);
        case pFieldNo of
            1:
                GLQuery.SetFilter(DateFilter, '%1..%2', ClosingDate(CalcDate('<-1Y>', gDate)), ClosingDate(CalcDate('<-1Y>', gDate)));
            25:
                GLQuery.SetFilter(DateFilter, '%1..%2', ClosingDate(gDate), ClosingDate(gDate));
            else
                GLQuery.SetFilter(DateFilter, '%1..%2', gDStartDate, gDEndDate);
        end;

        if gRecDimValue.Totaling <> '' then
            GLQuery.SetFilter(Rubric_Code, gRecDimValue.Totaling)
        else
            GLQuery.SetFilter(Rubric_Code, gRecDimValue.Code);
        GLQuery.Open;
        while GLQuery.Read do begin
            case pFieldNo of
                1:
                    lDAmount := Abs(GLQuery.Sum_Amount);
                25:
                    lDAmount := Abs(GLQuery.Sum_Amount);
                else
                    lDAmount := GLQuery.Sum_Amount;
            end;

            Rec.Reset;
            Rec.SetRange("Report Type", "UNILEO Report Type"::" ");
            Rec.SetRange(Code1, gRecDimValue.Code);
            Rec.SetRange(Code2, GLQuery.Global_Dimension_1_Code);
            Rec.SetRange(Code3, GLQuery.Shortcut_Dimension_3_Code);
            if Rec.FindSet(true) then begin
                case pFieldNo of
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
                    18:
                        Rec."Amount 10" := lDAmount;
                    19:
                        Rec."Amount 11" := lDAmount;
                    20:
                        Rec."Amount 12" := lDAmount;
                    21:
                        Rec."Amount 13" := lDAmount;
                    22:
                        Rec."Amount 14" := lDAmount;
                    23:
                        Rec."Amount 15" := lDAmount;
                    24:
                        Rec."Amount 16" := lDAmount;
                    25:
                        Rec."Amount 17" := Abs(lDAmount);
                end;
                if gOptPeriodType = gOptPeriodType::M then begin
                    if ((pFieldNo = 25) and (PeriodNumber < 14)) then begin
                        Rec."Amount 17" := 0;
                    end;
                end
                else begin
                    if pFieldNo = 25 then
                        Rec."Amount 17" := 0;
                end;
                Rec.Modify;
            end else begin
                Rec.Reset;
                Rec.Init;
                Rec.Integer := lIntInteger;
                Rec."Report Type" := Rec."Report Type"::" ";
                Rec.Code1 := gRecDimValue.Code;
                Rec.Code2 := GLQuery.Global_Dimension_1_Code;
                Rec.Code3 := GLQuery.Shortcut_Dimension_3_Code;
                Rec.Description1 := gRecDimValue.Name;
                case pFieldNo of
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
                    18:
                        Rec."Amount 10" := lDAmount;
                    19:
                        Rec."Amount 11" := lDAmount;
                    20:
                        Rec."Amount 12" := lDAmount;
                    21:
                        Rec."Amount 13" := lDAmount;
                    22:
                        Rec."Amount 14" := lDAmount;
                    23:
                        Rec."Amount 15" := lDAmount;
                    24:
                        Rec."Amount 16" := lDAmount;
                    25:
                        Rec."Amount 17" := Abs(lDAmount);
                end;
                if gOptPeriodType = gOptPeriodType::M then begin
                    if ((pFieldNo = 25) and (PeriodNumber < 14)) then begin
                        Rec."Amount 17" := 0;
                    end;
                end
                else begin
                    if pFieldNo = 25 then
                        Rec."Amount 17" := 0;
                end;
                Rec.Insert;
                lIntInteger += 1;
            end;

        end;
    end;

    local procedure PageDrillDown(pFieldNo: Integer)
    var
        lRecGLEntry: Record "G/L Entry";
        lRecDimValue: Record "Dimension Value";
        UNILEOAuxTable: Record "UNILEO Aux Table";
        GLEntriesPage: page "General Ledger Entries";
        lDate: Date;
    begin
        Clear(lDate);
        CLEAR(lRecGLEntry);
        lRecGLEntry.FilterGroup(2);

        lDate := DMY2Date(31, 12, Date2DMY(gDEndDate, 3));

        CLEAR(UNILEOAuxTable);
        UNILEOAuxTable.SETRANGE("Report Type", "UNILEO Report Type"::DODES);
        UNILEOAuxTable.SETRANGE("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DODES, gDStartDate));
        UNILEOAuxTable.SETRANGE(Integer, pFieldNo * 10);
        IF UNILEOAuxTable.FINDLAST THEN
            lRecGLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable.Totaling);

        case pFieldNo of
            1:
                lRecGLEntry.SetRange("Posting Date", ClosingDate(CalcDate('<-1Y>', lDate)), ClosingDate(CalcDate('<-1Y>', lDate)));
            25:
                lRecGLEntry.SetRange("Posting Date", ClosingDate(lDate), ClosingDate(lDate));
            else
                lRecGLEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
        end;

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
        gOptPeriodType := gOptPeriodType::M;
        PeriodNumber := DATE2DMY(WORKDATE, 2);
        PeriodYear := DATE2DMY(WORKDATE, 3);
        UNILEOMgt.WeekStartEndDate(gDStartDate, gDEndDate, PeriodNumber, PeriodYear);
    end;
}

