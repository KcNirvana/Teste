xmlport 57008 "UNILEO DFC"
{
    Direction = Export;
    Encoding = UTF8;

    schema
    {
        textelement(dfc)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            XmlName = 'DFC';
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
                        Ano := Format(YearFilter);
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
                        Periodicidade := 'M';
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
            textelement(resumo)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'Resumo';
                tableelement(resumorubricaagregadora; "UNILEO Aux Table")
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'ResumoRubricaAgregadora';
                    SourceTableView = SORTING(Integer, "Report Type", Code1) ORDER(Ascending) WHERE("Report Type" = CONST(DFC), Code3 = FILTER(= ''), Code1 = FILTER(<> ''));
                    textelement(id_resumorubricaagregadora)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_ResumoRubricaAgregadora';
                    }
                    textelement(rubricaagregadora)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'RubricaAgregadora';
                    }
                    textelement(notas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'Notas';
                    }
                    textelement(totalanocorrente)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalAnoCorrente';
                    }
                    textelement(totalanoanterior)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalAnoAnterior';
                    }

                    trigger OnAfterGetRecord()
                    begin
                        ID_ResumoRubricaAgregadora := Format(ResumoRubricaAgregadora.Integer);
                        RubricaAgregadora := ResumoRubricaAgregadora.Code1;
                        Notas := ResumoRubricaAgregadora.Code4;
                        TotalAnoCorrente := FormatAmount(GetFieldValue(2, ResumoRubricaAgregadora));
                        TotalAnoAnterior := FormatAmount(GetFieldValue(1, ResumoRubricaAgregadora));
                    end;

                    trigger OnPreXmlItem()
                    begin
                        ResumoRubricaAgregadora.SetRange("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DFC, gDStartDate));
                    end;
                }
            }
            textelement(registos)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'Registos';
                tableelement(registo; "UNILEO Aux Table")
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'Registo';
                    SourceTableView = SORTING(Integer, "Report Type", Code1) ORDER(Ascending) WHERE("Report Type" = CONST(DFC), Code3 = FILTER(<> ''), Code1 = FILTER(<> ''), "Column Option" = FILTER(Col3));
                    textelement(id_registo)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_Registo';
                    }
                    textelement(rubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Rubrica';
                    }
                    textelement(registo_rubricaagregadora)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'RubricaAgregadora';
                    }
                    textelement(registo_notas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'Notas';
                    }
                    textelement(valoranocorrente)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ValorAnoCorrente';
                    }
                    textelement(valoranoanterior)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ValorAnoAnterior';
                    }

                    trigger OnAfterGetRecord()
                    begin
                        ID_Registo := Format(Registo.Integer);
                        Rubrica := Registo.Code1;
                        Registo_RubricaAgregadora := Registo.Code3;
                        Registo_Notas := Registo.Code4;
                        ValorAnoCorrente := FormatAmount(GetFieldValue(2, Registo));
                        ValorAnoAnterior := FormatAmount(GetFieldValue(1, Registo));
                    end;

                    trigger OnPreXmlItem()
                    begin
                        Registo.SetRange("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DFC, gDStartDate));
                    end;
                }
            }
            textelement(registosconciliacao)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'RegistosConciliacao';
                tableelement(conciliacao; "UNILEO Aux Table")
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'Conciliacao';
                    SourceTableView = SORTING(Integer, "Report Type", Code1) ORDER(Ascending) WHERE("Report Type" = CONST(DFC), Code3 = FILTER(<> ''), Code1 = FILTER(<> ''), "Column Option" = FILTER(Col3), Integer = FILTER(> 4150));
                    textelement(id_conciliacao)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_Conciliacao';
                    }
                    textelement(conciliacao_rubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Rubrica';
                    }
                    textelement(conc_rubricaagregadora)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'RubricaAgregadora';
                    }
                    textelement(conciliacao_notas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'Notas';
                    }
                    textelement(conc_valoranocorrente)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ValorAnoCorrente';
                    }
                    textelement(conc_valoranoanterior)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ValorAnoAnterior';
                    }

                    trigger OnAfterGetRecord()
                    begin
                        ID_Conciliacao := Format(Conciliacao.Integer);
                        Conciliacao_Rubrica := Conciliacao.Code1;
                        Conc_RubricaAgregadora := Conciliacao.Code3;
                        Conciliacao_Notas := Conciliacao.Code4;
                        Conc_ValorAnoCorrente := FormatAmount(GetFieldValue(2, Conciliacao));
                        Conc_ValorAnoAnterior := FormatAmount(GetFieldValue(1, Conciliacao));
                    end;

                    trigger OnPreXmlItem()
                    begin
                        Conciliacao.SetRange("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DFC, gDStartDate));
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
                    field(YearFilter; YearFilter)
                    {
                        BlankZero = true;
                        Caption = 'Year';
                    }
                    field(PeriodNumber; PeriodNumber)
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
            MakeDateFilter;
        end;
    }

    trigger OnPostXmlPort()
    begin
        XMLFileName := Entidade + Ano + Periodo + Periodicidade + 'DFC.XML';
        currXMLport.Filename(XMLFileName);
        gXMLFileName := XMLFileName;
    end;

    trigger OnPreXmlPort()
    begin
        gRecCompInfo.Get;
        MakeDateFilter;
        GetValues;
    end;

    var
        gRecCompInfo: Record "Company Information";
        gDStartDate: Date;
        gDEndDate: Date;
        XMLFileName: Text;
        YearFilter: Integer;
        PeriodNumber: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14";
        gDPreviousDate: Date;
        gDPreviousStartDate: Date;
        Text50003: Label 'You didnt selected any year.';
        UNILEOAuxTable3: Record "UNILEO Aux Table" temporary;
        UNILEOAuxTable2: Record "UNILEO Aux Table" temporary;
        gContador: Integer;
        gXMLFileName: Text;
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
                    Periodo := '001'
                end;
            PeriodNumber::"2":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 2, YearFilter));
                    Periodo := '002'
                end;
            PeriodNumber::"3":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 3, YearFilter));
                    Periodo := '003'
                end;
            PeriodNumber::"4":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 4, YearFilter));
                    Periodo := '004'
                end;
            PeriodNumber::"5":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 5, YearFilter));
                    Periodo := '005'
                end;
            PeriodNumber::"6":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 6, YearFilter));
                    Periodo := '006'
                end;
            PeriodNumber::"7":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 7, YearFilter));
                    Periodo := '007'
                end;
            PeriodNumber::"8":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 8, YearFilter));
                    Periodo := '008'
                end;
            PeriodNumber::"9":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 9, YearFilter));
                    Periodo := '009'
                end;
            PeriodNumber::"10":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 10, YearFilter));
                    Periodo := '010'
                end;
            PeriodNumber::"11":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 11, YearFilter));
                    Periodo := '011'
                end;
            PeriodNumber::"12":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 12, YearFilter));
                    Periodo := '012'
                end;
            PeriodNumber::"13":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 12, YearFilter));
                    Periodo := '013'
                end;
            PeriodNumber::"14":
                begin
                    gDEndDate := ClosingDate(DMY2Date(31, 12, YearFilter));
                    Periodo := '014'
                end;
        end;
    end;

    local procedure FormatAmount(pAmount: Decimal): Text[30]
    begin
        exit(Format(pAmount, 0, '<precision, 2:2><standard,9>'));
    end;

    local procedure GetFieldValue(FieldNo: Integer; UNILEOAuxTable: Record "UNILEO Aux Table") FieldAmount: Decimal
    begin
        Clear(FieldAmount);

        UNILEOAuxTable3.Get(UNILEOAuxTable.Integer, UNILEOAuxTable."Report Type", UNILEOAuxTable.Code1, UNILEOAuxTable."Setup Start Date");
        case FieldNo of
            1:
                FieldAmount := UNILEOAuxTable3."Amount 1";
            2:
                FieldAmount := UNILEOAuxTable3."Amount 2";
        end;

        exit(FieldAmount);
    end;

    procedure SetFilters(lYearFilter: Integer; lPeriodNumber: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14")
    begin
        YearFilter := lYearFilter;
        PeriodNumber := lPeriodNumber;
    end;

    local procedure GetValues()
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
        DateSetup: Date;
    begin

        Clear(UNILEOAuxTable);
        Clear(UNILEOAuxTable3);

        UNILEOAuxTable3.DeleteAll;
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DFC, gDStartDate);
        ResumoRubricaAgregadora.SetRange("Setup Start Date", DateSetup);
        Registo.SetRange("Setup Start Date", DateSetup);
        Conciliacao.SetRange("Setup Start Date", DateSetup);

        //rubrica
        UNILEOAuxTable.Reset;
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DFC);
        UNILEOAuxTable.SetRange("Column Option", UNILEOAuxTable."Column Option"::Col3);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        if UNILEOAuxTable.FindSet then
            repeat
                Clear(UNILEOAuxTable3);
                UNILEOAuxTable3."Amount 1" := GetFieldValue3(1, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 2" := GetFieldValue3(2, UNILEOAuxTable);
                UNILEOAuxTable3.Integer := UNILEOAuxTable.Integer;
                UNILEOAuxTable3."Report Type" := UNILEOAuxTable."Report Type";
                UNILEOAuxTable3.Code1 := UNILEOAuxTable.Code1;
                UNILEOAuxTable3.Description1 := UNILEOAuxTable.Description1;
                UNILEOAuxTable3."Setup Start Date" := UNILEOAuxTable."Setup Start Date";
                UNILEOAuxTable3.Bold := UNILEOAuxTable.Bold;
                UNILEOAuxTable3.Code4 := UNILEOAuxTable.Code4;
                UNILEOAuxTable3.Totaling := UNILEOAuxTable.Totaling;
                UNILEOAuxTable3.Totaling2 := UNILEOAuxTable.Totaling2;
                UNILEOAuxTable3.Code3 := UNILEOAuxTable.Code3;
                UNILEOAuxTable3."Column Option" := UNILEOAuxTable."Column Option";
                UNILEOAuxTable3.Insert;
                UNILEOAuxTable2 := UNILEOAuxTable3;
                UNILEOAuxTable2.Insert;
            until UNILEOAuxTable.Next = 0;

        //rubrica agregadora
        UNILEOAuxTable.Reset;
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DFC);
        UNILEOAuxTable.SetRange("Column Option", UNILEOAuxTable."Column Option"::Col2);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        if UNILEOAuxTable.FindSet then
            repeat
                Clear(UNILEOAuxTable3);
                UNILEOAuxTable3."Amount 1" := GetFieldValue2(1, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 2" := GetFieldValue2(2, UNILEOAuxTable);
                UNILEOAuxTable3.Integer := UNILEOAuxTable.Integer;
                UNILEOAuxTable3."Report Type" := UNILEOAuxTable."Report Type";
                UNILEOAuxTable3.Code1 := UNILEOAuxTable.Code1;
                UNILEOAuxTable3.Description1 := UNILEOAuxTable.Description1;
                UNILEOAuxTable3."Setup Start Date" := UNILEOAuxTable."Setup Start Date";
                UNILEOAuxTable3.Bold := UNILEOAuxTable.Bold;
                UNILEOAuxTable3.Code4 := UNILEOAuxTable.Code4;
                UNILEOAuxTable3.Totaling := UNILEOAuxTable.Totaling;
                UNILEOAuxTable3.Totaling2 := UNILEOAuxTable.Totaling2;
                UNILEOAuxTable3.Code3 := UNILEOAuxTable.Code3;
                UNILEOAuxTable3."Column Option" := UNILEOAuxTable."Column Option";
                UNILEOAuxTable3.Insert;
                UNILEOAuxTable2 := UNILEOAuxTable3;
                UNILEOAuxTable2.Insert;
            until UNILEOAuxTable.Next = 0;


        //macro rubrica
        UNILEOAuxTable.Reset;
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DFC);
        UNILEOAuxTable.SetRange("Column Option", UNILEOAuxTable."Column Option"::Col1);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        if UNILEOAuxTable.FindSet then
            repeat
                Clear(UNILEOAuxTable3);
                UNILEOAuxTable3."Amount 1" := GetFieldValue2(1, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 2" := GetFieldValue2(2, UNILEOAuxTable);
                UNILEOAuxTable3.Integer := UNILEOAuxTable.Integer;
                UNILEOAuxTable3."Report Type" := UNILEOAuxTable."Report Type";
                UNILEOAuxTable3.Code1 := UNILEOAuxTable.Code1;
                UNILEOAuxTable3.Description1 := UNILEOAuxTable.Description1;
                UNILEOAuxTable3."Setup Start Date" := UNILEOAuxTable."Setup Start Date";
                UNILEOAuxTable3.Bold := UNILEOAuxTable.Bold;
                UNILEOAuxTable3.Code4 := UNILEOAuxTable.Code4;
                UNILEOAuxTable3.Totaling := UNILEOAuxTable.Totaling;
                UNILEOAuxTable3.Totaling2 := UNILEOAuxTable.Totaling2;
                UNILEOAuxTable3.Code3 := UNILEOAuxTable.Code3;
                UNILEOAuxTable3."Column Option" := UNILEOAuxTable."Column Option";
                UNILEOAuxTable3.Insert;
                UNILEOAuxTable2 := UNILEOAuxTable3;
                UNILEOAuxTable2.Insert;
            until UNILEOAuxTable.Next = 0;
        gContador := UNILEOAuxTable3.Count;
    end;

    local procedure GetFieldValue3(FieldNo: Integer; UNILEOAuxTable: Record "UNILEO Aux Table") FieldAmount: Decimal
    var
        QueryUnileo: Query "UNILEO DFC";
    begin
        Clear(FieldAmount);

        if (UNILEOAuxTable.Totaling2 = '') and (UNILEOAuxTable.Totaling = '') then exit(0);

        Clear(QueryUnileo);
        if (UNILEOAuxTable.Totaling2 <> '') and (UNILEOAuxTable.Totaling <> '') then
            UNILEOAuxTable.Totaling := '|' + UNILEOAuxTable.Totaling;

        QueryUnileo.SetFilter(QueryUnileo.CashFlowNoFilter, UNILEOAuxTable.Totaling2 + UNILEOAuxTable.Totaling);
        case FieldNo of
            1:
                QueryUnileo.SetFilter(QueryUnileo.DateFilter, '%1..%2', 0D, gDPreviousDate);
            2:
                QueryUnileo.SetFilter(QueryUnileo.DateFilter, '%1..%2', gDStartDate, gDEndDate);
        end;

        QueryUnileo.Open;
        while QueryUnileo.Read do
            FieldAmount := FieldAmount + QueryUnileo.Sum_Amount;

        exit(FieldAmount);
    end;

    local procedure GetFieldValue2(FieldNo: Integer; UNILEOAuxTable: Record "UNILEO Aux Table") FieldAmount: Decimal
    begin
        Clear(FieldAmount);

        if (UNILEOAuxTable.Totaling2 = '') and (UNILEOAuxTable.Totaling = '') then exit(0);

        UNILEOAuxTable2.Reset;
        UNILEOAuxTable2.SetRange("Report Type", "UNILEO Report Type"::DFC);
        UNILEOAuxTable2.SetRange("Setup Start Date", UNILEOAuxTable."Setup Start Date");
        if (UNILEOAuxTable.Code1 = 'DFCX01') or (UNILEOAuxTable.Code1 = 'DFCX02') then
            UNILEOAuxTable2.SetRange(Code3, UNILEOAuxTable.Code1);

        if (UNILEOAuxTable.Totaling2 <> '') and (UNILEOAuxTable.Totaling <> '') then
            UNILEOAuxTable.Totaling := '|' + UNILEOAuxTable.Totaling;

        UNILEOAuxTable2.SetFilter(Code1, UNILEOAuxTable.Totaling2 + UNILEOAuxTable.Totaling);
        if UNILEOAuxTable2.FindSet then
            repeat
                case FieldNo of
                    1:
                        FieldAmount := FieldAmount + UNILEOAuxTable2."Amount 1";
                    2:
                        FieldAmount := FieldAmount + UNILEOAuxTable2."Amount 2";
                end;
            until UNILEOAuxTable2.Next = 0;

        exit(FieldAmount);
    end;

    local procedure InitParameters()
    begin
        YearFilter := Date2DMY(WorkDate, 3);
        PeriodNumber := Date2DMY(WorkDate, 2);
        if PeriodNumber > 0 then
            PeriodNumber := PeriodNumber - 1;
    end;

    procedure SendXmlParameters(var L_DStartDate: Date; var L_DEndDate: Date; var L_YearFilter: Integer; var L_PeriodNumber: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14"; var L_XMLFileName: Text)
    begin
        gDStartDate := L_DStartDate;
        gDEndDate := L_DEndDate;
        YearFilter := L_YearFilter;
        PeriodNumber := L_PeriodNumber;
        gXMLFileName := L_XMLFileName;
    end;
}

