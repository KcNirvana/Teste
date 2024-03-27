xmlport 57007 "UNILEO DDORC"
{

    Direction = Export;
    Encoding = UTF8;

    schema
    {
        textelement(ddorc)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            XmlName = 'DDORC';
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
                tableelement("unileo aux table rec header"; "UNILEO Aux Table")
                {
                    CalcFields = Amount1, Amount2;
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'RubricasAgregadoras';
                    SourceTableView = SORTING(Integer, "Report Type") WHERE("Report Type" = CONST(DDORC), "Column Option" = CONST(Col3), Code4 = CONST('R'), Show = CONST(Yes));
                    textelement(rec_id_rubricasagregadoras)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_RubricasAgregadoras';
                    }
                    textelement(rec_rubricaagregadora)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'RubricaAgregadora';
                    }
                    textelement(rec_macrorubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'MacroRubrica';
                    }
                    textelement(rec_totalreceitasproprias)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasProprias';
                    }
                    textelement(rec_totalreceitasgerais)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasGerais';
                    }
                    textelement(rec_totalfinuniaoeuro)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalFinanciamentoUniaoEuropeia';
                    }
                    textelement(rec_totalemprestimos)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalEmprestimos';
                    }
                    textelement(rec_totalfundosalheios)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalFundosAlheios';
                    }
                    textelement(rec_totalgeral)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalGeral';
                    }
                    textelement(rec_totalgeralanoanterior)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalGeralAnoAnterior';
                    }

                    trigger OnAfterGetRecord()
                    var
                        L_valor1: Decimal;
                        L_valor2: Decimal;
                    begin
                        Rec_ID_RubricasAgregadoras := Format("UNILEO Aux Table Rec Header".Integer);
                        Rec_RubricaAgregadora := "UNILEO Aux Table Rec Header".Code1;
                        Rec_MacroRubrica := "UNILEO Aux Table Rec Header".Code4;
                        Rec_TotalReceitasGerais := UNILEOMgt.FormatDecimal2Text(0);
                        Rec_TotalFinUniaoEuro := UNILEOMgt.FormatDecimal2Text(0);
                        Rec_TotalEmprestimos := UNILEOMgt.FormatDecimal2Text(0);
                        Rec_TotalFundosAlheios := UNILEOMgt.FormatDecimal2Text(0);
                        L_valor1 := "UNILEO Aux Table Rec Header".EvaluateExpression("UNILEO Aux Table Rec Header"."Totaling Type" <> "UNILEO Aux Table Rec Header"."Totaling Type"::Posting,
                                                                                    "UNILEO Aux Table Rec Header".Code2, "UNILEO Aux Table Rec Header", gDStartDate, gDEndDate);
                        L_valor2 := "UNILEO Aux Table Rec Header".EvaluateExpression("UNILEO Aux Table Rec Header"."Totaling Type" <> "UNILEO Aux Table Rec Header"."Totaling Type"::Posting,
                                                                                    "UNILEO Aux Table Rec Header".Code2, "UNILEO Aux Table Rec Header", AuxStartDateT1, AuxStartDateT1);
                        Rec_TotalReceitasProprias := UNILEOMgt.FormatDecimal2Text(L_valor1);
                        Rec_TotalGeralAnoAnterior := UNILEOMgt.FormatDecimal2Text(L_valor2);
                        Rec_TotalGeral := Rec_TotalReceitasProprias;
                    end;

                    trigger OnPreXmlItem()
                    begin
                        CheckDate;
                        "UNILEO Aux Table Rec Header".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Pay Header".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Rec".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Pay".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Rec Header".SetRange("Setup Start Date", DateSetup);
                        "UNILEO Aux Table Pay Header".SetRange("Setup Start Date", DateSetup);
                        "UNILEO Aux Table Rec".SetRange("Setup Start Date", DateSetup);
                        "UNILEO Aux Table Pay".SetRange("Setup Start Date", DateSetup);
                    end;
                }
                tableelement("unileo aux table pay header"; "UNILEO Aux Table")
                {
                    CalcFields = Amount1, Amount2;
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'RubricasAgregadoras';
                    SourceTableView = SORTING(Integer, "Report Type") WHERE("Report Type" = CONST(DDORC), "Column Option" = CONST(Col3), Code4 = CONST('P'), Show = CONST(Yes));
                    textelement(pay_id_rubricasagregadoras)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_RubricasAgregadoras';
                    }
                    textelement(pay_rubricaagregadora)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'RubricaAgregadora';
                    }
                    textelement(pay_macrorubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'MacroRubrica';
                    }
                    textelement(pay_totalreceitasproprias)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasProprias';
                    }
                    textelement(pay_totalreceitasgerais)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalReceitasGerais';
                    }
                    textelement(pay_totalfinuniaoeuro)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalFinanciamentoUniaoEuropeia';
                    }
                    textelement(pay_totalemprestimos)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalEmprestimos';
                    }
                    textelement(pay_totalfundosalheios)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalFundosAlheios';
                    }
                    textelement(pay_totalgeral)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalGeral';
                    }
                    textelement(pay_totalgeralanoanterior)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalGeralAnoAnterior';
                    }

                    trigger OnAfterGetRecord()
                    var
                        L_valor1: Decimal;
                        L_valor2: Decimal;
                    begin
                        Pay_ID_RubricasAgregadoras := Format("UNILEO Aux Table Pay Header".Integer);
                        Pay_RubricaAgregadora := "UNILEO Aux Table Pay Header".Code1;
                        Pay_MacroRubrica := "UNILEO Aux Table Pay Header".Code4;
                        Pay_TotalReceitasGerais := UNILEOMgt.FormatDecimal2Text(0);
                        Pay_TotalFinUniaoEuro := UNILEOMgt.FormatDecimal2Text(0);
                        Pay_TotalEmprestimos := UNILEOMgt.FormatDecimal2Text(0);
                        Pay_TotalFundosAlheios := UNILEOMgt.FormatDecimal2Text(0);
                        L_valor1 := "UNILEO Aux Table Pay Header".EvaluateExpression("UNILEO Aux Table Pay Header"."Totaling Type" <> "UNILEO Aux Table Pay Header"."Totaling Type"::Posting,
                                                                                    "UNILEO Aux Table Pay Header".Code2, "UNILEO Aux Table Pay Header", gDStartDate, gDEndDate);
                        L_valor2 := "UNILEO Aux Table Pay Header".EvaluateExpression("UNILEO Aux Table Pay Header"."Totaling Type" <> "UNILEO Aux Table Pay Header"."Totaling Type"::Posting,
                                                                                    "UNILEO Aux Table Pay Header".Code2, "UNILEO Aux Table Pay Header", AuxStartDateT1, AuxStartDateT1);
                        Pay_TotalReceitasProprias := UNILEOMgt.FormatDecimal2Text(L_valor1);
                        Pay_TotalGeralAnoAnterior := UNILEOMgt.FormatDecimal2Text(L_valor2);
                        Pay_TotalGeral := Pay_TotalReceitasProprias;
                    end;

                    trigger OnPreXmlItem()
                    begin

                        CheckDate;
                        "UNILEO Aux Table Rec Header".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Pay Header".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Rec".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Pay".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Rec Header".SetRange("Setup Start Date", DateSetup);
                        "UNILEO Aux Table Pay Header".SetRange("Setup Start Date", DateSetup);
                        "UNILEO Aux Table Rec".SetRange("Setup Start Date", DateSetup);
                        "UNILEO Aux Table Pay".SetRange("Setup Start Date", DateSetup);
                    end;
                }
            }
            textelement(pay_registos)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'Registos';
                tableelement("unileo aux table rec"; "UNILEO Aux Table")
                {
                    CalcFields = Amount1, Amount2;
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'Registo';
                    SourceTableView = SORTING(Integer, "Report Type") WHERE("Report Type" = CONST(DDORC), "Column Option" = CONST(Col1), Code1 = FILTER(<> ' '), Show = CONST(Yes));
                    textelement(rec_id_registo)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_Registo';
                    }
                    textelement(rec_rubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Rubrica';
                    }
                    textelement(rec_registo_rubricaagregadora)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'RubricaAgregadora';
                    }
                    textelement(rec_registo_macrorubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'MacroRubrica';
                    }
                    textelement(rec_receitasproprias)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReceitasProprias';
                    }
                    textelement(rec_receitasgerais)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReceitasGerais';
                    }
                    textelement(rec_financiamentouniaoeuropeia)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'FinanciamentoUniaoEuropeia';
                    }
                    textelement(rec_emprestimos)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Emprestimos';
                    }
                    textelement(rec_fundosalheios)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'FundosAlheios';
                    }
                    textelement(rec_total)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Total';
                    }
                    textelement(rec_totalanoanterior)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalAnoAnterior';
                    }

                    trigger OnAfterGetRecord()
                    var
                        L_valor1: Decimal;
                        L_valor2: Decimal;
                    begin
                        Rec_ID_Registo := Format("UNILEO Aux Table Rec".Integer);
                        Rec_Rubrica := "UNILEO Aux Table Rec".Code1;
                        Rec_Registo_RubricaAgregadora := "UNILEO Aux Table Rec".Code3;
                        Rec_Registo_MacroRubrica := "UNILEO Aux Table Rec".Code4;
                        Rec_ReceitasGerais := UNILEOMgt.FormatDecimal2Text(0);
                        Rec_FinanciamentoUniaoEuropeia := UNILEOMgt.FormatDecimal2Text(0);
                        Rec_Emprestimos := UNILEOMgt.FormatDecimal2Text(0);
                        Rec_FundosAlheios := UNILEOMgt.FormatDecimal2Text(0);
                        L_valor1 := "UNILEO Aux Table Rec".EvaluateExpression("UNILEO Aux Table Rec"."Totaling Type" <> "UNILEO Aux Table Rec"."Totaling Type"::Posting,
                                                                                "UNILEO Aux Table Rec".Code2, "UNILEO Aux Table Rec", gDStartDate, gDEndDate);
                        L_valor2 := "UNILEO Aux Table Rec".EvaluateExpression("UNILEO Aux Table Rec"."Totaling Type" <> "UNILEO Aux Table Rec"."Totaling Type"::Posting,
                                                                                "UNILEO Aux Table Rec".Code2, "UNILEO Aux Table Rec", AuxStartDateT1, AuxStartDateT1);
                        Rec_ReceitasProprias := UNILEOMgt.FormatDecimal2Text(L_valor1);
                        Rec_Total := UNILEOMgt.FormatDecimal2Text(L_valor1);
                        Rec_TotalAnoAnterior := UNILEOMgt.FormatDecimal2Text(L_valor2);
                    end;

                    trigger OnPreXmlItem()
                    begin

                        CheckDate;
                        "UNILEO Aux Table Rec Header".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Pay Header".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Rec".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Pay".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Rec Header".SetRange("Setup Start Date", DateSetup);
                        "UNILEO Aux Table Pay Header".SetRange("Setup Start Date", DateSetup);
                        "UNILEO Aux Table Rec".SetRange("Setup Start Date", DateSetup);
                        "UNILEO Aux Table Pay".SetRange("Setup Start Date", DateSetup);
                    end;
                }
                tableelement("unileo aux table pay"; "UNILEO Aux Table")
                {
                    CalcFields = Amount1, Amount2;
                    MaxOccurs = Unbounded;
                    MinOccurs = Once;
                    XmlName = 'Registo';
                    SourceTableView = SORTING(Integer, "Report Type") WHERE("Report Type" = CONST(DDORC), "Column Option" = CONST(Col2), Code1 = FILTER(<> ' '), Show = CONST(Yes));
                    textelement(pay_id_registo)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ID_Registo';
                    }
                    textelement(pay_rubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Rubrica';
                    }
                    textelement(pay_registo_rubricaagregadora)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'RubricaAgregadora';
                    }
                    textelement(pay_registo_macrorubrica)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'MacroRubrica';
                    }
                    textelement(pay_receitasproprias)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReceitasProprias';
                    }
                    textelement(pay_receitasgerais)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'ReceitasGerais';
                    }
                    textelement(pay_financiamentouniaoeuropeia)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'FinanciamentoUniaoEuropeia';
                    }
                    textelement(pay_emprestimos)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Emprestimos';
                    }
                    textelement(pay_fundosalheios)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'FundosAlheios';
                    }
                    textelement(pay_total)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'Total';
                    }
                    textelement(pay_totalanoanterior)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        TextType = Text;
                        XmlName = 'TotalAnoAnterior';
                    }

                    trigger OnAfterGetRecord()
                    var
                        L_valor1: Decimal;
                        L_valor2: Decimal;
                    begin
                        Pay_ID_Registo := Format("UNILEO Aux Table Pay".Integer);
                        Pay_Rubrica := "UNILEO Aux Table Pay".Code1;
                        Pay_Registo_RubricaAgregadora := "UNILEO Aux Table Pay".Code3;
                        Pay_Registo_MacroRubrica := "UNILEO Aux Table Pay".Code4;

                        Pay_ReceitasGerais := UNILEOMgt.FormatDecimal2Text(0);
                        Pay_FinanciamentoUniaoEuropeia := UNILEOMgt.FormatDecimal2Text(0);
                        Pay_Emprestimos := UNILEOMgt.FormatDecimal2Text(0);
                        Pay_FundosAlheios := UNILEOMgt.FormatDecimal2Text(0);
                        L_valor1 := "UNILEO Aux Table Pay".EvaluateExpression("UNILEO Aux Table Pay"."Totaling Type" <> "UNILEO Aux Table Pay"."Totaling Type"::Posting,
                                                                            "UNILEO Aux Table Pay".Code2, "UNILEO Aux Table Pay", gDStartDate, gDEndDate);
                        L_valor2 := "UNILEO Aux Table Pay".EvaluateExpression("UNILEO Aux Table Pay"."Totaling Type" <> "UNILEO Aux Table Pay"."Totaling Type"::Posting,
                                                                            "UNILEO Aux Table Pay".Code2, "UNILEO Aux Table Pay", AuxStartDateT1, AuxStartDateT1);
                        Pay_ReceitasProprias := UNILEOMgt.FormatDecimal2Text(L_valor1);
                        Pay_Total := UNILEOMgt.FormatDecimal2Text(L_valor1);
                        Pay_TotalAnoAnterior := UNILEOMgt.FormatDecimal2Text(L_valor2);
                    end;

                    trigger OnPreXmlItem()
                    begin
                        CheckDate;
                        "UNILEO Aux Table Rec Header".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Pay Header".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Rec".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Pay".SetFilter("GLAccount Filter 1", gFiltroContas);
                        "UNILEO Aux Table Rec Header".SetRange("Setup Start Date", DateSetup);
                        "UNILEO Aux Table Pay Header".SetRange("Setup Start Date", DateSetup);
                        "UNILEO Aux Table Rec".SetRange("Setup Start Date", DateSetup);
                        "UNILEO Aux Table Pay".SetRange("Setup Start Date", DateSetup);
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


        trigger OnOpenPage()
        begin
            InitParameters;
            MakeDateFilter;
        end;
    }

    trigger OnPostXmlPort()
    begin
        XMLFileName := Entidade + Ano + Periodo + Periodicidade + 'DDORC.XML';
        currXMLport.Filename(XMLFileName);
        gXMLFileName := XMLFileName;
    end;

    trigger OnPreXmlPort()
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
    begin
        gRecCompInfo.Get;
        MakeDateFilter;
        Clear(UNILEOAuxTable);
        Clear(gFiltroContas);
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DDORC2);
        UNILEOAuxTable.SetRange("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC2, gDStartDate));
        if UNILEOAuxTable.FindSet then
            repeat
                if gFiltroContas <> '' then
                    gFiltroContas := gFiltroContas + '|' + UNILEOAuxTable.Totaling
                else
                    gFiltroContas := UNILEOAuxTable.Totaling;
            until UNILEOAuxTable.Next = 0;

        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC, gDStartDate);
        MakeDateFilter;
        //Calcula_RI01_RI03;
    end;

    var
        gRecCompInfo: Record "Company Information";
        gOptPeriodType: Option S,M;
        gDStartDate: Date;
        gDEndDate: Date;
        AuxStartDateT1: Date;
        AuxEndDateT1: Date;
        gFiltroContas: Text[250];
        XMLFileName: Text[250];
        UNILEOMgt: Codeunit "UNILEO Management";
        gGerencia1: Decimal;
        gGerencia2: Decimal;
        gGerencia1_RI01: Decimal;
        gGerencia2_RI01: Decimal;
        gGerencia1_RI03: Decimal;
        gGerencia2_RI03: Decimal;
        FromWebservices: Boolean;
        gXMLFileName: Text;
        PeriodNumber: Integer;
        PeriodYear: Integer;
        DateSetup: Date;

    local procedure FormatAmount(pAmount: Decimal): Text[30]
    begin
        exit(Format(pAmount, 0, '<standard,9>'));
    end;

    local procedure CheckDate()
    var
        AuxStartDate: Date;
        AuxEndDate: Date;
        AuxYear: Integer;
    begin
        MakeDateFilter;

        "UNILEO Aux Table Rec Header".SetRange("Date Filter 1", gDStartDate, gDEndDate);
        "UNILEO Aux Table Pay Header".SetRange("Date Filter 1", gDStartDate, gDEndDate);
        "UNILEO Aux Table Rec".SetRange("Date Filter 1", gDStartDate, gDEndDate);
        "UNILEO Aux Table Pay".SetRange("Date Filter 1", gDStartDate, gDEndDate);

        AuxStartDate := gDStartDate;
        AuxEndDate := gDEndDate;
        AuxYear := Date2DMY(gDStartDate, 3);

        if (AuxYear > 2018) then begin
            AuxStartDateT1 := CalcDate('<-1Y>', AuxStartDate);
            AuxEndDateT1 := CalcDate('<-1Y>', AuxEndDate);
        end else begin
            AuxStartDateT1 := DMY2Date(1, 1, 1900);
            AuxEndDateT1 := DMY2Date(31, 1, 1900);
        end;

        "UNILEO Aux Table Rec Header".SetRange("Date Filter 2", AuxStartDateT1, AuxEndDateT1);
        "UNILEO Aux Table Pay Header".SetRange("Date Filter 2", AuxStartDateT1, AuxEndDateT1);
        "UNILEO Aux Table Rec".SetRange("Date Filter 2", AuxStartDateT1, AuxEndDateT1);
        "UNILEO Aux Table Pay".SetRange("Date Filter 2", AuxStartDateT1, AuxEndDateT1);
    end;

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

    local procedure InitParameters()
    begin
        gOptPeriodType := gOptPeriodType::S;
        PeriodNumber := Date2DWY(WorkDate, 2);
        PeriodYear := Date2DWY(WorkDate, 3);
        UNILEOMgt.WeekStartEndDate(gDStartDate, gDEndDate, PeriodNumber, PeriodYear);
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

    local procedure GetSaldoGerenciaAnterior(ldate: Date; var lyear_n_1: Decimal; var lyear_n_2: Decimal)
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
    begin
        UNILEOAuxTable.Reset;
        UNILEOAuxTable.SetRange("Date Filter 1", DMY2Date(1, 1, Date2DMY(ldate, 3) - 1), DMY2Date(31, 12, Date2DMY(ldate, 3) - 1));
        UNILEOAuxTable.SetRange("Date Filter 2", DMY2Date(1, 1, Date2DMY(ldate, 3) - 2), DMY2Date(31, 12, Date2DMY(ldate, 3) - 2));
        UNILEOAuxTable.SetFilter("GLAccount Filter 1", gFiltroContas);
        UNILEOAuxTable.Get(100, UNILEOAuxTable."Report Type"::DDORC, '', UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC, ldate));
        UNILEOAuxTable.CalcFields(UNILEOAuxTable.Amount1, UNILEOAuxTable.Amount2);
        lyear_n_1 := UNILEOAuxTable.Amount1;
        lyear_n_2 := UNILEOAuxTable.Amount2;
        if Date2DMY(ldate, 3) <= 2018 then begin
            lyear_n_1 := 0;
            lyear_n_2 := 0;
            exit;
        end;
        if Date2DMY(ldate, 3) = 2019 then begin
            lyear_n_2 := 0;
            exit;
        end;
    end;

    local procedure GetSaldoGerenciaAnteriorRI01(ldate: Date; var lyear_n_1: Decimal; var lyear_n_2: Decimal)
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
    begin

        UNILEOAuxTable.Reset;
        UNILEOAuxTable.SetRange("Date Filter 1", DMY2Date(1, 1, Date2DMY(ldate, 3) - 1), DMY2Date(31, 12, Date2DMY(ldate, 3) - 1));
        UNILEOAuxTable.SetRange("Date Filter 2", DMY2Date(1, 1, Date2DMY(ldate, 3) - 2), DMY2Date(31, 12, Date2DMY(ldate, 3) - 2));
        UNILEOAuxTable.SetFilter("GLAccount Filter 1", gFiltroContas);
        UNILEOAuxTable.Get(200, UNILEOAuxTable."Report Type"::DDORC, 'RI01', UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC, ldate));
        UNILEOAuxTable.CalcFields(UNILEOAuxTable.Amount1, UNILEOAuxTable.Amount2);
        lyear_n_1 := UNILEOAuxTable.Amount1;
        lyear_n_2 := UNILEOAuxTable.Amount2;
        if Date2DMY(ldate, 3) <= 2018 then begin
            lyear_n_1 := 0;
            lyear_n_2 := 0;
            exit;
        end;
        if Date2DMY(ldate, 3) = 2019 then begin
            lyear_n_2 := 0;
            exit;
        end;
    end;

    local procedure GetSaldoGerenciaAnteriorRI03(ldate: Date; var lyear_n_1: Decimal; var lyear_n_2: Decimal)
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
    begin
        UNILEOAuxTable.Reset;
        UNILEOAuxTable.SetRange("Date Filter 1", DMY2Date(1, 1, Date2DMY(ldate, 3) - 1), DMY2Date(31, 12, Date2DMY(ldate, 3) - 1));
        UNILEOAuxTable.SetRange("Date Filter 2", DMY2Date(1, 1, Date2DMY(ldate, 3) - 2), DMY2Date(31, 12, Date2DMY(ldate, 3) - 2));
        UNILEOAuxTable.SetFilter("GLAccount Filter 1", gFiltroContas);
        UNILEOAuxTable.Get(400, UNILEOAuxTable."Report Type"::DDORC, 'RI03', UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC, ldate));
        UNILEOAuxTable.CalcFields(UNILEOAuxTable.Amount1, UNILEOAuxTable.Amount2);
        lyear_n_1 := UNILEOAuxTable.Amount1;
        lyear_n_2 := UNILEOAuxTable.Amount2;
        if Date2DMY(ldate, 3) <= 2018 then begin
            lyear_n_1 := 0;
            lyear_n_2 := 0;
            exit;
        end;
        if Date2DMY(ldate, 3) = 2019 then begin
            lyear_n_2 := 0;
            exit;
        end;
    end;

    local procedure DeleteRI01_RI03(var UNILEOAuxTable3: Record "UNILEO Aux Table")
    var
        StringPos: Integer;
    begin

        if UNILEOAuxTable3.Integer = 9500 then begin
            UNILEOAuxTable3.Code2 := '';
            exit;
        end;

        StringPos := StrPos(UNILEOAuxTable3.Code2, 'RI01|');
        if StringPos > 0 then begin
            UNILEOAuxTable3.Code2 := DelStr(UNILEOAuxTable3.Code2, StringPos, 5);
        end;
        StringPos := StrPos(UNILEOAuxTable3.Code2, 'RI03|');
        if StringPos > 0 then begin
            UNILEOAuxTable3.Code2 := DelStr(UNILEOAuxTable3.Code2, StringPos, 5);
        end;
    end;

    local procedure Calcula_RI01_RI03()
    var
        UNILEOAuxTable4: Record "UNILEO Aux Table";
    begin
        UNILEOAuxTable4.Get(100, UNILEOAuxTable4."Report Type"::DDORC, '', UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC, gDStartDate));
        if Date2DMY(gDStartDate, 3) = 2018 then begin
            gGerencia1 := UNILEOAuxTable4."Amount 2";
            gGerencia2 := 0;
        end;
        if Date2DMY(gDStartDate, 3) >= 2019 then begin
            GetSaldoGerenciaAnterior(gDStartDate, gGerencia1, gGerencia2);
        end;
        UNILEOAuxTable4.Get(200, UNILEOAuxTable4."Report Type"::DDORC, 'RI01', UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC, gDStartDate));
        if Date2DMY(gDStartDate, 3) = 2018 then begin
            gGerencia1_RI01 := UNILEOAuxTable4."Amount 2";
            gGerencia2_RI01 := 0;
        end;
        if Date2DMY(gDStartDate, 3) >= 2019 then begin
            GetSaldoGerenciaAnteriorRI01(gDStartDate, gGerencia1_RI01, gGerencia2_RI01);
        end;
        UNILEOAuxTable4.Get(400, UNILEOAuxTable4."Report Type"::DDORC, 'RI03', UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC, gDStartDate));
        if Date2DMY(gDStartDate, 3) = 2018 then begin
            gGerencia1_RI03 := UNILEOAuxTable4."Amount 2";
            gGerencia2_RI03 := 0;
        end;
        if Date2DMY(gDStartDate, 3) >= 2019 then begin
            GetSaldoGerenciaAnteriorRI01(gDStartDate, gGerencia1_RI03, gGerencia2_RI03);
        end;
    end;

    local procedure Atribuir_RI01_RI03(var UNILEOAuxTable5: Record "UNILEO Aux Table")
    begin
        if UNILEOAuxTable5.Integer in [4000, 8500, 8600, 8700, 9300, 9500, 10000, 10600, 10700, 10800] then begin
            DeleteRI01_RI03(UNILEOAuxTable5);
            UNILEOAuxTable5.CalcFields(UNILEOAuxTable5.Amount1, UNILEOAuxTable5.Amount2);
            case UNILEOAuxTable5.Integer of
                4000, 8600, 9300, 10000, 10700:
                    begin
                        UNILEOAuxTable5.Amount1 := UNILEOAuxTable5.Amount1 + gGerencia1_RI01;
                        UNILEOAuxTable5.Amount2 := UNILEOAuxTable5.Amount2 + gGerencia2_RI01;
                    end;
                8500, 9500, 10600:
                    begin
                        UNILEOAuxTable5.Amount1 := UNILEOAuxTable5.Amount1 + gGerencia1;
                        UNILEOAuxTable5.Amount2 := UNILEOAuxTable5.Amount2 + gGerencia2;
                    end;
                8700, 10800:
                    begin
                        UNILEOAuxTable5.Amount1 := UNILEOAuxTable5.Amount1 + gGerencia1_RI03;
                        UNILEOAuxTable5.Amount2 := UNILEOAuxTable5.Amount2 + gGerencia2_RI03;
                    end;
            end;
        end;
    end;
}

