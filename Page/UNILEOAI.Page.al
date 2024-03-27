page 57215 "UNILEO AI"
{
    DataCaptionExpression = gTextPageCaption;
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = ListPlus;
    SourceTable = "UNILEO Aux Table";
    SourceTableView = WHERE("Report Type" = CONST(AI));
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(Filters)
            {
                Caption = 'Filters';
                field(Data; gDate)
                {
                    trigger OnValidate()
                    begin
                        MakeDateFilter;
                    end;
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
            }
            repeater(group)
            {
                Visible = gBVisibleLayout11;
                field(Description1; Rec.Description1)
                {
                    Caption = 'Rubric';
                    Editable = false;
                    Style = Strong;
                    StyleExpr = Rec.GroupCode;
                    Visible = gBVisibleLayout11;
                }
                field("Amount 1"; Rec."Amount 1")
                {
                    Caption = 'Initial Carrying Amount';
                    Editable = false;
                    Visible = gBVisibleLayout11;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(1);
                    end;
                }
                field("Amount 2"; Rec."Amount 2")
                {
                    Caption = 'Additions';
                    Editable = false;
                    Visible = gBVisibleLayout11;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(2);
                    end;
                }
                field("Amount 3"; Rec."Amount 3")
                {
                    Caption = 'Internal Transfers to Entity';
                    Editable = false;
                    Visible = gBVisibleLayout11;
                }
                field("Amount 4"; Rec."Amount 4")
                {
                    Caption = 'Revaluations';
                    Editable = false;
                    Visible = gBVisibleLayout11;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(4);
                    end;
                }
                field("Amount 5"; Rec."Amount 5")
                {
                    Caption = 'Reversals of Impairment Losses';
                    Editable = false;
                    Visible = gBVisibleLayout11;
                }
                field("Amount 6"; Rec."Amount 6")
                {
                    Caption = 'Impairment Losses';
                    Editable = false;
                    Visible = gBVisibleLayout11;
                }
                field("Amount 7"; Rec."Amount 7")
                {
                    Caption = 'Period Depreciation';
                    Editable = false;
                    Visible = gBVisibleLayout11;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(7);
                    end;
                }
                field("Amount 8"; Rec."Amount 8")
                {
                    Caption = 'Exchange Differences';
                    Editable = false;
                    Visible = gBVisibleLayout11;
                }
                field("Amount 9"; Rec."Amount 9")
                {
                    Caption = 'Diminuitions';
                    Editable = false;
                    Visible = gBVisibleLayout11;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(9);
                    end;
                }
                field("Final Carrying Amount"; Rec."Amount 1" + Rec."Amount 2" + Rec."Amount 4" + Rec."Amount 7" + Rec."Amount 9")
                {
                    Caption = 'Final Carrying Amount';
                    Editable = false;
                    Visible = gBVisibleLayout11;
                }
            }
            repeater(group2)
            {
                Visible = gBVisibleLayout12;
                field(Description1_2; Rec.Description1)
                {
                    Caption = 'Rubric';
                    Editable = false;
                    Style = Strong;
                    StyleExpr = Rec.GroupCode;
                    Visible = gBVisibleLayout12;
                }
                field("Amount 1_2"; Rec."Amount 1")
                {
                    Caption = 'Internals';
                    Editable = false;
                    Visible = gBVisibleLayout12;
                }
                field("Amount 2_2"; Rec."Amount 2")
                {
                    Caption = 'Buy';
                    Editable = false;
                    Visible = gBVisibleLayout12;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(2);
                    end;
                }
                field("Amount 3_2"; Rec."Amount 3")
                {
                    Caption = 'Disposal';
                    Editable = false;
                    Visible = gBVisibleLayout12;
                }
                field("Amount 4_2"; Rec."Amount 4")
                {
                    Caption = 'Transfer or Exchange';
                    Editable = false;
                    Visible = gBVisibleLayout12;
                }
                field("Amount 5_2"; Rec."Amount 5")
                {
                    Caption = 'Donation, inheritance, legacy or lost in favor of the State';
                    Editable = false;
                    Visible = gBVisibleLayout12;
                }
                field("Amount 6_2"; Rec."Amount 6")
                {
                    Caption = 'Donation in payment';
                    Editable = false;
                    Visible = gBVisibleLayout12;
                }
                field("Amount 7_2"; Rec."Amount 7")
                {
                    Caption = 'Finance Lease';
                    Editable = false;
                    Visible = gBVisibleLayout12;
                }
                field("Amount 8_2"; Rec."Amount 8")
                {
                    Caption = 'Merger, spin-off, restructuring';
                    Editable = false;
                    Visible = gBVisibleLayout12;
                }
                field("Amount 9_2"; Rec."Amount 9")
                {
                    Caption = 'Others';
                    Editable = false;
                    Visible = gBVisibleLayout12;
                }
                field("Amount 10_2"; Rec."Amount 1" + Rec."Amount 2" + Rec."Amount 3" + Rec."Amount 4" + Rec."Amount 5" + Rec."Amount 6" + Rec."Amount 7" + Rec."Amount 8" + Rec."Amount 9")
                {
                    Caption = 'Total';
                    Editable = false;
                    Visible = gBVisibleLayout12;
                }
            }
            repeater(group3)
            {
                Visible = gBVisibleLayout13;
                field(Description1_3; Rec.Description1)
                {
                    Caption = 'Rubric';
                    Editable = false;
                    Style = Strong;
                    StyleExpr = Rec.GroupCode;
                    Visible = gBVisibleLayout13;
                }
                field("Amount 1_3"; Rec."Amount 1")
                {
                    Caption = 'Disposal for Consideration';
                    Editable = false;
                    Visible = gBVisibleLayout13;

                    trigger OnDrillDown()
                    begin
                        PageDrillDownLayout13(1);
                    end;
                }
                field("Amount 2_3"; Rec."Amount 2")
                {
                    Caption = 'Transfer or Exchange';
                    Editable = false;
                    Visible = gBVisibleLayout13;
                }
                field("Amount 3_3"; Rec."Amount 3")
                {
                    Caption = 'Merger, spin-off, restructuring';
                    Editable = false;
                    Visible = gBVisibleLayout13;
                }
                field("Amount 4_3"; Rec."Amount 4")
                {
                    Caption = 'Others';
                    Editable = false;
                    Visible = gBVisibleLayout13;

                    trigger OnDrillDown()
                    begin
                        PageDrillDownLayout13(4);
                    end;
                }
                field("Amount 5_3"; Rec."Amount 1" + Rec."Amount 2" + Rec."Amount 3" + Rec."Amount 4")
                {
                    Caption = 'Total';
                    Editable = false;
                    Visible = gBVisibleLayout13;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
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
                    ClearValues;
                    SetLayout;
                    MakeDateFilter;
                    MakeDateFilter2;
                    SetData;
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        PeriodYear := DATE2DMY(WORKDATE, 3);
        MakeDateFilter2;
        ClearValues;
        SetLayout;
        Rec.SETRANGE("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::AI, gDStartDate));
    end;

    var
        gOptPeriodType: Option T;
        gDate: Date;
        Text50000: Label 'Intangible Fixed Assets - Carrying Amount and Movements for the Quarter';
        Text50001: Label 'Intangible Fixed Assets - Breakdown of Additions';
        Text50002: Label 'Intangible Fixed Assets - Breakdown of Decreases';
        gDStartDate: Date;
        gDEndDate: Date;
        gOptLayout: Option "11","12","13";
        [InDataSet]
        gBVisibleLayout11: Boolean;
        [InDataSet]
        gBVisibleLayout12: Boolean;
        [InDataSet]
        gBVisibleLayout13: Boolean;
        gTextPageCaption: Text[100];
        Window: Dialog;
        Text50010: Label 'Generating informations...\\';
        Text50011: Label '       #1##################\ #2###########################';
        gPeriod: Option "1","2","3","4","5";
        PeriodYear: Integer;
        UNILEOMgt: Codeunit "UNILEO Management";

    local procedure SetLayout()
    begin
        CASE gOptLayout OF
            gOptLayout::"11":
                BEGIN
                    gTextPageCaption := Text50000;
                    gBVisibleLayout11 := TRUE;
                    gBVisibleLayout12 := FALSE;
                    gBVisibleLayout13 := FALSE;
                END;
            gOptLayout::"12":
                BEGIN
                    gTextPageCaption := Text50001;
                    gBVisibleLayout11 := FALSE;
                    gBVisibleLayout12 := TRUE;
                    gBVisibleLayout13 := FALSE;
                END;
            gOptLayout::"13":
                BEGIN
                    gTextPageCaption := Text50002;
                    gBVisibleLayout11 := FALSE;
                    gBVisibleLayout12 := FALSE;
                    gBVisibleLayout13 := TRUE;
                END;
        END;
    end;

    local procedure SetData()
    begin
        Window.OPEN(Text50010 + Text50011);
        IF Rec.FINDSET THEN
            REPEAT
                IF gBVisibleLayout11 THEN BEGIN
                    SetDataField(1);
                    SetDataField(2);
                    SetDataField(4);
                    SetDataField(7);
                    SetDataField(9);
                END;
                IF gBVisibleLayout12 THEN
                    SetDataField(2);
                IF gBVisibleLayout13 THEN BEGIN
                    SetDataFieldLayout13(1);
                    SetDataFieldLayout13(4);
                END;
            UNTIL Rec.NEXT = 0;
        Window.CLOSE;
    end;

    local procedure SetDataField(pFieldNo: Integer)
    var
        lRecFixedAsset: Record "Fixed Asset";
        lRecFALedgerEntry: Record "FA Ledger Entry";
        lRecTempFALedgerEntry: Record "FA Ledger Entry" temporary;
        lBModify: Boolean;
        lAuxDate: Date;
    begin
        CLEAR(lBModify);
        CASE pFieldNo OF
            1:
                BEGIN
                    lAuxDate := CALCDATE('-1D', gDStartDate);
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            Window.UPDATE(1, Rec.Description1);
                            Window.UPDATE(2, lRecFixedAsset."No.");

                            CLEAR(lRecFALedgerEntry);
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETFILTER("FA Posting Type", '%1|%2|%3', lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost",
                              lRecFALedgerEntry."FA Posting Type"::Appreciation, lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            lRecFALedgerEntry.SETRANGE("Posting Date", 0D, lAuxDate);
                            lRecFALedgerEntry.CALCSUMS(Amount);
                            Rec."Amount 1" += lRecFALedgerEntry.Amount;
                            lBModify := TRUE;
                        UNTIL lRecFixedAsset.NEXT = 0;
                END;
            2:
                BEGIN
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            Window.UPDATE(1, Rec.Description1);
                            Window.UPDATE(2, lRecFixedAsset."No.");

                            CLEAR(lRecFALedgerEntry);
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SETRANGE("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.SETFILTER(Amount, '>%1', 0);
                            lRecFALedgerEntry.CALCSUMS(Amount);
                            Rec."Amount 2" += lRecFALedgerEntry.Amount;
                            lBModify := TRUE;
                        UNTIL lRecFixedAsset.NEXT = 0;
                END;
            3:
                ;
            4:
                BEGIN
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            Window.UPDATE(1, Rec.Description1);
                            Window.UPDATE(2, lRecFixedAsset."No.");
                            CLEAR(lRecFALedgerEntry);
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETRANGE("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::Appreciation);
                            lRecFALedgerEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.CALCSUMS(Amount);
                            Rec."Amount 4" += lRecFALedgerEntry.Amount;
                            lBModify := TRUE;
                        UNTIL lRecFixedAsset.NEXT = 0;
                END;
            5:
                ;
            6:
                ;
            7:
                BEGIN
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            Window.UPDATE(1, Rec.Description1);
                            Window.UPDATE(2, lRecFixedAsset."No.");

                            CLEAR(lRecFALedgerEntry);
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SETRANGE("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            lRecFALedgerEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.CALCSUMS(Amount);
                            Rec."Amount 7" += lRecFALedgerEntry.Amount;
                            lBModify := TRUE;
                        UNTIL lRecFixedAsset.NEXT = 0;
                END;
            8:
                ;
            9:
                BEGIN
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            Window.UPDATE(1, Rec.Description1);
                            Window.UPDATE(2, lRecFixedAsset."No.");

                            CLEAR(lRecFALedgerEntry);
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SETRANGE("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.SETFILTER(Amount, '<%1', 0);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    CLEAR(lRecTempFALedgerEntry);
                                    lRecTempFALedgerEntry.TRANSFERFIELDS(lRecFALedgerEntry);
                                    IF NOT lRecTempFALedgerEntry.INSERT THEN;
                                UNTIL lRecFALedgerEntry.NEXT = 0;

                            lRecFALedgerEntry.SETRANGE(Amount);
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::Disposal);
                            lRecFALedgerEntry.SETFILTER("FA Posting Type", '%1|%2', lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost",
                              lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    CLEAR(lRecTempFALedgerEntry);
                                    lRecTempFALedgerEntry.TRANSFERFIELDS(lRecFALedgerEntry);
                                    IF NOT lRecTempFALedgerEntry.INSERT THEN;
                                UNTIL lRecFALedgerEntry.NEXT = 0;

                            CLEAR(lRecTempFALedgerEntry);
                            lRecTempFALedgerEntry.CALCSUMS(Amount);
                            Rec."Amount 9" := lRecTempFALedgerEntry.Amount;

                            lBModify := TRUE;
                        UNTIL lRecFixedAsset.NEXT = 0;
                END;
        END;
        IF lBModify THEN
            Rec.MODIFY;
    end;

    local procedure SetDataFieldLayout13(pFieldNo: Integer)
    var
        lRecFixedAsset: Record "Fixed Asset";
        lRecFALedgerEntry: Record "FA Ledger Entry";
        lRecTempFALedgerEntry: Record "FA Ledger Entry" temporary;
        lBModify: Boolean;
    begin
        CLEAR(lBModify);
        CASE pFieldNo OF
            1:
                BEGIN
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            Window.UPDATE(1, Rec.Description1);
                            Window.UPDATE(2, lRecFixedAsset."No.");

                            CLEAR(lRecFALedgerEntry);
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SETRANGE("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.SETFILTER(Amount, '<%1', 0);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    CLEAR(lRecTempFALedgerEntry);
                                    lRecTempFALedgerEntry.TRANSFERFIELDS(lRecFALedgerEntry);
                                    IF NOT lRecTempFALedgerEntry.INSERT THEN;
                                UNTIL lRecFALedgerEntry.NEXT = 0;

                            lRecFALedgerEntry.SETRANGE(Amount);
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::Disposal);
                            lRecFALedgerEntry.SETFILTER("FA Posting Type", '%1|%2', lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost",
                              lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    CLEAR(lRecTempFALedgerEntry);
                                    lRecTempFALedgerEntry.TRANSFERFIELDS(lRecFALedgerEntry);
                                    IF NOT lRecTempFALedgerEntry.INSERT THEN;
                                UNTIL lRecFALedgerEntry.NEXT = 0;

                            CLEAR(lRecTempFALedgerEntry);
                            lRecTempFALedgerEntry.CALCSUMS(Amount);
                            Rec."Amount 1" := lRecTempFALedgerEntry.Amount;

                            lBModify := TRUE;
                        UNTIL lRecFixedAsset.NEXT = 0;
                END;
            4:
                BEGIN
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            Window.UPDATE(1, Rec.Description1);
                            Window.UPDATE(2, lRecFixedAsset."No.");

                            CLEAR(lRecFALedgerEntry);
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::Disposal);
                            lRecFALedgerEntry.SETRANGE("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SETRANGE("PTSSFA Disposal Option", lRecFALedgerEntry."PTSSFA Disposal Option"::Disposal);
                            lRecFALedgerEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.CALCSUMS(Amount);
                            Rec."Amount 4" += lRecFALedgerEntry.Amount;
                            lBModify := TRUE;
                        UNTIL lRecFixedAsset.NEXT = 0;
                END;
        END;

        IF lBModify THEN
            Rec.MODIFY;
    end;

    local procedure ClearValues()
    var
        lRecUNILEOAuxTable: Record "UNILEO Aux Table";
    begin
        CLEAR(lRecUNILEOAuxTable);
        lRecUNILEOAuxTable.SETRANGE("Report Type", "UNILEO Report Type"::AI);
        lRecUNILEOAuxTable.MODIFYALL("Amount 1", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 2", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 3", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 4", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 5", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 6", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 7", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 8", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 9", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 10", 0);
    end;

    local procedure PageDrillDown(pFieldNo: Integer)
    var
        lRecFixedAsset: Record "Fixed Asset";
        lRecFALedgerEntry: Record "FA Ledger Entry";
        lRecTempFALedgerEntry: Record "FA Ledger Entry" temporary;
        FALedgerEntriesPage: Page "FA Ledger Entries";
        lAuxDate: Date;
    begin
        CASE pFieldNo OF
            1:
                BEGIN
                    lAuxDate := CALCDATE('-1D', gDStartDate);
                    CLEAR(lRecFALedgerEntry);
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETFILTER("FA Posting Type", '%1|%2|%3', lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost",
                              lRecFALedgerEntry."FA Posting Type"::Appreciation, lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            lRecFALedgerEntry.SETRANGE("Posting Date", 0D, lAuxDate);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    lRecFALedgerEntry.MARK(TRUE);
                                UNTIL lRecFALedgerEntry.NEXT = 0;
                        UNTIL lRecFixedAsset.NEXT = 0;

                    lRecFALedgerEntry.FilterGroup(2);
                    lRecFALedgerEntry.SETRANGE("FA No.");
                    lRecFALedgerEntry.MARKEDONLY(TRUE);
                    Clear(FALedgerEntriesPage);
                    FALedgerEntriesPage.SetTableView(lRecFALedgerEntry);
                    FALedgerEntriesPage.Run();
                END;
            2:
                BEGIN
                    CLEAR(lRecFALedgerEntry);
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SETRANGE("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.SETFILTER(Amount, '>%1', 0);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    lRecFALedgerEntry.MARK(TRUE);
                                UNTIL lRecFALedgerEntry.NEXT = 0;
                        UNTIL lRecFixedAsset.NEXT = 0;

                    lRecFALedgerEntry.FilterGroup(2);
                    lRecFALedgerEntry.SETRANGE("FA No.");
                    lRecFALedgerEntry.MARKEDONLY(TRUE);
                    Clear(FALedgerEntriesPage);
                    FALedgerEntriesPage.SetTableView(lRecFALedgerEntry);
                    FALedgerEntriesPage.Run();
                END;
            4:
                BEGIN
                    CLEAR(lRecFALedgerEntry);
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETRANGE("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::Appreciation);
                            lRecFALedgerEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    lRecFALedgerEntry.MARK(TRUE);
                                UNTIL lRecFALedgerEntry.NEXT = 0;
                        UNTIL lRecFixedAsset.NEXT = 0;

                    lRecFALedgerEntry.FilterGroup(2);
                    lRecFALedgerEntry.SETRANGE("FA No.");
                    lRecFALedgerEntry.MARKEDONLY(TRUE);
                    Clear(FALedgerEntriesPage);
                    FALedgerEntriesPage.SetTableView(lRecFALedgerEntry);
                    FALedgerEntriesPage.Run();
                END;
            7:
                BEGIN
                    CLEAR(lRecFALedgerEntry);
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SETRANGE("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            lRecFALedgerEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    lRecFALedgerEntry.MARK(TRUE);
                                UNTIL lRecFALedgerEntry.NEXT = 0;
                        UNTIL lRecFixedAsset.NEXT = 0;

                    lRecFALedgerEntry.FilterGroup(2);
                    lRecFALedgerEntry.SETRANGE("FA No.");
                    lRecFALedgerEntry.MARKEDONLY(TRUE);
                    Clear(FALedgerEntriesPage);
                    FALedgerEntriesPage.SetTableView(lRecFALedgerEntry);
                    FALedgerEntriesPage.Run();
                END;
            9:
                BEGIN
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            CLEAR(lRecFALedgerEntry);
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SETRANGE("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.SETFILTER(Amount, '<%1', 0);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    CLEAR(lRecTempFALedgerEntry);
                                    lRecTempFALedgerEntry.TRANSFERFIELDS(lRecFALedgerEntry);
                                    IF NOT lRecTempFALedgerEntry.INSERT THEN;
                                UNTIL lRecFALedgerEntry.NEXT = 0;

                            lRecFALedgerEntry.SETRANGE(Amount);
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::Disposal);
                            lRecFALedgerEntry.SETFILTER("FA Posting Type", '%1|%2', lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost",
                              lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    CLEAR(lRecTempFALedgerEntry);
                                    lRecTempFALedgerEntry.TRANSFERFIELDS(lRecFALedgerEntry);
                                    IF NOT lRecTempFALedgerEntry.INSERT THEN;
                                UNTIL lRecFALedgerEntry.NEXT = 0;

                        UNTIL lRecFixedAsset.NEXT = 0;

                    CLEAR(lRecTempFALedgerEntry);
                    Clear(FALedgerEntriesPage);
                    FALedgerEntriesPage.SetTableView(lRecTempFALedgerEntry);
                    FALedgerEntriesPage.Run();
                END;
        END;
    end;

    local procedure PageDrillDownLayout13(pFieldNo: Integer)
    var
        lRecFixedAsset: Record "Fixed Asset";
        lRecFALedgerEntry: Record "FA Ledger Entry";
        lRecTempFALedgerEntry: Record "FA Ledger Entry" temporary;
        FALedgerEntriesPage: Page "FA Ledger Entries";
    begin
        CASE pFieldNo OF
            1:
                BEGIN
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            CLEAR(lRecFALedgerEntry);
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::" ");
                            lRecFALedgerEntry.SETRANGE("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
                            lRecFALedgerEntry.SETFILTER(Amount, '<%1', 0);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    CLEAR(lRecTempFALedgerEntry);
                                    lRecTempFALedgerEntry.TRANSFERFIELDS(lRecFALedgerEntry);
                                    IF NOT lRecTempFALedgerEntry.INSERT THEN;
                                UNTIL lRecFALedgerEntry.NEXT = 0;

                            lRecFALedgerEntry.SETRANGE(Amount);
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::Disposal);
                            lRecFALedgerEntry.SETFILTER("FA Posting Type", '%1|%2', lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost",
                              lRecFALedgerEntry."FA Posting Type"::Depreciation);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    CLEAR(lRecTempFALedgerEntry);
                                    lRecTempFALedgerEntry.TRANSFERFIELDS(lRecFALedgerEntry);
                                    IF NOT lRecTempFALedgerEntry.INSERT THEN;
                                UNTIL lRecFALedgerEntry.NEXT = 0;

                        UNTIL lRecFixedAsset.NEXT = 0;

                    CLEAR(lRecTempFALedgerEntry);
                    Clear(FALedgerEntriesPage);
                    FALedgerEntriesPage.SetTableView(lRecTempFALedgerEntry);
                    FALedgerEntriesPage.Run();
                END;
            4:
                BEGIN
                    CLEAR(lRecFALedgerEntry);
                    CLEAR(lRecFixedAsset);
                    lRecFixedAsset.SETRANGE("UNILEO Rubric", Rec.Description1);
                    IF lRecFixedAsset.FINDSET THEN
                        REPEAT
                            lRecFALedgerEntry.SETCURRENTKEY("FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.");
                            lRecFALedgerEntry.SETRANGE("FA No.", lRecFixedAsset."No.");
                            lRecFALedgerEntry.SETRANGE("FA Posting Category", lRecFALedgerEntry."FA Posting Category"::Disposal);
                            lRecFALedgerEntry.SETRANGE("FA Posting Type", lRecFALedgerEntry."FA Posting Type"::"Acquisition Cost");
                            lRecFALedgerEntry.SETRANGE("PTSSFA Disposal Option", lRecFALedgerEntry."PTSSFA Disposal Option"::Disposal);
                            lRecFALedgerEntry.SETRANGE("Posting Date", gDStartDate, gDEndDate);
                            IF lRecFALedgerEntry.FINDSET THEN
                                REPEAT
                                    lRecFALedgerEntry.MARK(TRUE);
                                UNTIL lRecFALedgerEntry.NEXT = 0;
                        UNTIL lRecFixedAsset.NEXT = 0;

                    CLEAR(lRecTempFALedgerEntry);
                    Clear(FALedgerEntriesPage);
                    FALedgerEntriesPage.SetTableView(lRecTempFALedgerEntry);
                    FALedgerEntriesPage.Run();
                END;
        END;
    end;

    local procedure MakeDateFilter()
    var
        lRecDate: Record Date;
        lAux_Month: Integer;
        lAux_Year: Integer;
    begin
        lAux_Year := DATE2DMY(gDate, 3);
        lAux_Month := DATE2DMY(gDate, 2);

        CASE gOptPeriodType OF
            gOptPeriodType::T:
                BEGIN
                    CASE lAux_Month OF
                        1, 2, 3:
                            BEGIN
                                gDStartDate := DMY2DATE(1, 1, lAux_Year);
                                gDEndDate := DMY2DATE(31, 3, lAux_Year);
                                gPeriod := gPeriod::"1";
                            END;
                        4, 5, 6:
                            BEGIN
                                gDStartDate := DMY2DATE(1, 1, lAux_Year);
                                gDEndDate := DMY2DATE(30, 6, lAux_Year);
                                gPeriod := gPeriod::"2";
                            END;
                        7, 8, 9:
                            BEGIN
                                gDStartDate := DMY2DATE(1, 1, lAux_Year);
                                gDEndDate := DMY2DATE(30, 9, lAux_Year);
                                gPeriod := gPeriod::"3";
                            END;
                        10, 11, 12:
                            BEGIN
                                gDStartDate := DMY2DATE(1, 1, lAux_Year);
                                gDEndDate := DMY2DATE(31, 12, lAux_Year);
                                gPeriod := gPeriod::"4";
                            END;
                    END;

                END;
        END;
    end;

    local procedure MakeDateFilter2()
    var
        lRecDate: Record Date;
        lAux_Month: Integer;
        lAux_Year: Integer;
    begin
        lAux_Year := PeriodYear;

        CASE gPeriod OF
            gPeriod::"1":
                BEGIN
                    gDate := DMY2DATE(1, 1, lAux_Year);
                    gDStartDate := DMY2DATE(1, 1, lAux_Year);
                    gDEndDate := DMY2DATE(31, 3, lAux_Year);
                END;
            gPeriod::"2":
                BEGIN
                    gDate := DMY2DATE(1, 4, lAux_Year);
                    gDStartDate := DMY2DATE(1, 1, lAux_Year);
                    gDEndDate := DMY2DATE(30, 6, lAux_Year);
                END;
            gPeriod::"3":
                BEGIN
                    gDate := DMY2DATE(1, 7, lAux_Year);
                    gDStartDate := DMY2DATE(1, 1, lAux_Year);
                    gDEndDate := DMY2DATE(30, 9, lAux_Year);
                END;
            gPeriod::"4":
                BEGIN
                    gDate := DMY2DATE(1, 10, lAux_Year);
                    gDStartDate := DMY2DATE(1, 1, lAux_Year);
                    gDEndDate := DMY2DATE(31, 12, lAux_Year);
                END;
            gPeriod::"5":
                BEGIN
                    gDate := DMY2DATE(1, 12, lAux_Year);
                    gDStartDate := DMY2DATE(1, 1, lAux_Year);
                    gDEndDate := CLOSINGDATE(DMY2DATE(31, 12, lAux_Year));
                END;
        END;
    end;

    procedure SetReport(p_OptLayout: Option "11","12","13")
    begin
        gOptLayout := p_OptLayout;
    end;
}

