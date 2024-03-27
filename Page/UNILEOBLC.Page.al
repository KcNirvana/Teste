page 57216 "UNILEO BLC"
{

    Caption = 'UNILEO BLC';
    DataCaptionExpression = gTextPageCaption;
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = ListPlus;
    SourceTable = "UNILEO Aux Table";
    SourceTableTemporary = true;
    SourceTableView = WHERE("Report Type" = CONST(BLC));
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
                field(Code1; Rec.Code1)
                {
                    Caption = 'Rubric';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                    Editable = false;
                }
                field(Description1; Rec.Description1)
                {
                    Caption = 'Description';
                    Editable = false;
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field("Period N"; Rec."Amount 1")
                {
                    Caption = 'Period N';
                    DrillDown = true;
                    Editable = false;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(1, Rec);
                    end;
                }
                field("Period N-1"; Rec."Amount 2")
                {
                    Caption = 'Period N-1';
                    Editable = false;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(2, Rec);
                    end;
                }
                field(Code4; Rec.Code4)
                {
                    Caption = 'Notes';
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
                    ReportBLC: Report "UNILEO BLC";
                begin

                    Clear(ReportBLC);
                    ReportBLC.SetFilters(YearFilter, PeriodNumber);
                    ReportBLC.RunModal;
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
        MakeDateFilter;
    end;

    var
        YearFilter: Integer;
        PeriodNumber: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14";
        gDStartDate: Date;
        gDEndDate: Date;
        gBConfig: Boolean;
        gTextPageCaption: Text[100];
        Text50000: Label 'BLC - Balance';
        gDPreviousDate: Date;
        gDPreviousStartDate: Date;
        Text50003: Label 'You didnt selected any year.';
        UNILEOAuxTable3: Record "UNILEO Aux Table" temporary;
        UNILEOAuxTable2: Record "UNILEO Aux Table" temporary;
        gContador: Integer;
        Window: Dialog;
        Text50004: Label 'Generating informations...\\';
        Text50005: Label '       #1##################';
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
                    gDEndDate := ClosingDate(DMY2Date(31, 12, YearFilter));
                end;
        end;

        gDPreviousStartDate := CalcDate('<-1Y>', gDStartDate);
        gDPreviousDate := CalcDate('<-1Y>', gDEndDate);

        gDStartDate := 0D;
        gDPreviousStartDate := 0D;
    end;

    local procedure GetValues()
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
        DateSetup: Date;
    begin
        Window.Open(Text50004 + Text50005);

        Clear(UNILEOAuxTable);
        Clear(UNILEOAuxTable3);
        Clear(UNILEOAuxTable2);

        UNILEOAuxTable3.DeleteAll;
        UNILEOAuxTable2.DeleteAll;

        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::BLC, gDEndDate);

        //rubrica
        UNILEOAuxTable.Reset;
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::BLC);
        UNILEOAuxTable.SetRange("Column Option", UNILEOAuxTable."Column Option"::Col3);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        if UNILEOAuxTable.FindSet then
            repeat
                Clear(UNILEOAuxTable3);
                UNILEOAuxTable3."Amount 1" := GetFieldValue(1, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 2" := GetFieldValue(2, UNILEOAuxTable);
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
                UNILEOAuxTable3.GroupCode := UNILEOAuxTable.GroupCode;
                UNILEOAuxTable3.Insert;
                UNILEOAuxTable2 := UNILEOAuxTable3;
                UNILEOAuxTable2.Insert;
                Window.Update(1, UNILEOAuxTable.Description1);
            until UNILEOAuxTable.Next = 0;


        //rubrica agregadora
        UNILEOAuxTable.Reset;
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::BLC);
        UNILEOAuxTable.SetRange("Column Option", UNILEOAuxTable."Column Option"::Col2);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        if UNILEOAuxTable.FindSet then
            repeat
                Clear(UNILEOAuxTable3);
                UNILEOAuxTable3."Amount 1" := GetFieldValue2(1, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 2" := GetFieldValue2(2, UNILEOAuxTable);
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
                UNILEOAuxTable3.GroupCode := UNILEOAuxTable.GroupCode;
                UNILEOAuxTable3.Insert;
                UNILEOAuxTable2 := UNILEOAuxTable3;
                UNILEOAuxTable2.Insert;
                Window.Update(1, UNILEOAuxTable.Description1);
            until UNILEOAuxTable.Next = 0;

        //macro rubrica
        UNILEOAuxTable.Reset;
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::BLC);
        UNILEOAuxTable.SetRange("Column Option", UNILEOAuxTable."Column Option"::Col1);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        if UNILEOAuxTable.FindSet then
            repeat
                Clear(UNILEOAuxTable3);
                UNILEOAuxTable3."Amount 1" := GetFieldValue2(1, UNILEOAuxTable);
                UNILEOAuxTable3."Amount 2" := GetFieldValue2(2, UNILEOAuxTable);
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
                UNILEOAuxTable3.GroupCode := UNILEOAuxTable.GroupCode;
                UNILEOAuxTable3.Insert;
                UNILEOAuxTable2 := UNILEOAuxTable3;
                UNILEOAuxTable2.Insert;
                Window.Update(1, UNILEOAuxTable.Description1);
            until UNILEOAuxTable.Next = 0;

        Clear(Rec);
        Rec.DeleteAll;
        if UNILEOAuxTable3.FindSet then
            repeat
                Rec := UNILEOAuxTable3;
                Rec.Insert;
                Window.Update(1, UNILEOAuxTable3.Description1);
            until UNILEOAuxTable3.Next = 0;
        gContador := UNILEOAuxTable3.Count;
        Window.Close;
        Rec.Reset();
        if Rec.FindFirst() then;
    end;

    local procedure GetFieldValue(FieldNo: Integer; UNILEOAuxTable: Record "UNILEO Aux Table") FieldAmount: Decimal
    var
        QueryUnileo: Query "UNILEO BLC DR";
    begin
        Clear(FieldAmount);

        if (UNILEOAuxTable.Totaling2 = '') and (UNILEOAuxTable.Totaling = '') then
            exit(0);

        Clear(QueryUnileo);
        if (UNILEOAuxTable.Totaling2 <> '') and (UNILEOAuxTable.Totaling <> '') then
            UNILEOAuxTable.Totaling := '|' + UNILEOAuxTable.Totaling;

        QueryUnileo.SetFilter(QueryUnileo.NoPCCFilter, UNILEOAuxTable.Totaling2 + UNILEOAuxTable.Totaling);
        case FieldNo of
            1:
                QueryUnileo.SetFilter(QueryUnileo.DateFilter, '%1..%2', gDStartDate, gDEndDate);
            2:
                QueryUnileo.SetFilter(QueryUnileo.DateFilter, '%1..%2', gDPreviousStartDate, gDPreviousDate);
        end;

        QueryUnileo.Open;
        while QueryUnileo.Read do
            FieldAmount := FieldAmount + QueryUnileo.Sum_Amount;

        if UNILEOAuxTable.GroupCode then
            FieldAmount := FieldAmount * (-1);

        exit(FieldAmount);
    end;

    local procedure GetFieldValue2(FieldNo: Integer; UNILEOAuxTable: Record "UNILEO Aux Table") FieldAmount: Decimal
    begin
        Clear(FieldAmount);

        if (UNILEOAuxTable.Totaling2 = '') and (UNILEOAuxTable.Totaling = '') then
            exit(0);

        UNILEOAuxTable2.Reset;
        UNILEOAuxTable2.SetRange("Report Type", "UNILEO Report Type"::BLC);

        if (UNILEOAuxTable.Totaling2 <> '') and (UNILEOAuxTable.Totaling <> '') then
            UNILEOAuxTable.Totaling := '|' + UNILEOAuxTable.Totaling;

        UNILEOAuxTable2.SetFilter(Code1, UNILEOAuxTable.Totaling2 + UNILEOAuxTable.Totaling);

        if UNILEOAuxTable2.FindSet then
            repeat
                case FieldNo of
                    1:
                        FieldAmount := FieldAmount + UNILEOAuxTable2."Amount 1";
                    2:
                        FieldAmount := FieldAmount + UNILEOAuxTable2."Amount 2";
                end;
            until UNILEOAuxTable2.Next = 0;

        exit(FieldAmount);
    end;

    local procedure PageDrillDown(pFieldNo: Integer; UNILEOAuxTable: Record "UNILEO Aux Table")
    var
        GLEntry: Record "G/L Entry";
        QueryUnileo: Query "UNILEO BLC DR";
        GLEntriesPage: page "General Ledger Entries";
        GLEntryFilter: Text;
    begin

        if UNILEOAuxTable."Column Option" <> UNILEOAuxTable."Column Option"::Col3 then
            exit;
        if (UNILEOAuxTable.Totaling2 = '') and (UNILEOAuxTable.Totaling = '') then
            exit;

        Clear(QueryUnileo);
        if (UNILEOAuxTable.Totaling2 <> '') and (UNILEOAuxTable.Totaling <> '') then
            UNILEOAuxTable.Totaling := '|' + UNILEOAuxTable.Totaling;

        QueryUnileo.SetFilter(QueryUnileo.NoPCCFilter, UNILEOAuxTable.Totaling2 + UNILEOAuxTable.Totaling);
        case pFieldNo of
            1:
                QueryUnileo.SetFilter(QueryUnileo.DateFilter, '%1..%2', gDStartDate, gDEndDate);
            2:
                QueryUnileo.SetFilter(QueryUnileo.DateFilter, '%1..%2', gDPreviousStartDate, gDPreviousDate);
        end;

        QueryUnileo.Open;
        while QueryUnileo.Read do begin
            if GLEntryFilter = '' then
                GLEntryFilter := QueryUnileo.No
            else
                GLEntryFilter := GLEntryFilter + '|' + QueryUnileo.No;
        end;

        GLEntry.SETCURRENTKEY("G/L Account No.", "Posting Date");
        GLEntry.FILTERGROUP(2);
        IF GLEntryFilter <> '' THEN
            GLEntry.SETFILTER("G/L Account No.", GLEntryFilter)
        ELSE
            GLEntry.SETFILTER("G/L Account No.", 'nothing');

        case pFieldNo of
            1:
                GLEntry.SetRange("Posting Date", gDStartDate, gDEndDate);
            2:
                GLEntry.SetRange("Posting Date", gDPreviousStartDate, gDPreviousDate);
        end;

        Clear(GLEntriesPage);
        GLEntriesPage.SetTableView(GLEntry);
        GLEntriesPage.Run();
    end;

}

