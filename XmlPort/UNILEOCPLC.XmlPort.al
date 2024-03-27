xmlport 57005 "UNILEO CPLC"
{
    Direction = Export;
    Encoding = UTF8;

    schema
    {
        textelement(cplc)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            XmlName = 'CPLC';
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
                        Ano := Format(Date2DMY(WorkDate, 3));
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
            textelement(contascentrais)
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'ContasCentrais';
                tableelement("G/L Account UNILEO-PCC"; "UNILEO G/L Account UNILEO-PCC")
                {
                    MaxOccurs = Unbounded;
                    MinOccurs = Zero;
                    XmlName = 'ContaCentral';
                    SourceTableView = SORTING("G/L Account Type", "No.") WHERE("G/L Account Type" = FILTER(UNILEO));
                    fieldelement(ID_ContaCentral; "G/L Account UNILEO-PCC".ID_ContaCentral)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                    }
                    fieldelement(ContaCentral; "G/L Account UNILEO-PCC"."No.")
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                    }
                    fieldelement(Descricao; "G/L Account UNILEO-PCC".Name)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                    }
                    tableelement(Integer; Integer)
                    {
                        MaxOccurs = Once;
                        MinOccurs = Once;
                        XmlName = 'ContasLocais';
                        SourceTableView = SORTING(Number) WHERE(Number = FILTER(1));
                        tableelement("PCC-Unileo"; "UNILEO G/L Account PCC-UNILEO")
                        {
                            LinkFields = "Account UNILEO" = FIELD("No.");
                            LinkTable = "G/L Account UNILEO-PCC";
                            MaxOccurs = Unbounded;
                            MinOccurs = Zero;
                            XmlName = 'ContaLocal';
                            SourceTableView = SORTING(Type, "Account PCC") WHERE(Type = FILTER(PCC2UNILEO));
                            fieldelement(ID_ContaLocal; "PCC-Unileo".ID_LocalAccount)
                            {
                                MaxOccurs = Once;
                                MinOccurs = Once;
                            }
                            fieldelement(ID_ContaCentral; "G/L Account UNILEO-PCC".ID_ContaCentral)
                            {
                                MaxOccurs = Once;
                                MinOccurs = Once;
                            }
                            fieldelement(ContaLocal; "PCC-Unileo"."Account PCC")
                            {
                                MaxOccurs = Once;
                                MinOccurs = Once;
                            }
                            textelement(descricaolocal)
                            {
                                MaxOccurs = Once;
                                MinOccurs = Once;
                                XmlName = 'Descricao';
                            }
                            textelement(tipocontalocal)
                            {
                                MaxOccurs = Once;
                                MinOccurs = Once;
                                TextType = Text;
                                XmlName = 'TipoConta';
                            }

                            trigger OnAfterGetRecord()
                            begin
                                gGLAccountUNILEOPCC.Get(gGLAccountUNILEOPCC."G/L Account Type"::PCC, "PCC-Unileo"."Account PCC");
                                DescricaoLocal := CopyStr(gGLAccountUNILEOPCC.Name, 1, 100);

                                if gGLAccountUNILEOPCC."Account Type" = gGLAccountUNILEOPCC."Account Type"::A then
                                    TipoContaLocal := 'A';
                                if gGLAccountUNILEOPCC."Account Type" = gGLAccountUNILEOPCC."Account Type"::M then
                                    TipoContaLocal := 'M';

                                gIDContaLocal := gIDContaLocal + 1;
                                "PCC-Unileo".ID_LocalAccount := gIDContaLocal;
                            end;
                        }
                    }

                    trigger OnAfterGetRecord()
                    begin
                        gIDContaCentral := gIDContaCentral + 1;
                        "G/L Account UNILEO-PCC".ID_ContaCentral := gIDContaCentral;
                        gIDContaLocal := 0;
                    end;

                    trigger OnPreXmlItem()
                    begin
                        Clear(gIDContaCentral);
                        Clear(gIDContaLocal);
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
                    field(gOptPeriodType; gOptPeriodType)
                    {
                        Caption = 'Periodicity';
                        OptionCaption = 'Daily,Weekly,Monthly,Trimestral,Anual';
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
    var
        XMLFileName: Text[250];
    begin
        XMLFileName := Entidade + Format(WorkDate, 0, '<Year4><Month,2><Day,2>') + 'CPLC.XML';
        currXMLport.Filename(XMLFileName);
    end;

    trigger OnPreXmlPort()
    begin
        gRecCompInfo.Get;
        MakeDateFilter;
        currXMLport.Filename(gXMLFileName);
    end;

    var
        gRecCompInfo: Record "Company Information";
        gOptPeriodType: Option D,S,M,T,A;
        gIDContaCentral: Integer;
        gIDContaLocal: Integer;
        gGLAccountUNILEOPCC: Record "UNILEO G/L Account UNILEO-PCC";
        gXMLFileName: Text;

    local procedure MakeDateFilter()
    var
        lRecDate: Record Date;
        lAux_Month: Integer;
        lAux_Year: Integer;
    begin
        lAux_Year := Date2DMY(WorkDate, 3);
        lAux_Month := Date2DMY(WorkDate, 2);

        case gOptPeriodType of
            gOptPeriodType::D:
                Periodo := Format(Date2DMY(WorkDate, 1));
            gOptPeriodType::S:
                Periodo := Format(Date2DWY(WorkDate, 2));
            gOptPeriodType::M:
                begin
                    case lAux_Month of
                        1, 2, 3, 4, 5, 6, 7, 8, 9:
                            Periodo := '00' + Format(lAux_Month);
                        10, 11, 12:
                            Periodo := '0' + Format(lAux_Month);
                    end;
                end;
            gOptPeriodType::T:
                begin
                    case lAux_Month of
                        1, 2, 3:
                            Periodo := '001';
                        4, 5, 6:
                            Periodo := '002';
                        7, 8, 9:
                            Periodo := '003';
                        10, 11, 12:
                            Periodo := '004';
                    end;
                end;
            gOptPeriodType::A:
                Periodo := '000';
        end;
    end;

    local procedure InitParameters()
    begin
        gOptPeriodType := gOptPeriodType::A;
    end;

    procedure SendXmlParameters(L_OptPeriodType: Option D,S,M,T,A; L_XMLFileName: Text)
    begin
        gOptPeriodType := L_OptPeriodType;
        gXMLFileName := L_XMLFileName;
    end;
}

