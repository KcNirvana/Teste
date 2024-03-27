xmlport 57006 "UNILEO DAPL"
{
    Direction = Export;
    Encoding = UTF8;

    schema
    {
        textelement(dapl)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            XmlName = 'DAPL';
            textelement(cabecalho)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'Cabecalho';
                textelement(entidade)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    TextType = Text;
                    XmlName = 'Entidade';

                    trigger OnBeforePassVariable()
                    begin
                        Entidade := gRecCompInfo."VAT Registration No.";
                    end;
                }
                textelement(data)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    TextType = Text;
                    XmlName = 'Data';

                    trigger OnBeforePassVariable()
                    begin
                        Data := Format(CurrentDateTime, 0, '<Year4>-<Month,2>-<Day,2>T<Hours24,2>:<Minutes,2>:<Seconds,2>');
                    end;
                }
                textelement(ano)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    TextType = Text;
                    XmlName = 'Ano';

                    trigger OnBeforePassVariable()
                    begin
                        Ano := Format(Date2DMY(gDStartDate, 3));
                    end;
                }
                textelement(periodicidade)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    TextType = Text;
                    XmlName = 'Periodicidade';

                    trigger OnBeforePassVariable()
                    begin
                        Periodicidade := Format(gOptPeriodType);
                    end;
                }
                textelement(periodo)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    TextType = Text;
                    XmlName = 'Periodo';

                    trigger OnBeforePassVariable()
                    begin
                        Periodo := Periodo;
                    end;
                }
                textelement(planocontaslocal)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    TextType = Text;
                    XmlName = 'PlanoContasLocal';

                    trigger OnBeforePassVariable()
                    begin
                        PlanoContasLocal := 'IAS/IFRS';
                    end;
                }
            }
            textelement(registos)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'Registos';
                tableelement("UNILEO Aux Table"; "UNILEO Aux Table")
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'Registo';
                    SourceTableView = SORTING(Integer, "Report Type", Code1) WHERE("Report Type" = CONST(DAPL), Code2 = FILTER(<> ''));
                    UseTemporary = true;
                    textelement(id_registo)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        XmlName = 'ID_Registo';

                        trigger OnBeforePassVariable()
                        begin
                            ID_Registo := Format("UNILEO Aux Table".Integer);
                        end;
                    }
                    textelement(rubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        XmlName = 'Rubrica';

                        trigger OnBeforePassVariable()
                        begin
                            Rubrica := "UNILEO Aux Table".Code2;
                        end;
                    }
                    textelement(notas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Notas';
                    }
                    textelement(capitalpatrimoniorealizado)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'CapitalPatrimonioRealizado';

                        trigger OnBeforePassVariable()
                        begin
                            if YearFilter > 2018 then
                                currXMLport.Skip();
                            CapitalPatrimonioRealizado := FormatAmount("UNILEO Aux Table"."Amount 1");
                        end;
                    }
                    textelement(capitalpatrimoniosubscrito_19)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'CapitalPatrimonioSubscrito';

                        trigger OnBeforePassVariable()
                        begin
                            if YearFilter < 2019 then
                                currXMLport.Skip();
                            CapitalPatrimonioSubscrito_19 := FormatAmount("UNILEO Aux Table"."Amount 14");
                        end;
                    }
                    textelement(acoesquotasproprias_19)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'AcoesQuotasProprias';

                        trigger OnBeforePassVariable()
                        begin
                            if YearFilter < 2019 then
                                currXMLport.Skip();
                            AcoesQuotasProprias_19 := FormatAmount("UNILEO Aux Table"."Amount 15");
                        end;
                    }
                    textelement(outrosinstrumentoscapitalpr)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'OutrosInstrumentosCapitalProprio';

                        trigger OnBeforePassVariable()
                        begin
                            OutrosInstrumentosCapitalPr := FormatAmount("UNILEO Aux Table"."Amount 2");
                        end;
                    }
                    textelement(premiosemissao_19)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'PremiosEmissao';

                        trigger OnBeforePassVariable()
                        begin
                            if YearFilter < 2019 then
                                currXMLport.Skip();
                            PremiosEmissao_19 := FormatAmount("UNILEO Aux Table"."Amount 16");
                        end;
                    }
                    textelement(reservaslegais)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'ReservasLegais';

                        trigger OnBeforePassVariable()
                        begin
                            if YearFilter > 2018 then
                                currXMLport.Skip();
                            ReservasLegais := FormatAmount("UNILEO Aux Table"."Amount 3");
                        end;
                    }
                    textelement(reservasdecorrentestransfer)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'ReservasDecorrentesTransferenciaAtivos';

                        trigger OnBeforePassVariable()
                        begin
                            if YearFilter > 2018 then
                                currXMLport.Skip();
                            ReservasDecorrentesTransfer := FormatAmount("UNILEO Aux Table"."Amount 4");
                        end;
                    }
                    textelement(outrasreservas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'OutrasReservas';

                        trigger OnBeforePassVariable()
                        begin
                            if YearFilter > 2018 then
                                currXMLport.Skip();
                            OutrasReservas := FormatAmount("UNILEO Aux Table"."Amount 5");
                        end;
                    }
                    textelement(reservas_19)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'Reservas';

                        trigger OnBeforePassVariable()
                        begin
                            if YearFilter < 2019 then
                                currXMLport.Skip();
                            Reservas_19 := FormatAmount("UNILEO Aux Table"."Amount 17");
                        end;
                    }
                    textelement(resultadostransitados)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ResultadosTransitados';

                        trigger OnBeforePassVariable()
                        begin
                            ResultadosTransitados := FormatAmount("UNILEO Aux Table"."Amount 6");
                        end;
                    }
                    textelement(ajustamentosativosfinanceir)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'AjustamentosAtivosFinanceiros';

                        trigger OnBeforePassVariable()
                        begin
                            AjustamentosAtivosFinanceir := FormatAmount("UNILEO Aux Table"."Amount 7");
                        end;
                    }
                    textelement(excedentesrevalorizacao)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ExcedentesRevalorizacao';

                        trigger OnBeforePassVariable()
                        begin
                            ExcedentesRevalorizacao := FormatAmount("UNILEO Aux Table"."Amount 8");
                        end;
                    }
                    textelement(outrasvariacoespatrimonioli)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'OutrasVariacoesPatrimonioLiquido';

                        trigger OnBeforePassVariable()
                        begin
                            OutrasVariacoesPatrimonioLi := FormatAmount("UNILEO Aux Table"."Amount 9");
                        end;
                    }
                    textelement(resultadoliquidoperiodo)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ResultadoLiquidoPeriodo';

                        trigger OnBeforePassVariable()
                        begin
                            ResultadoLiquidoPeriodo := FormatAmount("UNILEO Aux Table"."Amount 10");
                        end;
                    }
                    textelement(total)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Total';

                        trigger OnBeforePassVariable()
                        begin
                            if YearFilter <= 2018 then
                                Total := FormatAmount("UNILEO Aux Table"."Amount 1" +
                                                      "UNILEO Aux Table"."Amount 2" +
                                                      "UNILEO Aux Table"."Amount 3" +
                                                      "UNILEO Aux Table"."Amount 4" +
                                                      "UNILEO Aux Table"."Amount 5" +
                                                      "UNILEO Aux Table"."Amount 6" +
                                                      "UNILEO Aux Table"."Amount 7" +
                                                      "UNILEO Aux Table"."Amount 8" +
                                                      "UNILEO Aux Table"."Amount 9")
                            else
                                Total := FormatAmount("UNILEO Aux Table"."Amount 11");

                            if ID_Registo = '230' then begin
                                Total := FormatAmount("UNILEO Aux Table"."Amount 1" +
                                                      "UNILEO Aux Table"."Amount 14" +
                                                      "UNILEO Aux Table"."Amount 15" +
                                                      "UNILEO Aux Table"."Amount 2" +
                                                      "UNILEO Aux Table"."Amount 16" +
                                                      "UNILEO Aux Table"."Amount 3" +
                                                      "UNILEO Aux Table"."Amount 4" +
                                                      "UNILEO Aux Table"."Amount 5" +
                                                      "UNILEO Aux Table"."Amount 17" +
                                                      "UNILEO Aux Table"."Amount 6" +
                                                      "UNILEO Aux Table"."Amount 7" +
                                                      "UNILEO Aux Table"."Amount 8" +
                                                      "UNILEO Aux Table"."Amount 9" +
                                                      "UNILEO Aux Table"."Amount 10");
                            end;
                        end;
                    }
                    textelement(interessesquenaocontrolam)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'InteressesQueNaoControlam';

                        trigger OnBeforePassVariable()
                        begin
                            InteressesQueNaoControlam := FormatAmount("UNILEO Aux Table"."Amount 12");
                        end;
                    }
                    textelement(totalpatrimonioliquido)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalPatrimonioLiquido';

                        trigger OnBeforePassVariable()
                        begin
                            TotalPatrimonioLiquido := FormatAmount("UNILEO Aux Table"."Amount 13");
                            if ID_Registo = '230' then begin
                                TotalPatrimonioLiquido := FormatAmount("UNILEO Aux Table"."Amount 1" +
                                                      "UNILEO Aux Table"."Amount 14" +
                                                      "UNILEO Aux Table"."Amount 15" +
                                                      "UNILEO Aux Table"."Amount 2" +
                                                      "UNILEO Aux Table"."Amount 16" +
                                                      "UNILEO Aux Table"."Amount 3" +
                                                      "UNILEO Aux Table"."Amount 4" +
                                                      "UNILEO Aux Table"."Amount 5" +
                                                      "UNILEO Aux Table"."Amount 17" +
                                                      "UNILEO Aux Table"."Amount 6" +
                                                      "UNILEO Aux Table"."Amount 7" +
                                                      "UNILEO Aux Table"."Amount 8" +
                                                      "UNILEO Aux Table"."Amount 9" +
                                                      "UNILEO Aux Table"."Amount 10" +
                                                      "UNILEO Aux Table"."Amount 12");
                            end;
                        end;
                    }

                    trigger OnPreXmlItem()
                    begin
                        "UNILEO Aux Table".SetRange("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DAPL, gDStartDate));
                    end;
                }
            }
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
                    Caption = 'Options';
                    field(Year; YearFilter)
                    {
                        Caption = 'Year';
                        trigger OnValidate()
                        begin
                            MakeDateFilter;
                        end;
                    }
                    field(Period; PeriodNumber)
                    {
                        Caption = 'Period';
                        trigger OnValidate()
                        begin
                            MakeDateFilter;
                        end;
                    }
                    field(StartDate1; gDStartDate)
                    {
                        Caption = 'Start Date';
                        Editable = false;
                    }
                    field(EndDate1; gDEndDate)
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
            InitParameters;
        end;
    }

    trigger OnPostXmlPort()
    begin
        XMLFileName := Entidade + Ano + Periodo + Periodicidade + 'DAPL.XML';
        currXMLport.Filename(XMLFileName);
        gXMLFileName := XMLFileName;
    end;

    trigger OnPreXmlPort()
    begin
        gRecCompInfo.Get;
        MakeDateFilter;
        GetValues;
        Clear("UNILEO Aux Table");
    end;

    var
        gRecCompInfo: Record "Company Information";
        gOptPeriodType: Option D,S,M,T,A;
        gDate: Date;
        XMLFileName: Text;
        FromWebservices: Boolean;
        gXMLFileName: Text;
        gToWebServices: Boolean;
        YearFilter: Integer;
        PeriodNumber: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14";
        UNILEOMgt: Codeunit "UNILEO Management";
        gDStartDate: Date;
        gDEndDate: Date;
        gDPreviousDate: Date;
        gDPreviousStartDate: Date;
        Text50003: Label 'You didnt selected any year.';
        Text50010: Label 'Generating information...\\';
        Text50011: Label '       #1##################';

    local procedure MakeDateFilter()
    var
        lRecDate: Record Date;
        lAux_Month: Integer;
        lAux_Year: Integer;
    begin
        if YearFilter = 0 then
            Error(Text50003);

        lAux_Year := YearFilter;
        lAux_Month := PeriodNumber + 1;

        case lAux_Month of
            1, 2, 3, 4, 5, 6, 7, 8, 9:
                Periodo := '00' + Format(lAux_Month);
            10, 11, 12, 13, 14:
                Periodo := '0' + Format(lAux_Month);
        end;

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
        Window: Dialog;
        UNILEOAuxTable: Record "UNILEO Aux Table";
        GLEntry: Record "G/L Entry";
        UNILEOAuxTable2: Record "UNILEO Aux Table";
        UNILEOMgt: Codeunit "UNILEO Management";
    begin
        Window.Open(Text50010 + Text50011);

        Clear(UNILEOAuxTable);
        Clear("UNILEO Aux Table");
        "UNILEO Aux Table".DeleteAll;
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DAPL);
        UNILEOAuxTable.SetRange("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DAPL, gDStartDate));
        UNILEOAuxTable.SetRange(Code1, '');
        if UNILEOAuxTable.FindSet then
            repeat
                "UNILEO Aux Table".Init;
                "UNILEO Aux Table".Integer := UNILEOAuxTable.Integer;
                "UNILEO Aux Table"."Report Type" := UNILEOAuxTable."Report Type";
                "UNILEO Aux Table".Code1 := UNILEOAuxTable.Code1;
                "UNILEO Aux Table".Code2 := UNILEOAuxTable.Code2;
                "UNILEO Aux Table"."Setup Start Date" := UNILEOAuxTable."Setup Start Date";
                "UNILEO Aux Table".Description1 := UNILEOAuxTable.Description1;
                Window.Update(1, "UNILEO Aux Table".Description1);
                if "UNILEO Aux Table".Integer <> 160 then begin    //Resultado integral
                    "UNILEO Aux Table"."Amount 1" := UNILEOMgt.DAPLGetFieldValue(1, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 2" := UNILEOMgt.DAPLGetFieldValue(2, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 3" := UNILEOMgt.DAPLGetFieldValue(3, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 4" := UNILEOMgt.DAPLGetFieldValue(4, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 5" := UNILEOMgt.DAPLGetFieldValue(5, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 6" := UNILEOMgt.DAPLGetFieldValue(6, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 7" := UNILEOMgt.DAPLGetFieldValue(7, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 8" := UNILEOMgt.DAPLGetFieldValue(8, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 9" := UNILEOMgt.DAPLGetFieldValue(9, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 10" := UNILEOMgt.DAPLGetFieldValue(10, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 14" := UNILEOMgt.DAPLGetFieldValue(14, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 15" := UNILEOMgt.DAPLGetFieldValue(15, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 16" := UNILEOMgt.DAPLGetFieldValue(16, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 17" := UNILEOMgt.DAPLGetFieldValue(17, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    if UNILEOAuxTable.Totaling = '' then
                        "UNILEO Aux Table"."Amount 11" := UNILEOMgt.DAPLGetFieldTotal(11, UNILEOAuxTable, "UNILEO Aux Table")
                    else
                        "UNILEO Aux Table"."Amount 11" := UNILEOMgt.DAPLGetFieldValue(11, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    if UNILEOAuxTable.Totaling = '' then
                        "UNILEO Aux Table"."Amount 12" := UNILEOMgt.DAPLGetFieldTotal(12, UNILEOAuxTable, "UNILEO Aux Table")
                    else
                        "UNILEO Aux Table"."Amount 12" := UNILEOMgt.DAPLGetFieldValue(12, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    if UNILEOAuxTable.Totaling = '' then
                        "UNILEO Aux Table"."Amount 13" := UNILEOMgt.DAPLGetFieldTotal(13, UNILEOAuxTable, "UNILEO Aux Table")
                    else
                        "UNILEO Aux Table"."Amount 13" := UNILEOMgt.DAPLGetFieldValue(13, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                end else begin
                    "UNILEO Aux Table"."Amount 1" := UNILEOMgt.DAPLGetFieldValue(1, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 2" := UNILEOMgt.DAPLGetFieldValue(2, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 3" := UNILEOMgt.DAPLGetFieldValue(3, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 4" := UNILEOMgt.DAPLGetFieldValue(4, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 5" := UNILEOMgt.DAPLGetFieldValue(5, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 6" := UNILEOMgt.DAPLGetFieldValue(6, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 7" := UNILEOMgt.DAPLGetFieldValue(7, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 8" := UNILEOMgt.DAPLGetFieldValue(8, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 9" := UNILEOMgt.DAPLGetFieldValue(9, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 10" := 0;
                    "UNILEO Aux Table"."Amount 14" := UNILEOMgt.DAPLGetFieldValue(14, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 15" := UNILEOMgt.DAPLGetFieldValue(15, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 16" := UNILEOMgt.DAPLGetFieldValue(16, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 17" := UNILEOMgt.DAPLGetFieldValue(17, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 11" := UNILEOMgt.DAPLGetFieldValue(11, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    "UNILEO Aux Table"."Amount 12" := 0;
                    "UNILEO Aux Table"."Amount 13" := UNILEOMgt.DAPLGetFieldValue(13, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                end;
                "UNILEO Aux Table".Insert;
                UNILEOAuxTable2.Init;
                UNILEOAuxTable2.Copy("UNILEO Aux Table");
                UNILEOAuxTable2.Code1 := 'TEMP';
                UNILEOAuxTable2.Insert;
            until UNILEOAuxTable.Next = 0;

        Clear(UNILEOAuxTable2);
        UNILEOAuxTable2.SetRange(Code1, 'Temp');
        UNILEOAuxTable2.DeleteAll;

        Window.Close;
    end;

    local procedure FormatAmount(pAmount: Decimal): Text[30]
    begin
        exit(Format(pAmount, 0, '<precision, 2:2><standard,9>'));
    end;

    local procedure CleanValues()
    var
        lRecUNILEOAuxTable: Record "UNILEO Aux Table";
    begin
        Clear(lRecUNILEOAuxTable);
        lRecUNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DAPL);
        lRecUNILEOAuxTable.ModifyAll("Amount 1", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 2", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 3", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 4", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 5", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 6", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 7", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 8", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 9", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 10", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 11", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 12", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 13", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 14", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 15", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 16", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 17", 0);
    end;

    local procedure InitParameters()
    begin
        gOptPeriodType := gOptPeriodType::M;
        YearFilter := Date2DMY(WorkDate, 3);
        PeriodNumber := Date2DMY(WorkDate, 2);
        MakeDateFilter;
    end;

    procedure SendXmlParameters(var L_OptPeriodType: Option D,S,M,T,A; var L_DStartDate: Date; var L_DEndDate: Date; var L_XMLFileName: Text; var L_YearFilter: Integer; var L_PeriodNumber: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14")
    begin
        gOptPeriodType := L_OptPeriodType;
        gDStartDate := L_DStartDate;
        gDEndDate := L_DEndDate;
        gXMLFileName := L_XMLFileName;
        YearFilter := L_YearFilter;
        PeriodNumber := L_PeriodNumber;
    end;
}

