xmlport 57001 "UNILEO AFT"
{
    Direction = Export;
    Encoding = UTF8;

    schema
    {
        textelement(aft)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            XmlName = 'AFT';
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
            textelement(ativosfixostangiveis)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'AtivosFixosTangiveis';
                textelement(resumoaft)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    XmlName = 'ResumoAFT';
                    textelement(macrorubricas)
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'MacroRubricas';
                        textelement(id_macrorubrica)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_MacroRubrica';

                            trigger OnBeforePassVariable()
                            begin
                                ID_MacroRubrica := '1';
                            end;
                        }
                        textelement(macrorubrica)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'MacroRubrica';

                            trigger OnBeforePassVariable()
                            begin
                                MacroRubrica := 'AFT';
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
                                TotalQuantiaEscrituradaInic := FormatAmount(gDTotalAmount1[1] + gDTotalAmount1[2] + gDTotalAmount1[3]);
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
                                TotalAdicoes := FormatAmount(gDTotalAmount2[1] + gDTotalAmount2[2] + gDTotalAmount2[3]);
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
                                TotalRevalorizacoes := FormatAmount(gDTotalAmount4[1] + gDTotalAmount4[2] + gDTotalAmount4[3]);
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
                        textelement(totaldepreciacoesperiodo)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalDepreciacoesPeriodo';

                            trigger OnBeforePassVariable()
                            begin
                                TotalDepreciacoesPeriodo := FormatAmount(gDTotalAmount7[1] + gDTotalAmount7[2] + gDTotalAmount7[3]);
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
                                TotalDiminuicoes := FormatAmount(gDTotalAmount9[1] + gDTotalAmount9[2] + gDTotalAmount9[3]);
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
                                TotalQuantiaEscrituradaFina := FormatAmount(gDTotalAmount1[1] + gDTotalAmount2[1] + gDTotalAmount4[1] + gDTotalAmount7[1] +
                                  gDTotalAmount1[2] + gDTotalAmount2[2] + gDTotalAmount4[2] + gDTotalAmount7[2] +
                                    gDTotalAmount1[3] + gDTotalAmount2[3] + gDTotalAmount4[3] + gDTotalAmount7[3]);
                            end;
                        }
                    }
                    tableelement("unileoauxtable macrorubrica"; "UNILEO Aux Table")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'RubricasAgregadoras';
                        SourceTableView = SORTING(Integer, "Report Type", Code1) WHERE("Report Type" = CONST(AFT), GroupCode = CONST(true));
                        fieldelement(ID_RubricasAgregadoras; "UNILEOAuxTable MacroRubrica".Integer)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        fieldelement(RubricaAgregadora; "UNILEOAuxTable MacroRubrica".Code1)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        textelement(rubr_macrorubrica)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'MacroRubrica';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_MacroRubrica := 'AFT';
                            end;
                        }
                        textelement(totalquantiaescrituradainic1)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalQuantiaEscrituradaInicial';

                            trigger OnBeforePassVariable()
                            begin
                                case "UNILEOAuxTable MacroRubrica".Code1 of
                                    'AFT1':
                                        i := 1;
                                    'AFT2':
                                        i := 2;
                                    'AFT3':
                                        i := 3;
                                end;

                                TotalQuantiaEscrituradaInic1 := FormatAmount(gDTotalAmount1[i]);
                            end;
                        }
                        textelement(rubr_totaladicoes)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalAdicoes';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalAdicoes := FormatAmount(gDTotalAmount2[i]);
                            end;
                        }
                        textelement(totaltransferenciasinternas1)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalTransferenciasInternasEntidade';

                            trigger OnBeforePassVariable()
                            begin
                                TotalTransferenciasInternas1 := FormatAmount(0);
                            end;
                        }
                        textelement(rubr_totalrevalorizacoes)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalRevalorizacoes';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalRevalorizacoes := FormatAmount(gDTotalAmount4[i]);
                            end;
                        }
                        textelement(totalreversoesperdasimparid1)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalReversoesPerdasImparidade';

                            trigger OnBeforePassVariable()
                            begin
                                TotalReversoesPerdasImparid1 := FormatAmount(0);
                            end;
                        }
                        textelement(rubr_totalperdasimparidade)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalPerdasImparidade';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalPerdasImparidade := FormatAmount(0);
                            end;
                        }
                        textelement(rubr_totaldepreciacoesperio)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalDepreciacoesPeriodo';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalDepreciacoesPerio := FormatAmount(gDTotalAmount7[i]);
                            end;
                        }
                        textelement(rubr_totaldiferencascambiai)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalDiferencasCambiais';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalDiferencasCambiai := FormatAmount(0);
                            end;
                        }
                        textelement(rubr_totaldiminuicoes)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalDiminuicoes';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalDiminuicoes := FormatAmount(gDTotalAmount9[i]);
                            end;
                        }
                        textelement(totalquantiaescrituradafina1)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalQuantiaEscrituradaFinal';

                            trigger OnBeforePassVariable()
                            begin
                                TotalQuantiaEscrituradaFina1 := FormatAmount(gDTotalAmount1[i] + gDTotalAmount2[i] + gDTotalAmount4[i] + gDTotalAmount7[i]);
                            end;
                        }
                    }

                    trigger OnBeforePassVariable()
                    begin
                        ClearValues;
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
                        SourceTableView = SORTING(Integer, "Report Type", Code1) WHERE("Report Type" = CONST(AFT), GroupCode = CONST(false));
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
                        fieldelement(MacroRubrica; "UNILEO Aux Table".Code3)
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
                        textelement(depreciacoesperiodo)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'DepreciacoesPeriodo';

                            trigger OnBeforePassVariable()
                            begin
                                DepreciacoesPeriodo := FormatAmount("UNILEO Aux Table"."Amount 7");
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
                                  "UNILEO Aux Table"."Amount 4" + "UNILEO Aux Table"."Amount 7");
                            end;
                        }
                    }
                }
            }
            textelement(ativosfixostangiveisdesagre)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'AtivosFixosTangiveisDesagregacaoAdicoes';
                textelement(resumoaftdesagregacaoadicoe)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    XmlName = 'ResumoAFTDesagregacaoAdicoes';
                    textelement(resu_macrorubricas)
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'MacroRubricas';
                        textelement(id_macrorubricas)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_MacroRubricas';

                            trigger OnBeforePassVariable()
                            begin
                                ID_MacroRubricas := '1';
                            end;
                        }
                        textelement(macrorubricas_macrorubrica)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'MacroRubrica';

                            trigger OnBeforePassVariable()
                            begin
                                MacroRubricas_MacroRubrica := 'AFT';
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
                                TotalCompra := FormatAmount(gDTotalAmount2[1] + gDTotalAmount2[2] + gDTotalAmount2[3]);
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
                        textelement(totalexpropriacao)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalExpropriacao';

                            trigger OnBeforePassVariable()
                            begin
                                TotalExpropriacao := FormatAmount(0);
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
                    }
                    tableelement("unileoauxtable macrorubrica2"; "UNILEO Aux Table")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'RubricasAgregadoras';
                        SourceTableView = SORTING(Integer, "Report Type", Code1) WHERE("Report Type" = CONST(AFT), GroupCode = CONST(true));
                        fieldelement(ID_RubricasAgregadoras; "UNILEOAuxTable MacroRubrica2".Integer)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        fieldelement(RubricaAgregadora; "UNILEOAuxTable MacroRubrica2".Code1)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        textelement(resu_rubr_macrorubrica)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'MacroRubrica';

                            trigger OnBeforePassVariable()
                            begin
                                Resu_Rubr_MacroRubrica := 'AFT';
                            end;
                        }
                        textelement(rubr_totalinternas)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalInternas';

                            trigger OnBeforePassVariable()
                            begin
                                case "UNILEOAuxTable MacroRubrica2".Code1 of
                                    'AFT1':
                                        i := 1;
                                    'AFT2':
                                        i := 2;
                                    'AFT3':
                                        i := 3;
                                end;

                                Rubr_TotalInternas := FormatAmount(0);
                            end;
                        }
                        textelement(rubr_totalcompra)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalCompra';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalCompra := FormatAmount(gDTotalAmount2[i]);
                            end;
                        }
                        textelement(rubr_totalcessao)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalCessao';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalCessao := FormatAmount(0);
                            end;
                        }
                        textelement(rubr_totaltransferenciatroc)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalTransferenciaTroca';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalTransferenciaTroc := FormatAmount(0);
                            end;
                        }
                        textelement(rubr_totalexpropriacao)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalExpropriacao';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalExpropriacao := FormatAmount(0);
                            end;
                        }
                        textelement(totaldoacaoherancalegadooup1)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalDoacaoHerancaLegadoOuPerdidoFavorEstado';

                            trigger OnBeforePassVariable()
                            begin
                                TotalDoacaoHerancaLegadoOuP1 := FormatAmount(0);
                            end;
                        }
                        textelement(rubr_totaldacaopagamento)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalDacaoPagamento';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalDacaoPagamento := FormatAmount(0);
                            end;
                        }
                        textelement(rubr_totallocacaofinanceira)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalLocacaoFinanceira';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalLocacaoFinanceira := FormatAmount(0);
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
                        textelement(rubr_totaloutras)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalOutras';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalOutras := FormatAmount(0);
                            end;
                        }
                        textelement(rubr_totalgeral)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalGeral';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalGeral := FormatAmount(0);
                            end;
                        }
                    }

                    trigger OnBeforePassVariable()
                    begin
                        ClearValues;
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
                        SourceTableView = SORTING(Integer, "Report Type", Code1) WHERE("Report Type" = CONST(AFT), GroupCode = CONST(false));
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
                        fieldelement(MacroRubrica; "UNILEO Aux Table 2".Code3)
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
                        textelement(expropriacao)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Expropriacao';

                            trigger OnBeforePassVariable()
                            begin
                                Expropriacao := FormatAmount("UNILEO Aux Table 2"."Amount 11");
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
            textelement(ativosfixostangiveisdesagre1)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'AtivosFixosTangiveisDesagregacaoDiminuicoes';
                textelement(resumoaftdesagregacaodiminu)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    XmlName = 'ResumoAFTDesagregacaoDiminuicoes';
                    textelement(ativ_resu_macrorubricas)
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'MacroRubricas';
                        textelement(macr_id_macrorubricas)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_MacroRubricas';

                            trigger OnBeforePassVariable()
                            begin
                                Macr_ID_MacroRubricas := '1';
                            end;
                        }
                        textelement(resu_macrorubricas_macrorub)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'MacroRubrica';

                            trigger OnBeforePassVariable()
                            begin
                                Resu_MacroRubricas_MacroRub := 'AFT';
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
                                TotalAlienacaoTituloOneroso := FormatAmount(gDTotalAmount1[1] + gDTotalAmount1[2] + gDTotalAmount1[3]);
                            end;
                        }
                        textelement(macr_totaltransferenciatroc)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalTransferenciaTroca';

                            trigger OnBeforePassVariable()
                            begin
                                Macr_TotalTransferenciaTroc := FormatAmount(0);
                            end;
                        }
                        textelement(totaldevolucaoreversao)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalDevolucaoReversao';

                            trigger OnBeforePassVariable()
                            begin
                                TotalDevolucaoReversao := FormatAmount(0);
                            end;
                        }
                        textelement(totalfusaocisaoreestruturac2)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalFusaoCisaoReestruturacao';

                            trigger OnBeforePassVariable()
                            begin
                                TotalFusaoCisaoReestruturac2 := FormatAmount(0);
                            end;
                        }
                        textelement(macrorubricas_totaloutras)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalOutras';

                            trigger OnBeforePassVariable()
                            begin
                                MacroRubricas_TotalOutras := FormatAmount(gDTotalAmount4[1] + gDTotalAmount4[2] + gDTotalAmount4[3]);
                            end;
                        }
                        textelement(macrorubricas_totalgeral)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalGeral';

                            trigger OnBeforePassVariable()
                            begin
                                MacroRubricas_TotalGeral := FormatAmount(0);
                            end;
                        }
                    }
                    tableelement("unileoauxtable macrorubrica3"; "UNILEO Aux Table")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'RubricasAgregadoras';
                        SourceTableView = SORTING(Integer, "Report Type", Code1) WHERE("Report Type" = CONST(AFT), GroupCode = CONST(true));
                        fieldelement(ID_RubricasAgregadoras; "UNILEOAuxTable MacroRubrica3".Integer)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        fieldelement(RubricaAgregadora; "UNILEOAuxTable MacroRubrica3".Code1)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                        }
                        textelement(ativ_resu_rubr_macrorubrica)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'MacroRubrica';

                            trigger OnBeforePassVariable()
                            begin
                                Ativ_Resu_Rubr_MacroRubrica := 'AFT';
                            end;
                        }
                        textelement(rubr_totalalienacaotituloon)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalAlienacaoTituloOneroso';

                            trigger OnBeforePassVariable()
                            begin
                                case "UNILEOAuxTable MacroRubrica3".Code1 of
                                    'AFT1':
                                        i := 1;
                                    'AFT2':
                                        i := 2;
                                    'AFT3':
                                        i := 3;
                                end;

                                Rubr_TotalAlienacaoTituloOn := FormatAmount(gDTotalAmount1[i]);
                            end;
                        }
                        textelement(rubr_totaltransferenciatroc1)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalTransferenciaTroca';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalTransferenciaTroc1 := FormatAmount(0);
                            end;
                        }
                        textelement(rubr_totaldevolucaoreversao)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalDevolucaoReversao';

                            trigger OnBeforePassVariable()
                            begin
                                Rubr_TotalDevolucaoReversao := FormatAmount(0);
                            end;
                        }
                        textelement(totalfusaocisaoreestruturac3)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalFusaoCisaoReestruturacao';

                            trigger OnBeforePassVariable()
                            begin
                                TotalFusaoCisaoReestruturac3 := FormatAmount(0);
                            end;
                        }
                        textelement(resu_rubr_totaloutras)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalOutras';

                            trigger OnBeforePassVariable()
                            begin
                                Resu_Rubr_TotalOutras := FormatAmount(gDTotalAmount4[i]);
                            end;
                        }
                        textelement(resu_rubr_totalgeral)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'TotalGeral';

                            trigger OnBeforePassVariable()
                            begin
                                Resu_Rubr_TotalGeral := FormatAmount(0);
                            end;
                        }
                    }

                    trigger OnBeforePassVariable()
                    begin
                        ClearValues;
                        SetData3;
                    end;
                }
                textelement(aft_ativ_registos)
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                    XmlName = 'Registos';
                    tableelement("unileo aux table 3"; "UNILEO Aux Table")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'Registo';
                        SourceTableView = SORTING(Integer, "Report Type", Code1) WHERE("Report Type" = CONST(AFT), GroupCode = CONST(false));
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
                        fieldelement(MacroRubrica; "UNILEO Aux Table 3".Code3)
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
                        textelement(devolucaoreversao)
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'DevolucaoReversao';

                            trigger OnBeforePassVariable()
                            begin
                                DevolucaoReversao := FormatAmount("UNILEO Aux Table 3"."Amount 6");
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
        XMLFileName := Entidade + Ano + Periodo + Periodicidade + 'AFT.XML';
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
        gDTotalAmount1: array[3] of Decimal;
        gDTotalAmount2: array[3] of Decimal;
        gDTotalAmount4: array[3] of Decimal;
        gDTotalAmount7: array[3] of Decimal;
        gDTotalAmount9: array[3] of Decimal;
        gAuxCode2: Code[20];
        i: Integer;
        gBModify: Boolean;
        XMLFileName: Text;
        gPeriod: Option "1","2","3","4","5";
        FromWebservices: Boolean;
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

        case gPeriod of
            gPeriod::"1":
                begin
                    Periodo := '001';
                    gDate := DMY2Date(1, 1, lAux_Year);
                    gDStartDate := DMY2Date(1, 1, lAux_Year);
                    gDEndDate := DMY2Date(31, 3, lAux_Year);
                end;
            gPeriod::"2":
                begin
                    Periodo := '002';
                    gDate := DMY2Date(1, 4, lAux_Year);
                    gDStartDate := DMY2Date(1, 1, lAux_Year);
                    gDEndDate := DMY2Date(30, 6, lAux_Year);
                end;
            gPeriod::"3":
                begin
                    Periodo := '003';
                    gDate := DMY2Date(1, 7, lAux_Year);
                    gDStartDate := DMY2Date(1, 1, lAux_Year);
                    gDEndDate := DMY2Date(30, 9, lAux_Year);
                end;
            gPeriod::"4":
                begin
                    Periodo := '004';
                    gDate := DMY2Date(1, 10, lAux_Year);
                    gDStartDate := DMY2Date(1, 1, lAux_Year);
                    gDEndDate := DMY2Date(31, 12, lAux_Year);
                end;
            gPeriod::"5":
                begin
                    Periodo := '005';
                    gDate := DMY2Date(1, 12, lAux_Year);
                    gDStartDate := DMY2Date(1, 1, lAux_Year);
                    gDEndDate := ClosingDate(DMY2Date(31, 12, lAux_Year));
                end;
        end;
    end;

    local procedure SetData()
    var
        DateSetup: Date;
    begin
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::AFT, gDStartDate);
        "UNILEOAuxTable MacroRubrica".SetRange("Setup Start Date", DateSetup);
        "UNILEO Aux Table".SetRange("Setup Start Date", DateSetup);
        "UNILEO Aux Table".SetRange("Report Type", "UNILEO Report Type"::AFT);
        "UNILEO Aux Table".SetRange(GroupCode, false);
        if "UNILEO Aux Table".FindSet then
            repeat
                Clear(gBModify);

                if gAuxCode2 <> "UNILEO Aux Table".Code2 then
                    i += 1;

                SetDataField(1);
                SetDataField(2);
                SetDataField(4);
                SetDataField(7);
                SetDataField(9);

                if gBModify then
                    "UNILEO Aux Table".Modify;

                gAuxCode2 := "UNILEO Aux Table".Code2;

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
                            gDTotalAmount1[i] += lRecFALedgerEntry.Amount;
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
                            lRecFALedgerEntry.SetRange("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SetRange("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.SetFilter(Amount, '>%1', 0);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table"."Amount 2" += lRecFALedgerEntry.Amount;
                            gDTotalAmount2[i] += lRecFALedgerEntry.Amount;
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
                            gDTotalAmount4[i] += lRecFALedgerEntry.Amount;
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
                            lRecFALedgerEntry.SetRange("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SetRange("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table"."Amount 7" += lRecFALedgerEntry.Amount;
                            gDTotalAmount7[i] += lRecFALedgerEntry.Amount;
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
                            gDTotalAmount9[i] += lRecFALedgerEntry.Amount;

                            Clear(lRecFALedgerEntry);
                            lRecFALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SetRange("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SetRange("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::Disposal);
                            lRecFALedgerEntry.SetFilter("FA Posting Type", '%1|%2', lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost",
                              lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);

                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table"."Amount 9" += lRecFALedgerEntry.Amount;
                            gDTotalAmount9[i] += lRecFALedgerEntry.Amount;
                            gBModify := true;
                        until lRecFixedAsset.Next = 0;
                end;
        end;
    end;

    local procedure SetData2()
    var
        DateSetup: Date;
    begin
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::AFT, gDStartDate);
        "UNILEOAuxTable MacroRubrica2".SetRange("Setup Start Date", DateSetup);
        "UNILEO Aux Table 2".SetRange("Setup Start Date", DateSetup);
        "UNILEO Aux Table 2".SetRange("Report Type", "UNILEO Report Type"::AFT);
        "UNILEO Aux Table 2".SetRange(GroupCode, false);
        if "UNILEO Aux Table 2".FindSet then
            repeat
                Clear(gBModify);

                if gAuxCode2 <> "UNILEO Aux Table 2".Code2 then
                    i += 1;

                SetDataField2(2);

                if gBModify then
                    "UNILEO Aux Table 2".Modify;

                gAuxCode2 := "UNILEO Aux Table 2".Code2;

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
                            gDTotalAmount2[i] += lRecFALedgerEntry.Amount;
                            gBModify := true;
                        until lRecFixedAsset.Next = 0;
                end;
        end;
    end;

    local procedure SetData3()
    var
        DateSetup: Date;
    begin
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::AFT, gDStartDate);
        "UNILEOAuxTable MacroRubrica3".SetRange("Setup Start Date", DateSetup);
        "UNILEO Aux Table 3".SetRange("Setup Start Date", DateSetup);
        "UNILEO Aux Table 3".SetRange("Report Type", "UNILEO Report Type"::AFT);
        "UNILEO Aux Table 3".SetRange(GroupCode, false);
        if "UNILEO Aux Table 3".FindSet then
            repeat
                Clear(gBModify);

                if gAuxCode2 <> "UNILEO Aux Table 3".Code2 then
                    i += 1;

                SetDataField3(1);
                SetDataField3(4);

                if gBModify then
                    "UNILEO Aux Table 3".Modify;

                gAuxCode2 := "UNILEO Aux Table 3".Code2;

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
                            gDTotalAmount1[i] += lRecFALedgerEntry.Amount;

                            Clear(lRecFALedgerEntry);
                            lRecFALedgerEntry.SetCurrentKey("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SetRange("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SetRange("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::Disposal);
                            lRecFALedgerEntry.SetFilter("FA Posting Type", '%1|%2', lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost",
                              lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            lRecFALedgerEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.CalcSums(Amount);
                            "UNILEO Aux Table 3"."Amount 1" += lRecFALedgerEntry.Amount;
                            gDTotalAmount1[i] += lRecFALedgerEntry.Amount;
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
                            gDTotalAmount4[i] += lRecFALedgerEntry.Amount;
                            gBModify := true;
                        until lRecFixedAsset.Next = 0;
                end;
        end;
    end;

    local procedure FormatAmount2(pAmount: Decimal): Text[30]
    begin
        exit(Format(pAmount, 0, '<standard,9>'));
    end;

    local procedure ClearValues()
    var
        lRecUNILEOAuxTable: Record "UNILEO Aux Table";
    begin
        Clear(lRecUNILEOAuxTable);
        lRecUNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::AFT);
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

        Clear(gDTotalAmount1);
        Clear(gDTotalAmount2);
        Clear(gDTotalAmount4);
        Clear(gDTotalAmount7);
        Clear(gDTotalAmount9);

        Clear(i);
        Clear(gAuxCode2);
    end;

    local procedure FormatAmount(pAmount: Decimal): Text[30]
    begin
        exit(Format(pAmount, 0, '<precision, 2:2><standard,9>'));
    end;

    local procedure InitParameters()
    begin
        gOptPeriodType := gOptPeriodType::T;
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

