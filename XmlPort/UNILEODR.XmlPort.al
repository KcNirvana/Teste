xmlport 57011 "UNILEO DR"
{
    Direction = Export;
    Encoding = UTF8;

    schema
    {
        textelement(dr)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            XmlName = 'DR';
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
                    SourceTableView = SORTING(Integer, "Report Type", Code1) ORDER(Ascending) WHERE("Report Type" = CONST(DR), Code3 = FILTER(= ''), Code1 = FILTER(<> ''));
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
                    textelement(ra_notas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'Notas';
                    }
                    textelement(ra_totalanocorrente)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalAnoCorrente';
                    }
                    textelement(ra_totalanoanterior)
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
                        RA_Notas := ResumoRubricaAgregadora.Code4;
                        RA_TotalAnoCorrente := FormatAmount(GetFieldValue(1, ResumoRubricaAgregadora));
                        RA_TotalAnoAnterior := FormatAmount(GetFieldValue(2, ResumoRubricaAgregadora));
                    end;

                    trigger OnPreXmlItem()
                    begin
                        ResumoRubricaAgregadora.SetRange("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DR, gDStartDate));
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
                    SourceTableView = SORTING(Integer, "Report Type", Code1) ORDER(Ascending) WHERE("Report Type" = CONST(DR), Code3 = FILTER(<> ''), Code1 = FILTER(<> ''), "Column Option" = FILTER(Col3));
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
                    textelement(r_notas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'Notas';
                    }
                    textelement(r_valoranocorrente)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ValorAnoCorrente';
                    }
                    textelement(r_valoranoanterior)
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
                        R_Notas := Registo.Code4;
                        R_ValorAnoCorrente := FormatAmount(GetFieldValue(1, Registo));
                        R_ValorAnoAnterior := FormatAmount(GetFieldValue(2, Registo));
                    end;

                    trigger OnPreXmlItem()
                    begin
                        Registo.SetRange("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DR, gDStartDate));
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
        XMLFileName := Entidade + Ano + Periodo + Periodicidade + 'DR.XML';
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

        gDPreviousStartDate := CalcDate('<-1Y>', gDStartDate);
        gDPreviousDate := CalcDate('<-1Y>', gDEndDate);
    end;

    local procedure FormatAmount(pAmount: Decimal): Text[30]
    begin
        pAmount := pAmount * (-1);

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

    local procedure GetValues()
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
    begin

        Clear(UNILEOAuxTable);
        Clear(UNILEOAuxTable3);

        UNILEOAuxTable3.DeleteAll;

        //Rubrica
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DR);
        UNILEOAuxTable.SetRange("Column Option", UNILEOAuxTable."Column Option"::Col3);
        UNILEOAuxTable.SetRange("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DR, gDStartDate));
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
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DR);
        UNILEOAuxTable.SetRange("Column Option", UNILEOAuxTable."Column Option"::Col2);
        UNILEOAuxTable.SetRange("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DR, gDStartDate));
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
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DR);
        UNILEOAuxTable.SetRange("Column Option", UNILEOAuxTable."Column Option"::Col1);
        UNILEOAuxTable.SetRange("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DR, gDStartDate));
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
        QueryUnileo: Query "UNILEO BLC DR";
    begin
        Clear(FieldAmount);

        if (UNILEOAuxTable.Totaling2 = '') and (UNILEOAuxTable.Totaling = '') then exit(0);

        Clear(QueryUnileo);
        if (UNILEOAuxTable.Totaling2 <> '') and (UNILEOAuxTable.Totaling <> '') then
            UNILEOAuxTable.Totaling := '|' + UNILEOAuxTable.Totaling;

        QueryUnileo.SetFilter(QueryUnileo.NoPCCFilter, UNILEOAuxTable.Totaling2 + UNILEOAuxTable.Totaling);
        case FieldNo of
            1:
                QueryUnileo.SetFilter(QueryUnileo.DateFilter, '%1..%2', gDStartDate, gDEndDate);
            2:
                QueryUnileo.SetFilter(QueryUnileo.DateFilter, '%1..%2', gDPreviousStartDate, gDPreviousDate);
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
        UNILEOAuxTable2.SetRange("Report Type", "UNILEO Report Type"::DR);

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

    local procedure GetMacroRubrica(UNILEOAuxTable1: Record "UNILEO Aux Table"): Text
    var
        UNILEOAuxTable4: Record "UNILEO Aux Table";
    begin
        if (UNILEOAuxTable1."Column Option" = UNILEOAuxTable1."Column Option"::Col2) then
            exit(UNILEOAuxTable1.Code3);

        if (UNILEOAuxTable1."Column Option" = UNILEOAuxTable1."Column Option"::Col3) then
            UNILEOAuxTable4.Reset;
        UNILEOAuxTable4.SetRange(UNILEOAuxTable4."Report Type", "UNILEO Report Type"::DR);
        UNILEOAuxTable4.SetRange(UNILEOAuxTable4.Code1, UNILEOAuxTable1.Code3);
        UNILEOAuxTable4.SetRange(UNILEOAuxTable4."Column Option", UNILEOAuxTable1."Column Option"::Col2);
        if UNILEOAuxTable4.FindFirst then
            exit(UNILEOAuxTable4.Code3);
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

