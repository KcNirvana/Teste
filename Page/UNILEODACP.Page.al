page 57217 "UNILEO DACP"
{
    Caption = 'UNILEO DACP';
    DataCaptionExpression = gTextPageCaption;
    Editable = false;
    PageType = List;
    SourceTable = "UNILEO Aux Table";
    SourceTableView = WHERE("Report Type" = CONST(DACP));
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                Editable = false;
                field(Description1; Rec.Description1)
                {
                    Caption = 'Description';
                }
                field("Amount 1"; Rec."Amount 1")
                {
                    Caption = 'Share Capital';

                    trigger OnDrillDown()
                    begin
                        IF Rec."GL Account Filter Col 1" <> '' THEN
                            PageDrillDown(1);
                    end;
                }
                field("Amount 2"; Rec."Amount 2")
                {
                    Caption = 'Rev. reserves fair value';

                    trigger OnDrillDown()
                    begin
                        IF Rec."GL Account Filter Col 2" <> '' THEN
                            PageDrillDown(2);
                    end;
                }
                field("Amount 3"; Rec."Amount 3")
                {
                    Caption = 'Rev. reserves deferred tax';

                    trigger OnDrillDown()
                    begin
                        IF Rec."GL Account Filter Col 3" <> '' THEN
                            PageDrillDown(3);
                    end;
                }
                field(Total; Rec."Amount 2" + Rec."Amount 3")
                {
                    Caption = 'Total';
                }
                field("Amount 4"; Rec."Amount 4")
                {
                    Caption = 'Legal Reserves';

                    trigger OnDrillDown()
                    begin
                        IF Rec."GL Account Filter Col 4" <> '' THEN
                            PageDrillDown(4);
                    end;
                }
                field("Amount 5"; Rec."Amount 5")
                {
                    Caption = 'Other Reserves';

                    trigger OnDrillDown()
                    begin
                        IF Rec."GL Account Filter Col 5" <> '' THEN
                            PageDrillDown(5);
                    end;
                }
                field("Amount 6"; Rec."Amount 6")
                {
                    Caption = 'Transited Results';

                    trigger OnDrillDown()
                    begin
                        IF Rec."GL Account Filter Col 6" <> '' THEN
                            PageDrillDown(6);
                    end;
                }
                field(Total2; Rec."Amount 4" + Rec."Amount 5" + Rec."Amount 6")
                {
                    Caption = 'Total';
                }
                field("Amount 9"; Rec."Amount 9")
                {
                    Caption = 'Fiscal Year Result';
                }
                field(Total3; Rec."Amount 1" + Rec."Amount 2" + Rec."Amount 3" + Rec."Amount 4" + Rec."Amount 5" + Rec."Amount 6" + Rec."Amount 9")
                {
                    Caption = 'Total';
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        CleanValues;
        gTextPageCaption := Text50000;
        gOptPeriodType := gOptPeriodType::A;
        gDate := WorkDate();
        MakeDateFilter;
        SetData;

        Rec.SETRANGE("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DACP, gDStartDate));
    end;

    var
        gOptPeriodType: Option D,S,M,T,A;
        gDate: Date;
        gDStartDate: Date;
        gDEndDate: Date;
        gTextPageCaption: Text[100];
        Text50000: Label 'DACP - Capital Changes';
        Text50002: Label 'There are no data for the period chosen.';
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
        lAux_Year := DATE2DMY(gDate, 3);
        lAux_Month := DATE2DMY(gDate, 2);

        CASE gOptPeriodType OF
            gOptPeriodType::D:
                BEGIN
                    gDStartDate := gDate;
                    gDEndDate := gDate;
                END;
            gOptPeriodType::S:
                BEGIN
                    CLEAR(lRecDate);
                    lRecDate.SETRANGE("Period Type", lRecDate."Period Type"::Week);
                    lRecDate.SETRANGE("Period Start", DMY2DATE(1, 1, lAux_Year), DMY2DATE(31, 12, lAux_Year));
                    lRecDate.SETRANGE("Period No.", DATE2DWY(gDate, 2));
                    IF lRecDate.FINDSET THEN BEGIN
                        gDStartDate := lRecDate."Period Start";
                        gDEndDate := lRecDate."Period End";
                    END;
                END;
            gOptPeriodType::M:
                BEGIN
                    gDStartDate := DMY2DATE(1, lAux_Month, lAux_Year);
                    gDEndDate := CALCDATE('<+1M-1D>', gDStartDate);
                END;
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
                                gDStartDate := DMY2DATE(1, 4, lAux_Year);
                                gDEndDate := DMY2DATE(30, 6, lAux_Year);
                            END;
                        7, 8, 9:
                            BEGIN
                                gDStartDate := DMY2DATE(1, 7, lAux_Year);
                                gDEndDate := DMY2DATE(30, 9, lAux_Year);
                            END;
                        10, 11, 12:
                            BEGIN
                                gDStartDate := DMY2DATE(1, 10, lAux_Year);
                                gDEndDate := DMY2DATE(31, 12, lAux_Year);
                            END;
                    END;

                END;
            gOptPeriodType::A:
                BEGIN
                    gDStartDate := DMY2DATE(1, 1, lAux_Year);
                    gDEndDate := DMY2DATE(31, 12, lAux_Year);
                END;
        END;
    end;

    local procedure SetData()
    begin
        Window.OPEN(Text50010 + Text50011);

        IF Rec.FINDSET THEN
            REPEAT
                Window.UPDATE(1, Rec.Description1);
                IF Rec."GL Account Filter Col 1" <> '' THEN
                    SetDataField(1);
                IF Rec."GL Account Filter Col 2" <> '' THEN
                    SetDataField(2);
                IF Rec."GL Account Filter Col 3" <> '' THEN
                    SetDataField(3);
                IF Rec."GL Account Filter Col 4" <> '' THEN
                    SetDataField(4);
                IF Rec."GL Account Filter Col 5" <> '' THEN
                    SetDataField(5);
                IF Rec."GL Account Filter Col 6" <> '' THEN
                    SetDataField(6);
                IF (Rec."GL Account Filter Col 7" <> '') AND (Rec."GL Account Filter Col 8" <> '') THEN
                    SetDataField(7);
            UNTIL Rec.NEXT = 0;

        IF NOT Rec.FINDSET THEN
            ERROR(Text50002);

        Window.CLOSE;
    end;

    local procedure SetDataField(pFieldNo: Integer)
    var
        lRecGLEntry: Record "G/L Entry";
        lBModify: Boolean;
        lAuxStartDate: Date;
        lAuxEndDate: Date;
    begin
        IF Rec.GroupCode THEN BEGIN //N-1
            lAuxStartDate := CALCDATE('-1A', gDStartDate);
            lAuxEndDate := CALCDATE('-1A', gDEndDate);
        END ELSE BEGIN
            lAuxStartDate := gDStartDate;
            lAuxEndDate := gDEndDate;
        END;

        CLEAR(lBModify);
        CLEAR(lRecGLEntry);
        lRecGLEntry.SETCURRENTKEY("G/L Account No.", "Posting Date");
        CASE pFieldNo OF
            1:
                BEGIN
                    lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 1");
                    lRecGLEntry.SETRANGE("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CALCSUMS(Amount);
                    Rec."Amount 1" := lRecGLEntry.Amount;
                    lBModify := TRUE;
                END;
            2:
                BEGIN
                    lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 2");
                    lRecGLEntry.SETRANGE("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CALCSUMS(Amount);
                    Rec."Amount 2" := lRecGLEntry.Amount;
                    lBModify := TRUE;
                END;
            3:
                BEGIN
                    lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 3");
                    lRecGLEntry.SETRANGE("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CALCSUMS(Amount);
                    Rec."Amount 3" := lRecGLEntry.Amount;
                    lBModify := TRUE;
                END;
            4:
                BEGIN
                    lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 4");
                    lRecGLEntry.SETRANGE("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CALCSUMS(Amount);
                    Rec."Amount 4" := lRecGLEntry.Amount;
                    lBModify := TRUE;
                END;
            5:
                BEGIN
                    lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 5");
                    lRecGLEntry.SETRANGE("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CALCSUMS(Amount);
                    Rec."Amount 5" := lRecGLEntry.Amount;
                    lBModify := TRUE;
                END;
            6:
                BEGIN
                    lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 6");
                    lRecGLEntry.SETRANGE("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CALCSUMS(Amount);
                    Rec."Amount 6" := lRecGLEntry.Amount;
                    lBModify := TRUE;
                END;
            7:
                BEGIN
                    lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 7");
                    lRecGLEntry.SETRANGE("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CALCSUMS(Amount);
                    Rec."Amount 7" := lRecGLEntry.Amount;

                    lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 8");
                    lRecGLEntry.SETRANGE("Posting Date", lAuxStartDate, lAuxEndDate);
                    lRecGLEntry.CALCSUMS(Amount);
                    Rec."Amount 8" := lRecGLEntry.Amount;
                    Rec."Amount 9" := -Rec."Amount 7" - Rec."Amount 8";
                    lBModify := TRUE;
                END;
        END;

        IF lBModify THEN
            Rec.MODIFY;
    end;

    local procedure CleanValues()
    var
        lRecUNILEOAuxTable: Record "UNILEO Aux Table";
    begin
        CLEAR(lRecUNILEOAuxTable);
        lRecUNILEOAuxTable.SETRANGE("Report Type", "UNILEO Report Type"::DACP);
        lRecUNILEOAuxTable.MODIFYALL("Amount 1", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 2", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 3", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 4", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 5", 0);
        lRecUNILEOAuxTable.MODIFYALL("Amount 6", 0);
    end;

    local procedure PageDrillDown(pFieldNo: Integer)
    var
        lRecGLEntry: Record "G/L Entry";
        lAuxStartDate: Date;
        lAuxEndDate: Date;
        GLEntriesPage: page "General Ledger Entries";
    begin
        IF Rec.GroupCode THEN BEGIN //N-1
            lAuxStartDate := CALCDATE('-1A', gDStartDate);
            lAuxEndDate := CALCDATE('-1A', gDEndDate);
        END ELSE BEGIN
            lAuxStartDate := gDStartDate;
            lAuxEndDate := gDEndDate;
        END;

        CLEAR(lRecGLEntry);
        lRecGLEntry.FilterGroup(2);
        CASE pFieldNo OF
            1:
                lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 1");
            2:
                lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 2");
            3:
                lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 3");
            4:
                lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 4");
            5:
                lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 5");
            6:
                lRecGLEntry.SETFILTER("G/L Account No.", Rec."GL Account Filter Col 6");
        END;

        lRecGLEntry.SETRANGE("Posting Date", lAuxStartDate, lAuxEndDate);
        Clear(GLEntriesPage);
        GLEntriesPage.SetTableView(lRecGLEntry);
        GLEntriesPage.Run();
    end;

}

