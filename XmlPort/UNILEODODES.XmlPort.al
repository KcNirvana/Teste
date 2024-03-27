xmlport 57009 "UNILEO DODES"
{
    Direction = Export;
    Encoding = UTF8;

    schema
    {
        textelement(dodes)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            XmlName = 'DODES';
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
                    textelement("1r_totaldespesasporpagarperiod")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDespesasPorPagarPeriodosAnteriores';

                        trigger OnBeforePassVariable()
                        begin
                            if Periodo = '14' then
                                "1R_TotalDespesasPorPagarPeriod" := FormatAmount(0)
                            else
                                "1R_TotalDespesasPorPagarPeriod" := FormatAmount(gDTotalDespesasPorPagarPeriodosAnt);
                        end;
                    }
                    textelement("1r_totaldotacoescorrigidas")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDotacoesCorrigidas';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalDotacoesCorrigidas" := FormatAmount(gDTotalDotacoesCorrigidas);
                        end;
                    }
                    textelement("1r_totalcativos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCativos';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalCativos" := FormatAmount(-gDTotalCativos);
                        end;
                    }
                    textelement("1r_totaldescativos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDescativos';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalDescativos" := FormatAmount(gDTotalDescativos);
                        end;
                    }
                    textelement("1r_totaldotacoesdisponiveis")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDotacoesDisponiveis';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalDotacoesDisponiveis" := FormatAmount(-gDTotalDotacoesDisponiveis);
                        end;
                    }
                    textelement("1r_totalcabimentos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCabimentos';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalCabimentos" := FormatAmount(-gDTotalCabimentos);
                        end;
                    }
                    textelement("1r_totalcompromissos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissos';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalCompromissos" := FormatAmount(-gDTotalCompromissos);
                        end;
                    }
                    textelement("1r_totalobrigacoes")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoes';

                        trigger OnBeforePassVariable()
                        begin
                            //"1R_TotalObrigacoes" := FormatAmount(gDTotalCompromissos)
                            "1R_TotalObrigacoes" := FormatAmount(-gDTotalObrigacoes);
                        end;
                    }
                    textelement("1r_totaldespesaspagasbrutas")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDespesasPagasBrutas';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalDespesasPagasBrutas" := FormatAmount(-gDTotalDespesasPagasBrutas);
                        end;
                    }
                    textelement("1r_totalreposicoesabatidasaosp")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReposicoesAbatidasAosPagamentosEmitidas';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalReposicoesAbatidasAosP" := FormatAmount(gDTotalRepAbatidasPagEmitidas);
                        end;
                    }
                    textelement("1rtotalreposicoesabatidasaosp1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReposicoesAbatidasAosPagamentosRecebidas';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalReposicoesAbatidasAosP1" := FormatAmount(gDTotalRepAbatidasPagRecebidas);
                        end;
                    }
                    textelement("1r_totaldespesaspagasliquidasd")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDespesasPagasLiquidasDePeriodosAnteriores';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalDespesasPagasLiquidasD" := FormatAmount(-gDTotalDespesasPagasLiquidasDePeri);
                        end;
                    }
                    textelement("1rtotaldespesaspagasliquidasd1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDespesasPagasLiquidasDoPeriodoCorrente';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalDespesasPagasLiquidasD1" := FormatAmount(-gDTotalDespesasPagasLiquidasDoPeri);
                        end;
                    }
                    textelement("1r_totalgeraldespesaspagasliqu")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalGeralDespesasPagasLiquidas';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalGeralDespesasPagasLiqu" := FormatAmount(-gDTotalDespesasPagasLiquidasTotal);
                        end;
                    }
                    textelement("1r_totalcompromissosatransitar")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissosATransitar';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalCompromissosATransitar" := FormatAmount(0);
                        end;
                    }
                    textelement("1r_totalobrigacoesporpagar")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoesPorPagar';

                        trigger OnBeforePassVariable()
                        begin
                            if ((gOptPeriodType = gOptPeriodType::M) and (PeriodNumber = 14)) then
                                "1R_TotalObrigacoesPorPagar" := FormatAmount(-gDTotalObrigacoesPorPagar)
                            else
                                "1R_TotalObrigacoesPorPagar" := FormatAmount(0);
                        end;
                    }
                    textelement("1r_totalcompromissosassumidosp")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissosAssumidosParaPeriodosFuturosAnoNmais1';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalCompromissosAssumidosP" := FormatAmount(gDTotalCompAssumidosPeriodosFuturosN1);
                        end;
                    }
                    textelement("1rtotalcompromissosassumidosp1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissosAssumidosParaPeriodosFuturosAnoNmais2';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalCompromissosAssumidosP1" := FormatAmount(gDTotalCompAssumidosPeriodosFuturosN2);
                        end;
                    }
                    textelement("1rtotalcompromissosassumidosp2")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissosAssumidosParaPeriodosFuturosAnoNmais3';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalCompromissosAssumidosP2" := FormatAmount(gDTotalCompAssumidosPeriodosFuturosN3);
                        end;
                    }
                    textelement("1rtotalcompromissosassumidosp3")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissosAssumidosParaPeriodosFuturosAnoNmais4';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalCompromissosAssumidosP3" := FormatAmount(gDTotalCompAssumidosPeriodosFuturosN4);
                        end;
                    }
                    textelement("1rtotalcompromissosassumidosp4")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissosAssumidosParaPeriodosFuturosAnosSeguintes';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalCompromissosAssumidosP4" := FormatAmount(gDTotalCompAssumidosPeriodosFuturosNN);
                        end;
                    }
                    textelement("1r_totalobrigacoesparaperiodos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoesParaPeriodosFuturosAnoNmais1';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_TotalObrigacoesParaPeriodos" := FormatAmount(gDTotalObrigPeriodosFuturosN1);
                        end;
                    }
                    textelement("1rtotalobrigacoesparaperiodos1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoesParaPeriodosFuturosAnoNmais2';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalObrigacoesParaPeriodos1" := FormatAmount(gDTotalObrigPeriodosFuturosN2);
                        end;
                    }
                    textelement("1rtotalobrigacoesparaperiodos2")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoesParaPeriodosFuturosAnoNmais3';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalObrigacoesParaPeriodos2" := FormatAmount(gDTotalObrigPeriodosFuturosN3);
                        end;
                    }
                    textelement("1rtotalobrigacoesparaperiodos3")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoesParaPeriodosFuturosAnoNmais4';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalObrigacoesParaPeriodos3" := FormatAmount(gDTotalObrigPeriodosFuturosN4);
                        end;
                    }
                    textelement("1rtotalobrigacoesparaperiodos4")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoesParaPeriodosFuturosAnosSeguintes';

                        trigger OnBeforePassVariable()
                        begin
                            "1RTotalObrigacoesParaPeriodos4" := FormatAmount(gDTotalObrigPeriodosFuturosNN);
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
                    textelement("2r_totaldespesasporpagarperiod")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDespesasPorPagarPeriodosAnteriores';

                        trigger OnBeforePassVariable()
                        begin
                            if Periodo = '14' then
                                "2R_TotalDespesasPorPagarPeriod" := FormatAmount(0)
                            else
                                "2R_TotalDespesasPorPagarPeriod" := FormatAmount(gDTotalDespesasPorPagarPeriodosAnt);
                        end;
                    }
                    textelement("2r_totaldotacoescorrigidas")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDotacoesCorrigidas';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalDotacoesCorrigidas" := FormatAmount(gDTotalDotacoesCorrigidas);
                        end;
                    }
                    textelement("2r_totalcativos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCativos';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalCativos" := FormatAmount(gDTotalCativos);
                        end;
                    }
                    textelement("2r_totaldescativos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDescativos';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalDescativos" := FormatAmount(gDTotalDescativos);
                        end;
                    }
                    textelement("2r_totaldotacoesdisponiveis")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDotacoesDisponiveis';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalDotacoesDisponiveis" := FormatAmount(gDTotalDotacoesDisponiveis);
                        end;
                    }
                    textelement("2r_totalcabimentos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCabimentos';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalCabimentos" := FormatAmount(gDTotalCabimentos);
                        end;
                    }
                    textelement("2r_totalcompromissos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissos';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalCompromissos" := FormatAmount(gDTotalCompromissos);
                        end;
                    }
                    textelement("2r_totalobrigacoes")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoes';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalObrigacoes" := FormatAmount(gDTotalObrigacoes);
                        end;
                    }
                    textelement("2r_totaldespesaspagasbrutas")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDespesasPagasBrutas';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalDespesasPagasBrutas" := FormatAmount(gDTotalDespesasPagasBrutas);
                        end;
                    }
                    textelement("2r_totalreposicoesabatidasaosp")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReposicoesAbatidasAosPagamentosEmitidas';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalReposicoesAbatidasAosP" := FormatAmount(gDTotalRepAbatidasPagEmitidas);
                        end;
                    }
                    textelement("2rtotalreposicoesabatidasaosp1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReposicoesAbatidasAosPagamentosRecebidas';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalReposicoesAbatidasAosP1" := FormatAmount(gDTotalRepAbatidasPagRecebidas);
                        end;
                    }
                    textelement("2r_totaldespesaspagasliquidasd")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDespesasPagasLiquidasDePeriodosAnteriores';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalDespesasPagasLiquidasD" := FormatAmount(gDTotalDespesasPagasLiquidasDePeri);
                        end;
                    }
                    textelement("2rtotaldespesaspagasliquidasd1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDespesasPagasLiquidasDoPeriodoCorrente';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalDespesasPagasLiquidasD1" := FormatAmount(gDTotalDespesasPagasLiquidasDoPeri);
                        end;
                    }
                    textelement("2r_totalgeraldespesaspagasliqu")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalGeralDespesasPagasLiquidas';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalGeralDespesasPagasLiqu" := FormatAmount(gDTotalDespesasPagasLiquidasTotal);
                        end;
                    }
                    textelement("2r_totalcompromissosatransitar")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissosATransitar';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalCompromissosATransitar" := FormatAmount(0);
                        end;
                    }
                    textelement("2r_totalobrigacoesporpagar")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoesPorPagar';

                        trigger OnBeforePassVariable()
                        begin
                            if ((gOptPeriodType = gOptPeriodType::M) and (PeriodNumber = 14)) then
                                "2R_TotalObrigacoesPorPagar" := FormatAmount(gDTotalObrigacoesPorPagar)
                            else
                                "2R_TotalObrigacoesPorPagar" := FormatAmount(0);
                        end;
                    }
                    textelement("2r_totalcompromissosassumidosp")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissosAssumidosParaPeriodosFuturosAnoNmais1';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalCompromissosAssumidosP" := FormatAmount(gDTotalCompAssumidosPeriodosFuturosN1);
                        end;
                    }
                    textelement("2rtotalcompromissosassumidosp1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissosAssumidosParaPeriodosFuturosAnoNmais2';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalCompromissosAssumidosP1" := FormatAmount(gDTotalCompAssumidosPeriodosFuturosN2);
                        end;
                    }
                    textelement("2rtotalcompromissosassumidosp2")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissosAssumidosParaPeriodosFuturosAnoNmais3';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalCompromissosAssumidosP2" := FormatAmount(gDTotalCompAssumidosPeriodosFuturosN3);
                        end;
                    }
                    textelement("2rtotalcompromissosassumidosp3")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissosAssumidosParaPeriodosFuturosAnoNmais4';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalCompromissosAssumidosP3" := FormatAmount(gDTotalCompAssumidosPeriodosFuturosN4);
                        end;
                    }
                    textelement("2rtotalcompromissosassumidosp4")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompromissosAssumidosParaPeriodosFuturosAnosSeguintes';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalCompromissosAssumidosP4" := FormatAmount(gDTotalCompAssumidosPeriodosFuturosNN);
                        end;
                    }
                    textelement("2r_totalobrigacoesparaperiodos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoesParaPeriodosFuturosAnoNmais1';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_TotalObrigacoesParaPeriodos" := FormatAmount(gDTotalObrigPeriodosFuturosN1);
                        end;
                    }
                    textelement("2rtotalobrigacoesparaperiodos1")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoesParaPeriodosFuturosAnoNmais2';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalObrigacoesParaPeriodos1" := FormatAmount(gDTotalObrigPeriodosFuturosN2);
                        end;
                    }
                    textelement("2rtotalobrigacoesparaperiodos2")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoesParaPeriodosFuturosAnoNmais3';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalObrigacoesParaPeriodos2" := FormatAmount(gDTotalObrigPeriodosFuturosN3);
                        end;
                    }
                    textelement("2rtotalobrigacoesparaperiodos3")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoesParaPeriodosFuturosAnoNmais4';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalObrigacoesParaPeriodos3" := FormatAmount(gDTotalObrigPeriodosFuturosN4);
                        end;
                    }
                    textelement("2rtotalobrigacoesparaperiodos4")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalObrigacoesParaPeriodosFuturosAnosSeguintes';

                        trigger OnBeforePassVariable()
                        begin
                            "2RTotalObrigacoesParaPeriodos4" := FormatAmount(gDTotalObrigPeriodosFuturosNN);
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
                    textelement(funcional)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Funcional';

                        trigger OnBeforePassVariable()
                        begin
                            Funcional := '353';
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
                    textelement(atividade)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Atividade';

                        trigger OnBeforePassVariable()
                        begin
                            Atividade := '257';
                        end;
                    }
                    textelement(projeto)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Projeto';

                        trigger OnBeforePassVariable()
                        begin
                            Projeto := '00000';
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
                    textelement(despesasporpagarperiodosant)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'DespesasPorPagarPeriodosAnteriores';

                        trigger OnBeforePassVariable()
                        begin
                            DespesasPorPagarPeriodosAnt := FormatAmount("UNILEO Aux Table"."BA Debit Amount 1");
                        end;
                    }
                    textelement(dotacoescorrigidas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'DotacoesCorrigidas';

                        trigger OnBeforePassVariable()
                        begin
                            DotacoesCorrigidas := FormatAmount("UNILEO Aux Table"."BA Credit Amount 1");
                        end;
                    }
                    textelement(cativos)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Cativos';

                        trigger OnBeforePassVariable()
                        begin
                            Cativos := FormatAmount(-"UNILEO Aux Table"."Amount 13");
                        end;
                    }
                    textelement(descativos)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Descativos';

                        trigger OnBeforePassVariable()
                        begin
                            Descativos := FormatAmount("UNILEO Aux Table"."Amount 14");
                        end;
                    }
                    textelement(dotacoesdisponiveis)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'DotacoesDisponiveis';

                        trigger OnBeforePassVariable()
                        begin
                            DotacoesDisponiveis := FormatAmount(-"UNILEO Aux Table"."BA Credit Amount 3");
                        end;
                    }
                    textelement(cabimentos)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Cabimentos';

                        trigger OnBeforePassVariable()
                        begin
                            Cabimentos := FormatAmount(-"UNILEO Aux Table"."BA Debit Amount 4");
                        end;
                    }
                    textelement(compromissos)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Compromissos';

                        trigger OnBeforePassVariable()
                        begin
                            Compromissos := FormatAmount(-"UNILEO Aux Table"."BA Credit Amount 2");
                        end;
                    }
                    textelement(obrigacoes)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Obrigacoes';

                        trigger OnBeforePassVariable()
                        begin
                            Obrigacoes := FormatAmount(-"UNILEO Aux Table"."BA Debit Amount 3");
                        end;
                    }
                    textelement(despesaspagasbrutas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'DespesasPagasBrutas';

                        trigger OnBeforePassVariable()
                        begin
                            DespesasPagasBrutas := FormatAmount(-"UNILEO Aux Table"."BA Credit Amount 4");
                        end;
                    }
                    textelement(reposicoesabatidasaospagame)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReposicoesAbatidasAosPagamentosEmitidas';

                        trigger OnBeforePassVariable()
                        begin
                            ReposicoesAbatidasAosPagame := FormatAmount("UNILEO Aux Table"."Amount 1");
                        end;
                    }
                    textelement(reposicoesabatidasaospagame1)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReposicoesAbatidasAosPagamentosRecebidas';

                        trigger OnBeforePassVariable()
                        begin
                            ReposicoesAbatidasAosPagame1 := FormatAmount("UNILEO Aux Table"."Amount 2");
                        end;
                    }
                    textelement(despesaspagasliquidasdeperi)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'DespesasPagasLiquidasDePeriodosAnteriores';

                        trigger OnBeforePassVariable()
                        begin
                            DespesasPagasLiquidasDePeri := FormatAmount(-"UNILEO Aux Table"."Amount 15");
                        end;
                    }
                    textelement(despesaspagasliquidasdoperi)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'DespesasPagasLiquidasDoPeriodoCorrente';

                        trigger OnBeforePassVariable()
                        begin
                            DespesasPagasLiquidasDoPeri := FormatAmount(-"UNILEO Aux Table"."Amount 16");
                        end;
                    }
                    textelement(despesaspagasliquidastotal)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'DespesasPagasLiquidasTotal';

                        trigger OnBeforePassVariable()
                        begin
                            DespesasPagasLiquidasTotal := FormatAmount(-("UNILEO Aux Table"."Amount 15" + "UNILEO Aux Table"."Amount 16"));
                        end;
                    }
                    textelement(compromissosatransitar)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'CompromissosATransitar';

                        trigger OnBeforePassVariable()
                        begin
                            CompromissosATransitar := FormatAmount(0);
                        end;
                    }
                    textelement(obrigacoesporpagar)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ObrigacoesPorPagar';

                        trigger OnBeforePassVariable()
                        begin
                            if ((gOptPeriodType = gOptPeriodType::M) and (PeriodNumber = 14)) then
                                ObrigacoesPorPagar := FormatAmount("UNILEO Aux Table"."Amount 17")
                            else
                                ObrigacoesPorPagar := FormatAmount(0);
                        end;
                    }
                    textelement(compromissosassumidosparape)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'CompromissosAssumidosParaPeriodosFuturosAnoNmais1';

                        trigger OnBeforePassVariable()
                        begin
                            CompromissosAssumidosParaPe := FormatAmount("UNILEO Aux Table"."Amount 3");
                        end;
                    }
                    textelement(compromissosassumidosparape1)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'CompromissosAssumidosParaPeriodosFuturosAnoNmais2';

                        trigger OnBeforePassVariable()
                        begin
                            CompromissosAssumidosParaPe1 := FormatAmount("UNILEO Aux Table"."Amount 4");
                        end;
                    }
                    textelement(compromissosassumidosparape2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'CompromissosAssumidosParaPeriodosFuturosAnoNmais3';

                        trigger OnBeforePassVariable()
                        begin
                            CompromissosAssumidosParaPe2 := FormatAmount("UNILEO Aux Table"."Amount 5");
                        end;
                    }
                    textelement(compromissosassumidosparape3)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'CompromissosAssumidosParaPeriodosFuturosAnoNmais4';

                        trigger OnBeforePassVariable()
                        begin
                            CompromissosAssumidosParaPe3 := FormatAmount("UNILEO Aux Table"."Amount 6");
                        end;
                    }
                    textelement(compromissosassumidosparape4)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'CompromissosAssumidosParaPeriodosFuturosAnosSeguintes';

                        trigger OnBeforePassVariable()
                        begin
                            CompromissosAssumidosParaPe4 := FormatAmount("UNILEO Aux Table"."Amount 7");
                        end;
                    }
                    textelement(obrigacoesparaperiodosfutur)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ObrigacoesParaPeriodosFuturosAnoNmais1';

                        trigger OnBeforePassVariable()
                        begin
                            ObrigacoesParaPeriodosFutur := FormatAmount("UNILEO Aux Table"."Amount 8");
                        end;
                    }
                    textelement(obrigacoesparaperiodosfutur1)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ObrigacoesParaPeriodosFuturosAnoNmais2';

                        trigger OnBeforePassVariable()
                        begin
                            ObrigacoesParaPeriodosFutur1 := FormatAmount("UNILEO Aux Table"."Amount 9");
                        end;
                    }
                    textelement(obrigacoesparaperiodosfutur2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ObrigacoesParaPeriodosFuturosAnoNmais3';

                        trigger OnBeforePassVariable()
                        begin
                            ObrigacoesParaPeriodosFutur2 := FormatAmount("UNILEO Aux Table"."Amount 10");
                        end;
                    }
                    textelement(obrigacoesparaperiodosfutur3)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ObrigacoesParaPeriodosFuturosAnoNmais4';

                        trigger OnBeforePassVariable()
                        begin
                            ObrigacoesParaPeriodosFutur3 := FormatAmount("UNILEO Aux Table"."Amount 11");
                        end;
                    }
                    textelement(obrigacoesparaperiodosfutur4)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ObrigacoesParaPeriodosFuturosAnosSeguintes';

                        trigger OnBeforePassVariable()
                        begin
                            ObrigacoesParaPeriodosFutur4 := FormatAmount("UNILEO Aux Table"."Amount 12");
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
    begin
        XMLFileName := Entidade + Ano + Periodo + Periodicidade + 'DODES.XML';
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
        gOptPeriodType: Option S,M;
        gDStartDate: Date;
        gDEndDate: Date;
        gDTotalDespesasPorPagarPeriodosAnt: Decimal;
        gDTotalDotacoesCorrigidas: Decimal;
        gDTotalCompromissos: Decimal;
        gDTotalObrigacoes: Decimal;
        gDTotalDespesasPagasLiquidasDePeri: Decimal;
        gDTotalDespesasPagasLiquidasDoPeri: Decimal;
        gDTotalDespesasPagasLiquidasTotal: Decimal;
        gDTotalCompromissosATransitar: Decimal;
        gDTotalObrigacoesPorPagar: Decimal;
        lIntInteger: Integer;
        gDTotalDotacoesDisponiveis: Decimal;
        gDTotalCabimentos: Decimal;
        gDTotalDespesasPagasBrutas: Decimal;
        gDTotalRepAbatidasPagEmitidas: Decimal;
        gDTotalRepAbatidasPagRecebidas: Decimal;
        gDTotalCompAssumidosPeriodosFuturosN1: Decimal;
        gDTotalCompAssumidosPeriodosFuturosN2: Decimal;
        gDTotalCompAssumidosPeriodosFuturosN3: Decimal;
        gDTotalCompAssumidosPeriodosFuturosN4: Decimal;
        gDTotalCompAssumidosPeriodosFuturosNN: Decimal;
        gDTotalObrigPeriodosFuturosN1: Decimal;
        gDTotalObrigPeriodosFuturosN2: Decimal;
        gDTotalObrigPeriodosFuturosN3: Decimal;
        gDTotalObrigPeriodosFuturosN4: Decimal;
        gDTotalObrigPeriodosFuturosNN: Decimal;
        gDTotalCativos: Decimal;
        gDTotalDescativos: Decimal;
        XMLFileName: Text;
        gIntIDRegisto: Integer;
        Text001: Label 'There is no data to process.';
        gXMLFileName: Text;
        gToWebServices: Boolean;
        PeriodNumber: Integer;
        PeriodYear: Integer;
        UNILEOMgt: Codeunit "UNILEO Management";
        gDate: Date;

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
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DODES, gDStartDate);

        gRecDimValue.SetFilter("Dimension Code", BudgetReportConfig."Rubric Dimension");
        gRecDimValue.SetRange("Budget Dim Type", gRecDimValue."Budget Dim Type"::Expenditure);
        gRecDimValue.SetRange(Totaling, '');
        if gRecDimValue.FindSet then
            repeat
                Clear(UNILEOAuxTable);
                UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DODES);
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
        gDate := DMY2Date(31, 12, Date2DMY(gDEndDate, 3));

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
                    18:
                        "UNILEO Aux Table"."Amount 10" := lDAmount;
                    19:
                        "UNILEO Aux Table"."Amount 11" := lDAmount;
                    20:
                        "UNILEO Aux Table"."Amount 12" := lDAmount;
                    21:
                        "UNILEO Aux Table"."Amount 13" := lDAmount;
                    22:
                        "UNILEO Aux Table"."Amount 14" := lDAmount;
                    23:
                        "UNILEO Aux Table"."Amount 15" := lDAmount;
                    24:
                        "UNILEO Aux Table"."Amount 16" := lDAmount;
                    25:
                        "UNILEO Aux Table"."Amount 17" := Abs(lDAmount);
                end;
                if gOptPeriodType = gOptPeriodType::M then begin
                    if ((pFieldNo = 25) and (PeriodNumber < 14)) then begin
                        "UNILEO Aux Table"."Amount 17" := 0;
                    end;
                end
                else begin
                    if pFieldNo = 25 then
                        "UNILEO Aux Table"."Amount 17" := 0;
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
                    18:
                        "UNILEO Aux Table"."Amount 10" := lDAmount;
                    19:
                        "UNILEO Aux Table"."Amount 11" := lDAmount;
                    20:
                        "UNILEO Aux Table"."Amount 12" := lDAmount;
                    21:
                        "UNILEO Aux Table"."Amount 13" := lDAmount;
                    22:
                        "UNILEO Aux Table"."Amount 14" := lDAmount;
                    23:
                        "UNILEO Aux Table"."Amount 15" := lDAmount;
                    24:
                        "UNILEO Aux Table"."Amount 16" := lDAmount;
                    25:
                        "UNILEO Aux Table"."Amount 17" := Abs(lDAmount);
                end;
                if gOptPeriodType = gOptPeriodType::M then begin
                    if ((pFieldNo = 25) and (PeriodNumber < 14)) then begin
                        "UNILEO Aux Table"."Amount 17" := 0;
                    end;
                end
                else begin
                    if pFieldNo = 25 then
                        "UNILEO Aux Table"."Amount 17" := 0;
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
        Clear(gDTotalDespesasPorPagarPeriodosAnt);
        Clear(gDTotalDotacoesCorrigidas);
        Clear(gDTotalCompromissos);
        Clear(gDTotalObrigacoes);
        Clear(gDTotalDespesasPagasLiquidasDePeri);
        Clear(gDTotalDespesasPagasLiquidasDoPeri);
        Clear(gDTotalDespesasPagasLiquidasTotal);
        Clear(gDTotalCompromissosATransitar);
        Clear(gDTotalObrigacoesPorPagar);
        Clear(gDTotalDotacoesDisponiveis);
        Clear(gDTotalCabimentos);
        Clear(gDTotalDespesasPagasBrutas);
        Clear(gDTotalRepAbatidasPagEmitidas);
        Clear(gDTotalRepAbatidasPagRecebidas);
        Clear(gDTotalCompAssumidosPeriodosFuturosN1);
        Clear(gDTotalCompAssumidosPeriodosFuturosN2);
        Clear(gDTotalCompAssumidosPeriodosFuturosN3);
        Clear(gDTotalCompAssumidosPeriodosFuturosN4);
        Clear(gDTotalCompAssumidosPeriodosFuturosNN);
        Clear(gDTotalObrigPeriodosFuturosN1);
        Clear(gDTotalObrigPeriodosFuturosN2);
        Clear(gDTotalObrigPeriodosFuturosN3);
        Clear(gDTotalObrigPeriodosFuturosN4);
        Clear(gDTotalObrigPeriodosFuturosNN);
        Clear(gDTotalCativos);
        Clear(gDTotalDescativos);
    end;

    local procedure CalcExpTypeTotals(pExpType: Option Current,Capital)
    var
        DateSetup: Date;
        lDate_aux: Date;
        AccountFilter: array[24] of Text;
    begin
        ClearTotalVars;
        Clear(AccountFilter);
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DODES, gDStartDate);

        AccountFilter[1] := GetDateSetupLine(10, DateSetup);
        AccountFilter[2] := GetDateSetupLine(20, DateSetup);
        AccountFilter[4] := GetDateSetupLine(40, DateSetup);
        AccountFilter[5] := GetDateSetupLine(50, DateSetup);
        AccountFilter[6] := GetDateSetupLine(60, DateSetup);
        AccountFilter[7] := GetDateSetupLine(70, DateSetup);
        AccountFilter[8] := GetDateSetupLine(80, DateSetup);
        AccountFilter[9] := GetDateSetupLine(90, DateSetup);
        AccountFilter[10] := GetDateSetupLine(100, DateSetup);
        AccountFilter[11] := GetDateSetupLine(110, DateSetup);
        AccountFilter[12] := GetDateSetupLine(120, DateSetup);
        AccountFilter[13] := GetDateSetupLine(130, DateSetup);
        AccountFilter[14] := GetDateSetupLine(140, DateSetup);
        AccountFilter[15] := GetDateSetupLine(150, DateSetup);
        AccountFilter[16] := GetDateSetupLine(160, DateSetup);
        AccountFilter[17] := GetDateSetupLine(170, DateSetup);
        AccountFilter[18] := GetDateSetupLine(180, DateSetup);
        AccountFilter[19] := GetDateSetupLine(190, DateSetup);
        AccountFilter[20] := GetDateSetupLine(200, DateSetup);
        AccountFilter[21] := GetDateSetupLine(210, DateSetup);
        AccountFilter[22] := GetDateSetupLine(220, DateSetup);
        AccountFilter[23] := GetDateSetupLine(230, DateSetup);
        AccountFilter[24] := GetDateSetupLine(240, DateSetup);

        gRecDimValue.Reset();
        gRecDimValue.SetFilter("Dimension Code", BudgetReportConfig."Rubric Dimension");
        gRecDimValue.SetRange("Budget Dim Type", gRecDimValue."Budget Dim Type"::Expenditure);
        gRecDimValue.SetRange(Totaling, '');
        if pExpType = pExpType::Current then
            gRecDimValue.SetRange("Receipt Expense Type", gRecDimValue."Receipt Expense Type"::Current)
        else
            gRecDimValue.SetRange("Receipt Expense Type", gRecDimValue."Receipt Expense Type"::Capital);
        if gRecDimValue.FindSet then
            repeat
                lDate_aux := DMY2Date(31, 12, Date2DMY(gDEndDate, 3));
                gDTotalDespesasPorPagarPeriodosAnt += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[1], ClosingDate(CalcDate('<-1Y>', lDate_aux)), ClosingDate(CalcDate('<-1Y>', lDate_aux)));
                gDTotalDotacoesCorrigidas += GetExpTypeValues(gRecDimValue.Code, AccountFilter[2], gDStartDate, gDEndDate);
                gDTotalCompromissos += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[4], gDStartDate, gDEndDate);
                gDTotalObrigacoes += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[5], gDStartDate, gDEndDate);
                gDTotalDespesasPagasLiquidasDePeri += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[23], gDStartDate, gDEndDate);
                gDTotalDespesasPagasLiquidasDoPeri += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[24], gDStartDate, gDEndDate);
                gDTotalDespesasPagasLiquidasTotal += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[23], gDStartDate, gDEndDate) +
                                                    -GetExpTypeValues(gRecDimValue.Code, AccountFilter[24], gDStartDate, gDEndDate);
                gDTotalCompromissosATransitar += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[4], gDStartDate, gDEndDate) -
                                                -GetExpTypeValues(gRecDimValue.Code, AccountFilter[5], gDStartDate, gDEndDate);
                gDTotalObrigacoesPorPagar += -GetExpTypeValues(gRecDimValue."Rubric Code", AccountFilter[1], gDStartDate, gDEndDate);
                gDTotalDotacoesDisponiveis += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[6], gDStartDate, gDEndDate);
                gDTotalCabimentos += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[7], gDStartDate, gDEndDate);
                gDTotalDespesasPagasBrutas += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[8], gDStartDate, gDEndDate);
                gDTotalRepAbatidasPagEmitidas += GetExpTypeValues(gRecDimValue.Code, AccountFilter[9], gDStartDate, gDEndDate);
                gDTotalRepAbatidasPagRecebidas += GetExpTypeValues(gRecDimValue.Code, AccountFilter[10], gDStartDate, gDEndDate);
                gDTotalCompAssumidosPeriodosFuturosN1 += GetExpTypeValues(gRecDimValue.Code, AccountFilter[11], gDStartDate, gDEndDate);
                gDTotalCompAssumidosPeriodosFuturosN2 += GetExpTypeValues(gRecDimValue.Code, AccountFilter[12], gDStartDate, gDEndDate);
                gDTotalCompAssumidosPeriodosFuturosN3 += GetExpTypeValues(gRecDimValue.Code, AccountFilter[13], gDStartDate, gDEndDate);
                gDTotalCompAssumidosPeriodosFuturosN4 += GetExpTypeValues(gRecDimValue.Code, AccountFilter[14], gDStartDate, gDEndDate);
                gDTotalCompAssumidosPeriodosFuturosNN += GetExpTypeValues(gRecDimValue.Code, AccountFilter[15], gDStartDate, gDEndDate);
                gDTotalObrigPeriodosFuturosN1 += GetExpTypeValues(gRecDimValue.Code, AccountFilter[16], gDStartDate, gDEndDate);
                gDTotalObrigPeriodosFuturosN2 += GetExpTypeValues(gRecDimValue.Code, AccountFilter[17], gDStartDate, gDEndDate);
                gDTotalObrigPeriodosFuturosN3 += GetExpTypeValues(gRecDimValue.Code, AccountFilter[18], gDStartDate, gDEndDate);
                gDTotalObrigPeriodosFuturosN4 += GetExpTypeValues(gRecDimValue.Code, AccountFilter[19], gDStartDate, gDEndDate);
                gDTotalObrigPeriodosFuturosNN += GetExpTypeValues(gRecDimValue.Code, AccountFilter[20], gDStartDate, gDEndDate);
                gDTotalCativos += -GetExpTypeValues(gRecDimValue.Code, AccountFilter[21], gDStartDate, gDEndDate);
                gDTotalDescativos += GetExpTypeValues(gRecDimValue.Code, AccountFilter[22], gDStartDate, gDEndDate);
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
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DODES);
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

    procedure CalcMyField1(p_Account: Text[60]; p_StartDate: Date; p_EndDate: Date; p_Dim1: Code[60]; p_Dim3: Code[60]; p_Rubrica: Code[20]; p_Totaling: Text[250]) lAmount: Decimal
    var
        l_GLEntry: Record "G/L Entry";
        lRecDimValue: Record "Dimension Value";
    begin
        lAmount := 0;

        lRecDimValue.Reset;
        lRecDimValue.SetRange(Code, p_Rubrica);
        lRecDimValue.SetRange("Budget Dim Type", lRecDimValue."Budget Dim Type"::Expenditure);
        if lRecDimValue.FindFirst then
            p_Totaling := lRecDimValue.Totaling
        else
            p_Totaling := '';

        l_GLEntry.Reset;
        l_GLEntry.SetRange("Posting Date", p_StartDate, p_EndDate);
        l_GLEntry.SetRange("G/L Account No.", p_Account);
        l_GLEntry.SetRange("Global Dimension 1 Code", p_Dim1);
        l_GLEntry.SetRange("Shortcut Dimension 3 Code", p_Dim3);
        if p_Totaling <> '' then
            l_GLEntry.SetFilter("Rubric Code", p_Totaling)
        else
            l_GLEntry.SetRange("Rubric Code", p_Rubrica);
        l_GLEntry.CalcSums(Amount);
        lAmount := Abs(l_GLEntry.Amount);
        exit(lAmount);
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

