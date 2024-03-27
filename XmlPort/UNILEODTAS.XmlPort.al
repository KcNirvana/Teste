xmlport 57012 "UNILEO DTAS"
{
    Direction = Export;
    Encoding = UTF8;

    schema
    {
        textelement(dtas)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            XmlName = 'DTAS';
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
                        Ano := Format(Date2DMY(EndingDate, 3));
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
                        case Date2DMY(EndingDate, 2) of
                            1, 2, 3, 4, 5, 6, 7, 8, 9:
                                Periodo := '00' + Format(Date2DMY(EndingDate, 2));
                            10, 11, 12, 13, 14:
                                Periodo := '0' + Format(Date2DMY(EndingDate, 2));
                        end;
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
                tableelement(resumomacrorubrica; Integer)
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'ResumoMacroRubrica';
                    SourceTableView = SORTING(Number) WHERE(Number = FILTER(10 | 210));
                    textelement(id_resumomacrorubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_ResumoMacroRubrica';
                    }
                    textelement(macrorubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'MacroRubrica';
                    }
                    textelement(totaldividavincendacurtopra)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDividaVincendaCurtoPrazo';
                    }
                    textelement(totaldividavincendamediolon)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDividaVincendaMedioLongoPrazo';
                    }
                    textelement(totalintervalosantiguidaded)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalIntervalosAntiguidadeDividaVencidaMenor90Dias';
                    }
                    textelement(totalintervalosantiguidaded1)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalIntervalosAntiguidadeDividaVencidaDe90a180Dias';
                    }
                    textelement(totalintervalosantiguidaded2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalIntervalosAntiguidadeDividaVencidaDe180a365Dias';
                    }
                    textelement(totalintervalosantiguidaded3)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalIntervalosAntiguidadeDividaVencidaMaior365Dias';
                    }
                    textelement(totalexcecoes)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalExcecoes';
                    }
                    textelement(totalpagamentosematraso)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalPagamentosEmAtraso';
                    }
                    textelement(totaldividapornaturezadespe)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDividaPorNaturezaDespesaCurtoPrazo';
                    }
                    textelement(totaldividapornaturezadespe1)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDividaPorNaturezaDespesaMedioLongoPrazo';
                    }
                    textelement(totalgeraldividapornatureza)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalGeralDividaPorNaturezaDespesa';
                    }

                    trigger OnAfterGetRecord()
                    begin
                        GetValues(ResumoMacroRubrica.Number);
                        ID_ResumoMacroRubrica := Format(ResumoMacroRubrica.Number);
                        MacroRubrica := DTAS_MacroRubrica[ResumoMacroRubrica.Number];

                        TotalDividaVincendaCurtoPra := FormatAmount(Valor_A);
                        TotalDividaVincendaMedioLon := FormatAmount(Valor_B);
                        TotalIntervalosAntiguidadeD := FormatAmount(Valor_1);
                        TotalIntervalosAntiguidadeD1 := FormatAmount(Valor_2);
                        TotalIntervalosAntiguidadeD2 := FormatAmount(Valor_3);
                        TotalIntervalosAntiguidadeD3 := FormatAmount(Valor_4);
                        TotalExcecoes := FormatAmount(Valor_D);
                        TotalPagamentosEmAtraso := FormatAmount(Valor_2 + Valor_3 + Valor_4);
                        TotalDividaPorNaturezaDespe := FormatAmount(Valor_F);
                        TotalDividaPorNaturezaDespe1 := FormatAmount(Valor_G);
                        TotalGeralDividaPorNatureza := FormatAmount(Valor_H);
                    end;
                }
                tableelement(resumorubricaagregadora; Integer)
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'ResumoRubricaAgregadora';
                    SourceTableView = SORTING(Number) WHERE(Number = FILTER(20 | 60 | 90 | 130 | 140 | 150 | 160 | 190 | 200 | 220 | 230 | 260 | 270 | 280));
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
                    textelement(resu_macrorubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'MacroRubrica';
                    }
                    textelement(totaldividavincendacurtopra1)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDividaVincendaCurtoPrazo';
                    }
                    textelement(totaldividavincendamediolon1)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDividaVincendaMedioLongoPrazo';
                    }
                    textelement(totalintervalosantiguidaded4)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalIntervalosAntiguidadeDividaVencidaMenor90Dias';
                    }
                    textelement(totalintervalosantiguidaded5)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalIntervalosAntiguidadeDividaVencidaDe90a180Dias';
                    }
                    textelement(totalintervalosantiguidaded6)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalIntervalosAntiguidadeDividaVencidaDe180a365Dias';
                    }
                    textelement(totalintervalosantiguidaded7)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalIntervalosAntiguidadeDividaVencidaMaior365Dias';
                    }
                    textelement(resu_totalexcecoes)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalExcecoes';
                    }
                    textelement(resu_totalpagamentosematras)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalPagamentosEmAtraso';
                    }
                    textelement(totaldividapornaturezadespe2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDividaPorNaturezaDespesaCurtoPrazo';
                    }
                    textelement(totaldividapornaturezadespe3)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDividaPorNaturezaDespesaMedioLongoPrazo';
                    }
                    textelement(totalgeraldividapornatureza1)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalGeralDividaPorNaturezaDespesa';
                    }

                    trigger OnAfterGetRecord()
                    begin
                        GetValues(ResumoRubricaAgregadora.Number);
                        ID_ResumoRubricaAgregadora := Format(ResumoRubricaAgregadora.Number);
                        Resu_MacroRubrica := DTAS_MacroRubrica[ResumoRubricaAgregadora.Number];
                        RubricaAgregadora := DTAS_RubricaAgregadora[ResumoRubricaAgregadora.Number];

                        TotalDividaVincendaCurtoPra1 := FormatAmount(Valor_A);
                        TotalDividaVincendaMedioLon1 := FormatAmount(Valor_B);
                        TotalIntervalosAntiguidadeD4 := FormatAmount(Valor_1);
                        TotalIntervalosAntiguidadeD5 := FormatAmount(Valor_2);
                        TotalIntervalosAntiguidadeD6 := FormatAmount(Valor_3);
                        TotalIntervalosAntiguidadeD7 := FormatAmount(Valor_4);
                        Resu_TotalExcecoes := FormatAmount(Valor_D);
                        Resu_TotalPagamentosEmAtras := FormatAmount(Valor_2 + Valor_3 + Valor_4);
                        TotalDividaPorNaturezaDespe2 := FormatAmount(Valor_F);
                        TotalDividaPorNaturezaDespe3 := FormatAmount(Valor_G);
                        TotalGeralDividaPorNatureza1 := FormatAmount(Valor_H);
                    end;
                }
            }
            textelement(registos)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'Registos';
                tableelement(registo; Integer)
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'Registo';
                    SourceTableView = SORTING(Number) WHERE(Number = FILTER(30 | 40 | 70 | 80 | 100 | 110 | 120 | 135 | 145 | 155 | 170 | 180 | 195 | 205 | 225 | 240 | 250 | 265 | 275 | 285));
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
                    textelement(registo_macrorubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'MacroRubrica';
                    }
                    textelement(dividavincendacurtoprazo)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'DividaVincendaCurtoPrazo';
                    }
                    textelement(dividavincendamediolongopra)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'DividaVincendaMedioLongoPrazo';
                    }
                    textelement(intervalosantiguidadedivida)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'IntervalosAntiguidadeDividaVencidaMenor90Dias';
                    }
                    textelement(intervalosantiguidadedivida1)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'IntervalosAntiguidadeDividaVencidaDe90a180Dias';
                    }
                    textelement(intervalosantiguidadedivida2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'IntervalosAntiguidadeDividaVencidaDe180a365Dias';
                    }
                    textelement(intervalosantiguidadedivida3)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'IntervalosAntiguidadeDividaVencidaMaior365Dias';
                    }
                    textelement(excecoes)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Excecoes';
                    }
                    textelement(pagamentosematraso)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'PagamentosEmAtraso';
                    }
                    textelement(totaldividapornaturezadespe4)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDividaPorNaturezaDespesaCurtoPrazo';
                    }
                    textelement(totaldividapornaturezadespe5)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDividaPorNaturezaDespesaMedioLongoPrazo';
                    }
                    textelement(totaldividapornaturezadespe6)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDividaPorNaturezaDespesa';
                    }

                    trigger OnAfterGetRecord()
                    var
                        PeriodIndex: Integer;
                    begin
                        GetValues(Registo.Number);
                        ID_Registo := Format(Registo.Number);
                        Rubrica := DTAS_Rubrica[Registo.Number];
                        Registo_RubricaAgregadora := DTAS_RubricaAgregadora[Registo.Number];
                        Registo_MacroRubrica := DTAS_MacroRubrica[Registo.Number];

                        DividaVincendaCurtoPrazo := FormatAmount(Valor_A);
                        DividaVincendaMedioLongoPra := FormatAmount(Valor_B);
                        IntervalosAntiguidadeDivida := FormatAmount(Valor_1);
                        IntervalosAntiguidadeDivida1 := FormatAmount(Valor_2);
                        IntervalosAntiguidadeDivida2 := FormatAmount(Valor_3);
                        IntervalosAntiguidadeDivida3 := FormatAmount(Valor_4);
                        Excecoes := FormatAmount(Valor_D);
                        PagamentosEmAtraso := FormatAmount(Valor_2 + Valor_3 + Valor_4);
                        TotalDividaPorNaturezaDespe4 := FormatAmount(Valor_F);
                        TotalDividaPorNaturezaDespe5 := FormatAmount(Valor_G);
                        TotalDividaPorNaturezaDespe6 := FormatAmount(Valor_H);
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
                    field(Ano; PeriodYear)
                    {
                        Caption = 'Year';

                        trigger OnValidate()
                        begin
                            if (PeriodoReport + 2 > 12) then
                                EndingDate := DMY2Date(31, 12, PeriodYear)
                            else
                                EndingDate := DMY2Date(1, PeriodoReport + 2, PeriodYear) - 1;
                            EndingDate := CalcDate('<CM>', EndingDate);
                        end;
                    }
                    field(Mes; PeriodoReport)
                    {
                        Caption = 'Period';

                        trigger OnValidate()
                        begin
                            if (PeriodoReport + 2 > 12) then
                                EndingDate := DMY2Date(31, 12, PeriodYear)
                            else
                                EndingDate := DMY2Date(1, PeriodoReport + 2, PeriodYear) - 1;
                            EndingDate := CalcDate('<CM>', EndingDate);
                        end;
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
        XMLFileName := Entidade + Ano + Periodo + Periodicidade + 'DTAS.XML';
        currXMLport.Filename(XMLFileName);

        gXMLFileName := XMLFileName;
    end;

    trigger OnPreXmlPort()
    begin
        gRecCompInfo.Get;
        ReportConfiguration();
    end;

    var
        gRecCompInfo: Record "Company Information";
        PeriodoReport: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14";
        PeriodYear: Integer;
        EndingDate: Date;
        PeriodLength: DateFormula;
        DTAS_Descricao: array[500] of Text;
        DTAS_Somatorio: array[500] of Text;
        DTAS_Economica: array[500] of Text;
        DTAS_Rubrica: array[500] of Text;
        DTAS_RubricaAgregadora: array[500] of Text;
        DTAS_MacroRubrica: array[500] of Text;
        Valor_A: Decimal;
        Valor_B: Decimal;
        Valor_C: Decimal;
        Valor_D: Decimal;
        Valor_E: Decimal;
        Valor_F: Decimal;
        Valor_G: Decimal;
        Valor_H: Decimal;
        Valor_1: Decimal;
        Valor_2: Decimal;
        Valor_3: Decimal;
        Valor_4: Decimal;
        XMLFileName: Text;
        gXMLFileName: Text;

    local procedure ReportConfiguration()
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
        j: Integer;
        UNILEOMgt: Codeunit "UNILEO Management";
    begin
        Clear(UNILEOAuxTable);
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DTAS);
        UNILEOAuxTable.SetRange("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DTAS, EndingDate));
        j := 1;
        if UNILEOAuxTable.FindSet then
            repeat
                DTAS_Economica[UNILEOAuxTable.Integer] := UNILEOAuxTable.Description2;
                DTAS_Descricao[UNILEOAuxTable.Integer] := UNILEOAuxTable.Description1;
                DTAS_Somatorio[UNILEOAuxTable.Integer] := UNILEOAuxTable.Totaling + UNILEOAuxTable.Totaling2;
                DTAS_Rubrica[UNILEOAuxTable.Integer] := UNILEOAuxTable.Code1;
                DTAS_MacroRubrica[UNILEOAuxTable.Integer] := UNILEOAuxTable.Code3;
                DTAS_RubricaAgregadora[UNILEOAuxTable.Integer] := UNILEOAuxTable.Code2;
                j := j + 1;
            until UNILEOAuxTable.Next = 0;
    end;

    local procedure GetValues(Posicao: Integer)
    var
        DateDiff: Integer;
        VendorLedgerEntry: Record "Vendor Ledger Entry";
    begin
        Clear(VendorLedgerEntry);
        Clear(Valor_A);
        Clear(Valor_B);
        Clear(Valor_C);
        Clear(Valor_D);
        Clear(Valor_1);
        Clear(Valor_2);
        Clear(Valor_3);
        Clear(Valor_4);
        Clear(Valor_E);
        Clear(Valor_F);
        Clear(Valor_G);
        Clear(Valor_H);

        if DTAS_Somatorio[Posicao] <> '' then begin
            VendorLedgerEntry.Reset;
            VendorLedgerEntry.SetRange("Document Type", VendorLedgerEntry."Document Type"::Invoice);
            VendorLedgerEntry.SetFilter("Posting Date", '..%1', EndingDate);
            VendorLedgerEntry.SetFilter("Date Filter", '..%1', EndingDate);
            VendorLedgerEntry.SetFilter("Global Dimension 1 Code", DTAS_Somatorio[Posicao]);
            VendorLedgerEntry.SetFilter("Remaining Amt. (LCY)", '<0');
            if VendorLedgerEntry.FindSet then
                repeat
                    VendorLedgerEntry.CalcFields("Remaining Amt. (LCY)");
                    DateDiff := (EndingDate - VendorLedgerEntry."Due Date");
                    case true of
                        DateDiff < -365:
                            Valor_B += VendorLedgerEntry."Remaining Amt. (LCY)";
                        (DateDiff > -365) and (DateDiff < 0):
                            Valor_A += VendorLedgerEntry."Remaining Amt. (LCY)";
                        (DateDiff >= 0) and (DateDiff < 90):
                            Valor_1 += VendorLedgerEntry."Remaining Amt. (LCY)";
                        (DateDiff >= 90) and (DateDiff < 180):
                            Valor_2 += VendorLedgerEntry."Remaining Amt. (LCY)";
                        (DateDiff >= 180) and (DateDiff <= 365):
                            Valor_3 += VendorLedgerEntry."Remaining Amt. (LCY)";
                        DateDiff > 365:
                            Valor_4 += VendorLedgerEntry."Remaining Amt. (LCY)";
                    end;
                until VendorLedgerEntry.Next = 0;

            Valor_C := Valor_1 + Valor_2 + Valor_3 + Valor_4;
            Valor_D := 0;
            Valor_E := Valor_2 + Valor_3 + Valor_4 + Valor_D;
            Valor_F := Valor_A + Valor_C;
            Valor_G := Valor_B;
            Valor_H := Valor_F + Valor_G;
        end;
    end;

    local procedure FormatAmount(pAmount: Decimal): Text[30]
    begin
        exit(Format(pAmount, 0, '<precision, 2:2><standard,9>'));
    end;

    local procedure InitParameters()
    begin
        if EndingDate = 0D then
            EndingDate := WorkDate;
        PeriodYear := Date2DMY(WorkDate, 3);
        PeriodoReport := Date2DMY(WorkDate, 2);
        EndingDate := DMY2Date(1, PeriodoReport, PeriodYear);
        EndingDate := CalcDate('<CM>', EndingDate);
    end;

    procedure SendXmlParameters(var L_PeriodoReport: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14"; var L_PeriodYear: Integer; var L_EndingDate: Date; var L_XMLFileName: Text)
    begin
        PeriodoReport := L_PeriodoReport;
        PeriodYear := L_PeriodYear;
        EndingDate := L_EndingDate;
        gXMLFileName := L_XMLFileName;
    end;
}

