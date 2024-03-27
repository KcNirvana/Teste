xmlport 57002 "UNILEO AI"
{
    Direction = Export;
    Encoding = UTF8;

    schema
    {
        textelement(ai)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            XmlName = 'AI';
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
                        Ano := Format(Date2DMY(gDate, 3));
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
            textelement(ativosintangiveis)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'AtivosIntangiveis';
                textelement(resumo)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    XmlName = 'Resumo';
                    textelement(id_resumo)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_Resumo';

                        trigger OnBeforePassVariable()
                        begin
                            ID_Resumo := '1';
                        end;
                    }
                    textelement(rubricaagregadora)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'RubricaAgregadora';

                        trigger OnBeforePassVariable()
                        begin
                            RubricaAgregadora := 'AI';
                        end;
                    }
                    textelement(totalquantiaescrituradainic)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalQuantiaEscrituradaInicial';

                        trigger OnBeforePassVariable()
                        begin
                            TotalQuantiaEscrituradaInic := FormatAmount(gDTotalAmount1);
                        end;
                    }
                    textelement(totaladicoes)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalAdicoes';

                        trigger OnBeforePassVariable()
                        begin
                            TotalAdicoes := FormatAmount(gDTotalAmount2);
                        end;
                    }
                    textelement(totaltransferenciasinternas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalTransferenciasInternasEntidade';

                        trigger OnBeforePassVariable()
                        begin
                            TotalTransferenciasInternas := FormatAmount(0);
                        end;
                    }
                    textelement(totalrevalorizacoes)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalRevalorizacoes';

                        trigger OnBeforePassVariable()
                        begin
                            TotalRevalorizacoes := FormatAmount(gDTotalAmount4);
                        end;
                    }
                    textelement(totalreversoesperdasimparid)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReversoesPerdasImparidade';

                        trigger OnBeforePassVariable()
                        begin
                            TotalReversoesPerdasImparid := FormatAmount(0);
                        end;
                    }
                    textelement(totalperdasimparidade)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalPerdasImparidade';

                        trigger OnBeforePassVariable()
                        begin
                            TotalPerdasImparidade := FormatAmount(0);
                        end;
                    }
                    textelement(totalamortizacoesperiodo)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalAmortizacoesPeriodo';

                        trigger OnBeforePassVariable()
                        begin
                            TotalAmortizacoesPeriodo := FormatAmount(gDTotalAmount7);
                        end;
                    }
                    textelement(totaldiferencascambiais)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDiferencasCambiais';

                        trigger OnBeforePassVariable()
                        begin
                            TotalDiferencasCambiais := FormatAmount(0);
                        end;
                    }
                    textelement(totaldiminuicoes)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDiminuicoes';

                        trigger OnBeforePassVariable()
                        begin
                            TotalDiminuicoes := FormatAmount(gDTotalAmount9);
                        end;
                    }
                    textelement(totalquantiaescrituradafina)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalQuantiaEscrituradaFinal';

                        trigger OnBeforePassVariable()
                        begin
                            TotalQuantiaEscrituradaFina := FormatAmount(gDTotalAmount1 + gDTotalAmount2 + gDTotalAmount4 + gDTotalAmount7 + gDTotalAmount9);
                        end;
                    }

                    trigger OnBeforePassVariable()
                    begin
                        CleanValues;
                        SetData;
                    end;
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
                        SourceTableView = SORTING(Integer, "Report Type", Code1) WHERE("Report Type" = CONST(AI));
                        fieldelement(ID_Registo; "UNILEO Aux Table".Integer)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        fieldelement(Rubrica; "UNILEO Aux Table".Code1)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        fieldelement(RubricaAgregadora; "UNILEO Aux Table".Code2)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        textelement(quantiaescrituradainicial)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'QuantiaEscrituradaInicial';

                            trigger OnBeforePassVariable()
                            begin
                                QuantiaEscrituradaInicial := FormatAmount("UNILEO Aux Table"."Amount 1");
                            end;
                        }
                        textelement(adicoes)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Adicoes';

                            trigger OnBeforePassVariable()
                            begin
                                Adicoes := FormatAmount("UNILEO Aux Table"."Amount 2");
                            end;
                        }
                        textelement(transferenciasinternasentid)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TransferenciasInternasEntidade';

                            trigger OnBeforePassVariable()
                            begin
                                TransferenciasInternasEntid := FormatAmount("UNILEO Aux Table"."Amount 3");
                            end;
                        }
                        textelement(revalorizacoes)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Revalorizacoes';

                            trigger OnBeforePassVariable()
                            begin
                                Revalorizacoes := FormatAmount("UNILEO Aux Table"."Amount 4");
                            end;
                        }
                        textelement(reversoesperdasimparidade)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ReversoesPerdasImparidade';

                            trigger OnBeforePassVariable()
                            begin
                                ReversoesPerdasImparidade := FormatAmount("UNILEO Aux Table"."Amount 5");
                            end;
                        }
                        textelement(perdasimparidade)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'PerdasImparidade';

                            trigger OnBeforePassVariable()
                            begin
                                PerdasImparidade := FormatAmount("UNILEO Aux Table"."Amount 6");
                            end;
                        }
                        textelement(amortizacoesperiodo)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'AmortizacoesPeriodo';

                            trigger OnBeforePassVariable()
                            begin
                                AmortizacoesPeriodo := FormatAmount("UNILEO Aux Table"."Amount 7");
                            end;
                        }
                        textelement(diferencascambiais)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'DiferencasCambiais';

                            trigger OnBeforePassVariable()
                            begin
                                DiferencasCambiais := FormatAmount("UNILEO Aux Table"."Amount 8");
                            end;
                        }
                        textelement(diminuicoes)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Diminuicoes';

                            trigger OnBeforePassVariable()
                            begin
                                Diminuicoes := FormatAmount("UNILEO Aux Table"."Amount 9");
                            end;
                        }
                        textelement(quantiaescrituradafinal)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'QuantiaEscrituradaFinal';

                            trigger OnBeforePassVariable()
                            begin
                                QuantiaEscrituradaFinal := FormatAmount("UNILEO Aux Table"."Amount 1" + "UNILEO Aux Table"."Amount 2" +
                                  "UNILEO Aux Table"."Amount 4" + "UNILEO Aux Table"."Amount 7" + "UNILEO Aux Table"."Amount 9");
                            end;
                        }
                    }
                }
            }
            textelement(ativosintangiveisdesagregac)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'AtivosIntangiveisDesagregacaoAdicoes';
                textelement(ativ_resumo)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    XmlName = 'Resumo';
                    textelement(resumo_id_resumo)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_Resumo';

                        trigger OnBeforePassVariable()
                        begin
                            Resumo_ID_Resumo := '2';
                        end;
                    }
                    textelement(resumo_rubricaagregadora)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'RubricaAgregadora';

                        trigger OnBeforePassVariable()
                        begin
                            Resumo_RubricaAgregadora := 'AI';
                        end;
                    }
                    textelement(totalinternas)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalInternas';

                        trigger OnBeforePassVariable()
                        begin
                            TotalInternas := FormatAmount(0);
                        end;
                    }
                    textelement(totalcompra)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCompra';

                        trigger OnBeforePassVariable()
                        begin
                            TotalCompra := FormatAmount(gDTotalAmount2);
                        end;
                    }
                    textelement(totalcessao)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalCessao';

                        trigger OnBeforePassVariable()
                        begin
                            TotalCessao := FormatAmount(0);
                        end;
                    }
                    textelement(totaltransferenciatroca)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalTransferenciaTroca';

                        trigger OnBeforePassVariable()
                        begin
                            TotalTransferenciaTroca := FormatAmount(0);
                        end;
                    }
                    textelement(totaldoacaoherancalegadooup)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDoacaoHerancaLegadoOuPerdidoFavorEstado';

                        trigger OnBeforePassVariable()
                        begin
                            TotalDoacaoHerancaLegadoOuP := FormatAmount(0);
                        end;
                    }
                    textelement(totaldacaopagamento)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalDacaoPagamento';

                        trigger OnBeforePassVariable()
                        begin
                            TotalDacaoPagamento := FormatAmount(0);
                        end;
                    }
                    textelement(totallocacaofinanceira)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalLocacaoFinanceira';

                        trigger OnBeforePassVariable()
                        begin
                            TotalLocacaoFinanceira := FormatAmount(0);
                        end;
                    }
                    textelement(totalfusaocisaoreestruturac)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalFusaoCisaoReestruturacao';

                        trigger OnBeforePassVariable()
                        begin
                            TotalFusaoCisaoReestruturac := FormatAmount(0);
                        end;
                    }
                    textelement(totaloutras)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalOutras';

                        trigger OnBeforePassVariable()
                        begin
                            TotalOutras := FormatAmount(0);
                        end;
                    }
                    textelement(totalgeral)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalGeral';

                        trigger OnBeforePassVariable()
                        begin
                            TotalGeral := FormatAmount(0);
                        end;
                    }

                    trigger OnBeforePassVariable()
                    begin
                        CleanValues;
                        SetData2;
                    end;
                }
                textelement(ativ_registos)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    XmlName = 'Registos';
                    tableelement("unileo aux table 2"; "UNILEO Aux Table")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'Registo';
                        SourceTableView = SORTING(Integer, "Report Type", Code1) WHERE("Report Type" = CONST(AI));
                        fieldelement(ID_Registo; "UNILEO Aux Table 2".Integer)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        fieldelement(Rubrica; "UNILEO Aux Table 2".Code1)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        fieldelement(RubricaAgregadora; "UNILEO Aux Table 2".Code2)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        textelement(internas)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Internas';

                            trigger OnBeforePassVariable()
                            begin
                                Internas := FormatAmount("UNILEO Aux Table 2"."Amount 1");
                            end;
                        }
                        textelement(compra)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Compra';

                            trigger OnBeforePassVariable()
                            begin
                                Compra := FormatAmount("UNILEO Aux Table 2"."Amount 2");
                            end;
                        }
                        textelement(cessao)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Cessao';

                            trigger OnBeforePassVariable()
                            begin
                                Cessao := FormatAmount("UNILEO Aux Table 2"."Amount 3");
                            end;
                        }
                        textelement(transferenciatroca)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TransferenciaTroca';

                            trigger OnBeforePassVariable()
                            begin
                                TransferenciaTroca := FormatAmount("UNILEO Aux Table 2"."Amount 4");
                            end;
                        }
                        textelement(doacaoherancalegadoouperdid)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'DoacaoHerancaLegadoOuPerdidoFavorEstado';

                            trigger OnBeforePassVariable()
                            begin
                                DoacaoHerancaLegadoOuPerdid := FormatAmount("UNILEO Aux Table 2"."Amount 5");
                            end;
                        }
                        textelement(dacaopagamento)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'DacaoPagamento';

                            trigger OnBeforePassVariable()
                            begin
                                DacaoPagamento := FormatAmount("UNILEO Aux Table 2"."Amount 6");
                            end;
                        }
                        textelement(locacaofinanceira)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'LocacaoFinanceira';

                            trigger OnBeforePassVariable()
                            begin
                                LocacaoFinanceira := FormatAmount("UNILEO Aux Table 2"."Amount 7");
                            end;
                        }
                        textelement(fusaocisaoreestruturacao)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'FusaoCisaoReestruturacao';

                            trigger OnBeforePassVariable()
                            begin
                                FusaoCisaoReestruturacao := FormatAmount("UNILEO Aux Table 2"."Amount 8");
                            end;
                        }
                        textelement(outras)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Outras';

                            trigger OnBeforePassVariable()
                            begin
                                Outras := FormatAmount("UNILEO Aux Table 2"."Amount 9");
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
                                Total := FormatAmount("UNILEO Aux Table 2"."Amount 10");
                            end;
                        }
                    }
                }
            }
            textelement(ativosintangiveisdesagregac1)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'AtivosIntangiveisDesagregacaoDiminuicoes';
                textelement(ai_ativ_resumo)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    XmlName = 'Resumo';
                    textelement(ativ_resumo_id_resumo)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_Resumo';

                        trigger OnBeforePassVariable()
                        begin
                            Ativ_Resumo_ID_Resumo := '3';
                        end;
                    }
                    textelement(ativ_resumo_rubricaagregado)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'RubricaAgregadora';

                        trigger OnBeforePassVariable()
                        begin
                            Ativ_Resumo_RubricaAgregado := 'AI';
                        end;
                    }
                    textelement(totalalienacaotitulooneroso)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalAlienacaoTituloOneroso';

                        trigger OnBeforePassVariable()
                        begin
                            TotalAlienacaoTituloOneroso := FormatAmount(gDTotalAmount1);
                        end;
                    }
                    textelement(resu_totaltransferenciatroc)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalTransferenciaTroca';

                        trigger OnBeforePassVariable()
                        begin
                            Resu_TotalTransferenciaTroc := FormatAmount(0);
                        end;
                    }
                    textelement(totalfusaocisaoreestruturac1)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalFusaoCisaoReestruturacao';

                        trigger OnBeforePassVariable()
                        begin
                            TotalFusaoCisaoReestruturac1 := FormatAmount(0);
                        end;
                    }
                    textelement(resumo_totaloutras)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalOutras';

                        trigger OnBeforePassVariable()
                        begin
                            Resumo_TotalOutras := FormatAmount(gDTotalAmount4);
                        end;
                    }
                    textelement(resumo_totalgeral)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalGeral';

                        trigger OnBeforePassVariable()
                        begin
                            Resumo_TotalGeral := FormatAmount(0);
                        end;
                    }

                    trigger OnBeforePassVariable()
                    begin
                        CleanValues;
                        SetData3;
                    end;
                }
                textelement(ai_ativ_registos)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    XmlName = 'Registos';
                    tableelement("unileo aux table 3"; "UNILEO Aux Table")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'Registo';
                        SourceTableView = SORTING(Integer, "Report Type", Code1) WHERE("Report Type" = CONST(AI));
                        fieldelement(ID_Registo; "UNILEO Aux Table 3".Integer)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        fieldelement(Rubrica; "UNILEO Aux Table 3".Code1)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        fieldelement(RubricaAgregadora; "UNILEO Aux Table 3".Code2)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        textelement(alienacaotitulooneroso)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'AlienacaoTituloOneroso';

                            trigger OnBeforePassVariable()
                            begin
                                AlienacaoTituloOneroso := FormatAmount("UNILEO Aux Table 3"."Amount 1");
                            end;
                        }
                        textelement(registo_transferenciatroca)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TransferenciaTroca';

                            trigger OnBeforePassVariable()
                            begin
                                Registo_TransferenciaTroca := FormatAmount("UNILEO Aux Table 3"."Amount 2");
                            end;
                        }
                        textelement(regi_fusaocisaoreestruturac)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'FusaoCisaoReestruturacao';

                            trigger OnBeforePassVariable()
                            begin
                                Regi_FusaoCisaoReestruturac := FormatAmount("UNILEO Aux Table 3"."Amount 3");
                            end;
                        }
                        textelement(registo_outras)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Outras';

                            trigger OnBeforePassVariable()
                            begin
                                Registo_Outras := FormatAmount("UNILEO Aux Table 3"."Amount 4");
                            end;
                        }
                        textelement(registo_total)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Total';

                            trigger OnBeforePassVariable()
                            begin
                                Registo_Total := FormatAmount("UNILEO Aux Table 3"."Amount 5");
                            end;
                        }
                    }
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
                    field(Data; gDate)
                    {
                        Caption = 'Date';
                        Visible = false;

                        trigger OnValidate()
                        begin
                            MakeDateFilter;
                        end;
                    }
                    field(gOptPeriodType; gOptPeriodType)
                    {
                        Caption = 'Periodicity';
                        OptionCaption = 'Trimestral';
                        Visible = false;
                    }
                    field(Ano; PeriodYear)
                    {
                        Caption = 'Year';

                        trigger OnValidate()
                        begin
                            MakeDateFilter2;
                        end;
                    }
                    field(Periodo; gPeriod)
                    {
                        Caption = 'Period';

                        trigger OnValidate()
                        begin
                            MakeDateFilter2;
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
            MakeDateFilter2;
        end;
    }

    trigger OnPostXmlPort()
    begin
        XMLFileName := Entidade + Ano + Periodo + Periodicidade + 'AI.XML';
        currXMLport.Filename(XMLFileName);
        gXMLFileName := XMLFileName;
    end;

    trigger OnPreXmlPort()
    begin
        gRecCompInfo.Get;
    end;

    var
        gRecCompInfo: Record "Company Information";
        gOptPeriodType: Option T;
        gDate: Date;
        gDStartDate: Date;
        gDEndDate: Date;
        gDTotalAmount1: Decimal;
        gDTotalAmount2: Decimal;
        gDTotalAmount4: Decimal;
        gDTotalAmount7: Decimal;
        gDTotalAmount9: Decimal;
        gBModify: Boolean;
        XMLFileName: Text;
        gPeriod: Option "1","2","3","4","5";
        gXMLFileName: Text;
        PeriodYear: Integer;
        UNILEOMgt: Codeunit "UNILEO Management";

    local procedure MakeDateFilter()
    var
        lRecDate: Record Date;
        lAux_Month: Integer;
        lAux_Year: Integer;
    begin
        lAux_Year := Date2DMY(gDate, 3);
        lAux_Month := Date2DMY(gDate, 2);

        case gOptPeriodType of
            gOptPeriodType::T:
                begin
                    case lAux_Month of
                        1, 2, 3:
                            begin
                                Periodo := '001';
                                gDStartDate := DMY2Date(1, 1, lAux_Year);
                                gDEndDate := DMY2Date(31, 3, lAux_Year);
                            end;
                        4, 5, 6:
                            begin
                                Periodo := '002';
                                gDStartDate := DMY2Date(1, 1, lAux_Year);
                                gDEndDate := DMY2Date(30, 6, lAux_Year);
                            end;
                        7, 8, 9:
                            begin
                                Periodo := '003';
                                gDStartDate := DMY2Date(1, 1, lAux_Year);
                                gDEndDate := DMY2Date(30, 9, lAux_Year);
                            end;
                        10, 11, 12:
                            begin
                                Periodo := '004';
                                gDStartDate := DMY2Date(1, 1, lAux_Year);
                                gDEndDate := DMY2Date(31, 12, lAux_Year);
                            end;
                    end;

                end;
        end;
    end;

    local procedure MakeDateFilter2()
    var
        lRecDate: Record Date;
        lAux_Month: Integer;
        lAux_Year: Integer;
    begin
        lAux_Year := PeriodYear;
        gOptPeriodType := gOptPeriodType::T;

        case gPeriod of
            gPeriod::"1":
                begin
                    gDate := DMY2Date(1, 1, lAux_Year);
                    gDStartDate := DMY2Date(1, 1, lAux_Year);
                    gDEndDate := DMY2Date(31, 3, lAux_Year);
                    Periodo := '001';
                end;
            gPeriod::"2":
                begin
                    gDate := DMY2Date(1, 4, lAux_Year);
                    gDStartDate := DMY2Date(1, 1, lAux_Year);
                    gDEndDate := DMY2Date(30, 6, lAux_Year);
                    Periodo := '002';
                end;
            gPeriod::"3":
                begin
                    gDate := DMY2Date(1, 7, lAux_Year);
                    gDStartDate := DMY2Date(1, 1, lAux_Year);
                    gDEndDate := DMY2Date(30, 9, lAux_Year);
                    Periodo := '003';
                end;
            gPeriod::"4":
                begin
                    gDate := DMY2Date(1, 10, lAux_Year);
                    gDStartDate := DMY2Date(1, 1, lAux_Year);
                    gDEndDate := DMY2Date(31, 12, lAux_Year);
                    Periodo := '004';
                end;
            gPeriod::"5":
                begin
                    gDate := DMY2Date(1, 12, lAux_Year);
                    gDStartDate := DMY2Date(1, 1, lAux_Year);
                    gDEndDate := ClosingDate(DMY2Date(31, 12, lAux_Year));
                    Periodo := '005';
                end;
        end;
    end;

    local procedure SetData()
    var
        DateSetup: Date;

    begin
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::AI, gDStartDate);
        "UNILEO Aux Table".SetRange("Setup Start Date", DateSetup);
        "UNILEO Aux Table".SetRange("Report Type", "UNILEO Report Type"::AI);
        if "UNILEO Aux Table".FindSet then
            repeat
                Clear(gBModify);
                SetDataField(1);
                SetDataField(2);
                SetDataField(4);
                SetDataField(7);
                SetDataField(9);

                if gBModify then
                    "UNILEO Aux Table".Modify;

            until "UNILEO Aux Table".Next = 0;
    end;

    local procedure SetDataField(pFieldNo: Integer)
    var
        lRecFixedAsset: Record "Fixed Asset";
        lRecFALedgerEntry: Record "FA Ledger Entry";
        lAuxDate: Date;
    begin
        case pFieldNo of
            1:
                begin
                    lAuxDate := CalcDate('-1D', gDStartDate);

                    Clear(lRecFixedAsset);
                    lRecFixedAsset.SetRange("UNILEO Rubric", "UNILEO Aux Table".Description1);
                    if lRecFixedAsset.FindSet then
                        repeat
                            Clear(lRecFALedgerEntry);
                            lRecFALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SetRange("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SetFilter("FA Posting Type", '%1|%2|%3', lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost",
                              lRecFALedgerEntry."FA Posting Type"::Appreciation, lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            lRecFALedgerEntry.SetRange("Posting Date", 0D, lAuxDate);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table"."Amount 1" += lRecFALedgerEntry.Amount;
                            gDTotalAmount1 += lRecFALedgerEntry.Amount;
                            gBModify := true;
                        until lRecFixedAsset.Next = 0;
                end;
            2:
                begin
                    Clear(lRecFixedAsset);
                    lRecFixedAsset.SetRange("UNILEO Rubric", "UNILEO Aux Table".Description1);
                    if lRecFixedAsset.FindSet then
                        repeat
                            Clear(lRecFALedgerEntry);
                            lRecFALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SetRange("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SetRange("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SetRange("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.SetFilter(Amount, '>%1', 0);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table"."Amount 2" += lRecFALedgerEntry.Amount;
                            gDTotalAmount2 += lRecFALedgerEntry.Amount;
                            gBModify := true;
                        until lRecFixedAsset.Next = 0;
                end;
            3:
                ;
            4:
                begin
                    Clear(lRecFixedAsset);
                    lRecFixedAsset.SetRange("UNILEO Rubric", "UNILEO Aux Table".Description1);
                    if lRecFixedAsset.FindSet then
                        repeat
                            Clear(lRecFALedgerEntry);
                            lRecFALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SetRange("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SetRange("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::Appreciation);
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table"."Amount 4" += lRecFALedgerEntry.Amount;
                            gDTotalAmount4 += lRecFALedgerEntry.Amount;
                            gBModify := true;
                        until lRecFixedAsset.Next = 0;
                end;
            5:
                ;
            6:
                ;
            7:
                begin
                    Clear(lRecFixedAsset);
                    lRecFixedAsset.SetRange("UNILEO Rubric", "UNILEO Aux Table".Description1);
                    if lRecFixedAsset.FindSet then
                        repeat
                            Clear(lRecFALedgerEntry);
                            lRecFALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SetRange("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SetRange("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table"."Amount 7" += lRecFALedgerEntry.Amount;
                            gDTotalAmount7 += lRecFALedgerEntry.Amount;
                            gBModify := true;
                        until lRecFixedAsset.Next = 0;
                end;
            8:
                ;
            9:
                begin
                    Clear(lRecFixedAsset);
                    lRecFixedAsset.SetRange("UNILEO Rubric", "UNILEO Aux Table".Description1);
                    if lRecFixedAsset.FindSet then
                        repeat
                            Clear(lRecFALedgerEntry);
                            lRecFALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SetRange("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SetRange("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SetRange("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.SetFilter(Amount, '<%1', 0);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table"."Amount 9" += lRecFALedgerEntry.Amount;
                            gDTotalAmount9 += lRecFALedgerEntry.Amount;

                            Clear(lRecFALedgerEntry);
                            lRecFALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SetRange("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SetRange("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::Disposal);
                            lRecFALedgerEntry.SetFilter("FA Posting Type", '%1|%2', lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost",
                            lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table"."Amount 9" += lRecFALedgerEntry.Amount;
                            gDTotalAmount9 += lRecFALedgerEntry.Amount;
                            gBModify := true;
                        until lRecFixedAsset.Next = 0;
                end;
        end;
    end;

    local procedure SetData2()
    var
        DateSetup: Date;
    begin
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::AI, gDStartDate);
        "UNILEO Aux Table 2".SetRange("Setup Start Date", DateSetup);
        "UNILEO Aux Table 2".SetRange("Report Type", "UNILEO Report Type"::AI);
        if "UNILEO Aux Table 2".FindSet then
            repeat
                Clear(gBModify);
                SetDataField2(2);

                if gBModify then
                    "UNILEO Aux Table 2".Modify;

            until "UNILEO Aux Table 2".Next = 0;
    end;

    local procedure SetDataField2(pFieldNo: Integer)
    var
        lRecFixedAsset: Record "Fixed Asset";
        lRecFALedgerEntry: Record "FA Ledger Entry";
        lAuxDate: Date;
    begin
        case pFieldNo of
            2:
                begin
                    Clear(lRecFixedAsset);
                    lRecFixedAsset.SetRange("UNILEO Rubric", "UNILEO Aux Table 2".Description1);
                    if lRecFixedAsset.FindSet then
                        repeat
                            Clear(lRecFALedgerEntry);
                            lRecFALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SetRange("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SetRange("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SetRange("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.SetFilter(Amount, '>%1', 0);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table 2"."Amount 2" += lRecFALedgerEntry.Amount;
                            gDTotalAmount2 += lRecFALedgerEntry.Amount;
                            gBModify := true;
                        until lRecFixedAsset.Next = 0;
                end;
        end;
    end;

    local procedure SetData3()
    var
        DateSetup: Date;
    begin
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::AI, gDStartDate);
        "UNILEO Aux Table 3".SetRange("Setup Start Date", DateSetup);
        "UNILEO Aux Table 3".SetRange("Report Type", "UNILEO Report Type"::AI);
        if "UNILEO Aux Table 3".FindSet then
            repeat
                Clear(gBModify);
                SetDataField3(1);
                SetDataField3(4);

                if gBModify then
                    "UNILEO Aux Table 3".Modify;

            until "UNILEO Aux Table 3".Next = 0;
    end;

    local procedure SetDataField3(pFieldNo: Integer)
    var
        lRecFixedAsset: Record "Fixed Asset";
        lRecFALedgerEntry: Record "FA Ledger Entry";
    begin
        case pFieldNo of
            1:
                begin
                    Clear(lRecFixedAsset);
                    lRecFixedAsset.SetRange("UNILEO Rubric", "UNILEO Aux Table 3".Description1);
                    if lRecFixedAsset.FindSet then
                        repeat
                            Clear(lRecFALedgerEntry);
                            lRecFALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SetRange("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SetRange("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SetRange("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.SetFilter(Amount, '<%1', 0);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table 3"."Amount 1" += lRecFALedgerEntry.Amount;
                            gDTotalAmount1 += lRecFALedgerEntry.Amount;

                            Clear(lRecFALedgerEntry);
                            lRecFALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SetRange("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SetRange("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::Disposal);
                            lRecFALedgerEntry.SetFilter("FA Posting Type", '%1|%2', lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost",
                              lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table 3"."Amount 1" += lRecFALedgerEntry.Amount;
                            gDTotalAmount1 += lRecFALedgerEntry.Amount;
                            gBModify := true;
                        until lRecFixedAsset.Next = 0;
                end;
            4:
                begin
                    Clear(lRecFixedAsset);
                    lRecFixedAsset.SetRange("UNILEO Rubric", "UNILEO Aux Table 3".Description1);
                    if lRecFixedAsset.FindSet then
                        repeat
                            Clear(lRecFALedgerEntry);
                            lRecFALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SetRange("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SetRange("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::Disposal);
                            lRecFALedgerEntry.SetRange("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SetRange("PTSSFA Disposal Option", lRecFALedgerEntry."PTSSFA Disposal Option"::Disposal);
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table 3"."Amount 4" += lRecFALedgerEntry.Amount;
                            gDTotalAmount4 += lRecFALedgerEntry.Amount;
                            gBModify := true;
                        until lRecFixedAsset.Next = 0;
                end;
        end;
    end;

    local procedure FormatAmount2(pAmount: Decimal): Text[30]
    begin
        exit(Format(pAmount, 0, '<standard,9>'));
    end;

    local procedure CleanValues()
    var
        lRecUNILEOAuxTable: Record "UNILEO Aux Table";
    begin
        Clear(lRecUNILEOAuxTable);
        lRecUNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::AI);
        lRecUNILEOAuxTable.ModifyAll("Amount 1", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 2", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 3", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 4", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 5", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 6", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 7", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 8", 0);
        lRecUNILEOAuxTable.ModifyAll("Amount 9", 0);

        Clear(gDTotalAmount1);
        Clear(gDTotalAmount2);
        Clear(gDTotalAmount4);
        Clear(gDTotalAmount7);
        Clear(gDTotalAmount9);
    end;

    local procedure FormatAmount(pAmount: Decimal): Text[30]
    begin
        exit(Format(pAmount, 0, '<precision, 2:2><standard,9>'));
    end;

    local procedure InitParameters()
    begin
        PeriodYear := Date2DMY(WorkDate, 3);
        MakeDateFilter2;
        if Date2DMY(gDate, 2) in [1, 2, 3] then
            gPeriod := gPeriod::"1";
        if Date2DMY(gDate, 2) in [4, 5, 6] then
            gPeriod := gPeriod::"2";
        if Date2DMY(gDate, 2) in [7, 8, 9] then
            gPeriod := gPeriod::"3";
        if Date2DMY(gDate, 2) in [10, 11, 12] then
            gPeriod := gPeriod::"4";
    end;

    procedure SendXmlParameters(var L_OptPeriodType: Option T; var L_DStartDate: Date; var L_DEndDate: Date; var L_XMLFileName: Text; var L_Period: Option "1","2","3","4","5"; var L_PeriodYear: Integer)
    begin
        gOptPeriodType := L_OptPeriodType;
        gDStartDate := L_DStartDate;
        gDEndDate := L_DEndDate;
        gXMLFileName := L_XMLFileName;
        gPeriod := L_Period;
        PeriodYear := L_PeriodYear;
    end;
}

