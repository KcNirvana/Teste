report 57032 "UNILEO DACP"
{

    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/UNILEODACP.rdl';
    Caption = 'DACP - Capital Changes';
    Permissions = TableData "UNILEO Aux Table" = rimd;
    ApplicationArea = All;

    dataset
    {
        dataitem(UNILEOAuxTable3; "UNILEO Aux Table")
        {
            DataItemTableView = SORTING(Code1);
            UseTemporary = true;
            column(CompanyName; CompanyName)
            {
            }
            column(YearFilter; YearFilter)
            {
            }
            column(PeriodNumber; gOptPeriodType)
            {
            }
            column(Bold; Bold)
            {
            }
            column(Linha; Integer)
            {
            }
            column(Descricao; Description1)
            {
            }
            column(Valor1; "Amount 1")
            {
            }
            column(Valor2; "Amount 2")
            {
            }
            column(Valor3; "Amount 3")
            {
            }
            column(Valor4; "Amount 4")
            {
            }
            column(Valor5; "Amount 5")
            {
            }
            column(Valor6; "Amount 6")
            {
            }
            column(Valor7; "Amount 7")
            {
            }
            column(Valor8; "Amount 8")
            {
            }
            column(Valor9; "Amount 9")
            {
            }
            column(Valor10; "Amount 10")
            {
            }

        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                field(YearFilter; YearFilter)
                {
                    BlankZero = true;
                    Caption = 'Year';
                    Editable = false;
                }
                field(gOptPeriodType; gOptPeriodType)
                {
                    Caption = 'Period';
                    Editable = false;
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
        Titulo_Lbl = 'DACP - Capital Changes';
        Ano_Lbl = 'Year:';
        Periodo_Lbl = 'Period:';
        PageNoCaption_Lbl = 'Page:';
        Column1Lbl = 'Share Capital';
        Column2Lbl = 'Rev. Reserves Fair Value';
        Column3Lbl = 'Rev. Reserves Deferred Tax';
        Column4Lbl = 'Total';
        Column5Lbl = 'Legal Reserves';
        Column6Lbl = 'Other Reserves';
        Column7Lbl = 'Transited Results';
        Column8Lbl = 'Total';
        Column9Lbl = 'Fiscal Year Result';
        Column10Lbl = 'Total';
    }

    trigger OnPreReport()
    begin
        MakeDateFilter;
        GetValues;
    end;

    var
        YearFilter: Integer;
        gDStartDate: Date;
        gDEndDate: Date;
        gBConfig: Boolean;
        gTextPageCaption: Text[100];
        gDPreviousDate: Date;
        gDPreviousStartDate: Date;
        Text50003: Label 'You didnt selected any year.';
        UNILEOAuxTable2: Record "UNILEO Aux Table" temporary;
        gContador: Integer;
        gDate: Date;
        gOptPeriodType: Option D,S,M,T,A;
        Text50004: Label 'Generating informations...\\';
        Text50005: Label '       #1##################';
        Window: Dialog;
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
            gOptPeriodType::D:
                begin
                    gDStartDate := gDate;
                    gDEndDate := gDate;
                end;
            gOptPeriodType::S:
                begin
                    Clear(lRecDate);
                    lRecDate.SetRange("Period Type", lRecDate."Period Type"::Week);
                    lRecDate.SetRange("Period Start", DMY2Date(1, 1, lAux_Year), DMY2Date(31, 12, lAux_Year));
                    lRecDate.SetRange("Period No.", Date2DWY(gDate, 2));
                    if lRecDate.FindSet then begin
                        gDStartDate := lRecDate."Period Start";
                        gDEndDate := lRecDate."Period End";
                    end;
                end;
            gOptPeriodType::M:
                begin
                    gDStartDate := DMY2Date(1, lAux_Month, lAux_Year);
                    gDEndDate := CalcDate('+1M-1D', gDStartDate);
                end;
            gOptPeriodType::T:
                begin
                    case lAux_Month of
                        1, 2, 3:
                            begin
                                gDStartDate := DMY2Date(1, 1, lAux_Year);
                                gDEndDate := DMY2Date(31, 3, lAux_Year);
                            end;
                        4, 5, 6:
                            begin
                                gDStartDate := DMY2Date(1, 4, lAux_Year);
                                gDEndDate := DMY2Date(30, 6, lAux_Year);
                            end;
                        7, 8, 9:
                            begin
                                gDStartDate := DMY2Date(1, 7, lAux_Year);
                                gDEndDate := DMY2Date(30, 9, lAux_Year);
                            end;
                        10, 11, 12:
                            begin
                                gDStartDate := DMY2Date(1, 10, lAux_Year);
                                gDEndDate := DMY2Date(31, 12, lAux_Year);
                            end;
                    end;

                end;
            gOptPeriodType::A:
                begin
                    gDStartDate := DMY2Date(1, 1, lAux_Year);
                    gDEndDate := DMY2Date(31, 12, lAux_Year);
                end;
        end;
    end;

    procedure SetFilters(lYearFilter: Integer; lPeriodNumber: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14")
    begin
        YearFilter := lYearFilter;
    end;

    local procedure GetValues()
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
        DateSetup: Date;
    begin
        Window.Open(Text50004 + Text50005);

        Clear(UNILEOAuxTable);
        Clear(UNILEOAuxTable3);

        UNILEOAuxTable3.DeleteAll;

        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DACP, gDStartDate);

        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DACP);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        if UNILEOAuxTable.FindSet then
            repeat
                Clear(UNILEOAuxTable3);
                UNILEOAuxTable3."Amount 1" := GetFieldValue(1, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 2" := GetFieldValue(2, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 3" := GetFieldValue(3, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 4" := UNILEOAuxTable3."Amount 2" +
                                              UNILEOAuxTable3."Amount 3";
                UNILEOAuxTable3."Amount 5" := GetFieldValue(4, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 6" := GetFieldValue(5, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 7" := GetFieldValue(6, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 8" := UNILEOAuxTable3."Amount 5" +
                                              UNILEOAuxTable3."Amount 6" +
                                              UNILEOAuxTable3."Amount 7";
                UNILEOAuxTable3."Amount 9" := GetFieldValue(7, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 10" := UNILEOAuxTable3."Amount 1" +
                                               UNILEOAuxTable3."Amount 4" +
                                               UNILEOAuxTable3."Amount 8" +
                                               UNILEOAuxTable3."Amount 9";

                UNILEOAuxTable3.Integer := UNILEOAuxTable.Integer;
                UNILEOAuxTable3."Report Type" := UNILEOAuxTable."Report Type";
                UNILEOAuxTable3.Code1 := UNILEOAuxTable.Code1;
                UNILEOAuxTable3.Description1 := UNILEOAuxTable.Description1;
                UNILEOAuxTable3.Bold := UNILEOAuxTable.Bold;
                UNILEOAuxTable3.Code4 := UNILEOAuxTable.Code4;
                UNILEOAuxTable3.Totaling := UNILEOAuxTable.Totaling;
                UNILEOAuxTable3.Totaling2 := UNILEOAuxTable.Totaling2;
                UNILEOAuxTable3.Code3 := UNILEOAuxTable.Code3;
                UNILEOAuxTable3."Column Option" := UNILEOAuxTable."Column Option";
                UNILEOAuxTable3.Insert;
                Window.Update(1, UNILEOAuxTable.Description1);
            until UNILEOAuxTable.Next = 0;

        gContador := UNILEOAuxTable3.Count;
        Window.Close;
    end;

    local procedure GetFieldValue(FieldNo: Integer; UNILEOAuxTable: Record "UNILEO Aux Table"): Decimal
    var
        QueryUnileo: Query "UNILEO BLC DR";
        FieldAmount: Decimal;
        FieldAmount1: Decimal;
        lAuxStartDate: Date;
        lAuxEndDate: Date;
        lRecGLEntry: Record "G/L Entry";
    begin
        Clear(FieldAmount);

        if UNILEOAuxTable.GroupCode then begin //N-1
            lAuxStartDate := CalcDate('-1A', gDStartDate);
            lAuxEndDate := CalcDate('-1A', gDEndDate);
        end else begin
            lAuxStartDate := gDStartDate;
            lAuxEndDate := gDEndDate;
        end;

        Clear(lRecGLEntry);
        lRecGLEntry.SetCurrentKey("G/L Account No.", "Posting Date");
        case FieldNo of
            1:
                begin
                    lRecGLEntry.SetFilter("G/L Account No.", UNILEOAuxTable."GL Account Filter Col 1");
                    lRecGLEntry.SetRange("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CalcSums(Amount);
                    exit(lRecGLEntry.Amount);
                end;
            2:
                begin
                    lRecGLEntry.SetFilter("G/L Account No.", UNILEOAuxTable."GL Account Filter Col 2");
                    lRecGLEntry.SetRange("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CalcSums(Amount);
                    exit(lRecGLEntry.Amount);
                end;
            3:
                begin
                    lRecGLEntry.SetFilter("G/L Account No.", UNILEOAuxTable."GL Account Filter Col 3");
                    lRecGLEntry.SetRange("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CalcSums(Amount);
                    exit(lRecGLEntry.Amount);
                end;
            4:
                begin
                    lRecGLEntry.SetFilter("G/L Account No.", UNILEOAuxTable."GL Account Filter Col 4");
                    lRecGLEntry.SetRange("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CalcSums(Amount);
                    exit(lRecGLEntry.Amount);
                end;
            5:
                begin
                    lRecGLEntry.SetFilter("G/L Account No.", UNILEOAuxTable."GL Account Filter Col 5");
                    lRecGLEntry.SetRange("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CalcSums(Amount);
                    exit(lRecGLEntry.Amount);
                end;
            6:
                begin
                    lRecGLEntry.SetFilter("G/L Account No.", UNILEOAuxTable."GL Account Filter Col 6");
                    lRecGLEntry.SetRange("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CalcSums(Amount);
                    exit(lRecGLEntry.Amount);
                end;
            7:
                begin
                    lRecGLEntry.SetFilter("G/L Account No.", UNILEOAuxTable."GL Account Filter Col 7");
                    lRecGLEntry.SetRange("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CalcSums(Amount);
                    FieldAmount := lRecGLEntry.Amount;

                    lRecGLEntry.SetFilter("G/L Account No.", UNILEOAuxTable."GL Account Filter Col 8");
                    lRecGLEntry.SetRange("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CalcSums(Amount);
                    FieldAmount1 := lRecGLEntry.Amount;

                    exit(-FieldAmount - FieldAmount1);
                end;
        end;

    end;
}

