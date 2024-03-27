page 57219 "UNILEO DFC"
{

    Caption = 'UNILEO DFC';
    DataCaptionExpression = gTextPageCaption;
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = ListPlus;
    SourceTable = "UNILEO Aux Table";
    SourceTableTemporary = true;
    SourceTableView = WHERE("Report Type" = CONST(DFC));
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
                field(Code1; Rec.Code1)
                {
                    Caption = 'Rubric';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field(Description1; Rec.Description1)
                {
                    Caption = 'Description';
                    Style = Strong;
                    StyleExpr = Rec.Bold;
                }
                field("Period N"; Rec."Amount 1")
                {
                    Caption = 'Period N';
                    DrillDown = true;

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
                    ReportDFC: Report "UNILEO DFC";
                begin
                    CLEAR(ReportDFC);
                    ReportDFC.SetFilters(YearFilter, PeriodNumber);
                    ReportDFC.RUNMODAL;
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
        YearFilter := DATE2DMY(WORKDATE, 3);
        PeriodNumber := DATE2DMY(WORKDATE, 2);
    end;

    var
        YearFilter: Integer;
        PeriodNumber: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14";
        gDStartDate: Date;
        gDEndDate: Date;
        gTextPageCaption: Text[100];
        Text50000: Label 'DFC - Statement of Cash Flows';
        gDPreviousDate: Date;
        gDPreviousStartDate: Date;
        Text50003: Label 'You didnt selected any year.';
        UNILEOAuxTable3: Record "UNILEO Aux Table" temporary;
        UNILEOAuxTable2: Record "UNILEO Aux Table" temporary;
        gContador: Integer;
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
        IF YearFilter = 0 THEN
            ERROR(Text50003);

        gDPreviousDate := CALCDATE('-1D', DMY2DATE(1, 1, YearFilter));
        gDStartDate := DMY2DATE(1, 1, YearFilter);
        gDPreviousStartDate := DMY2DATE(1, 1, DATE2DMY(gDPreviousDate, 3));
        CASE PeriodNumber OF
            PeriodNumber::"1":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 1, YearFilter));
                END;
            PeriodNumber::"2":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 2, YearFilter));
                END;
            PeriodNumber::"3":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 3, YearFilter));
                END;
            PeriodNumber::"4":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 4, YearFilter));
                END;
            PeriodNumber::"5":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 5, YearFilter));
                END;
            PeriodNumber::"6":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 6, YearFilter));
                END;
            PeriodNumber::"7":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 7, YearFilter));
                END;
            PeriodNumber::"8":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 8, YearFilter));
                END;
            PeriodNumber::"9":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 9, YearFilter));
                END;
            PeriodNumber::"10":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 10, YearFilter));
                END;
            PeriodNumber::"11":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 11, YearFilter));
                END;
            PeriodNumber::"12":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 12, YearFilter));
                END;
            PeriodNumber::"13":
                BEGIN
                    gDEndDate := CALCDATE('+1M-1D', DMY2DATE(1, 12, YearFilter));
                END;
            PeriodNumber::"14":
                BEGIN
                    gDEndDate := CLOSINGDATE(DMY2DATE(31, 12, YearFilter));
                END;
        END;
    end;

    local procedure GetValues()
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
        DateSetup: Date;
    begin

        Window.OPEN(Text50010 + Text50011);

        CLEAR(UNILEOAuxTable);
        CLEAR(UNILEOAuxTable3);
        CLEAR(UNILEOAuxTable2);

        UNILEOAuxTable3.DELETEALL;
        UNILEOAuxTable2.DELETEALL;

        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DFC, gDStartDate);

        //rubrica
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DFC);
        UNILEOAuxTable.SetRange("Column Option", UNILEOAuxTable."Column Option"::Col3);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        IF UNILEOAuxTable.FINDSET THEN
            REPEAT
                CLEAR(UNILEOAuxTable3);
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
                UNILEOAuxTable3.INSERT;
                UNILEOAuxTable2 := UNILEOAuxTable3;
                UNILEOAuxTable2.INSERT;
                Window.UPDATE(1, UNILEOAuxTable.Description1);
            UNTIL UNILEOAuxTable.NEXT = 0;

        //rubrica agregadora
        UNILEOAuxTable.RESET;
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DFC);
        UNILEOAuxTable.SetRange("Column Option", UNILEOAuxTable."Column Option"::Col2);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        IF UNILEOAuxTable.FINDSET THEN
            REPEAT
                CLEAR(UNILEOAuxTable3);
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
                UNILEOAuxTable3.INSERT;
                UNILEOAuxTable2 := UNILEOAuxTable3;
                UNILEOAuxTable2.INSERT;
                Window.UPDATE(1, UNILEOAuxTable.Description1);
            UNTIL UNILEOAuxTable.NEXT = 0;

        //macro rubrica
        UNILEOAuxTable.RESET;
        UNILEOAuxTable.SetRange("Report Type", "UNILEO Report Type"::DFC);
        UNILEOAuxTable.SetRange("Column Option", UNILEOAuxTable."Column Option"::Col1);
        UNILEOAuxTable.SetRange("Setup Start Date", DateSetup);
        IF UNILEOAuxTable.FINDSET THEN
            REPEAT
                CLEAR(UNILEOAuxTable3);
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
                UNILEOAuxTable3.INSERT;
                UNILEOAuxTable2 := UNILEOAuxTable3;
                UNILEOAuxTable2.INSERT;
                Window.UPDATE(1, UNILEOAuxTable.Description1);
            UNTIL UNILEOAuxTable.NEXT = 0;

        CLEAR(Rec);
        Rec.DELETEALL;
        IF UNILEOAuxTable3.FINDSET THEN
            REPEAT
                Rec := UNILEOAuxTable3;
                IF NOT (UNILEOAuxTable3.Integer IN [800 .. 1200, 1310 .. 1340]) THEN
                    Rec.INSERT;
                Window.UPDATE(1, UNILEOAuxTable3.Description1);
            UNTIL UNILEOAuxTable3.NEXT = 0;

        gContador := UNILEOAuxTable3.COUNT;
        Window.CLOSE;
        Rec.Reset();
        if Rec.FindFirst() then;
    end;

    local procedure GetFieldValue(FieldNo: Integer; UNILEOAuxTable: Record "UNILEO Aux Table") FieldAmount: Decimal
    var
        QueryUnileo: Query "UNILEO DFC";
    begin
        CLEAR(FieldAmount);

        IF (UNILEOAuxTable.Totaling2 = '') AND (UNILEOAuxTable.Totaling = '') THEN
            EXIT(0);

        CLEAR(QueryUnileo);
        IF (UNILEOAuxTable.Totaling2 <> '') AND (UNILEOAuxTable.Totaling <> '') THEN
            UNILEOAuxTable.Totaling := '|' + UNILEOAuxTable.Totaling;

        QueryUnileo.SETFILTER(QueryUnileo.CashFlowNoFilter, UNILEOAuxTable.Totaling2 + UNILEOAuxTable.Totaling);
        CASE FieldNo OF
            1:
                QueryUnileo.SETFILTER(QueryUnileo.DateFilter, '%1..%2', 0D, gDPreviousDate);
            2:
                QueryUnileo.SETFILTER(QueryUnileo.DateFilter, '%1..%2', gDStartDate, gDEndDate);
        END;

        QueryUnileo.OPEN;
        WHILE QueryUnileo.READ DO
            FieldAmount := FieldAmount + QueryUnileo.Sum_Amount;

        EXIT(FieldAmount);
    end;

    local procedure GetFieldValue2(FieldNo: Integer; UNILEOAuxTable: Record "UNILEO Aux Table") FieldAmount: Decimal
    begin
        CLEAR(FieldAmount);

        IF (UNILEOAuxTable.Totaling2 = '') AND (UNILEOAuxTable.Totaling = '') THEN
            EXIT(0);

        UNILEOAuxTable2.RESET;
        UNILEOAuxTable2.SETRANGE("Report Type", "UNILEO Report Type"::DFC);

        IF (UNILEOAuxTable.Code1 = 'DFCX01') OR (UNILEOAuxTable.Code1 = 'DFCX02') THEN
            UNILEOAuxTable2.SETRANGE(Code3, UNILEOAuxTable.Code1);

        IF (UNILEOAuxTable.Totaling2 <> '') AND (UNILEOAuxTable.Totaling <> '') THEN
            UNILEOAuxTable.Totaling := '|' + UNILEOAuxTable.Totaling;

        UNILEOAuxTable2.SETFILTER(Code1, UNILEOAuxTable.Totaling2 + UNILEOAuxTable.Totaling);

        IF UNILEOAuxTable2.FINDSET THEN
            REPEAT
                CASE FieldNo OF
                    1:
                        FieldAmount := FieldAmount + UNILEOAuxTable2."Amount 1";
                    2:
                        FieldAmount := FieldAmount + UNILEOAuxTable2."Amount 2";
                END;
            UNTIL UNILEOAuxTable2.NEXT = 0;

        EXIT(FieldAmount);
    end;

    local procedure PageDrillDown(pFieldNo: Integer; UNILEOAuxTable: Record "UNILEO Aux Table")
    var
        GLEntry: Record "G/L Entry";
        QueryUnileo: Query "UNILEO DFC";
        GLEntriesPage: page "General Ledger Entries";
        GLEntryFilter: Text;
    begin

        IF UNILEOAuxTable."Column Option" <> UNILEOAuxTable."Column Option"::Col3 THEN
            EXIT;

        IF (UNILEOAuxTable.Totaling2 = '') AND (UNILEOAuxTable.Totaling = '') THEN EXIT;

        CLEAR(QueryUnileo);
        IF (UNILEOAuxTable.Totaling2 <> '') AND (UNILEOAuxTable.Totaling <> '') THEN
            UNILEOAuxTable.Totaling := '|' + UNILEOAuxTable.Totaling;

        QueryUnileo.SETFILTER(QueryUnileo.CashFlowNoFilter, UNILEOAuxTable.Totaling2 + UNILEOAuxTable.Totaling);

        CASE pFieldNo OF
            1:
                QueryUnileo.SETFILTER(QueryUnileo.DateFilter, '%1..%2', 0D, gDPreviousDate);
            2:
                QueryUnileo.SETFILTER(QueryUnileo.DateFilter, '%1..%2', gDStartDate, gDEndDate);
        END;

        QueryUnileo.OPEN;
        WHILE QueryUnileo.READ DO BEGIN
            IF GLEntryFilter = '' THEN
                GLEntryFilter := QueryUnileo.CashFlowNo
            ELSE
                GLEntryFilter := GLEntryFilter + '|' + QueryUnileo.CashFlowNo;
        END;


        GLEntry.SETCURRENTKEY("G/L Account No.", "Posting Date", "PTSS Acc: cash-flow code");
        GLEntry.FILTERGROUP(2);
        IF GLEntryFilter <> '' THEN
            GLEntry.SETFILTER("PTSS Acc: cash-flow code", GLEntryFilter)
        ELSE
            GLEntry.SETFILTER("PTSS Acc: cash-flow code", 'nothing');

        CASE pFieldNo OF
            1:
                GLEntry.SETRANGE("Posting Date", 0D, gDPreviousDate);
            2:
                GLEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
        END;

        Clear(GLEntriesPage);
        GLEntriesPage.SetTableView(GLEntry);
        GLEntriesPage.Run();
    end;
}

