xmlport 57003 "UNILEO BA"
{
    Direction = Export;
    Encoding = UTF8;

    schema
    {
        textelement(ba)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            XmlName = 'BA';
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
                        Ano := Format(Date2DMY(StartDate1, 3));
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
                        if Frequency = Frequency::Week then
                            Periodicidade := 'S';
                        if Frequency = Frequency::Month then
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
                        Periodo := Periodo2;
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
            textelement(lstresumo)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'LstResumo';
                textelement("1r_resumo")
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'Resumo';
                    textelement("1r_id_resumo")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_Resumo';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_ID_Resumo" := '1';
                        end;
                    }
                    textelement("1r_saldosemovimentos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'SaldosEMovimentos';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_SaldosEMovimentos" := 'BA01';
                        end;
                    }
                    textelement("1r_debito")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Debito';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_Debito" := FormatAmount(GetTotals('1D'));
                        end;
                    }
                    textelement("1r_credito")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Credito';

                        trigger OnBeforePassVariable()
                        begin
                            "1R_Credito" := FormatAmount(GetTotals('1C'));
                        end;
                    }
                }
                textelement("2r_resumo")
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'Resumo';
                    textelement("2r_id_resumo")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_Resumo';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_ID_Resumo" := '2';
                        end;
                    }
                    textelement("2r_saldosemovimentos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'SaldosEMovimentos';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_SaldosEMovimentos" := 'BA02';
                        end;
                    }
                    textelement("2r_debito")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Debito';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_Debito" := FormatAmount(GetTotals('2D'));
                        end;
                    }
                    textelement("2r_credito")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Credito';

                        trigger OnBeforePassVariable()
                        begin
                            "2R_Credito" := FormatAmount(GetTotals('2C'));
                        end;
                    }
                }
                textelement("3r_resumo")
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'Resumo';
                    textelement("3r_id_resumo")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_Resumo';

                        trigger OnBeforePassVariable()
                        begin
                            "3R_ID_Resumo" := '3';
                        end;
                    }
                    textelement("3r_saldosemovimentos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'SaldosEMovimentos';

                        trigger OnBeforePassVariable()
                        begin
                            "3R_SaldosEMovimentos" := 'BA03';
                        end;
                    }
                    textelement("3r_debito")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Debito';

                        trigger OnBeforePassVariable()
                        begin
                            "3R_Debito" := FormatAmount(GetTotals('3D'));
                        end;
                    }
                    textelement("3r_credito")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Credito';

                        trigger OnBeforePassVariable()
                        begin
                            "3R_Credito" := FormatAmount(GetTotals('3C'));
                        end;
                    }
                }
                textelement("4r_resumo")
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'Resumo';
                    textelement("4r_id_resumo")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_Resumo';

                        trigger OnBeforePassVariable()
                        begin
                            "4R_ID_Resumo" := '4';
                        end;
                    }
                    textelement("4r_saldosemovimentos")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'SaldosEMovimentos';

                        trigger OnBeforePassVariable()
                        begin
                            "4R_SaldosEMovimentos" := 'BA04';
                        end;
                    }
                    textelement("4r_debito")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Debito';

                        trigger OnBeforePassVariable()
                        begin
                            "4R_Debito" := FormatAmount(GetTotals('4D'));
                        end;
                    }
                    textelement("4r_credito")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Credito';

                        trigger OnBeforePassVariable()
                        begin
                            "4R_Credito" := FormatAmount(GetTotals('4C'));
                        end;
                    }
                }

                trigger OnBeforePassVariable()
                begin
                    GetValues;

                    Clear(gIntIDRegisto);
                end;
            }
            textelement(registo)
            {
                XmlName = 'Registos';
                tableelement(Integer; Integer)
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Zero;
                    XmlName = 'Registo';
                    SourceTableView = SORTING(Number);
                    textelement(id_registo)
                    {
                        XmlName = 'ID_Registo';
                    }
                    textelement(contalocal)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ContaLocal';
                    }
                    textelement(tipomovimento)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TipoMovimento';
                    }
                    textelement(nifentidadeparceira)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'NIFEntidadeParceira';
                    }
                    textelement(tipoorcamento)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TipoOrcamento';
                    }
                    textelement(funcional)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Funcional';
                    }
                    textelement(programa)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Programa';
                    }
                    textelement(medida)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Medida';
                    }
                    textelement(fontefinanciamento)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'FonteFinanciamento';
                    }
                    textelement(economica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Economica';
                    }
                    textelement(tipoeconomica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TipoEconomica';
                    }
                    textelement(atividade)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Atividade';
                    }
                    textelement(projeto)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Projeto';
                    }
                    textelement("1d_detalheresumo")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'DetalheResumo';
                        textelement("1d_id_detalheresumo")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_DetalheResumo';

                            trigger OnBeforePassVariable()
                            begin
                                "1D_ID_DetalheResumo" := '1';
                            end;
                        }
                        textelement("1d_detalheresumo_id_registo")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_Registo';

                            trigger OnBeforePassVariable()
                            begin
                                "1D_DetalheResumo_ID_Registo" := Format(gIntIDRegisto);
                            end;
                        }
                        textelement("1d_deta_saldosemovimentos")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'SaldosEMovimentos';

                            trigger OnBeforePassVariable()
                            begin
                                "1D_Deta_SaldosEMovimentos" := 'BA01';
                            end;
                        }
                        textelement("1d_detalheresumo_debito")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Debito';

                            trigger OnBeforePassVariable()
                            begin
                                "1D_DetalheResumo_Debito" := FormatAmount(TempGLEntry."Add.-Currency Debit Amount");
                            end;
                        }
                        textelement("1d_detalheresumo_credito")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Credito';

                            trigger OnBeforePassVariable()
                            begin
                                "1D_DetalheResumo_Credito" := FormatAmount(TempGLEntry."Add.-Currency Credit Amount");
                            end;
                        }
                    }
                    textelement("2d_detalheresumo")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'DetalheResumo';
                        textelement("2d_id_detalheresumo")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_DetalheResumo';

                            trigger OnBeforePassVariable()
                            begin
                                "2D_ID_DetalheResumo" := '2';
                            end;
                        }
                        textelement("2d_detalheresumo_id_registo")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_Registo';

                            trigger OnBeforePassVariable()
                            begin
                                "2D_DetalheResumo_ID_Registo" := Format(gIntIDRegisto);
                            end;
                        }
                        textelement("2d_deta_saldosemovimentos")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'SaldosEMovimentos';

                            trigger OnBeforePassVariable()
                            begin
                                "2D_Deta_SaldosEMovimentos" := 'BA02';
                            end;
                        }
                        textelement("2d_detalheresumo_debito")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Debito';

                            trigger OnBeforePassVariable()
                            begin
                                "2D_DetalheResumo_Debito" := FormatAmount(TempGLEntry."Debit Amount");
                            end;
                        }
                        textelement("2d_detalheresumo_credito")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Credito';

                            trigger OnBeforePassVariable()
                            begin
                                "2D_DetalheResumo_Credito" := FormatAmount(TempGLEntry."Credit Amount");
                            end;
                        }
                    }
                    textelement("3d_detalheresumo")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'DetalheResumo';
                        textelement("3d_id_detalheresumo")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_DetalheResumo';

                            trigger OnBeforePassVariable()
                            begin
                                "3D_ID_DetalheResumo" := '3';
                            end;
                        }
                        textelement("3d_detalheresumo_id_registo")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_Registo';

                            trigger OnBeforePassVariable()
                            begin
                                "3D_DetalheResumo_ID_Registo" := Format(gIntIDRegisto);
                            end;
                        }
                        textelement("3d_deta_saldosemovimentos")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'SaldosEMovimentos';

                            trigger OnBeforePassVariable()
                            begin
                                "3D_Deta_SaldosEMovimentos" := 'BA03';
                            end;
                        }
                        textelement("3d_detalheresumo_debito")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Debito';

                            trigger OnBeforePassVariable()
                            begin
                                "3D_DetalheResumo_Debito" := FormatAmount(TempGLEntry."VAT Amount" + TempGLEntry."Add.-Currency Debit Amount");
                            end;
                        }
                        textelement("3d_detalheresumo_credito")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Credito';

                            trigger OnBeforePassVariable()
                            begin
                                "3D_DetalheResumo_Credito" := FormatAmount(TempGLEntry.Quantity + TempGLEntry."Add.-Currency Credit Amount");
                            end;
                        }
                    }
                    textelement("4d_detalheresumo")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'DetalheResumo';
                        textelement("4d_id_detalheresumo")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_DetalheResumo';

                            trigger OnBeforePassVariable()
                            begin
                                "4D_ID_DetalheResumo" := '4';
                            end;
                        }
                        textelement("4d_detalheresumo_id_registo")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_Registo';

                            trigger OnBeforePassVariable()
                            begin
                                "4D_DetalheResumo_ID_Registo" := Format(gIntIDRegisto);
                            end;
                        }
                        textelement("4d_deta_saldosemovimentos")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'SaldosEMovimentos';

                            trigger OnBeforePassVariable()
                            begin
                                "4D_Deta_SaldosEMovimentos" := 'BA04';
                            end;
                        }
                        textelement("4d_detalheresumo_debito")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Debito';

                            trigger OnBeforePassVariable()
                            begin
                                if ((TempGLEntry."Add.-Currency Debit Amount" + TempGLEntry."VAT Amount") - (TempGLEntry."Add.-Currency Credit Amount" + TempGLEntry.Quantity)) > 0 then begin
                                    "4D_DetalheResumo_Debito" :=
                                      FormatAmount((TempGLEntry."Add.-Currency Debit Amount" + TempGLEntry."VAT Amount") - (TempGLEntry."Add.-Currency Credit Amount" + TempGLEntry.Quantity));
                                    "4D_DetalheResumo_Credito" := FormatAmount(0);
                                end else begin
                                    "4D_DetalheResumo_Credito" :=
                                      FormatAmount(Abs((TempGLEntry."Add.-Currency Debit Amount" + TempGLEntry."VAT Amount") - (TempGLEntry."Add.-Currency Credit Amount" + TempGLEntry.Quantity)));
                                    "4D_DetalheResumo_Debito" := FormatAmount(0);
                                end;
                            end;
                        }
                        textelement("4d_detalheresumo_credito")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Credito';
                        }
                    }

                    trigger OnAfterGetRecord()
                    begin
                        with TempGLEntry do begin
                            if Integer.Number = 1 then
                                FindFirst
                            else
                                Next;
                        end;


                        gIntIDRegisto := gIntIDRegisto + 1;

                        ID_Registo := Format(gIntIDRegisto);
                        ContaLocal := TempGLEntry."G/L Account No.";
                        TipoMovimento := 'NA';
                        NIFEntidadeParceira := TempGLEntry."Source Code";
                        if CopyStr(TempGLEntry."G/L Account No.", 1, 1) = '0' then begin
                            TipoOrcamento := 'E';
                            Funcional := '353';
                            Programa := '004';
                            Medida := '065';
                            FonteFinanciamento := TempGLEntry."Global Dimension 2 Code";
                            Economica := DelChr(TempGLEntry."Global Dimension 1 Code", '=', '.');
                            TipoEconomica := GetDimType(TempGLEntry."Global Dimension 1 Code");
                            Atividade := '257';
                            Projeto := '00000';
                        end else begin
                            currXMLport.Skip;
                        end;
                    end;

                    trigger OnPreXmlItem()
                    begin
                        Integer.SetRange(Number, 1, TempGLEntry.Count);
                    end;
                }
                tableelement(integer2; Integer)
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Zero;
                    XmlName = 'Registo';
                    SourceTableView = SORTING(Number);
                    textelement(id_registo2)
                    {
                        XmlName = 'ID_Registo';
                    }
                    textelement(contalocal2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ContaLocal';
                    }
                    textelement(tipomovimento2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TipoMovimento';
                    }
                    textelement(nifentidadeparceira2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'NIFEntidadeParceira';
                    }
                    textelement(tipoorcamento2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TipoOrcamento';
                    }
                    textelement(funcional2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Funcional';
                    }
                    textelement(programa2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Programa';
                    }
                    textelement(medida2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Medida';
                    }
                    textelement(fontefinanciamento2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'FonteFinanciamento';
                    }
                    textelement(economica2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Economica';
                    }
                    textelement(tipoeconomica2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TipoEconomica';
                    }
                    textelement(atividade2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Atividade';
                    }
                    textelement(projeto2)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Projeto';
                    }
                    textelement("1d_detalheresumo2")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'DetalheResumo';
                        textelement("1d_id_detalheresumo2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_DetalheResumo';

                            trigger OnBeforePassVariable()
                            begin
                                "1D_ID_DetalheResumo2" := '1';
                            end;
                        }
                        textelement("1d_detalheresumo_id_registo2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_Registo';

                            trigger OnBeforePassVariable()
                            begin
                                "1D_DetalheResumo_ID_Registo2" := Format(gIntIDRegisto);
                            end;
                        }
                        textelement("1d_deta_saldosemovimentos2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'SaldosEMovimentos';

                            trigger OnBeforePassVariable()
                            begin
                                "1D_Deta_SaldosEMovimentos2" := 'BA01';
                            end;
                        }
                        textelement("1d_detalheresumo_debito2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Debito';

                            trigger OnBeforePassVariable()
                            begin
                                "1D_DetalheResumo_Debito2" := FormatAmount(TempGLEntry2."Add.-Currency Debit Amount");
                            end;
                        }
                        textelement("1d_detalheresumo_credito2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Credito';

                            trigger OnBeforePassVariable()
                            begin
                                "1D_DetalheResumo_Credito2" := FormatAmount(TempGLEntry2."Add.-Currency Credit Amount");
                            end;
                        }
                    }
                    textelement("2d_detalheresumo2")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'DetalheResumo';
                        textelement("2d_id_detalheresumo2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_DetalheResumo';

                            trigger OnBeforePassVariable()
                            begin
                                "2D_ID_DetalheResumo2" := '2';
                            end;
                        }
                        textelement("2d_detalheresumo_id_registo2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_Registo';

                            trigger OnBeforePassVariable()
                            begin
                                "2D_DetalheResumo_ID_Registo2" := Format(gIntIDRegisto);
                            end;
                        }
                        textelement("2d_deta_saldosemovimentos2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'SaldosEMovimentos';

                            trigger OnBeforePassVariable()
                            begin
                                "2D_Deta_SaldosEMovimentos2" := 'BA02';
                            end;
                        }
                        textelement("2d_detalheresumo_debito2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Debito';

                            trigger OnBeforePassVariable()
                            begin
                                "2D_DetalheResumo_Debito2" := FormatAmount(TempGLEntry2."Debit Amount");
                            end;
                        }
                        textelement("2d_detalheresumo_credito2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Credito';

                            trigger OnBeforePassVariable()
                            begin
                                "2D_DetalheResumo_Credito2" := FormatAmount(TempGLEntry2."Credit Amount");
                            end;
                        }
                    }
                    textelement("3d_detalheresumo2")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'DetalheResumo';
                        textelement("3d_id_detalheresumo2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_DetalheResumo';

                            trigger OnBeforePassVariable()
                            begin
                                "3D_ID_DetalheResumo2" := '3';
                            end;
                        }
                        textelement("3d_detalheresumo_id_registo2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_Registo';

                            trigger OnBeforePassVariable()
                            begin
                                "3D_DetalheResumo_ID_Registo2" := Format(gIntIDRegisto);
                            end;
                        }
                        textelement("3d_deta_saldosemovimentos2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'SaldosEMovimentos';

                            trigger OnBeforePassVariable()
                            begin
                                "3D_Deta_SaldosEMovimentos2" := 'BA03';
                            end;
                        }
                        textelement("3d_detalheresumo_debito2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Debito';

                            trigger OnBeforePassVariable()
                            begin
                                "3D_DetalheResumo_Debito2" := FormatAmount(TempGLEntry2."VAT Amount" + TempGLEntry2."Add.-Currency Debit Amount");
                            end;
                        }
                        textelement("3d_detalheresumo_credito2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Credito';

                            trigger OnBeforePassVariable()
                            begin
                                "3D_DetalheResumo_Credito2" := FormatAmount(TempGLEntry2.Quantity + TempGLEntry2."Add.-Currency Credit Amount");
                            end;
                        }
                    }
                    textelement("4d_detalheresumo2")
                    {
                        MaxOccurs = Unbounded;
                        MinOccurs = Once;
                        XmlName = 'DetalheResumo';
                        textelement("4d_id_detalheresumo2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_DetalheResumo';

                            trigger OnBeforePassVariable()
                            begin
                                "4D_ID_DetalheResumo2" := '4';
                            end;
                        }
                        textelement("4d_detalheresumo_id_registo2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'ID_Registo';

                            trigger OnBeforePassVariable()
                            begin
                                "4D_DetalheResumo_ID_Registo2" := Format(gIntIDRegisto);
                            end;
                        }
                        textelement("4d_deta_saldosemovimentos2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'SaldosEMovimentos';

                            trigger OnBeforePassVariable()
                            begin
                                "4D_Deta_SaldosEMovimentos2" := 'BA04';
                            end;
                        }
                        textelement("4d_detalheresumo_debito2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Debito';

                            trigger OnBeforePassVariable()
                            begin
                                if ((TempGLEntry2."Add.-Currency Debit Amount" + TempGLEntry2."VAT Amount") - (TempGLEntry2."Add.-Currency Credit Amount" + TempGLEntry2.Quantity)) > 0 then begin
                                    "4D_DetalheResumo_Debito2" :=
                                      FormatAmount((TempGLEntry2."Add.-Currency Debit Amount" + TempGLEntry2."VAT Amount") - (TempGLEntry2."Add.-Currency Credit Amount" + TempGLEntry2.Quantity));
                                    "4D_DetalheResumo_Credito2" := FormatAmount(0);
                                end else begin
                                    "4D_DetalheResumo_Credito2" :=
                                      FormatAmount(Abs((TempGLEntry2."Add.-Currency Debit Amount" + TempGLEntry2."VAT Amount") - (TempGLEntry2."Add.-Currency Credit Amount" + TempGLEntry2.Quantity)));
                                    "4D_DetalheResumo_Debito2" := FormatAmount(0);
                                end;
                            end;
                        }
                        textelement("4d_detalheresumo_credito2")
                        {
                            MaxOccurs = Once;
                            MinOccurs = Once;
                            TextType = Text;
                            XmlName = 'Credito';
                        }
                    }

                    trigger OnAfterGetRecord()
                    begin
                        with TempGLEntry2 do begin
                            if Integer2.Number = 1 then
                                FindFirst
                            else
                                Next;
                        end;


                        gIntIDRegisto := gIntIDRegisto + 1;

                        ID_Registo2 := Format(gIntIDRegisto);
                        ContaLocal2 := TempGLEntry2."G/L Account No.";
                        TipoMovimento2 := 'NA';
                        NIFEntidadeParceira2 := TempGLEntry2."Source Code";
                        if CopyStr(TempGLEntry2."G/L Account No.", 1, 1) = '0' then begin
                            currXMLport.Skip;
                        end else begin
                            TipoOrcamento2 := 'NA';
                            Funcional2 := '';
                            Programa2 := '';
                            Medida2 := '';
                            FonteFinanciamento2 := '';
                            Economica2 := '';
                            TipoEconomica2 := '';
                            Atividade2 := '';
                            Projeto2 := '';
                        end;
                    end;

                    trigger OnPreXmlItem()
                    begin
                        Integer2.SetRange(Number, 1, TempGLEntry2.Count);
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
                group("Opções")
                {
                    field(PeriodYear; PeriodYear)
                    {
                        Caption = 'Ano';

                        trigger OnValidate()
                        begin
                            if Frequency = Frequency::Month then begin
                                if PeriodNumber > 12 then
                                    StartDate1 := DMY2Date(1, 12, PeriodYear)
                                else
                                    StartDate1 := DMY2Date(1, PeriodNumber, PeriodYear);
                                EndDate1 := CalcDate('<CM>', StartDate1);
                                if PeriodNumber = 14 then
                                    EndDate1 := ClosingDate(EndDate1);
                            end;

                            if Frequency = Frequency::Week then
                                UNILEOMgt.WeekStartEndDate(StartDate1, EndDate1, PeriodNumber, PeriodYear);
                        end;
                    }
                    field(Frequency; Frequency)
                    {
                        Caption = 'Frequency';
                        OptionCaption = 'Week,Month';

                        trigger OnValidate()
                        begin
                            if Frequency = Frequency::Month then begin
                                PeriodNumber := Date2DMY(Today, 2);
                                PeriodYear := Date2DMY(Today, 3);
                                if PeriodNumber > 12 then
                                    StartDate1 := DMY2Date(1, 12, PeriodYear)
                                else
                                    StartDate1 := DMY2Date(1, PeriodNumber, PeriodYear);
                                EndDate1 := CalcDate('<CM>', StartDate1);
                                if PeriodNumber = 14 then
                                    EndDate1 := ClosingDate(EndDate1);
                            end;

                            if Frequency = Frequency::Week then begin
                                PeriodNumber := Date2DWY(Today, 2);
                                PeriodYear := Date2DWY(Today, 3);
                                UNILEOMgt.WeekStartEndDate(StartDate1, EndDate1, PeriodNumber, PeriodYear);
                            end;
                        end;
                    }
                    field(PeriodNumber; PeriodNumber)
                    {
                        Caption = 'Period';

                        trigger OnValidate()
                        begin
                            if Frequency = Frequency::Month then begin
                                if PeriodNumber > 12 then
                                    StartDate1 := DMY2Date(1, 12, PeriodYear)
                                else
                                    StartDate1 := DMY2Date(1, PeriodNumber, PeriodYear);
                                EndDate1 := CalcDate('<CM>', StartDate1);
                                if PeriodNumber = 14 then
                                    EndDate1 := ClosingDate(EndDate1);
                            end;

                            if Frequency = Frequency::Week then
                                UNILEOMgt.WeekStartEndDate(StartDate1, EndDate1, PeriodNumber, PeriodYear);
                        end;
                    }
                    field(StartDate1; StartDate1)
                    {
                        Caption = 'Start Date';
                        Editable = false;
                    }
                    field(EndDate1; EndDate1)
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

        trigger OnInit()
        begin
            InitPeriodDate;
        end;
    }

    trigger OnInitXmlPort()
    begin
        FillPartnerEntity;
    end;

    trigger OnPostXmlPort()
    begin
        XMLFileName := Entidade + Ano + Periodo2 + Periodicidade + 'BA.XML';
        currXMLport.Filename(XMLFileName);
    end;

    trigger OnPreXmlPort()
    begin
        gRecCompInfo.Get;
        CreatePeriodDate;
    end;

    var
        gRecCompInfo: Record "Company Information";
        Frequency: Option Week,Month;
        PeriodNumber: Integer;
        StartDate1: Date;
        EndDate1: Date;
        Periodo2: Text;
        PartnerIdentity: Record "G/L Entry" temporary;
        gIntIDRegisto: Integer;
        TempGLEntry: Record "G/L Entry" temporary;
        TempGLEntry2: Record "G/L Entry" temporary;
        FinEntryNo: Integer;
        Text1110032: Label 'Fiscal period dont exist.';
        Text1110033: Label '<= %1';
        UnknowEntity: Label '999999990';
        OrcEntryNo: Integer;
        XMLFileName: Text;
        Text0001: Label 'Processing...\\      #1######   #2#######################################';
        FromWebservices: Boolean;
        gXMLFileName: Text;
        PeriodYear: Integer;
        UNILEOMgt: Codeunit "UNILEO Management";

    procedure StartPeriod(Date: Date): Date
    var
        PerContco: Record "Accounting Period";
    begin
        PerContco.SetRange("New Fiscal Year", true);
        PerContco.SetFilter("Starting Date", Text1110033, Date);
        if PerContco.Find('+') then
            exit(PerContco."Starting Date")
        else
            Error(Text1110032);
    end;

    local procedure CreatePeriodDate()
    begin
        if Frequency = Frequency::Month then
            Periodo2 := Format(PeriodNumber, 3, '<integer,3><filler character,0>');

        if Frequency = Frequency::Week then
            Periodo2 := Format(PeriodNumber, 3, '<integer,3><filler character,0>');
    end;

    local procedure InitPeriodDate()
    begin
        Frequency := Frequency::Week;
        PeriodNumber := Date2DWY(Today, 2);
        PeriodYear := Date2DWY(Today, 3);
        StartDate1 := DWY2Date(1, PeriodNumber, PeriodYear);
        EndDate1 := CalcDate('<CW>', StartDate1);
        UNILEOMgt.WeekStartEndDate(StartDate1, EndDate1, PeriodNumber, PeriodYear);
    end;

    local procedure IsPartnerEntity(GLEntry2: Record "G/L Entry"): Boolean
    var
        Vendor: Record Vendor;
        Customer: Record Customer;
    begin
        case GLEntry2."Source Type" of
            GLEntry2."Source Type"::Vendor:
                if (Vendor.Get(GLEntry2."Source No.")) and Vendor."Partner Identity" then
                    exit(true);
            GLEntry2."Source Type"::Customer:
                if (Customer.Get(GLEntry2."Source No.")) and Customer."Partner Identity" then
                    exit(true);
        end;
        exit(false);
    end;

    local procedure FormatAmount(pAmount: Decimal): Text[30]
    begin
        exit(Format(pAmount, 0, '<precision, 2:2><standard,9>'));
    end;

    local procedure GetDimType(pCode: Code[20]): Code[10]
    var
        lRecGenLedgerSetup: Record "General Ledger Setup";
        lRecDimensionValue: Record "Dimension Value";
    begin
        Clear(lRecGenLedgerSetup);
        lRecGenLedgerSetup.Get;

        Clear(lRecDimensionValue);
        if lRecDimensionValue.Get(lRecGenLedgerSetup."Global Dimension 1 Code", pCode) then
            if lRecDimensionValue."Budget Dim Type" = lRecDimensionValue."Budget Dim Type"::Expenditure then
                exit('D')
            else
                exit('R');
    end;

    local procedure GetTotals(TagColumn: Text): Decimal
    begin

        TempGLEntry2.Reset;
        TempGLEntry2.CalcSums("Add.-Currency Credit Amount", "Add.-Currency Debit Amount", //1 - saldo inicial
                              "Debit Amount", "Credit Amount", //2 - movimento periodo
                              "VAT Amount", Quantity); //3 - movimento acumulado
        TempGLEntry.Reset;
        TempGLEntry.CalcSums("Add.-Currency Credit Amount", "Add.-Currency Debit Amount", //1 - saldo inicial - cred,deb
                              "Debit Amount", "Credit Amount", //2 - movimento periodo - cred,deb
                              "VAT Amount", Quantity); //3 - movimento acumulado - cred,deb

        case TagColumn of
            '1C':
                exit(TempGLEntry2."Add.-Currency Credit Amount" + TempGLEntry."Add.-Currency Credit Amount");
            '1D':
                exit(TempGLEntry2."Add.-Currency Debit Amount" + TempGLEntry."Add.-Currency Debit Amount");
            '2C':
                exit(TempGLEntry2."Credit Amount" + TempGLEntry."Credit Amount");
            '2D':
                exit(TempGLEntry2."Debit Amount" + TempGLEntry."Debit Amount");
            '3C':
                exit(TempGLEntry2.Quantity + TempGLEntry.Quantity + TempGLEntry2."Add.-Currency Credit Amount" + TempGLEntry."Add.-Currency Credit Amount");
            '3D':
                exit(TempGLEntry2."VAT Amount" + TempGLEntry."VAT Amount" + TempGLEntry2."Add.-Currency Debit Amount" + TempGLEntry."Add.-Currency Debit Amount");
            '4C':
                exit(GetFinalCreditBalance(0));
            '4D':
                exit(GetFinalCreditBalance(1));
        end;
    end;

    local procedure GetValues()
    var
        GLAccountUNILEOPCC: Record "UNILEO G/L Account UNILEO-PCC";
    begin
        Clear(GLAccountUNILEOPCC);
        Clear(FinEntryNo);
        TempGLEntry2.DeleteAll;
        Clear(TempGLEntry2);
        TempGLEntry.DeleteAll;
        Clear(TempGLEntry);

        FinEntryNo := 1;

        GLAccountUNILEOPCC.SetRange("G/L Account Type", GLAccountUNILEOPCC."G/L Account Type"::PCC);
        GLAccountUNILEOPCC.SetRange("Account Type", GLAccountUNILEOPCC."Account Type"::M);
        if GLAccountUNILEOPCC.FindSet then
            repeat

                if Frequency = Frequency::Week then begin
                    if CopyStr(GLAccountUNILEOPCC."No.", 1, 1) = '0' then
                        FillOrcGLEntries(GLAccountUNILEOPCC."No.");
                end;


                if Frequency = Frequency::Month then begin
                    if CopyStr(GLAccountUNILEOPCC."No.", 1, 1) <> '0' then
                        FillFinGLEntries(GLAccountUNILEOPCC."No.")
                    else
                        FillOrcGLEntries(GLAccountUNILEOPCC."No.");
                end;


            until GLAccountUNILEOPCC.Next = 0;


        TempGLEntry.Reset;
        if TempGLEntry.FindSet then
            repeat

                if (TempGLEntry."Add.-Currency Debit Amount" = 0) and
                   (TempGLEntry."Add.-Currency Credit Amount" = 0) and
                   (TempGLEntry."Debit Amount" = 0) and
                   (TempGLEntry."Credit Amount" = 0) and
                   (TempGLEntry."VAT Amount" = 0) and
                   (TempGLEntry.Quantity = 0) then
                    TempGLEntry.Delete;

            until TempGLEntry.Next = 0;

        TempGLEntry2.Reset;
        if TempGLEntry2.FindSet then
            repeat

                if (TempGLEntry2."Add.-Currency Debit Amount" = 0) and
                   (TempGLEntry2."Add.-Currency Credit Amount" = 0) and
                   (TempGLEntry2."Debit Amount" = 0) and
                   (TempGLEntry2."Credit Amount" = 0) and
                   (TempGLEntry2."VAT Amount" = 0) and
                   (TempGLEntry2.Quantity = 0) then
                    TempGLEntry2.Delete;

            until TempGLEntry2.Next = 0;
    end;

    local procedure FillFinGLEntries(GLPCCNo: Code[20])
    var
        EntryNo: Integer;
        GLEntry2: Record "G/L Entry";
        GLAccount: Record "G/L Account";
    begin
        GLAccount.Reset;
        GLAccount.SetRange(CodeDot_PCC, GLPCCNo);
        if GLAccount.FindSet then
            repeat
                if (FinHaveMov(GLAccount."No.", StartDate1, EndDate1) or FinHaveOpenEntries(GLAccount."No.", StartDate1)) then begin
                    PartnerIdentity.Reset;
                    if PartnerIdentity.FindSet then
                        repeat
                            FillFinEntries(GLPCCNo, GLAccount."No.", PartnerIdentity, 0);
                            FillFinEntries(GLPCCNo, GLAccount."No.", PartnerIdentity, 1);
                            FillFinEntries(GLPCCNo, GLAccount."No.", PartnerIdentity, 2);
                        until PartnerIdentity.Next = 0;
                end;
            until GLAccount.Next = 0;
    end;

    local procedure FillFinEntries(GLNoPCC: Code[20]; GLNo: Code[20]; var PEntity: Record "G/L Entry" temporary; Type: Option Open,Period,Accumulated)
    var
        EntryNo: Integer;
        GLEntry2: Record "G/L Entry";
        ODAmt: Decimal;
        OCAmt: Decimal;
        StartDate: Date;
        EndDate: Date;
        OpenAmount: Decimal;
        BABalances: Record "UNILEO BA Balances";
        BAOpenAmount: Decimal;
    begin
        Clear(ODAmt);
        Clear(OCAmt);
        Clear(OpenAmount);
        Clear(BAOpenAmount);

        case Type of
            Type::Open:
                begin
                    BABalances.Reset;
                    BABalances.SetRange(GLNoPCC, GLNoPCC);
                    BABalances.SetRange(GLNo, GLNo);
                    BABalances.SetFilter(Date, '<%1', StartDate1);
                    if BABalances.FindLast then begin
                        BAOpenAmount := BABalances.AmountOpen;
                        StartDate := CalcDate('+1D', BABalances.Date);
                    end else
                        StartDate := 0D;
                    EndDate := ClosingDate(CalcDate('-1D', StartPeriod(StartDate1)));
                end;
            Type::Period:
                begin
                    StartDate := StartDate1;
                    EndDate := EndDate1;
                end;
            Type::Accumulated:
                begin
                    StartDate := StartPeriod(StartDate1);
                    EndDate := EndDate1;
                end;
        end;
        GLEntry2.Reset;
        GLEntry2.SetFilter("Posting Date", '%1..%2', StartDate, EndDate);
        GLEntry2.SetRange("G/L Account No.", GLNo);
        if PEntity."Source Code" <> UnknowEntity then begin
            GLEntry2.SetRange("Source Type", PEntity."Source Type");
            GLEntry2.SetRange("Source No.", PEntity."Source No.");
            GLEntry2.CalcSums(Amount, "Debit Amount", "Credit Amount");
            case Type of
                Type::Open:
                    begin
                        OpenAmount := GLEntry2.Amount;
                    end;
                Type::Period:
                    begin
                        ODAmt := GLEntry2."Debit Amount";
                        OCAmt := GLEntry2."Credit Amount";
                    end;
                Type::Accumulated:
                    begin
                        ODAmt := GLEntry2."Debit Amount";
                        OCAmt := GLEntry2."Credit Amount";
                    end;
            end;
        end else begin
            OpenAmount := BAOpenAmount;
            if GLEntry2.FindSet then
                repeat
                    if not IsPartnerEntity(GLEntry2) then begin
                        case Type of
                            Type::Open:
                                begin
                                    OpenAmount += GLEntry2.Amount;
                                end;
                            Type::Period:
                                begin
                                    ODAmt += GLEntry2."Debit Amount";
                                    OCAmt += GLEntry2."Credit Amount";
                                end;
                            Type::Accumulated:
                                begin
                                    ODAmt += GLEntry2."Debit Amount";
                                    OCAmt += GLEntry2."Credit Amount";
                                end;
                        end;
                    end;
                until GLEntry2.Next = 0;
        end;

        TempGLEntry2.Reset;
        TempGLEntry2.SetRange("G/L Account No.", GLNoPCC);
        TempGLEntry2.SetRange("Source No.", PEntity."Source No.");
        if not TempGLEntry2.FindFirst then begin
            TempGLEntry2.Init;
            TempGLEntry2."Entry No." := FinEntryNo;
            TempGLEntry2."G/L Account No." := GLNoPCC;
            TempGLEntry2."Source Code" := PEntity."Source Code";
            TempGLEntry2."Source Type" := PEntity."Source Type";
            TempGLEntry2."Source No." := PEntity."Source No.";
            case Type of
                Type::Open:
                    begin
                        TempGLEntry2.Amount += OpenAmount;
                        TempGLEntry2."Add.-Currency Credit Amount" := 0;
                        TempGLEntry2."Add.-Currency Debit Amount" := 0;
                        if TempGLEntry2.Amount > 0 then
                            TempGLEntry2."Add.-Currency Debit Amount" := TempGLEntry2.Amount
                        else
                            TempGLEntry2."Add.-Currency Credit Amount" := Abs(TempGLEntry2.Amount);
                    end;
                Type::Period:
                    begin
                        TempGLEntry2."Debit Amount" := ODAmt;
                        TempGLEntry2."Credit Amount" := OCAmt;
                    end;
                Type::Accumulated:
                    begin
                        TempGLEntry2."VAT Amount" := ODAmt;
                        TempGLEntry2.Quantity := OCAmt;
                    end;
            end;
            TempGLEntry2.Insert;
            FinEntryNo += 1;
        end else begin
            case Type of
                Type::Open:
                    begin
                        TempGLEntry2.Amount += OpenAmount;
                        TempGLEntry2."Add.-Currency Credit Amount" := 0;
                        TempGLEntry2."Add.-Currency Debit Amount" := 0;
                        if TempGLEntry2.Amount > 0 then
                            TempGLEntry2."Add.-Currency Debit Amount" := TempGLEntry2.Amount
                        else
                            TempGLEntry2."Add.-Currency Credit Amount" := Abs(TempGLEntry2.Amount);
                    end;
                Type::Period:
                    begin
                        TempGLEntry2."Debit Amount" += ODAmt;
                        TempGLEntry2."Credit Amount" += OCAmt;
                    end;
                Type::Accumulated:
                    begin
                        TempGLEntry2."VAT Amount" += ODAmt;
                        TempGLEntry2.Quantity += OCAmt;
                    end;
            end;
            TempGLEntry2.Modify;
        end;
    end;

    local procedure FinHaveMov(GLNo: Code[20]; StartDate: Date; EndDate: Date): Boolean
    var
        GLEntry2: Record "G/L Entry";
    begin
        GLEntry2.Reset;
        GLEntry2.SetFilter("Posting Date", '..%1', EndDate);
        GLEntry2.SetRange("G/L Account No.", GLNo);
        exit(GLEntry2.FindFirst);
    end;

    local procedure FinHaveOpenEntries(GLNo: Code[20]; StartDate: Date): Boolean
    var
        GLEntry2: Record "G/L Entry";
    begin
        GLEntry2.Reset;
        GLEntry2.SetFilter("Posting Date", '..%1', ClosingDate(CalcDate('-1D', StartPeriod(StartDate))));
        GLEntry2.SetRange("G/L Account No.", GLNo);
        exit(GLEntry2.FindFirst);
    end;

    local procedure FillPartnerEntity()
    var
        EntryNo: Integer;
        Customer: Record Customer;
        Vendor: Record Vendor;
    begin
        Clear(EntryNo);
        PartnerIdentity.DeleteAll;
        EntryNo := 1;
        PartnerIdentity.Init;
        PartnerIdentity."Entry No." := EntryNo;
        PartnerIdentity."Source Code" := UnknowEntity;
        PartnerIdentity."Source No." := UnknowEntity;
        PartnerIdentity.Insert;
        EntryNo += 1;

        Customer.Reset;
        Customer.SetRange("Partner Identity", true);
        if Customer.FindSet then
            repeat
                PartnerIdentity.Init;
                PartnerIdentity."Entry No." := EntryNo;
                PartnerIdentity."Source Code" := Customer."VAT Registration No.";
                PartnerIdentity."Source Type" := PartnerIdentity."Source Type"::Customer;
                PartnerIdentity."Source No." := Customer."No.";
                PartnerIdentity.Insert;
                EntryNo += 1;
            until Customer.Next = 0;

        Vendor.Reset;
        Vendor.SetRange("Partner Identity", true);
        if Vendor.FindSet then
            repeat
                PartnerIdentity.Init;
                PartnerIdentity."Entry No." := EntryNo;
                PartnerIdentity."Source Code" := Vendor."VAT Registration No.";
                PartnerIdentity."Source Type" := PartnerIdentity."Source Type"::Vendor;
                PartnerIdentity."Source No." := Vendor."No.";
                PartnerIdentity.Insert;
                EntryNo += 1;
            until Vendor.Next = 0;
    end;

    local procedure FillOrcGLEntries(GLPCCNo: Code[20])
    var
        GLAccount: Record "G/L Account";
        BudgetDimensions: Query "UNILEO Budget Dimensions";
    begin
        GLAccount.Reset;
        GLAccount.SetRange(CodeDot_PCC, GLPCCNo);
        if GLAccount.FindSet then
            repeat
                BudgetDimensions.Open;
                while BudgetDimensions.Read do begin
                    if (OrcHaveMov(GLAccount."No.", StartDate1, EndDate1, BudgetDimensions.Global_Dimension_1_Code, BudgetDimensions.Budget_Dimension_3_Code)
                        or OrcHaveOpenEntries(GLAccount."No.", StartDate1, BudgetDimensions.Global_Dimension_1_Code, BudgetDimensions.Budget_Dimension_3_Code)) then begin
                        PartnerIdentity.Reset;
                        if PartnerIdentity.FindSet then
                            repeat
                                FillOrcEntries(GLPCCNo, GLAccount."No.", BudgetDimensions.Global_Dimension_1_Code, BudgetDimensions.Budget_Dimension_3_Code, PartnerIdentity, 0);
                                FillOrcEntries(GLPCCNo, GLAccount."No.", BudgetDimensions.Global_Dimension_1_Code, BudgetDimensions.Budget_Dimension_3_Code, PartnerIdentity, 1);
                                FillOrcEntries(GLPCCNo, GLAccount."No.", BudgetDimensions.Global_Dimension_1_Code, BudgetDimensions.Budget_Dimension_3_Code, PartnerIdentity, 2);
                            until PartnerIdentity.Next = 0;
                    end;
                end;
                BudgetDimensions.Close;
            until GLAccount.Next = 0;
    end;

    local procedure FillOrcEntries(GLNoPCC: Code[20]; GLNo: Code[20]; Dim1: Code[20]; Dim3: Code[20]; var PEntity: Record "G/L Entry" temporary; Type: Option Open,Period,Accumulated)
    var
        EntryNo: Integer;
        GLEntry2: Record "G/L Entry";
        ODAmt: Decimal;
        OCAmt: Decimal;
        StartDate: Date;
        EndDate: Date;
        OpenAmount: Decimal;
        BAOpenAmount: Decimal;
        BABalances: Record "UNILEO BA Balances";
    begin
        Clear(ODAmt);
        Clear(OCAmt);
        Clear(OpenAmount);
        Clear(BAOpenAmount);

        case Type of
            Type::Open:
                begin
                    BABalances.Reset;
                    BABalances.SetRange(GLNoPCC, GLNoPCC);
                    BABalances.SetRange(GLNo, GLNo);
                    BABalances.SetRange("Shortcut Dimension 1 Code", Dim1);
                    BABalances.SetRange("Shortcut Dimension 3 Code", Dim3);
                    BABalances.SetFilter(Date, '<%1', StartDate1);
                    if BABalances.FindLast then begin
                        BAOpenAmount := BABalances.AmountOpen;
                        StartDate := CalcDate('+1D', BABalances.Date);
                    end else
                        StartDate := 0D;
                    EndDate := ClosingDate(CalcDate('-1D', StartPeriod(StartDate1)));
                end;
            Type::Period:
                begin
                    StartDate := StartDate1;
                    EndDate := EndDate1;
                end;
            Type::Accumulated:
                begin
                    StartDate := StartPeriod(StartDate1);
                    EndDate := EndDate1;
                end;
        end;
        GLEntry2.Reset;
        GLEntry2.SetFilter("Posting Date", '%1..%2', StartDate, EndDate);
        GLEntry2.SetRange("G/L Account No.", GLNo);
        GLEntry2.SetRange("Global Dimension 1 Code", Dim1);
        GLEntry2.SetRange("Shortcut Dimension 3 Code", Dim3);
        if PEntity."Source Code" <> UnknowEntity then begin
            GLEntry2.SetRange("Source Type", PEntity."Source Type");
            GLEntry2.SetRange("Source No.", PEntity."Source No.");
            GLEntry2.CalcSums(Amount, "Debit Amount", "Credit Amount");
            case Type of
                Type::Open:
                    begin
                        if CopyStr(Format(GLNo), 1, 2) = '07' then
                            OpenAmount := GLEntry2.Amount
                        else
                            OpenAmount := 0;
                    end;
                Type::Period:
                    begin
                        ODAmt := GLEntry2."Debit Amount";
                        OCAmt := GLEntry2."Credit Amount";

                    end;
                Type::Accumulated:
                    begin
                        ODAmt := GLEntry2."Debit Amount";
                        OCAmt := GLEntry2."Credit Amount";
                    end;
            end;
        end else begin
            OpenAmount := BAOpenAmount;
            if GLEntry2.FindSet then
                repeat
                    if not IsPartnerEntity(GLEntry2) then begin
                        case Type of
                            Type::Open:
                                begin
                                    if CopyStr(Format(GLNo), 1, 2) = '07' then
                                        OpenAmount += GLEntry2.Amount
                                    else
                                        OpenAmount += 0;
                                end;
                            Type::Period:
                                begin
                                    ODAmt += GLEntry2."Debit Amount";
                                    OCAmt += GLEntry2."Credit Amount";
                                end;
                            Type::Accumulated:
                                begin
                                    ODAmt += GLEntry2."Debit Amount";
                                    OCAmt += GLEntry2."Credit Amount";
                                end;
                        end;
                    end;
                until GLEntry2.Next = 0;
        end;

        TempGLEntry.Reset;
        TempGLEntry.SetRange("G/L Account No.", GLNoPCC);
        TempGLEntry.SetRange("Global Dimension 1 Code", Dim1);
        TempGLEntry.SetRange("Global Dimension 2 Code", Dim3);
        TempGLEntry.SetRange("Source No.", PEntity."Source No.");
        if not TempGLEntry.FindFirst then begin
            TempGLEntry.Init;
            TempGLEntry."Entry No." := OrcEntryNo;
            TempGLEntry."G/L Account No." := GLNoPCC;
            TempGLEntry."Source Code" := PEntity."Source Code";
            TempGLEntry."Source Type" := PEntity."Source Type";
            TempGLEntry."Source No." := PEntity."Source No.";
            TempGLEntry."Global Dimension 1 Code" := Dim1;
            TempGLEntry."Global Dimension 2 Code" := Dim3;
            case Type of
                Type::Open:
                    begin
                        TempGLEntry.Amount += OpenAmount;
                        TempGLEntry."Add.-Currency Credit Amount" := 0;
                        TempGLEntry."Add.-Currency Debit Amount" := 0;
                        if TempGLEntry.Amount > 0 then
                            TempGLEntry."Add.-Currency Debit Amount" := TempGLEntry.Amount
                        else
                            TempGLEntry."Add.-Currency Credit Amount" := Abs(TempGLEntry.Amount);
                    end;
                Type::Period:
                    begin
                        TempGLEntry."Debit Amount" := ODAmt;
                        TempGLEntry."Credit Amount" := OCAmt;
                    end;
                Type::Accumulated:
                    begin
                        TempGLEntry."VAT Amount" := ODAmt;
                        TempGLEntry.Quantity := OCAmt;
                    end;
            end;
            TempGLEntry.Insert;
            OrcEntryNo += 1;
        end else begin
            case Type of
                Type::Open:
                    begin
                        TempGLEntry.Amount += OpenAmount;
                        TempGLEntry."Add.-Currency Credit Amount" := 0;
                        TempGLEntry."Add.-Currency Debit Amount" := 0;
                        if TempGLEntry.Amount > 0 then
                            TempGLEntry."Add.-Currency Debit Amount" := TempGLEntry.Amount
                        else
                            TempGLEntry."Add.-Currency Credit Amount" := Abs(TempGLEntry.Amount);
                    end;
                Type::Period:
                    begin
                        TempGLEntry."Debit Amount" += ODAmt;
                        TempGLEntry."Credit Amount" += OCAmt;
                    end;
                Type::Accumulated:
                    begin
                        TempGLEntry."VAT Amount" += ODAmt;
                        TempGLEntry.Quantity += OCAmt;
                    end;
            end;
            TempGLEntry.Modify;
        end;
    end;

    local procedure OrcHaveMov(GLNo: Code[20]; StartDate: Date; EndDate: Date; Dim1: Code[20]; Dim3: Code[20]): Boolean
    var
        GLEntry2: Record "G/L Entry";
    begin
        GLEntry2.Reset;
        GLEntry2.SetRange("Global Dimension 1 Code", Dim1);
        GLEntry2.SetRange("Shortcut Dimension 3 Code", Dim3);
        GLEntry2.SetRange("G/L Account No.", GLNo);
        GLEntry2.SetFilter("Posting Date", '..%1', EndDate);
        exit(GLEntry2.FindFirst);
    end;

    local procedure OrcHaveOpenEntries(GLNo: Code[20]; StartDate: Date; Dim1: Code[20]; Dim3: Code[20]): Boolean
    var
        GLEntry2: Record "G/L Entry";
    begin
        GLEntry2.Reset;
        GLEntry2.SetRange("Global Dimension 1 Code", Dim1);
        GLEntry2.SetRange("Shortcut Dimension 3 Code", Dim3);
        GLEntry2.SetRange("G/L Account No.", GLNo);
        GLEntry2.SetFilter("Posting Date", '..%1', ClosingDate(CalcDate('-1D', StartPeriod(StartDate))));
        exit(GLEntry2.FindFirst);
    end;

    local procedure GetFinalCreditBalance(Type: Option Debit,Credit): Decimal
    var
        DebitFinal2: Decimal;
        CreditFinal2: Decimal;
    begin
        Clear(DebitFinal2);
        Clear(CreditFinal2);
        TempGLEntry.Reset;
        if TempGLEntry.FindSet then
            repeat
                if (TempGLEntry."Add.-Currency Debit Amount" + TempGLEntry."VAT Amount") - (TempGLEntry."Add.-Currency Credit Amount" + TempGLEntry.Quantity) > 0 then
                    DebitFinal2 += (TempGLEntry."Add.-Currency Debit Amount" + TempGLEntry."VAT Amount") - (TempGLEntry."Add.-Currency Credit Amount" + TempGLEntry.Quantity)
                else
                    CreditFinal2 += Abs((TempGLEntry."Add.-Currency Debit Amount" + TempGLEntry."VAT Amount") - (TempGLEntry."Add.-Currency Credit Amount" + TempGLEntry.Quantity));
            until TempGLEntry.Next = 0;

        TempGLEntry2.Reset;
        if TempGLEntry2.FindSet then
            repeat
                if (TempGLEntry2."Add.-Currency Debit Amount" + TempGLEntry2."VAT Amount") - (TempGLEntry2."Add.-Currency Credit Amount" + TempGLEntry2.Quantity) > 0 then
                    DebitFinal2 += (TempGLEntry2."Add.-Currency Debit Amount" + TempGLEntry2."VAT Amount") - (TempGLEntry2."Add.-Currency Credit Amount" + TempGLEntry2.Quantity)
                else
                    CreditFinal2 += Abs((TempGLEntry2."Add.-Currency Debit Amount" + TempGLEntry2."VAT Amount") - (TempGLEntry2."Add.-Currency Credit Amount" + TempGLEntry2.Quantity));
            until TempGLEntry2.Next = 0;

        case Type of
            Type::Debit:
                exit(DebitFinal2);
            Type::Credit:
                exit(CreditFinal2);
        end;
    end;

    procedure SendXmlParameters(var L_Frequency: Option Week,Month; var L_PeriodNumber: Integer; var L_StartDate1: Date; var L_EndDate1: Date; var L_XMLFileName: Text; var L_PeriodYear: Integer)
    begin
        Frequency := L_Frequency;
        PeriodNumber := L_PeriodNumber;
        StartDate1 := L_StartDate1;
        EndDate1 := L_EndDate1;
        gXMLFileName := L_XMLFileName;
        PeriodYear := L_PeriodYear;
    end;
}

