xmlport 57010 "UNILEO DOREC"
{
    Direction = Export;
    Encoding = UTF8;

    schema
    {
        textelement(dorec)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            XmlName = 'DOREC';
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
                        Ano := Format(PeriodYear);
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
                textelement("1r_resumoportipodespesareceita")
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'ResumoPorTipoDespesaReceita';
                    textelement("1r_id_resumoportipodespesarece")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_ResumoPorTipoDespesaReceita';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_ID_ResumoPorTipoDespesaRece" := '1';
                        end;
                    }
                    textelement("1r_tiporeceitadespesa")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TipoReceitaDespesa';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TipoReceitaDespesa" := '1';
                        end;
                    }
                    textelement("1r_totalprevisoescorrigidas")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalPrevisoesCorrigidas';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalPrevisoesCorrigidas" := FormatAmount(gDTotalPrevisoesCorrigidas);
                        end;
                    }
                    textelement("1r_totalprevisoesporliquidar")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalPrevisoesPorLiquidar';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalPrevisoesPorLiquidar" := FormatAmount(gDPrevisoesPorLiquidar);
                        end;
                    }
                    textelement("1r_totalreceitasporcobrardeper")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasPorCobrarDePeriodosAnteriores';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalReceitasPorCobrarDePer" := FormatAmount(gDTotalReceitasPorCobrarDePeriodos);
                        end;
                    }
                    textelement("1r_totalreceitasliquidadas")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasLiquidadas';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalReceitasLiquidadas" := FormatAmount(gDTotalReceitasLiquidadas);
                        end;
                    }
                    textelement("1r_totalliquidacoesanuladas")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLiquidacoesAnuladas';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalLiquidacoesAnuladas" := FormatAmount(gDTotalLiquidacoesAnuladas);
                        end;
                    }
                    textelement("1r_totalreceitascobradasbrutas")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasCobradasBrutas';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalReceitasCobradasBrutas" := FormatAmount(gDTotalReceitasCobradasBrutas);
                        end;
                    }
                    textelement("1r_totalreembolsosrestituicoes")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReembolsosRestituicoesEmitidos';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalReembolsosRestituicoes" := FormatAmount(gDTotalReembolsosRestituicoesEmiti);
                        end;
                    }
                    textelement("1rtotalreembolsosrestituicoes1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReembolsosRestituicoesPagos';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalReembolsosRestituicoes1" := FormatAmount(gDTotalReembolsosRestituicoesPagos);
                        end;
                    }
                    textelement("1r_totalreceitascobradasliquid")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasCobradasLiquidasDePeriodosAnteriores';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalReceitasCobradasLiquid" := FormatAmount(gDReceitasCobradasLiquidasDeP);
                        end;
                    }
                    textelement("1rtotalreceitascobradasliquid1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasCobradasLiquidasDoPeriodoCorrente';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalReceitasCobradasLiquid1" := FormatAmount(gDReceitasCobradasLiquidasDoP);
                        end;
                    }
                    textelement("1r_totalgeralreceitascobradasl")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalGeralReceitasCobradasLiquidas';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalGeralReceitasCobradasL" := FormatAmount(gDReceitasCobradasLiquidasTot);
                        end;
                    }
                    textelement("1r_totalrecebimentosdiferidos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalRecebimentosDiferidos';

                        trigger OnBeforePassVariable()
                        begin
                            currXMLport.Skip;
                        end;
                    }
                    textelement("1r_totalreceitasporcobrarfinal")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasPorCobrarFinalDoPeriodo';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalReceitasPorCobrarFinal" := FormatAmount(gDReceitasPorCobrarFinalDoPer);
                        end;
                    }
                    textelement("1r_totalliquidacoesdeperiodosf")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLiquidacoesDePeriodosFuturosAnoNmais1';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalLiquidacoesDePeriodosF" := FormatAmount(gDLiquidPerFuturosN1);
                        end;
                    }
                    textelement("1rtotalliquidacoesdeperiodosf1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLiquidacoesDePeriodosFuturosAnoNmais2';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalLiquidacoesDePeriodosF1" := FormatAmount(gDLiquidPerFuturosN2);
                        end;
                    }
                    textelement("1rtotalliquidacoesdeperiodosf2")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLiquidacoesDePeriodosFuturosAnoNmais3';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalLiquidacoesDePeriodosF2" := FormatAmount(gDLiquidPerFuturosN3);
                        end;
                    }
                    textelement("1rtotalliquidacoesdeperiodosf3")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLiquidacoesDePeriodosFuturosAnoNmais4';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalLiquidacoesDePeriodosF3" := FormatAmount(gDLiquidPerFuturosN4);
                        end;
                    }
                    textelement("1rtotalliquidacoesdeperiodosf4")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLiquidacoesDePeriodosFuturosAnosSeguintes';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalLiquidacoesDePeriodosF4" := FormatAmount(gDLiquidPerFuturosNN);
                        end;
                    }

                    trigger OnBeforePassVariable()
                    begin
                        CalcExpTypeTotals(0);
                    end;
                }
                textelement("2r_resumoportipodespesareceita")
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'ResumoPorTipoDespesaReceita';
                    textelement("2r_id_resumoportipodespesarece")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_ResumoPorTipoDespesaReceita';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_ID_ResumoPorTipoDespesaRece" := '2';
                        end;
                    }
                    textelement("2r_tiporeceitadespesa")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TipoReceitaDespesa';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TipoReceitaDespesa" := '2';
                        end;
                    }
                    textelement("2r_totalprevisoescorrigidas")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalPrevisoesCorrigidas';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalPrevisoesCorrigidas" := FormatAmount(gDTotalPrevisoesCorrigidas);
                        end;
                    }
                    textelement("2r_totalprevisoesporliquidar")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalPrevisoesPorLiquidar';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalPrevisoesPorLiquidar" := FormatAmount(gDPrevisoesPorLiquidar);
                        end;
                    }
                    textelement("2r_totalreceitasporcobrardeper")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasPorCobrarDePeriodosAnteriores';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalReceitasPorCobrarDePer" := FormatAmount(gDTotalReceitasPorCobrarDePeriodos);
                        end;
                    }
                    textelement("2r_totalreceitasliquidadas")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasLiquidadas';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalReceitasLiquidadas" := FormatAmount(gDTotalReceitasLiquidadas);
                        end;
                    }
                    textelement("2r_totalliquidacoesanuladas")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLiquidacoesAnuladas';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalLiquidacoesAnuladas" := FormatAmount(gDTotalLiquidacoesAnuladas);
                        end;
                    }
                    textelement("2r_totalreceitascobradasbrutas")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasCobradasBrutas';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalReceitasCobradasBrutas" := FormatAmount(gDTotalReceitasCobradasBrutas);
                        end;
                    }
                    textelement("2r_totalreembolsosrestituicoes")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReembolsosRestituicoesEmitidos';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalReembolsosRestituicoes" := FormatAmount(gDTotalReembolsosRestituicoesEmiti);
                        end;
                    }
                    textelement("2rtotalreembolsosrestituicoes1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReembolsosRestituicoesPagos';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalReembolsosRestituicoes1" := FormatAmount(gDTotalReembolsosRestituicoesPagos);
                        end;
                    }
                    textelement("2r_totalreceitascobradasliquid")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasCobradasLiquidasDePeriodosAnteriores';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalReceitasCobradasLiquid" := FormatAmount(gDReceitasCobradasLiquidasDeP);
                        end;
                    }
                    textelement("2rtotalreceitascobradasliquid1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasCobradasLiquidasDoPeriodoCorrente';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalReceitasCobradasLiquid1" := FormatAmount(gDReceitasCobradasLiquidasDoP);
                        end;
                    }
                    textelement("2r_totalgeralreceitascobradasl")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalGeralReceitasCobradasLiquidas';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalGeralReceitasCobradasL" := FormatAmount(gDReceitasCobradasLiquidasTot);
                        end;
                    }
                    textelement("2r_totalrecebimentosdiferidos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'TotalRecebimentosDiferidos';

                        trigger OnBeforePassVariable()
                        begin
                            currXMLport.Skip;
                        end;
                    }
                    textelement("2r_totalreceitasporcobrarfinal")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasPorCobrarFinalDoPeriodo';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalReceitasPorCobrarFinal" := FormatAmount(gDReceitasPorCobrarFinalDoPer);
                        end;
                    }
                    textelement("2r_totalliquidacoesdeperiodosf")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLiquidacoesDePeriodosFuturosAnoNmais1';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalLiquidacoesDePeriodosF" := FormatAmount(gDLiquidPerFuturosN1);
                        end;
                    }
                    textelement("2rtotalliquidacoesdeperiodosf1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLiquidacoesDePeriodosFuturosAnoNmais2';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalLiquidacoesDePeriodosF1" := FormatAmount(gDLiquidPerFuturosN2);
                        end;
                    }
                    textelement("2rtotalliquidacoesdeperiodosf2")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLiquidacoesDePeriodosFuturosAnoNmais3';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalLiquidacoesDePeriodosF2" := FormatAmount(gDLiquidPerFuturosN3);
                        end;
                    }
                    textelement("2rtotalliquidacoesdeperiodosf3")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLiquidacoesDePeriodosFuturosAnoNmais4';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalLiquidacoesDePeriodosF3" := FormatAmount(gDLiquidPerFuturosN4);
                        end;
                    }
                    textelement("2rtotalliquidacoesdeperiodosf4")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLiquidacoesDePeriodosFuturosAnosSeguintes';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalLiquidacoesDePeriodosF4" := FormatAmount(gDLiquidPerFuturosNN);
                        end;
                    }

                    trigger OnBeforePassVariable()
                    begin
                        CalcExpTypeTotals(1);
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
                    SourceTableView = SORTING(Integer, "Report Type", Code1);
                    UseTemporary = true;
                    textelement(id_registo)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_Registo';

                        trigger OnBeforePassVariable()
                        begin
                            gIntIDRegisto := gIntIDRegisto + 1;
                            ID_Registo := Format(gIntIDRegisto);
                        end;
                    }
                    textelement(tipoorcamento)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TipoOrcamento';

                        trigger OnBeforePassVariable()
                        begin
                            if CopyStr("UNILEO Aux Table".Code1, 2, 1) = '0' then
                                TipoOrcamento := 'E'
                            else
                                TipoOrcamento := 'NA';
                        end;
                    }
                    textelement(programa)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Programa';

                        trigger OnBeforePassVariable()
                        begin
                            Programa := '004';
                        end;
                    }
                    textelement(medida)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Medida';

                        trigger OnBeforePassVariable()
                        begin
                            Medida := '065';
                        end;
                    }
                    textelement(fontefinanciamento)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'FonteFinanciamento';

                        trigger OnBeforePassVariable()
                        begin
                            FonteFinanciamento := "UNILEO Aux Table".Code3;
                        end;
                    }
                    textelement(economica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Economica';

                        trigger OnBeforePassVariable()
                        begin
                            Economica := DelChr("UNILEO Aux Table".Code2, '=', '.');
                        end;
                    }
                    textelement(registo_tiporeceitadespesa)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TipoReceitaDespesa';

                        trigger OnBeforePassVariable()
                        begin
                            case gRecDimValue2."Receipt Expense Type" of
                                gRecDimValue2."Receipt Expense Type"::Current:
                                    Registo_TipoReceitaDespesa := '1';
                                gRecDimValue2."Receipt Expense Type"::Capital:
                                    Registo_TipoReceitaDespesa := '2';
                            end;
                        end;
                    }
                    textelement(previsoescorrigidas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'PrevisoesCorrigidas';

                        trigger OnBeforePassVariable()
                        begin
                            PrevisoesCorrigidas := FormatAmount("UNILEO Aux Table"."BA Debit Amount 1");
                        end;
                    }
                    textelement(previsoesporliquidar)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'PrevisoesPorLiquidar';

                        trigger OnBeforePassVariable()
                        begin
                            PrevisoesPorLiquidar := FormatAmount("UNILEO Aux Table"."Amount 1");
                        end;
                    }
                    textelement(receitasporcobrardeperiodos)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReceitasPorCobrarDePeriodosAnteriores';

                        trigger OnBeforePassVariable()
                        begin
                            ReceitasPorCobrarDePeriodos := FormatAmount("UNILEO Aux Table"."BA Credit Amount 1");
                        end;
                    }
                    textelement(receitasliquidadas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReceitasLiquidadas';

                        trigger OnBeforePassVariable()
                        begin
                            ReceitasLiquidadas := FormatAmount("UNILEO Aux Table"."BA Debit Amount 2");
                        end;
                    }
                    textelement(liquidacoesanuladas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'LiquidacoesAnuladas';

                        trigger OnBeforePassVariable()
                        begin
                            LiquidacoesAnuladas := FormatAmount("UNILEO Aux Table"."BA Credit Amount 2");
                        end;
                    }
                    textelement(receitascobradasbrutas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReceitasCobradasBrutas';

                        trigger OnBeforePassVariable()
                        begin
                            ReceitasCobradasBrutas := FormatAmount("UNILEO Aux Table"."BA Debit Amount 3");
                        end;
                    }
                    textelement(reembolsosrestituicoesemiti)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReembolsosRestituicoesEmitidos';

                        trigger OnBeforePassVariable()
                        begin
                            ReembolsosRestituicoesEmiti := FormatAmount("UNILEO Aux Table"."BA Credit Amount 3");
                        end;
                    }
                    textelement(reembolsosrestituicoespagos)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReembolsosRestituicoesPagos';

                        trigger OnBeforePassVariable()
                        begin
                            ReembolsosRestituicoesPagos := FormatAmount("UNILEO Aux Table"."BA Debit Amount 4");
                        end;
                    }
                    textelement(receitascobradasliquidasdep)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReceitasCobradasLiquidasDePeriodosAnteriores';

                        trigger OnBeforePassVariable()
                        begin
                            ReceitasCobradasLiquidasDeP := FormatAmount("UNILEO Aux Table"."Amount 8");
                        end;
                    }
                    textelement(receitascobradasliquidasdop)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReceitasCobradasLiquidasDoPeriodoCorrente';

                        trigger OnBeforePassVariable()
                        begin
                            ReceitasCobradasLiquidasDoP := FormatAmount("UNILEO Aux Table"."Amount 9");
                        end;
                    }
                    textelement(receitascobradasliquidastot)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReceitasCobradasLiquidasTotal';

                        trigger OnBeforePassVariable()
                        begin
                            ReceitasCobradasLiquidasTot := FormatAmount("UNILEO Aux Table"."Amount 8" + "UNILEO Aux Table"."Amount 9");
                        end;
                    }
                    textelement(recebimentosdiferidos)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Zero;
                        TextType = Text;
                        XmlName = 'RecebimentosDiferidos';

                        trigger OnBeforePassVariable()
                        begin
                            currXMLport.Skip;
                        end;
                    }
                    textelement(receitasporcobrarfinaldoper)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReceitasPorCobrarFinalDoPeriodo';

                        trigger OnBeforePassVariable()
                        begin
                            ReceitasPorCobrarFinalDoPer := FormatAmount("UNILEO Aux Table"."BA Credit Amount 4");
                        end;
                    }
                    textelement(liquidacoesdeperiodosfuturo)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'LiquidacoesDePeriodosFuturosAnoNmais1';

                        trigger OnBeforePassVariable()
                        begin
                            LiquidacoesDePeriodosFuturo := FormatAmount("UNILEO Aux Table"."Amount 3");
                        end;
                    }
                    textelement(liquidacoesdeperiodosfuturo1)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'LiquidacoesDePeriodosFuturosAnoNmais2';

                        trigger OnBeforePassVariable()
                        begin
                            LiquidacoesDePeriodosFuturo1 := FormatAmount("UNILEO Aux Table"."Amount 4");
                        end;
                    }
                    textelement(liquidacoesdeperiodosfuturo2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'LiquidacoesDePeriodosFuturosAnoNmais3';

                        trigger OnBeforePassVariable()
                        begin
                            LiquidacoesDePeriodosFuturo2 := FormatAmount("UNILEO Aux Table"."Amount 5");
                        end;
                    }
                    textelement(liquidacoesdeperiodosfuturo3)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'LiquidacoesDePeriodosFuturosAnoNmais4';

                        trigger OnBeforePassVariable()
                        begin
                            LiquidacoesDePeriodosFuturo3 := FormatAmount("UNILEO Aux Table"."Amount 6");
                        end;
                    }
                    textelement(liquidacoesdeperiodosfuturo4)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'LiquidacoesDePeriodosFuturosAnosSeguintes';

                        trigger OnBeforePassVariable()
                        begin
                            LiquidacoesDePeriodosFuturo4 := FormatAmount("UNILEO Aux Table"."Amount 7");
                        end;
                    }

                    trigger OnAfterGetRecord()
                    begin
                        Clear(gRecDimValue2);
                        gRecDimValue2.Get(BudgetReportConfig."Rubric Dimension", "UNILEO Aux Table".Code1);
                    end;

                    trigger OnPreXmlItem()
                    begin
                        SetData;

                        "UNILEO Aux Table".Reset;
                        if not "UNILEO Aux Table".FindSet then
                            Error(Text001);

                        gIntIDRegisto := 0;
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
            InitParameters;
            MakeDateFilter;
        end;
    }

    trigger OnPostXmlPort()
    var
        File: File;
    begin

        XMLFileName := Entidade + Ano + Periodo + Periodicidade + 'DOREC.XML';
        currXMLport.Filename(XMLFileName);
        gXMLFileName := XMLFileName;
    end;

    trigger OnPreXmlPort()
    begin
        gRecCompInfo.Get;
        MakeDateFilter;
        ValidateConfiguration;
    end;

    var
        gRecCompInfo: Record "Company Information";
        gRecDimValue: Record "Dimension Value";
        gRecDimValue2: Record "Dimension Value";
        BudgetReportConfig: Record "Budget Report Configuration";
        gIntYear: Integer;
        lIntInteger: Integer;
        gOptPeriodType: Option S,M;
        gDStartDate: Date;
        gDEndDate: Date;
        gDTotalPrevisoesCorrigidas: Decimal;
        gDTotalReceitasPorCobrarDePeriodos: Decimal;
        gDTotalReceitasLiquidadas: Decimal;
        gDTotalLiquidacoesAnuladas: Decimal;
        gDTotalReceitasCobradasBrutas: Decimal;
        gDTotalReembolsosRestituicoesEmiti: Decimal;
        gDTotalReembolsosRestituicoesPagos: Decimal;
        gDReceitasCobradasLiquidasDeP: Decimal;
        gDReceitasCobradasLiquidasDoP: Decimal;
        gDReceitasCobradasLiquidasTot: Decimal;
        gDReceitasPorCobrarFinalDoPer: Decimal;
        gDPrevisoesPorLiquidar: Decimal;
        gDRecebimentosdiferidos: Decimal;
        gDLiquidPerFuturosN1: Decimal;
        gDLiquidPerFuturosN2: Decimal;
        gDLiquidPerFuturosN3: Decimal;
        gDLiquidPerFuturosN4: Decimal;
        gDLiquidPerFuturosNN: Decimal;
        XMLFileName: Text;
        gIntIDRegisto: Integer;
        Text001: Label 'There is no data to process.';
        gXMLFileName: Text;
        gToWebServices: Boolean;
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
        case gOptPeriodType of

            gOptPeriodType::S:
                begin
                    Periodo := Format(PeriodNumber, 3, '<integer,3><filler character,0>');
                    UNILEOMgt.WeekStartEndDate(gDStartDate, gDEndDate, PeriodNumber, PeriodYear);
                    gDStartDate := DMY2Date(1, 1, PeriodYear);
                end;

            gOptPeriodType::M:
                begin
                    Periodo := Format(PeriodNumber, 3, '<integer,3><filler character,0>');
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

    local procedure FormatAmount(pAmount: Decimal): Text[30]
    begin
        if pAmount < 0 then
            pAmount := pAmount * (-1);

        exit(Format(pAmount, 0, '<precision, 2:2><standard,9>'));
    end;

    local procedure SetData()
    var
        GLQuery: Query "UNILEO DODES DOREC";
        lDAmount1: Decimal;
        UNILEOAuxTable: Record "UNILEO Aux Table";
        DateSetup: Date;
    begin
        lIntInteger := 1;

        Clear(gRecDimValue);
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DOREC, gDStartDate);

        gRecDimValue.SetFilter("Dimension Code", BudgetReportConfig."Rubric Dimension");
        gRecDimValue.SetRange("Budget Dim Type", gRecDimValue."Budget Dim Type"::Revenue);
        gRecDimValue.SetRange(Totaling, '');
        if gRecDimValue.FindSet then
            repeat
                Clear(UNILEOAuxTable);
                UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DOREC);
                UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
                if UNILEOAuxTable.FindSet then
                    repeat
                        SetDataField(UNILEOAuxTable.Totaling, UNILEOAuxTable.Integer / 10);
                    until UNILEOAuxTable.Next = 0;
            until gRecDimValue.Next = 0;
    end;

    local procedure SetDataField(pAccFilter: Text; pFieldNo: Integer)
    var
        GLQuery: Query "UNILEO DODES DOREC";
        lDAmount: Decimal;
        gDate: Date;
    begin
        GLQuery.SetFilter(No, pAccFilter);
        GLQuery.SetFilter(DateFilter, '%1..%2', gDStartDate, gDEndDate);
        if gRecDimValue.Totaling <> '' then
            GLQuery.SetFilter(Rubric_Code, gRecDimValue.Totaling)
        else
            GLQuery.SetFilter(Rubric_Code, gRecDimValue.Code);
        GLQuery.Open;

        while GLQuery.Read do begin

            lDAmount := GetValuesByDim(pAccFilter, gDStartDate, gDEndDate, GLQuery.Global_Dimension_1_Code,
                                            GLQuery.Shortcut_Dimension_3_Code, gRecDimValue.Code, gRecDimValue.Totaling);

            "UNILEO Aux Table".Reset;
            "UNILEO Aux Table".SetRange("Report Type", "UNILEO Report Type"::" ");
            "UNILEO Aux Table".SetRange(Code1, gRecDimValue.Code);
            "UNILEO Aux Table".SetRange(Code2, GLQuery.Global_Dimension_1_Code);
            "UNILEO Aux Table".SetRange(Code3, GLQuery.Shortcut_Dimension_3_Code);
            if "UNILEO Aux Table".FindSet then begin
                case pFieldNo of
                    1:
                        "UNILEO Aux Table"."BA Debit Amount 1" := lDAmount;
                    2:
                        "UNILEO Aux Table"."BA Credit Amount 1" := lDAmount;
                    3:
                        "UNILEO Aux Table"."BA Debit Amount 2" := lDAmount;
                    4:
                        "UNILEO Aux Table"."BA Credit Amount 2" := lDAmount;
                    5:
                        "UNILEO Aux Table"."BA Debit Amount 3" := lDAmount;
                    6:
                        "UNILEO Aux Table"."BA Credit Amount 3" := lDAmount;
                    7:
                        "UNILEO Aux Table"."BA Debit Amount 4" := lDAmount;
                    8:
                        "UNILEO Aux Table"."BA Credit Amount 4" := lDAmount;
                    9:
                        "UNILEO Aux Table"."Amount 1" := lDAmount;
                    10:
                        "UNILEO Aux Table"."Amount 2" := lDAmount;
                    11:
                        "UNILEO Aux Table"."Amount 3" := lDAmount;
                    12:
                        "UNILEO Aux Table"."Amount 4" := lDAmount;
                    13:
                        "UNILEO Aux Table"."Amount 5" := lDAmount;
                    14:
                        "UNILEO Aux Table"."Amount 6" := lDAmount;
                    15:
                        "UNILEO Aux Table"."Amount 7" := lDAmount;
                    16:
                        "UNILEO Aux Table"."Amount 8" := lDAmount;
                    17:
                        "UNILEO Aux Table"."Amount 9" := lDAmount;
                end;

                "UNILEO Aux Table".Modify;
            end else begin
                "UNILEO Aux Table".Reset;
                "UNILEO Aux Table".Init;
                "UNILEO Aux Table".Integer := lIntInteger;
                "UNILEO Aux Table"."Report Type" := "UNILEO Aux Table"."Report Type"::" ";
                "UNILEO Aux Table".Code1 := gRecDimValue.Code;
                "UNILEO Aux Table".Code2 := GLQuery.Global_Dimension_1_Code;
                "UNILEO Aux Table".Code3 := GLQuery.Shortcut_Dimension_3_Code;
                "UNILEO Aux Table".Description1 := gRecDimValue.Name;
                case pFieldNo of
                    1:
                        "UNILEO Aux Table"."BA Debit Amount 1" := lDAmount;
                    2:
                        "UNILEO Aux Table"."BA Credit Amount 1" := lDAmount;
                    3:
                        "UNILEO Aux Table"."BA Debit Amount 2" := lDAmount;
                    4:
                        "UNILEO Aux Table"."BA Credit Amount 2" := lDAmount;
                    5:
                        "UNILEO Aux Table"."BA Debit Amount 3" := lDAmount;
                    6:
                        "UNILEO Aux Table"."BA Credit Amount 3" := lDAmount;
                    7:
                        "UNILEO Aux Table"."BA Debit Amount 4" := lDAmount;
                    8:
                        "UNILEO Aux Table"."BA Credit Amount 4" := lDAmount;
                    9:
                        "UNILEO Aux Table"."Amount 1" := lDAmount;
                    10:
                        "UNILEO Aux Table"."Amount 2" := lDAmount;
                    11:
                        "UNILEO Aux Table"."Amount 3" := lDAmount;
                    12:
                        "UNILEO Aux Table"."Amount 4" := lDAmount;
                    13:
                        "UNILEO Aux Table"."Amount 5" := lDAmount;
                    14:
                        "UNILEO Aux Table"."Amount 6" := lDAmount;
                    15:
                        "UNILEO Aux Table"."Amount 7" := lDAmount;
                    16:
                        "UNILEO Aux Table"."Amount 8" := lDAmount;
                    17:
                        "UNILEO Aux Table"."Amount 9" := lDAmount;
                end;

                "UNILEO Aux Table".Insert;
                lIntInteger += 1;
            end;

        end;
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

    local procedure ClearTotalVars()
    begin
        Clear(gDTotalPrevisoesCorrigidas);
        Clear(gDTotalReceitasPorCobrarDePeriodos);
        Clear(gDTotalReceitasLiquidadas);
        Clear(gDTotalLiquidacoesAnuladas);
        Clear(gDTotalReceitasCobradasBrutas);
        Clear(gDTotalReembolsosRestituicoesEmiti);
        Clear(gDTotalReembolsosRestituicoesPagos);
        Clear(gDReceitasCobradasLiquidasDeP);
        Clear(gDReceitasCobradasLiquidasDoP);
        Clear(gDReceitasCobradasLiquidasTot);
        Clear(gDReceitasPorCobrarFinalDoPer);
        Clear(gDPrevisoesPorLiquidar);
        Clear(gDRecebimentosdiferidos);
        Clear(gDLiquidPerFuturosN1);
        Clear(gDLiquidPerFuturosN2);
        Clear(gDLiquidPerFuturosN3);
        Clear(gDLiquidPerFuturosN4);
        Clear(gDLiquidPerFuturosNN);
    end;

    local procedure CalcExpTypeTotals(pExpType: Option Current,Capital)
    var
        DateSetup: Date;
        AccountFilter: array[24] of Text;
    begin
        ClearTotalVars;
        Clear(gRecDimValue);
        Clear(AccountFilter);
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DOREC, gDStartDate);

        AccountFilter[1] := GetDateSetupLine(10, DateSetup);
        AccountFilter[2] := GetDateSetupLine(20, DateSetup);
        AccountFilter[3] := GetDateSetupLine(30, DateSetup);
        AccountFilter[4] := GetDateSetupLine(40, DateSetup);
        AccountFilter[5] := GetDateSetupLine(50, DateSetup);
        AccountFilter[6] := GetDateSetupLine(60, DateSetup);
        AccountFilter[7] := GetDateSetupLine(70, DateSetup);
        AccountFilter[10] := GetDateSetupLine(80, DateSetup);
        AccountFilter[11] := GetDateSetupLine(90, DateSetup);
        AccountFilter[12] := GetDateSetupLine(100, DateSetup);
        AccountFilter[13] := GetDateSetupLine(110, DateSetup);
        AccountFilter[14] := GetDateSetupLine(120, DateSetup);
        AccountFilter[15] := GetDateSetupLine(130, DateSetup);
        AccountFilter[16] := GetDateSetupLine(140, DateSetup);
        AccountFilter[17] := GetDateSetupLine(150, DateSetup);
        AccountFilter[18] := GetDateSetupLine(160, DateSetup);
        AccountFilter[19] := GetDateSetupLine(170, DateSetup);

        gRecDimValue.Reset();
        gRecDimValue.SetFilter("Dimension Code", BudgetReportConfig."Rubric Dimension");
        gRecDimValue.SetRange("Budget Dim Type", gRecDimValue."Budget Dim Type"::Revenue);
        gRecDimValue.SetRange(Totaling, '');
        if pExpType = pExpType::Current then
            gRecDimValue.SetRange("Receipt Expense Type", gRecDimValue."Receipt Expense Type"::Current)
        else
            gRecDimValue.SetRange("Receipt Expense Type", gRecDimValue."Receipt Expense Type"::Capital);
        if gRecDimValue.FindSet then
            repeat
                gDTotalPrevisoesCorrigidas += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[1], gDStartDate, gDEndDate);
                gDTotalReceitasPorCobrarDePeriodos += GetExpTypeValues(gRecDimValue.Code, AccountFilter[2], gDStartDate, gDEndDate);
                gDTotalReceitasLiquidadas += GetExpTypeValues(gRecDimValue.Code, AccountFilter[3], gDStartDate, gDEndDate);
                gDTotalLiquidacoesAnuladas += GetExpTypeValues(gRecDimValue.Code, AccountFilter[4], gDStartDate, gDEndDate);
                gDTotalReceitasCobradasBrutas += GetExpTypeValues(gRecDimValue.Code, AccountFilter[5], gDStartDate, gDEndDate);
                gDTotalReembolsosRestituicoesEmiti += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[6], gDStartDate, gDEndDate);
                gDTotalReembolsosRestituicoesPagos += GetExpTypeValues(gRecDimValue.Code, AccountFilter[7], gDStartDate, gDEndDate);
                gDReceitasCobradasLiquidasDeP += GetExpTypeValues(gRecDimValue.Code, AccountFilter[18], gDStartDate, gDEndDate);
                gDReceitasCobradasLiquidasDoP += GetExpTypeValues(gRecDimValue.Code, AccountFilter[19], gDStartDate, gDEndDate);
                gDReceitasCobradasLiquidasTot += GetExpTypeValues(gRecDimValue.Code, AccountFilter[18], gDStartDate, gDEndDate) +
                                                GetExpTypeValues(gRecDimValue.Code, AccountFilter[19], gDStartDate, gDEndDate);
                gDReceitasPorCobrarFinalDoPer += GetExpTypeValues(gRecDimValue.Code, AccountFilter[10], gDStartDate, gDEndDate);
                gDPrevisoesPorLiquidar += GetExpTypeValues(gRecDimValue.Code, AccountFilter[11], gDStartDate, gDEndDate);
                gDRecebimentosdiferidos += GetExpTypeValues(gRecDimValue.Code, AccountFilter[12], gDStartDate, gDEndDate);
                gDLiquidPerFuturosN1 += GetExpTypeValues(gRecDimValue.Code, AccountFilter[13], gDStartDate, gDEndDate);
                gDLiquidPerFuturosN2 += GetExpTypeValues(gRecDimValue.Code, AccountFilter[14], gDStartDate, gDEndDate);
                gDLiquidPerFuturosN3 += GetExpTypeValues(gRecDimValue.Code, AccountFilter[15], gDStartDate, gDEndDate);
                gDLiquidPerFuturosN4 += GetExpTypeValues(gRecDimValue.Code, AccountFilter[16], gDStartDate, gDEndDate);
                gDLiquidPerFuturosNN += GetExpTypeValues(gRecDimValue.Code, AccountFilter[17], gDStartDate, gDEndDate);
            until gRecDimValue.Next = 0;
    end;

    local procedure ValidateConfiguration()
    begin
        BudgetReportConfig.Get;
        BudgetReportConfig.TestField("Rubric Dimension");
    end;

    local procedure InitParameters()
    begin
        gOptPeriodType := gOptPeriodType::S;
        PeriodNumber := Date2DWY(WorkDate, 2);
        PeriodYear := Date2DWY(WorkDate, 3);
        UNILEOMgt.WeekStartEndDate(gDStartDate, gDEndDate, PeriodNumber, PeriodYear);
    end;

    local procedure GetDateSetupLine(LineNo: Integer; DateSetup: Date): Text
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
    begin
        Clear(UNILEOAuxTable);
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DOREC);
        UNILEOAuxTable.SetRange(Integer, LineNo);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        if UNILEOAuxTable.FindLast then
            exit(UNILEOAuxTable.Totaling)
        else
            exit('');
    end;

    procedure SendXmlParameters(L_OptPeriodType: Option S,M; L_DStartDate: Date; L_DEndDate: Date; L_XMLFileName: Text; L_PeriodNumber: Integer; L_PeriodYear: Integer)
    begin
        gOptPeriodType := L_OptPeriodType;
        gDStartDate := L_DStartDate;
        gDEndDate := L_DEndDate;
        gXMLFileName := L_XMLFileName;
        PeriodNumber := L_PeriodNumber;
        PeriodYear := L_PeriodYear;
    end;

    local procedure GetExpTypeValues(RubricCode: Code[20]; AccountFilter: Text; StartDate: Date; EndDate: Date) FieldAmount: Decimal
    var
        GLEntryByRubric: Query "GLEntry By Rubric";
    begin
        Clear(GLEntryByRubric);
        GLEntryByRubric.SetRange(Rubric_Code, RubricCode);
        GLEntryByRubric.SetRange(Posting_Date, StartDate, EndDate);
        GLEntryByRubric.SetFilter(G_L_Account, AccountFilter);
        GLEntryByRubric.Open;
        while GLEntryByRubric.Read do
            FieldAmount := FieldAmount + GLEntryByRubric.Sum_Amount;
    end;
}

