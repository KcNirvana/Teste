report 57033 "UNILEO DAPL"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/UNILEODAPL.rdl';
    Caption = 'DAPL - Statement of Changes in Shareholders Equity';
    Permissions = TableData "UNILEO Aux Table" = rimd;
    ApplicationArea = All;

    dataset
    {
        dataitem(UNILEOAuxTable3; "UNILEO Aux Table")
        {
            DataItemTableView = SORTING(Code1);
            UseTemporary = true;
            column(CompanyName; CompanyName)
            {
            }
            column(YearFilter; YearFilter)
            {
            }
            column(PeriodNumber; PeriodNumber)
            {
            }
            column(Bold; Bold)
            {
            }
            column(Linha; Integer)
            {
            }
            column(Descricao; Description1)
            {
            }
            column(Notas; Description2)
            {
            }
            column(Valor1; "Amount 1")
            {
            }
            column(Valor2; "Amount 2")
            {
            }
            column(Valor3; "Amount 3")
            {
            }
            column(Valor4; "Amount 4")
            {
            }
            column(Valor5; "Amount 5")
            {
            }
            column(Valor6; "Amount 6")
            {
            }
            column(Valor7; "Amount 7")
            {
            }
            column(Valor8; "Amount 8")
            {
            }
            column(Valor9; "Amount 9")
            {
            }
            column(Valor10; "Amount 10")
            {
            }
            column(Valor11; "Amount 11")
            {
            }
            column(Valor12; "Amount 12")
            {
            }
            column(Valor13; "Amount 13")
            {
            }
            column(Valor14; "Amount 14")
            {
            }
            column(Valor15; "Amount 15")
            {
            }
            column(Valor16; "Amount 16")
            {
            }
            column(Valor17; "Amount 17")
            {
            }

        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                field(YearFilter; YearFilter)
                {
                    BlankZero = true;
                    Caption = 'Year';
                    Editable = false;
                }
                field(PeriodNumber; PeriodNumber)
                {
                    Caption = 'Period';
                    Editable = false;
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
        Descricao_Lbl = 'Description';
        Ano_Lbl = 'Year:';
        Periodo_Lbl = 'Period:';
        Titulo_Lbl = 'DAPL - Statement of Changes in Shareholders Equity';
        PageNoCaption_Lbl = 'Page:';
        Notas_Lbl = 'Notes';
        Coluna0_Lbl = 'Shareholders Equity Attributed to Shareholders Equity of the Parent Entity';
        Coluna1_Lbl = 'Capital / Accomplished Patrimony';
        Coluna2_Lbl = 'Other instruments own capital';
        Coluna3_Lbl = 'Legal Reserves';
        Coluna4_Lbl = 'Reserves from transfer assets';
        Coluna5_Lbl = 'Other Reserves';
        Coluna6_Lbl = 'Transited Results';
        Coluna7_Lbl = 'Financial Assets Adjustments';
        Coluna8_Lbl = 'Revaluation Surplus';
        Coluna9_Lbl = 'Other changes to net assets';
        Coluna10_Lbl = 'Net income for the period';
        Coluna11_Lbl = 'Total';
        Coluna12_Lbl = 'Non-controlling interests';
        Coluna13_Lbl = 'Total Shareholders Equity';
        Coluna14_Lbl = 'Subscribed Capital / Heritage';
        Coluna15_Lbl = 'Own shares';
        Coluna16_Lbl = 'Issuance Awards';
        Coluna17_Lbl = 'Reservations';
    }

    trigger OnPreReport()
    begin
        MakeDateFilter;
        GetValues;
    end;

    var
        YearFilter: Integer;
        PeriodNumber: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14";
        gDStartDate: Date;
        gDEndDate: Date;
        gBConfig: Boolean;
        gTextPageCaption: Text[100];
        gDPreviousDate: Date;
        gDPreviousStartDate: Date;
        Text50003: Label 'You didnt selected any year.';
        gContador: Integer;
        Nota1: Label '(1)';
        Nota2: Label '(2)';
        Nota3: Label '(3)';
        Nota4: Label '(4)=(2)+(3)';
        Nota5: Label '(5)';
        Nota6: Label '(6)=(1)+(2)+(3)+(5)';
        Text50010: Label 'Generating informations...\\';
        Text50011: Label '       #1##################';
        Window: Dialog;
        UNILEOMgt: Codeunit "UNILEO Management";

    local procedure MakeDateFilter()
    var
        lRecDate: Record Date;
        lAux_Month: Integer;
        lAux_Year: Integer;
    begin
        if YearFilter = 0 then
            Error(Text50003);
        gDPreviousDate := CalcDate('-1D', DMY2Date(1, 1, YearFilter));
        gDStartDate := DMY2Date(1, 1, YearFilter);
        gDPreviousStartDate := DMY2Date(1, 1, Date2DMY(gDPreviousDate, 3));
        case PeriodNumber of
            PeriodNumber::"1":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 1, YearFilter));
                end;
            PeriodNumber::"2":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 2, YearFilter));
                end;
            PeriodNumber::"3":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 3, YearFilter));
                end;
            PeriodNumber::"4":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 4, YearFilter));
                end;
            PeriodNumber::"5":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 5, YearFilter));
                end;
            PeriodNumber::"6":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 6, YearFilter));
                end;
            PeriodNumber::"7":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 7, YearFilter));
                end;
            PeriodNumber::"8":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 8, YearFilter));
                end;
            PeriodNumber::"9":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 9, YearFilter));
                end;
            PeriodNumber::"10":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 10, YearFilter));
                end;
            PeriodNumber::"11":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 11, YearFilter));
                end;
            PeriodNumber::"12":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 12, YearFilter));
                end;
            PeriodNumber::"13":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 12, YearFilter));
                end;
            PeriodNumber::"14":
                begin
                    gDEndDate := ClosingDate(DMY2Date(31, 12, YearFilter));
                end;
        end;
    end;

    local procedure GetValues()
    var
        GLEntry: Record "G/L Entry";
        UNILEOAuxTable2: Record "UNILEO Aux Table";
        UNILEOAuxTable: Record "UNILEO Aux Table";
        DateSetup: Date;
    begin
        Window.Open(Text50010 + Text50011);

        Clear(UNILEOAuxTable);
        Clear(UNILEOAuxTable2);
        Clear(UNILEOAuxTable3);
        UNILEOAuxTable2.SetRange(Code1, 'Temp');
        UNILEOAuxTable2.DeleteAll;
        UNILEOAuxTable3.DeleteAll;

        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DAPL, gDStartDate);

        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DAPL);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        UNILEOAuxTable.SetRange(Code1, '');
        if UNILEOAuxTable.FindSet then
            repeat
                UNILEOAuxTable3.Init;
                UNILEOAuxTable3.Integer := UNILEOAuxTable.Integer;
                UNILEOAuxTable3."Report Type" := UNILEOAuxTable."Report Type";
                UNILEOAuxTable3.Code1 := UNILEOAuxTable.Code1;
                UNILEOAuxTable3.Description1 := UNILEOAuxTable.Description1;
                case UNILEOAuxTable3.Integer of
                    50:
                        UNILEOAuxTable3.Description2 := Nota1;
                    140:
                        UNILEOAuxTable3.Description2 := Nota2;
                    150:
                        UNILEOAuxTable3.Description2 := Nota3;
                    160:
                        UNILEOAuxTable3.Description2 := Nota4;
                    220:
                        UNILEOAuxTable3.Description2 := Nota5;
                    230:
                        UNILEOAuxTable3.Description2 := Nota6;
                end;

                Window.Update(1, UNILEOAuxTable3.Description1);

                if UNILEOAuxTable3.Integer <> 160 then begin    //Resultado integral
                    UNILEOAuxTable3."Amount 1" := UNILEOMgt.DAPLGetFieldValue(1, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 2" := UNILEOMgt.DAPLGetFieldValue(2, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 3" := UNILEOMgt.DAPLGetFieldValue(3, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 4" := UNILEOMgt.DAPLGetFieldValue(4, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 5" := UNILEOMgt.DAPLGetFieldValue(5, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 6" := UNILEOMgt.DAPLGetFieldValue(6, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 7" := UNILEOMgt.DAPLGetFieldValue(7, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 8" := UNILEOMgt.DAPLGetFieldValue(8, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 9" := UNILEOMgt.DAPLGetFieldValue(9, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 10" := UNILEOMgt.DAPLGetFieldValue(10, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 14" := UNILEOMgt.DAPLGetFieldValue(14, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 15" := UNILEOMgt.DAPLGetFieldValue(15, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 16" := UNILEOMgt.DAPLGetFieldValue(16, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 17" := UNILEOMgt.DAPLGetFieldValue(17, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    if UNILEOAuxTable.Totaling = '' then
                        UNILEOAuxTable3."Amount 11" := UNILEOMgt.DAPLGetFieldTotal(11, UNILEOAuxTable, UNILEOAuxTable3)
                    else
                        UNILEOAuxTable3."Amount 11" := UNILEOMgt.DAPLGetFieldValue(11, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    if UNILEOAuxTable.Totaling = '' then
                        UNILEOAuxTable3."Amount 12" := UNILEOMgt.DAPLGetFieldTotal(12, UNILEOAuxTable, UNILEOAuxTable3)
                    else
                        UNILEOAuxTable3."Amount 12" := UNILEOMgt.DAPLGetFieldValue(12, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    if UNILEOAuxTable.Totaling = '' then
                        UNILEOAuxTable3."Amount 13" := UNILEOMgt.DAPLGetFieldTotal(13, UNILEOAuxTable, UNILEOAuxTable3)
                    else
                        UNILEOAuxTable3."Amount 13" := UNILEOMgt.DAPLGetFieldValue(13, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                end else begin
                    UNILEOAuxTable3."Amount 1" := UNILEOMgt.DAPLGetFieldValue(1, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 2" := UNILEOMgt.DAPLGetFieldValue(2, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 3" := UNILEOMgt.DAPLGetFieldValue(3, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 4" := UNILEOMgt.DAPLGetFieldValue(4, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 5" := UNILEOMgt.DAPLGetFieldValue(5, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 6" := UNILEOMgt.DAPLGetFieldValue(6, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 7" := UNILEOMgt.DAPLGetFieldValue(7, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 8" := UNILEOMgt.DAPLGetFieldValue(8, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 9" := UNILEOMgt.DAPLGetFieldValue(9, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 10" := 0;
                    UNILEOAuxTable3."Amount 14" := UNILEOMgt.DAPLGetFieldValue(14, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 15" := UNILEOMgt.DAPLGetFieldValue(15, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 16" := UNILEOMgt.DAPLGetFieldValue(16, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 17" := UNILEOMgt.DAPLGetFieldValue(17, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 11" := UNILEOMgt.DAPLGetFieldValue(11, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    UNILEOAuxTable3."Amount 12" := 0;
                    UNILEOAuxTable3."Amount 13" := UNILEOMgt.DAPLGetFieldValue(13, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                end;
                UNILEOAuxTable3.Bold := UNILEOAuxTable.Bold;
                UNILEOAuxTable3.Insert;
                UNILEOAuxTable2.Init;
                UNILEOAuxTable2.Copy(UNILEOAuxTable3);
                UNILEOAuxTable2.Code1 := 'TEMP';
                UNILEOAuxTable2.Insert;
            until UNILEOAuxTable.Next = 0;

        Clear(UNILEOAuxTable2);
        UNILEOAuxTable2.SetRange(Code1, 'Temp');
        UNILEOAuxTable2.DeleteAll;

        gContador := UNILEOAuxTable3.Count;

        Window.Close;
    end;

    procedure SetFilters(lYearFilter: Integer; lPeriodNumber: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14")
    begin
        YearFilter := lYearFilter;
        PeriodNumber := lPeriodNumber;
    end;
}

