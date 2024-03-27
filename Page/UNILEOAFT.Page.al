page 57214 "UNILEO AFT"
{
    DataCaptionExpression = gTextPageCaption;
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = ListPlus;
    SourceTable = "UNILEO Aux Table";
    SourceTableView = WHERE("Report Type" = CONST(AFT));
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(Filters)
            {
                Caption = 'Filters';
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
                Visible = gBVisibleLayout14;
                field(Description2; Rec.Description2)
                {
                    Caption = 'Rubric';
                    Editable = false;
                    Style = Strong;
                    StyleExpr = Rec.GroupCode;
                    Visible = gBVisibleLayout14;
                }
                field("Amount 1"; Rec."Amount 1")
                {
                    Caption = 'Initial Carrying Amount';
                    Editable = false;
                    Visible = gBVisibleLayout14;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(1);
                    end;
                }
                field("Amount 2"; Rec."Amount 2")
                {
                    Caption = 'Additions';
                    Editable = false;
                    Visible = gBVisibleLayout14;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(2);
                    end;
                }
                field("Amount 3"; Rec."Amount 3")
                {
                    Caption = 'Internal Transfers to Entity';
                    Editable = false;
                    Visible = gBVisibleLayout14;
                }
                field("Amount 4"; Rec."Amount 4")
                {
                    Caption = 'Revaluations';
                    Editable = false;
                    Visible = gBVisibleLayout14;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(4);
                    end;
                }
                field("Amount 5"; Rec."Amount 5")
                {
                    Caption = 'Reversals of Impairment Losses';
                    Editable = false;
                    Visible = gBVisibleLayout14;
                }
                field("Amount 6"; Rec."Amount 6")
                {
                    Caption = 'Impairment Losses';
                    Editable = false;
                    Visible = gBVisibleLayout14;
                }
                field("Amount 7"; Rec."Amount 7")
                {
                    Caption = 'Period Depreciation';
                    Editable = false;
                    Visible = gBVisibleLayout14;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(7);
                    end;
                }
                field("Amount 8"; Rec."Amount 8")
                {
                    Caption = 'Exchange Differences';
                    Editable = false;
                    Visible = gBVisibleLayout14;
                }
                field("Amount 9"; Rec."Amount 9")
                {
                    Caption = 'Diminuitions';
                    Editable = false;
                    Visible = gBVisibleLayout14;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(9);
                    end;
                }
                field("Final Carrying Amount"; Rec."Amount 1" + Rec."Amount 2" + Rec."Amount 4" + Rec."Amount 7" + Rec."Amount 9")
                {
                    Caption = 'Final Carrying Amount';
                    Editable = false;
                    Visible = gBVisibleLayout14;
                }
            }
            repeater(group2)
            {
                Visible = gBVisibleLayout15;
                field(Description1_2; Rec.Description2)
                {
                    Caption = 'Rubric';
                    Editable = false;
                    Style = Strong;
                    StyleExpr = Rec.GroupCode;
                    Visible = gBVisibleLayout15;
                }
                field("Internals"; Rec."Amount 1")
                {
                    Caption = 'Internals';
                    Editable = false;
                    Visible = gBVisibleLayout15;
                }
                field("Buy"; Rec."Amount 2")
                {
                    Caption = 'Buy';
                    Editable = false;
                    Visible = gBVisibleLayout15;

                    trigger OnDrillDown()
                    begin
                        PageDrillDown(2);
                    end;
                }
                field("Disposal"; Rec."Amount 3")
                {
                    Caption = 'Disposal';
                    Editable = false;
                    Visible = gBVisibleLayout15;
                }
                field("Transfer or Exchange2"; Rec."Amount 4")
                {
                    Caption = 'Transfer or Exchange';
                    Editable = false;
                    Visible = gBVisibleLayout15;
                }
                field("Expropriation"; Rec."Amount 11")
                {
                    Caption = 'Expropriation';
                    Editable = false;
                    Visible = gBVisibleLayout15;
                }
                field("Donation, inheritance, legacy or lost in favor of the State"; Rec."Amount 5")
                {
                    Caption = 'Donation, inheritance, legacy or lost in favor of the State';
                    Editable = false;
                    Visible = gBVisibleLayout15;
                }
                field("Donation in payment"; Rec."Amount 6")
                {
                    Caption = 'Donation in payment';
                    Editable = false;
                    Visible = gBVisibleLayout15;
                }
                field("Finance Lease"; Rec."Amount 7")
                {
                    Caption = 'Finance Lease';
                    Editable = false;
                    Visible = gBVisibleLayout15;
                }
                field("Merger, spin-off, restructuring2"; Rec."Amount 8")
                {
                    Caption = 'Merger, spin-off, restructuring';
                    Editable = false;
                    Visible = gBVisibleLayout15;
                }
                field("Others2"; Rec."Amount 9")
                {
                    Caption = 'Others';
                    Editable = false;
                    Visible = gBVisibleLayout15;
                }
                field("Total2"; Rec."Amount 1" + Rec."Amount 2" + Rec."Amount 3" + Rec."Amount 4" + Rec."Amount 5" + Rec."Amount 6" + Rec."Amount 7" + Rec."Amount 8" + Rec."Amount 9")
                {
                    Caption = 'Total';
                    Editable = false;
                    Visible = gBVisibleLayout15;
                }
            }
            repeater(group3)
            {
                Visible = gBVisibleLayout16;
                field(Description1_3; Rec.Description2)
                {
                    Caption = 'Rubric';
                    Editable = false;
                    Style = Strong;
                    StyleExpr = Rec.GroupCode;
                    Visible = gBVisibleLayout16;
                }
                field("Disposal for Consideration"; Rec."Amount 1")
                {
                    Caption = 'Disposal for Consideration';
                    Editable = false;
                    Visible = gBVisibleLayout16;

                    trigger OnDrillDown()
                    begin
                        PageDrillDownLayout16(1);
                    end;
                }
                field("Transfer or Exchange"; Rec."Amount 2")
                {
                    Caption = 'Transfer or Exchange';
                    Editable = false;
                    Visible = gBVisibleLayout16;
                }
                field("Return or reversal"; Rec."Amount 6")
                {
                    Caption = 'Return or Reversal';
                    Visible = gBVisibleLayout16;
                }
                field("Merger, spin-off, restructuring3"; Rec."Amount 3")
                {
                    Caption = 'Merger, spin-off, restructuring';
                    Editable = false;
                    Visible = gBVisibleLayout16;
                }
                field("Others3"; Rec."Amount 4")
                {
                    Caption = 'Others';
                    Editable = false;
                    Visible = gBVisibleLayout16;

                    trigger OnDrillDown()
                    begin
                        PageDrillDownLayout16(4);
                    end;
                }
                field("Total3"; Rec."Amount 1" + Rec."Amount 2" + Rec."Amount 3" + Rec."Amount 4")
                {
                    Caption = 'Total';
                    Editable = false;
                    Visible = gBVisibleLayout16;
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
        Text50000: Label 'Tangible Fixed Assets - Carrying Amount and Movements for the Quarter';
        Text50001: Label 'Tangible Fixed Assets - Breakdown of Additions';
        Text50002: Label 'Tangible Fixed Assets - Breakdown of Decreases';
        gDStartDate: Date;
        gDEndDate: Date;
        gOptLayout: Option "14","15","16";
        [InDataSet]
        gBVisibleLayout14: Boolean;
        [InDataSet]
        gBVisibleLayout15: Boolean;
        [InDataSet]
        gBVisibleLayout16: Boolean;
        gTextPageCaption: Text[100];
        gPeriod: Option "1","2","3","4","5";
        PeriodYear: Integer;
        UNILEOMgt: Codeunit "UNILEO Management";
        Window: Dialog;

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
                            END;
                        4, 5, 6:
                            BEGIN
                                gDStartDate := DMY2DATE(1, 1, lAux_Year);
                                gDEndDate := DMY2DATE(30, 6, lAux_Year);
                            END;
                        7, 8, 9:
                            BEGIN
                                gDStartDate := DMY2DATE(1, 1, lAux_Year);
                                gDEndDate := DMY2DATE(30, 9, lAux_Year);
                            END;
                        10, 11, 12:
                            BEGIN
                                gDStartDate := DMY2DATE(1, 1, lAux_Year);
                                gDEndDate := DMY2DATE(31, 12, lAux_Year);
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

    local procedure SetLayout()
    begin
        CASE gOptLayout OF
            gOptLayout::"14":
                BEGIN
                    gTextPageCaption := Text50000;
                    gBVisibleLayout14 := TRUE;
                    gBVisibleLayout15 := FALSE;
                    gBVisibleLayout16 := FALSE;
                END;
            gOptLayout::"15":
                BEGIN
                    gTextPageCaption := Text50001;
                    gBVisibleLayout14 := FALSE;
                    gBVisibleLayout15 := TRUE;
                    gBVisibleLayout16 := FALSE;
                END;
            gOptLayout::"16":
                BEGIN
                    gTextPageCaption := Text50002;
                    gBVisibleLayout14 := FALSE;
                    gBVisibleLayout15 := FALSE;
                    gBVisibleLayout16 := TRUE;
                END;
        END;
    end;

    local procedure SetData()
    var
        Text001: Label 'Generating informations...\\';
        Text002: Label '       #1##################\ #2##################';
    begin
        Clear(Window);
        Window.OPEN(Text001 + Text002);
        IF Rec.FINDSET THEN
            REPEAT
                IF gBVisibleLayout14 THEN BEGIN
                    SetDataField(1);
                    SetDataField(2);
                    SetDataField(4);
                    SetDataField(7);
                    SetDataField(9);
                END;
                IF gBVisibleLayout15 THEN
                    SetDataField(2);
                IF gBVisibleLayout16 THEN BEGIN
                    SetDataFieldLayout16(1);
                    SetDataFieldLayout16(4);
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

    local procedure SetDataFieldLayout16(pFieldNo: Integer)
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
        lRecUNILEOAuxTable.SETRANGE("Report Type", "UNILEO Report Type"::AFT);
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
        lRecUNILEOAuxTable.MODIFYALL("Amount 11", 0);
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

    local procedure PageDrillDownLayout16(pFieldNo: Integer)
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

                    lRecFALedgerEntry.SETRANGE("FA No.");
                    lRecFALedgerEntry.FilterGroup(2);
                    lRecFALedgerEntry.MARKEDONLY(TRUE);
                    Clear(FALedgerEntriesPage);
                    FALedgerEntriesPage.SetTableView(lRecFALedgerEntry);
                    FALedgerEntriesPage.Run();
                END;
        END;
    end;

    procedure SetReport(p_OptLayout: Option "14","15","16")
    begin
        gOptLayout := p_OptLayout;
    end;
}

