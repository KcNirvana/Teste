page 57218 "UNILEO DAPL"
{

    Caption = 'UNILEO DAPL';
    DataCaptionExpression = gTextPageCaption;
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = ListPlus;
    Permissions = TableData "UNILEO Aux Table" = rimd;
    SourceTable = "UNILEO Aux Table";
    SourceTableTemporary = true;
    SourceTableView = WHERE("Report Type" = CONST(DAPL));
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(Filters)
            {
                Caption = 'Filters';
                field(Year; YearFilter)
                {
                    Caption = 'Year';
                }
                field(Period; PeriodNumber)
                {
                    Caption = 'Period';
                }
            }
            repeater(Group)
            {
                Editable = false;
                field(Description1; Rec.Description1)
                {
                    Caption = 'Description';
                    Editable = false;
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field("Amount 1"; Rec."Amount 1")
                {
                    Caption = 'Capital / Accomplished Patrimony';
                    DrillDown = true;
                    Editable = false;
                    Visible = YearFilter <= 2018;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(1, Rec);
                    end;
                }
                field("Amount 14"; Rec."Amount 14")
                {
                    Caption = 'Subscribed Capital / Heritage';
                    DrillDown = true;
                    Editable = false;
                    Visible = YearFilter >= 2019;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(14, Rec);
                    end;
                }
                field("Amount 15"; Rec."Amount 15")
                {
                    Caption = 'Own shares';
                    DrillDown = true;
                    Visible = YearFilter >= 2019;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(15, Rec);
                    end;
                }
                field("Amount 2"; Rec."Amount 2")
                {
                    Caption = 'Other instruments own capital';
                    DrillDown = true;
                    Editable = false;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(2, Rec);
                    end;
                }
                field("Amount 16"; Rec."Amount 16")
                {
                    Caption = 'Issuance Awards';
                    DrillDown = true;
                    Visible = YearFilter >= 2019;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(16, Rec);
                    end;
                }
                field("Amount 17"; Rec."Amount 17")
                {
                    Caption = 'Reservations';
                    DrillDown = true;
                    Visible = YearFilter >= 2019;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(17, Rec);
                    end;
                }
                field("Amount 3"; Rec."Amount 3")
                {
                    Caption = 'Legal Reserves';
                    DrillDown = true;
                    Editable = false;
                    Visible = YearFilter <= 2018;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(3, Rec);
                    end;
                }
                field("Amount 4"; Rec."Amount 4")
                {
                    Caption = 'Reserves from transfer assets';
                    DrillDown = true;
                    Editable = false;
                    Visible = YearFilter <= 2018;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(4, Rec);
                    end;
                }
                field("Amount 5"; Rec."Amount 5")
                {
                    Caption = 'Other Reserves';
                    DrillDown = true;
                    Editable = false;
                    Visible = YearFilter <= 2018;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(5, Rec);
                    end;
                }
                field("Amount 6"; Rec."Amount 6")
                {
                    Caption = 'Transited Results';
                    DrillDown = true;
                    Editable = false;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(6, Rec);
                    end;
                }
                field("Amount 7"; Rec."Amount 7")
                {
                    Caption = 'Financial Assets Adjustments';
                    DrillDown = true;
                    Editable = false;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(7, Rec);
                    end;
                }
                field("Amount 8"; Rec."Amount 8")
                {
                    Caption = 'Revaluation Surplus';
                    DrillDown = true;
                    Editable = false;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(8, Rec);
                    end;
                }
                field("Amount 9"; Rec."Amount 9")
                {
                    Caption = 'Other changes to net assets';
                    DrillDown = true;
                    Editable = false;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(9, Rec);
                    end;
                }
                field("Amount 10"; Rec."Amount 10")
                {
                    Caption = 'Net income for the period';
                    DrillDown = true;
                    Editable = false;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(10, Rec);
                    end;
                }
                field("Amount 11"; Rec."Amount 11")
                {
                    Caption = 'Total';
                }
                field("Amount 12"; Rec."Amount 12")
                {
                    Caption = 'Non-controlling interests';
                    Editable = false;
                }
                field("Amount 13"; Rec."Amount 13")
                {
                    Caption = 'Total Shareholders Equity';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Print")
            {
                Caption = '&Print';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    ReportDAPL: Report "UNILEO DAPL";
                begin
                    Clear(ReportDAPL);
                    ReportDAPL.SetFilters(YearFilter, PeriodNumber);
                    ReportDAPL.RunModal;
                end;
            }
            action("Update Amounts")
            {
                Caption = 'Update Amounts';
                Image = PostApplication;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    MakeDateFilter;
                    GetValues;
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        gTextPageCaption := Text50000;
        YearFilter := Date2DMY(WorkDate, 3);
        PeriodNumber := Date2DMY(WorkDate, 2);
    end;

    var
        YearFilter: Integer;
        PeriodNumber: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14";
        gDStartDate: Date;
        gDEndDate: Date;
        gBConfig: Boolean;
        gTextPageCaption: Text[100];
        Text50000: Label 'DAPL - Statement of Changes in Shareholders Equity';
        gDPreviousDate: Date;
        gDPreviousStartDate: Date;
        Text50003: Label 'You didnt selected any year.';
        Window: Dialog;
        Text50010: Label 'Generating informations...\\';
        Text50011: Label '       #1##################';
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
                end;
            PeriodNumber::"2":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 2, YearFilter));
                end;
            PeriodNumber::"3":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 3, YearFilter));
                end;
            PeriodNumber::"4":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 4, YearFilter));
                end;
            PeriodNumber::"5":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 5, YearFilter));
                end;
            PeriodNumber::"6":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 6, YearFilter));
                end;
            PeriodNumber::"7":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 7, YearFilter));
                end;
            PeriodNumber::"8":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 8, YearFilter));
                end;
            PeriodNumber::"9":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 9, YearFilter));
                end;
            PeriodNumber::"10":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 10, YearFilter));
                end;
            PeriodNumber::"11":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 11, YearFilter));
                end;
            PeriodNumber::"12":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 12, YearFilter));
                end;
            PeriodNumber::"13":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 12, YearFilter));
                end;
            PeriodNumber::"14":
                begin
                    gDEndDate := CalcDate('+1M-1D', DMY2Date(1, 12, YearFilter));//gDEndDate := CLOSINGDATE(DMY2DATE(31,12,YearFilter));
                end;
        end;
    end;

    local procedure GetValues()
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
        GLEntry: Record "G/L Entry";
        UNILEOAuxTable2: Record "UNILEO Aux Table";
        DateSetup: Date;
    begin
        Window.Open(Text50010 + Text50011);

        Clear(UNILEOAuxTable);
        Clear(UNILEOAuxTable2);
        Clear(Rec);
        UNILEOAuxTable2.SetRange(Code1, 'Temp');
        UNILEOAuxTable2.DeleteAll;
        Rec.DeleteAll;

        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DAPL, gDStartDate);

        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DAPL);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        UNILEOAuxTable.SetRange(Code1, '');
        if UNILEOAuxTable.FindSet then
            repeat
                Rec.Init;
                Rec.Integer := UNILEOAuxTable.Integer;
                Rec."Report Type" := UNILEOAuxTable."Report Type";
                Rec.Code1 := UNILEOAuxTable.Code1;
                Rec."Setup Start Date" := UNILEOAuxTable."Setup Start Date";
                Rec.Description1 := UNILEOAuxTable.Description1;
                Window.Update(1, Rec.Description1);
                if Rec.Integer <> 160 then begin    //Resultado integral
                    Rec."Amount 1" := UNILEOMgt.DAPLGetFieldValue(1, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 2" := UNILEOMgt.DAPLGetFieldValue(2, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 3" := UNILEOMgt.DAPLGetFieldValue(3, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 4" := UNILEOMgt.DAPLGetFieldValue(4, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 5" := UNILEOMgt.DAPLGetFieldValue(5, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 6" := UNILEOMgt.DAPLGetFieldValue(6, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 7" := UNILEOMgt.DAPLGetFieldValue(7, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 8" := UNILEOMgt.DAPLGetFieldValue(8, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 9" := UNILEOMgt.DAPLGetFieldValue(9, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 10" := UNILEOMgt.DAPLGetFieldValue(10, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 14" := UNILEOMgt.DAPLGetFieldValue(14, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 15" := UNILEOMgt.DAPLGetFieldValue(15, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 16" := UNILEOMgt.DAPLGetFieldValue(16, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 17" := UNILEOMgt.DAPLGetFieldValue(17, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    if UNILEOAuxTable.Totaling = '' then
                        Rec."Amount 11" := UNILEOMgt.DAPLGetFieldTotal(11, UNILEOAuxTable, Rec)
                    else
                        Rec."Amount 11" := UNILEOMgt.DAPLGetFieldValue(11, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    if UNILEOAuxTable.Totaling = '' then
                        Rec."Amount 12" := UNILEOMgt.DAPLGetFieldTotal(12, UNILEOAuxTable, Rec)
                    else
                        Rec."Amount 12" := UNILEOMgt.DAPLGetFieldValue(12, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    if UNILEOAuxTable.Totaling = '' then
                        Rec."Amount 13" := UNILEOMgt.DAPLGetFieldTotal(13, UNILEOAuxTable, Rec)
                    else
                        Rec."Amount 13" := UNILEOMgt.DAPLGetFieldValue(13, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                end else begin
                    Rec."Amount 1" := UNILEOMgt.DAPLGetFieldValue(1, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 2" := UNILEOMgt.DAPLGetFieldValue(2, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 3" := UNILEOMgt.DAPLGetFieldValue(3, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 4" := UNILEOMgt.DAPLGetFieldValue(4, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 5" := UNILEOMgt.DAPLGetFieldValue(5, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 6" := UNILEOMgt.DAPLGetFieldValue(6, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 7" := UNILEOMgt.DAPLGetFieldValue(7, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 8" := UNILEOMgt.DAPLGetFieldValue(8, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 9" := UNILEOMgt.DAPLGetFieldValue(9, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 10" := 0;
                    Rec."Amount 14" := UNILEOMgt.DAPLGetFieldValue(14, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 15" := UNILEOMgt.DAPLGetFieldValue(15, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 16" := UNILEOMgt.DAPLGetFieldValue(16, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 17" := UNILEOMgt.DAPLGetFieldValue(17, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 11" := UNILEOMgt.DAPLGetFieldValue(11, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                    Rec."Amount 12" := 0;
                    Rec."Amount 13" := UNILEOMgt.DAPLGetFieldValue(13, UNILEOAuxTable, gDStartDate, gDEndDate, gDPreviousDate, gDPreviousStartDate);
                end;
                Rec.Bold := UNILEOAuxTable.Bold;
                Rec.Insert;
                UNILEOAuxTable2.Init;
                UNILEOAuxTable2.Copy(Rec);
                UNILEOAuxTable2.Code1 := 'TEMP';
                UNILEOAuxTable2.Insert;
            until UNILEOAuxTable.Next = 0;

        Clear(UNILEOAuxTable2);
        UNILEOAuxTable2.SetRange(Code1, 'Temp');
        UNILEOAuxTable2.DeleteAll;
        Window.Close;
        Rec.Reset();
        if Rec.FindFirst() then;
    end;

    local procedure PageDrillDown(pFieldNo: Integer; UNILEOAuxTable: Record "UNILEO Aux Table")
    var
        GLEntry: Record "G/L Entry";
        UNILEOAuxTable2: Record "UNILEO Aux Table";
        GLEntriesPage: page "General Ledger Entries";
    begin
        UNILEOAuxTable2.Get(UNILEOAuxTable.Integer, UNILEOAuxTable."Report Type", UNILEOAuxTable.Code1, UNILEOAuxTable."Setup Start Date");
        if UNILEOAuxTable2.Totaling = '' then begin
            GLEntry.SETCURRENTKEY("G/L Account No.", "Posting Date");
            GLEntry.FilterGroup(2);
            case pFieldNo of
                1:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 1" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 1")
                        else
                            exit;
                    end;
                2:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 2" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 2")
                        else
                            exit;
                    end;
                3:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 3" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 3")
                        else
                            exit;
                    end;
                4:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 4" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 4")
                        else
                            exit;
                    end;
                5:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 5" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 5")
                        else
                            exit;
                    end;
                6:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 6" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 6")
                        else
                            exit;
                    end;
                7:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 7" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 7")
                        else
                            exit;
                    end;
                8:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 8" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 8")
                        else
                            exit;
                    end;
                9:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 9" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 9")
                        else
                            exit;
                    end;
                10:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 10" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 10")
                        else
                            exit;
                    end;
                14:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 14" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 14")
                        else
                            exit;
                    end;
                15:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 15" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 15")
                        else
                            exit;
                    end;
                16:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 16" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 16")
                        else
                            exit;
                    end;
                17:
                    begin
                        if UNILEOAuxTable2."GL Account Filter Col 17" <> '' then
                            GLEntry.SetFilter("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 17")
                        else
                            exit;
                    end;


            end;
            if (UNILEOAuxTable2."N-1") then begin
                if (pFieldNo <> 10) then
                    GLEntry.SetRange("Posting Date", 0D, gDPreviousDate)
                else
                    GLEntry.SetRange("Posting Date", gDPreviousStartDate, gDPreviousDate);
            end else
                GLEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
            Clear(GLEntriesPage);
            GLEntriesPage.SetTableView(GLEntry);
            GLEntriesPage.Run();
        end;
    end;


}

