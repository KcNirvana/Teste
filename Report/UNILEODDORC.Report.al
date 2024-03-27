report 57034 "UNILEO DDORC"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/UNILEODDORC.rdl';
    Caption = 'DDORC - Demonstration of Budget Performance';
    Permissions = TableData "UNILEO Aux Table" = rimd;
    ApplicationArea = All;

    dataset
    {
        dataitem("UNILEO Aux Table"; "UNILEO Aux Table")
        {
            DataItemTableView = SORTING(Integer, "Report Type") WHERE("Report Type" = FILTER(DDORC), "Column Option" = CONST(Col1), Show = CONST(Yes));
            column(COMPANYNAME; CompanyName)
            {
            }
            column(USERID; UserId)
            {
            }
            column(StartDate; Format(gDStartDate, 0, 9))
            {
            }
            column(EndDate; Format(gDEndDate, 0, 9))
            {
            }
            column(Code1; Code1)
            {
            }
            column(Description1; Description1)
            {
            }
            column(Amount1; "Amount 17")
            {
            }
            column(Option1; 'Col1')
            {
            }
            column(Amount2; "Amount 18")
            {
            }
            column(ManagementN; "Amount 17")
            {
            }
            column(ManagementN1; "Amount 18")
            {
            }

            trigger OnAfterGetRecord()
            begin
                Window.Update(1, Description1);
                if Code2 <> '' then begin
                    "Amount 17" := "UNILEO Aux Table".EvaluateExpression("Totaling Type" <> "UNILEO Aux Table"."Totaling Type"::Posting, Code2, "UNILEO Aux Table", gDStartDate, gDEndDate);
                    "Amount 18" := "UNILEO Aux Table".EvaluateExpression("Totaling Type" <> "UNILEO Aux Table"."Totaling Type"::Posting, Code2, "UNILEO Aux Table", AuxStartDateT1, AuxStartDateT1);
                end;
            end;

            trigger OnPreDataItem()
            var
                UNILEOAuxTable: Record "UNILEO Aux Table";
                DateSetup: Date;
            begin
                CheckDate;

                Clear(UNILEOAuxTable);
                Clear(gFiltroContas);

                DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC2, gDStartDate);
                UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DDORC2);
                UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
                if UNILEOAuxTable.FindSet then
                    repeat
                        if gFiltroContas <> '' then
                            gFiltroContas := gFiltroContas + '|' + UNILEOAuxTable.Totaling
                        else
                            gFiltroContas := UNILEOAuxTable.Totaling;
                    until UNILEOAuxTable.Next = 0;

                DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC, gDStartDate);
                "UNILEO Aux Table".SetRange("Setup Start Date", DateSetup);
                "UNILEO Aux Table 2".SetRange("Setup Start Date", DateSetup);
                SetRange("Date Filter 1", gDStartDate, gDEndDate);
                SetRange("Date Filter 2", AuxStartDateT1, AuxEndDateT1);
                SetFilter("GLAccount Filter 1", gFiltroContas);
            end;
        }
        dataitem("UNILEO Aux Table 2"; "UNILEO Aux Table")
        {
            DataItemTableView = SORTING(Integer, "Report Type") WHERE("Report Type" = FILTER(DDORC), "Column Option" = CONST(Col2), Show = CONST(Yes));
            column(Code2; Code1)
            {
            }
            column(Description2; Description1)
            {
            }
            column(Amount1_2; "Amount 17")
            {
            }
            column(Option2; 'Col2')
            {
            }
            column(Amount2_2; "Amount 18")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if Code2 <> '' then begin
                    "Amount 17" := "UNILEO Aux Table".EvaluateExpression("Totaling Type" <> "UNILEO Aux Table"."Totaling Type"::Posting, Code2, "UNILEO Aux Table", gDStartDate, gDEndDate);
                    "Amount 18" := "UNILEO Aux Table".EvaluateExpression("Totaling Type" <> "UNILEO Aux Table"."Totaling Type"::Posting, Code2, "UNILEO Aux Table", AuxStartDateT1, AuxStartDateT1);
                end;
                if ("UNILEO Aux Table 2".Integer < 8500) or ("UNILEO Aux Table 2".Integer = 8900) or ("UNILEO Aux Table 2".Integer = 9400) then begin
                    "Amount 17" := "Amount 17" * (-1);
                    "Amount 18" := "Amount 18" * (-1);
                end;
            end;

            trigger OnPreDataItem()
            var
                DateSetup: Date;
            begin
                Window.Update(1, "UNILEO Aux Table 2".Description1);
                SetRange("Date Filter 1", gDStartDate, gDEndDate);
                SetRange("Date Filter 2", AuxStartDateT1, AuxEndDateT1);

                SetFilter("GLAccount Filter 1", gFiltroContas);
                DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC, gDStartDate);
                "UNILEO Aux Table 2".SetRange("Setup Start Date", DateSetup);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    field(PeriodType; gOptPeriodType)
                    {
                        Caption = 'Periodicity';
                        OptionCaption = 'Weekly,Monthly';

                        trigger OnValidate()
                        begin
                            if gOptPeriodType = gOptPeriodType::M then begin
                                PeriodNumber := Date2DMY(WorkDate, 2);
                                PeriodYear := Date2DMY(WorkDate, 3);
                            end;

                            if gOptPeriodType = gOptPeriodType::S then begin
                                PeriodNumber := Date2DWY(WorkDate, 2);
                                PeriodYear := Date2DWY(WorkDate, 3);
                            end;
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
                    field(DataInicio; gDStartDate)
                    {
                        Caption = 'Start Date';
                        Editable = false;
                    }
                    field(DataFim; gDEndDate)
                    {
                        Caption = 'End Date';
                        Editable = false;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            InitPeriodDate;
            MakeDateFilter;
        end;
    }

    labels
    {
        DescriptionLbl = 'RUBRIC';
        Description1Lbl = 'RECEIPTS';
        Description2Lbl = 'RP';
        Description3Lbl = 'RG';
        Description4Lbl = 'UE';
        Description5Lbl = 'EMPR';
        Description6Lbl = 'OUTSIDE FUNDS';
        Description7Lbl = 'TOTAL';
        Description8Lbl = 'N-1';
        Description9Lbl = 'PAYMENTS';
        Description10Lbl = 'FINANCING SOURCE (n)';
        Description11Lbl = 'DEMONSTRATION OF BUDGETARY PERFORMANCE';
        PageCaptionLbl = 'Page';
        PeriodCaptionLbl = 'Period';
        ALbl = 'To';
    }

    trigger OnPostReport()
    begin
        Window.Close;
    end;

    trigger OnPreReport()
    begin
        Window.Open(Text50010 + Text50011);
    end;

    var
        gOptPeriodType: Option S,M;
        gDStartDate: Date;
        gDEndDate: Date;
        AuxStartDateT1: Date;
        AuxEndDateT1: Date;
        gFiltroContas: Text[250];
        Window: Dialog;
        Text50010: Label 'Generating informations...\\';
        Text50011: Label '       #1##################';
        PeriodNumber: Integer;
        PeriodYear: Integer;
        UNILEOMgt: Codeunit "UNILEO Management";

    local procedure CheckDate()
    var
        AuxStartDate: Date;
        AuxEndDate: Date;
        AuxYear: Integer;
    begin
        MakeDateFilter;
        AuxStartDate := gDStartDate;
        AuxEndDate := gDEndDate;

        AuxYear := Date2DMY(AuxStartDate, 3);
        if (AuxYear > 2018) then begin
            AuxStartDateT1 := CalcDate('<-1Y>', AuxStartDate);
            AuxEndDateT1 := CalcDate('<-1Y>', AuxEndDate);
        end else begin
            AuxStartDateT1 := DMY2Date(1, 1, 1900);
            AuxEndDateT1 := DMY2Date(31, 1, 1900);
        end;
    end;

    local procedure MakeDateFilter()
    var
        lWeekNumber: Integer;
    begin

        case gOptPeriodType of

            gOptPeriodType::S:
                begin
                    UNILEOMgt.WeekStartEndDate(gDStartDate, gDEndDate, PeriodNumber, PeriodYear);
                    gDStartDate := DMY2Date(1, 1, PeriodYear);
                end;

            gOptPeriodType::M:
                begin
                    gDStartDate := DMY2Date(1, 1, PeriodYear);
                    if PeriodNumber > 12 then
                        gDEndDate := CalcDate('<CM>', DMY2Date(1, 12, PeriodYear))
                    else
                        gDEndDate := CalcDate('<CM>', DMY2Date(1, PeriodNumber, PeriodYear));
                    if PeriodNumber = 14 then
                        gDEndDate := ClosingDate(gDEndDate);
                end;

        end;
    end;

    local procedure GetSaldoGerenciaAnterior(ldate: Date; var lyear_n_1: Decimal; var lyear_n_2: Decimal)
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
    begin

        UNILEOAuxTable.Reset;
        UNILEOAuxTable.SetRange("Date Filter 1", DMY2Date(1, 1, Date2DMY(ldate, 3) - 1), DMY2Date(31, 12, Date2DMY(ldate, 3) - 1));
        UNILEOAuxTable.SetRange("Date Filter 2", DMY2Date(1, 1, Date2DMY(ldate, 3) - 2), DMY2Date(31, 12, Date2DMY(ldate, 3) - 2));
        UNILEOAuxTable.SetFilter("GLAccount Filter 1", gFiltroContas);
        UNILEOAuxTable.Get(100, UNILEOAuxTable."Report Type"::DDORC, '', UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC, ldate));
        UNILEOAuxTable.CalcFields(UNILEOAuxTable.Amount1, UNILEOAuxTable.Amount2);
        lyear_n_1 := UNILEOAuxTable.Amount1;
        lyear_n_2 := UNILEOAuxTable.Amount2;

        if Date2DMY(ldate, 3) <= 2018 then begin
            lyear_n_1 := 0;
            lyear_n_2 := 0;
            exit;
        end;
        if Date2DMY(ldate, 3) = 2019 then begin
            lyear_n_2 := 0;
            exit;
        end;
    end;

    local procedure DeleteRI01_RI03(var UNILEOAuxTable3: Record "UNILEO Aux Table")
    var
        StringPos: Integer;
    begin

        if UNILEOAuxTable3.Integer = 9500 then begin
            UNILEOAuxTable3.Code2 := '';
            exit;
        end;

        StringPos := StrPos(UNILEOAuxTable3.Code2, 'RI01|');
        if StringPos > 0 then begin
            UNILEOAuxTable3.Code2 := DelStr(UNILEOAuxTable3.Code2, StringPos, 5);
        end;
        StringPos := StrPos(UNILEOAuxTable3.Code2, 'RI03|');
        if StringPos > 0 then begin
            UNILEOAuxTable3.Code2 := DelStr(UNILEOAuxTable3.Code2, StringPos, 5);
        end;
    end;

    local procedure InitPeriodDate()
    begin
        gOptPeriodType := gOptPeriodType::S;
        PeriodNumber := Date2DWY(WorkDate, 2);
        PeriodYear := Date2DWY(WorkDate, 3);
        UNILEOMgt.WeekStartEndDate(gDStartDate, gDEndDate, PeriodNumber, PeriodYear);
    end;
}

