page 57212 "UNILEO Reports Webservices"
{
    Caption = 'UNILEO WebServices';
    PageType = StandardDialog;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(DOREC)
            {
                Caption = 'DOREC';
                Visible = gDOREC;
                field(PeriodYear_DOREC; PeriodYear[1])
                {
                    Caption = 'Year';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(OptPeriodType_SM_DOREC; OptPeriodType_SM[1])
                {
                    Caption = 'Periodicity';
                    OptionCaption = 'Weekly,Monthly';

                    trigger OnValidate()
                    begin
                        PeriodYear[1] := DATE2DWY(WORKDATE, 3);
                        PeriodNumber[1] := DATE2DWY(WORKDATE, 2);

                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(PeriodNumber_DOREC; PeriodNumber[1])
                {
                    Caption = 'Period';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(DStartDate_DOREC; DStartDate[1])
                {
                    Caption = 'Start Date';
                    Editable = false;
                }
                field(DEndDate_DOREC; DEndDate[1])
                {
                    Caption = 'End Date';
                    Editable = false;
                }
                field(XMLFileName_DOREC; XMLFileName[1])
                {
                    Caption = 'Filename';
                    Editable = false;
                }
            }
            group(DODES)
            {
                Caption = 'DODES';
                Visible = gDODES;
                field(PeriodYear_DODES; PeriodYear[2])
                {
                    Caption = 'Year';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(OptPeriodType_SM_DODES; OptPeriodType_SM[2])
                {
                    Caption = 'Periodicity';
                    OptionCaption = 'Weekly,Monthly';

                    trigger OnValidate()
                    begin
                        PeriodYear[2] := DATE2DWY(WORKDATE, 3);
                        PeriodNumber[2] := DATE2DWY(WORKDATE, 2);

                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(PeriodNumber_DODES; PeriodNumber[2])
                {
                    Caption = 'Period';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(DStartDate_DODES; DStartDate[2])
                {
                    Caption = 'Start Date';
                    Editable = false;
                }
                field(DEndDate_DODES; DEndDate[2])
                {
                    Caption = 'End Date';
                    Editable = false;
                }
                field(XMLFileName_DODES; XMLFileName[2])
                {
                    Caption = 'Filename';
                    Editable = false;
                }
            }
            group(AFT)
            {
                Caption = 'AFT';
                Visible = gAFT;
                field(PeriodYear_AFT; PeriodYear[3])
                {
                    Caption = 'Year';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(OptPeriodType_T_AFT; OptPeriodType_T[3])
                {
                    Caption = 'Periodicity';
                    OptionCaption = 'Trimestral';
                    Visible = false;

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(PeriodNumber_T_AFT; PeriodNumber_T[3])
                {
                    Caption = 'Period';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(DStartDate_AFT; DStartDate[3])
                {
                    Caption = 'Start Date';
                    Editable = false;
                }
                field(DEndDate_AFT; DEndDate[3])
                {
                    Caption = 'End Date';
                    Editable = false;
                }
                field(XMLFileName_AFT; XMLFileName[3])
                {
                    Caption = 'Filename';
                    Editable = false;
                }
            }
            group(AI)
            {
                Caption = 'AI';
                Visible = gAI;
                field(PeriodYear_AI; PeriodYear[4])
                {
                    Caption = 'Year';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(OptPeriodType_T_AI; OptPeriodType_T[4])
                {
                    Caption = 'Periodicity';
                    OptionCaption = 'Trimestral';
                    Visible = false;

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(PeriodNumber_T_AI; PeriodNumber_T[4])
                {
                    Caption = 'Period';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(DStartDate_AI; DStartDate[4])
                {
                    Caption = 'Start Date';
                    Editable = false;
                }
                field(DEndDate_AI; DEndDate[4])
                {
                    Caption = 'End Date';
                    Editable = false;
                }
                field(XMLFileName_AI; XMLFileName[4])
                {
                    Caption = 'Filename';
                }
            }
            group(BA)
            {
                Caption = 'BA';
                Visible = gBA;
                field(PeriodYear_BA; PeriodYear[5])
                {
                    Caption = 'Year';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(Frequency_WM_BA; Frequency_WM[5])
                {
                    Caption = 'Periodicity';
                    OptionCaption = 'Weekly,Monthly';

                    trigger OnValidate()
                    begin
                        PeriodNumber[5] := DATE2DMY(WORKDATE, 2);
                        PeriodYear[5] := DATE2DMY(WORKDATE, 3);

                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(PeriodNumber_BA; PeriodNumber[5])
                {
                    Caption = 'Period';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(DStartDate_BA; DStartDate[5])
                {
                    Caption = 'Start Date';
                    Editable = false;
                }
                field(DEndDate_BA; DEndDate[5])
                {
                    Caption = 'End Date';
                    Editable = false;
                }
                field(XMLFileName_BA; XMLFileName[5])
                {
                    Caption = 'Filename';
                    Editable = false;
                }
            }
            group(BLC)
            {
                Caption = 'BLC';
                Visible = gBLC;
                field(PeriodYear_BLC; PeriodYear[6])
                {
                    BlankZero = true;
                    Caption = 'Year';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(PeriodNumber_All_BLC; PeriodNumber_All[6])
                {
                    Caption = 'Period';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(DStartDate_BLC; DStartDate[6])
                {
                    Caption = 'Start Date';
                    Editable = false;
                }
                field(DEndDate_BLC; DEndDate[6])
                {
                    Caption = 'End Date';
                    Editable = false;
                }
                field(XMLFileName_BLC; XMLFileName[6])
                {
                    Caption = 'Filename';
                    Editable = false;
                }
            }
            group(CPLC)
            {
                Caption = 'CPLC';
                Visible = gCPLC;
                field(PeriodYear_CPLC; PeriodYear[7])
                {
                    BlankZero = true;
                    Caption = 'Year';
                    Editable = false;
                }
                field(OptPeriodType_All_CPLC; OptPeriodType_All[7])
                {
                    Caption = 'Periodicity';
                    Editable = false;
                    OptionCaption = 'Daily,Weekly,Monthly,Trimestral,Annual';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(XMLFileName_CPLC; XMLFileName[7])
                {
                    Caption = 'Filename';
                    Editable = false;
                }
            }
            group(DAPL)
            {
                Caption = 'DAPL';
                Visible = gDAPL;
                field(PeriodYear_DAPL; PeriodYear[8])
                {
                    Caption = 'Year';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(OptPeriodType_All_DAPL; OptPeriodType_All[8])
                {
                    Caption = 'Periodicity';
                    OptionCaption = 'Daily,Weekly,Monthly,Trimestral,Annual';
                    Visible = false;

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(PeriodNumber_All_DAPL; PeriodNumber_All[8])
                {
                    Caption = 'Period';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(DStartDate_DAPL; DStartDate[8])
                {
                    Caption = 'Start Date';
                    Editable = false;
                }
                field(DEndDate_DAPL; DEndDate[8])
                {
                    Caption = 'End Date';
                    Editable = false;
                }
                field(XMLFileName_DAPL; XMLFileName[8])
                {
                    Caption = 'Filename';
                    Editable = false;
                }
            }
            group(DDORC)
            {
                Caption = 'DDORC';
                Visible = gDDORC;
                field(PeriodYear_DDORC; PeriodYear[9])
                {
                    Caption = 'Year';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(OptPeriodType_SM_DDORC; OptPeriodType_SM[9])
                {
                    Caption = 'Periodicity';
                    OptionCaption = 'Weekly,Monthly';

                    trigger OnValidate()
                    begin
                        PeriodYear[9] := DATE2DWY(WORKDATE, 3);
                        PeriodNumber[9] := DATE2DWY(WORKDATE, 2);

                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(PeriodNumber_DDORC; PeriodNumber[9])
                {
                    Caption = 'Period';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(DStartDate_DDORC; DStartDate[9])
                {
                    Caption = 'Start Date';
                    Editable = false;
                }
                field(DEndDate_DDORC; DEndDate[9])
                {
                    Caption = 'End Date';
                    Editable = false;
                }
                field(XMLFileName_DDORC; XMLFileName[9])
                {
                    Caption = 'Filename';
                    Editable = false;
                }
            }
            group(DFC)
            {
                Caption = 'DFC';
                Visible = gDFC;
                field(PeriodYear_DFC; PeriodYear[10])
                {
                    BlankZero = true;
                    Caption = 'Year';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(PeriodNumber_All_DFC; PeriodNumber_All[10])
                {
                    Caption = 'Periodicity';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(DStartDate_DFC; DStartDate[10])
                {
                    Caption = 'Start Date';
                    Editable = false;
                }
                field(DEndDate_DFC; DEndDate[10])
                {
                    Caption = 'End Date';
                    Editable = false;
                }
                field(XMLFileName_DFC; XMLFileName[10])
                {
                    Caption = 'Filename';
                    Editable = false;
                }
            }
            group(DR)
            {
                Caption = 'DR';
                Visible = gDR;
                field(PeriodYear_DR; PeriodYear[11])
                {
                    BlankZero = true;
                    Caption = 'Year';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(PeriodNumber_All_DR; PeriodNumber_All[11])
                {
                    Caption = 'Periodicity';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(DStartDate_DR; DStartDate[11])
                {
                    Caption = 'Start Date';
                    Editable = false;
                }
                field(DEndDate_DR; DEndDate[11])
                {
                    Caption = 'End Date';
                    Editable = false;
                }
                field(XMLFileName_DR; XMLFileName[11])
                {
                    Caption = 'Filename';
                    Editable = false;
                }
            }
            group(DTAS)
            {
                Caption = 'DTAS';
                Visible = gDTAS;
                field(PeriodYear_DTAS; PeriodYear[12])
                {
                    Caption = 'Year';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(PeriodNumber_All_DTAS; PeriodNumber_All[12])
                {
                    Caption = 'Period';

                    trigger OnValidate()
                    begin
                        MakeDateFilter(UNILEOReport);
                    end;
                }
                field(EndingDate_DTAS; DEndDate[12])
                {
                    Caption = 'End Date';
                    Visible = false;
                }
                field(XMLFileName_DTAS; XMLFileName[12])
                {
                    Caption = 'Filename';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }

    var
        [InDataSet]
        gDOREC: Boolean;
        [InDataSet]
        gDODES: Boolean;
        [InDataSet]
        gAFT: Boolean;
        [InDataSet]
        gAI: Boolean;
        [InDataSet]
        gBA: Boolean;
        [InDataSet]
        gBLC: Boolean;
        [InDataSet]
        gCPLC: Boolean;
        [InDataSet]
        gDAPL: Boolean;
        [InDataSet]
        gDDORC: Boolean;
        [InDataSet]
        gDFC: Boolean;
        [InDataSet]
        gDR: Boolean;
        [InDataSet]
        gDTAS: Boolean;
        gRunOk: Boolean;
        FileMgt: Codeunit "File Management";
        UNILEOMgt: Codeunit "UNILEO Management";
        PeriodYear: array[20] of Integer;
        OptPeriodType_SM: array[20] of Option S,M;
        OptPeriodType_T: array[20] of Option T;
        Frequency_WM: array[20] of Option Week,Month;
        OptPeriodType_All: array[20] of Option D,S,M,T,A;
        PeriodNumber: array[20] of Integer;
        PeriodNumber_All: array[20] of Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14";
        PeriodNumber_T: array[20] of Option "1","2","3","4","5";
        DStartDate: array[20] of Date;
        DEndDate: array[20] of Date;
        XMLFileName: array[20] of Text;
        XMLPeriodType_ToWeb: Text;
        XMLYear_ToWeb: Text;
        XMLWebServices_ToWeb: Boolean;
        XMLFileName_ToWeb: Text;
        UNILEOReport: Enum "UNILEO Report Type";

    procedure RunReport(UNILEOReportType: Enum "UNILEO Report Type")
    begin
        Clear(UNILEOReport);
        UNILEOReport := UNILEOReportType;
        CASE UNILEOReport OF
            UNILEOReport::DOREC:
                BEGIN
                    gDOREC := TRUE;
                    PeriodYear[1] := DATE2DWY(WORKDATE, 3);
                    OptPeriodType_SM[1] := OptPeriodType_SM[1] ::S;
                    PeriodNumber[1] := DATE2DWY(WORKDATE, 2);
                    UNILEOMgt.WeekStartEndDate(DStartDate[1], DEndDate[1], PeriodNumber[1], PeriodYear[1]);
                    MakeDateFilter(UNILEOReport);
                END;
            UNILEOReport::DODES:
                BEGIN
                    gDODES := TRUE;
                    PeriodYear[2] := DATE2DWY(WORKDATE, 3);
                    OptPeriodType_SM[2] := OptPeriodType_SM[2] ::S;
                    PeriodNumber[2] := DATE2DWY(WORKDATE, 2);
                    UNILEOMgt.WeekStartEndDate(DStartDate[2], DEndDate[2], PeriodNumber[2], PeriodYear[2]);
                    MakeDateFilter(UNILEOReportType);
                END;
            UNILEOReport::AFT:
                BEGIN
                    gAFT := TRUE;
                    PeriodYear[3] := DATE2DWY(WORKDATE, 3);
                    OptPeriodType_T[3] := OptPeriodType_T[3] ::T;
                    IF DATE2DMY(WORKDATE, 2) IN [1, 2, 3] THEN BEGIN
                        PeriodNumber_T[3] := PeriodNumber_T[3] ::"1";
                        DStartDate[3] := DMY2DATE(1, 1, PeriodYear[3]);
                        DEndDate[3] := DMY2DATE(31, 3, PeriodYear[3]);
                    END;
                    IF DATE2DMY(WORKDATE, 2) IN [4, 5, 6] THEN BEGIN
                        PeriodNumber_T[3] := PeriodNumber_T[3] ::"2";
                        DStartDate[3] := DMY2DATE(1, 1, PeriodYear[3]);
                        DEndDate[3] := DMY2DATE(30, 6, PeriodYear[3]);
                    END;
                    IF DATE2DMY(WORKDATE, 2) IN [7, 8, 9] THEN BEGIN
                        PeriodNumber_T[3] := PeriodNumber_T[3] ::"3";
                        DStartDate[3] := DMY2DATE(1, 1, PeriodYear[3]);
                        DEndDate[3] := DMY2DATE(30, 9, PeriodYear[3]);
                    END;
                    IF DATE2DMY(WORKDATE, 2) IN [10, 11, 12] THEN BEGIN
                        PeriodNumber_T[3] := PeriodNumber_T[3] ::"4";
                        DStartDate[3] := DMY2DATE(1, 1, PeriodYear[3]);
                        DEndDate[3] := DMY2DATE(31, 12, PeriodYear[3]);
                    END;
                    MakeDateFilter(UNILEOReportType);
                END;
            UNILEOReport::AI:
                BEGIN
                    gAI := TRUE;
                    PeriodYear[4] := DATE2DWY(WORKDATE, 3);
                    OptPeriodType_T[4] := OptPeriodType_T[4] ::T;
                    IF DATE2DMY(WORKDATE, 2) IN [1, 2, 3] THEN BEGIN
                        PeriodNumber_T[4] := PeriodNumber_T[4] ::"1";
                        DStartDate[4] := DMY2DATE(1, 1, PeriodYear[4]);
                        DEndDate[4] := DMY2DATE(31, 3, PeriodYear[4]);
                    END;
                    IF DATE2DMY(WORKDATE, 2) IN [4, 5, 6] THEN BEGIN
                        PeriodNumber_T[4] := PeriodNumber_T[4] ::"2";
                        DStartDate[4] := DMY2DATE(1, 1, PeriodYear[4]);
                        DEndDate[4] := DMY2DATE(30, 6, PeriodYear[4]);
                    END;
                    IF DATE2DMY(WORKDATE, 2) IN [7, 8, 9] THEN BEGIN
                        PeriodNumber_T[4] := PeriodNumber_T[4] ::"3";
                        DStartDate[4] := DMY2DATE(1, 1, PeriodYear[4]);
                        DEndDate[4] := DMY2DATE(30, 9, PeriodYear[4]);
                    END;
                    IF DATE2DMY(WORKDATE, 2) IN [10, 11, 12] THEN BEGIN
                        PeriodNumber_T[4] := PeriodNumber_T[4] ::"4";
                        DStartDate[4] := DMY2DATE(1, 1, PeriodYear[4]);
                        DEndDate[4] := DMY2DATE(31, 12, PeriodYear[4]);
                    END;
                    MakeDateFilter(UNILEOReportType);
                END;
            UNILEOReport::BA:
                BEGIN
                    gBA := TRUE;
                    Frequency_WM[5] := Frequency_WM[5] ::Week;
                    PeriodYear[5] := DATE2DWY(WORKDATE, 3);
                    PeriodNumber[5] := DATE2DWY(WORKDATE, 2);
                    DStartDate[5] := DWY2DATE(1, PeriodNumber[5], PeriodYear[5]);
                    DEndDate[5] := CALCDATE('<CW>', DStartDate[5]);
                    UNILEOMgt.WeekStartEndDate(DStartDate[5], DEndDate[5], PeriodNumber[5], PeriodYear[5]);
                    MakeDateFilter(UNILEOReport);
                END;
            UNILEOReport::BLC:
                BEGIN
                    gBLC := TRUE;
                    PeriodYear[6] := DATE2DWY(WORKDATE, 3);
                    PeriodNumber_All[6] := DATE2DMY(WORKDATE, 2);
                    IF PeriodNumber_All[6] > 0 THEN
                        PeriodNumber_All[6] := PeriodNumber_All[6] - 1;
                    DStartDate[6] := DMY2DATE(1, 1, PeriodYear[6]);
                    DEndDate[6] := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber_All[6] + 1, PeriodYear[6]));
                    MakeDateFilter(UNILEOReport);
                END;
            UNILEOReport::CPLC:
                BEGIN
                    gCPLC := TRUE;
                    PeriodYear[7] := DATE2DWY(WORKDATE, 3);
                    OptPeriodType_All[7] := OptPeriodType_All[7] ::A;
                    MakeDateFilter(UNILEOReport);
                END;
            UNILEOReport::DAPL:
                BEGIN
                    gDAPL := TRUE;
                    PeriodYear[8] := DATE2DMY(WORKDATE, 3);
                    PeriodNumber_All[8] := DATE2DMY(WORKDATE, 2);
                    IF PeriodNumber_All[8] > 0 THEN
                        PeriodNumber_All[8] := PeriodNumber_All[8] - 1;
                    OptPeriodType_All[8] := OptPeriodType_All[8] ::M;
                    DStartDate[8] := DMY2DATE(1, 1, PeriodYear[8]);
                    DEndDate[8] := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber_All[8] + 1, PeriodYear[8]));
                    MakeDateFilter(UNILEOReport);
                END;
            UNILEOReport::DDORC:
                BEGIN
                    gDDORC := TRUE;
                    PeriodYear[9] := DATE2DWY(WORKDATE, 3);
                    OptPeriodType_SM[9] := OptPeriodType_SM[9] ::S;
                    PeriodNumber[9] := DATE2DWY(WORKDATE, 2);
                    UNILEOMgt.WeekStartEndDate(DStartDate[9], DEndDate[9], PeriodNumber[9], PeriodYear[9]);
                    MakeDateFilter(UNILEOReport);
                END;
            UNILEOReport::DFC:
                BEGIN
                    gDFC := TRUE;
                    PeriodYear[10] := DATE2DWY(WORKDATE, 3);
                    PeriodNumber_All[10] := DATE2DMY(WORKDATE, 2);
                    IF PeriodNumber_All[10] > 0 THEN
                        PeriodNumber_All[10] := PeriodNumber_All[10] - 1;
                    DStartDate[10] := DMY2DATE(1, 1, PeriodYear[10]);
                    DEndDate[10] := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber_All[10] + 1, PeriodYear[10]));
                    MakeDateFilter(UNILEOReport);
                END;
            UNILEOReport::DR:
                BEGIN
                    gDR := TRUE;
                    PeriodYear[11] := DATE2DWY(WORKDATE, 3);
                    PeriodNumber_All[11] := DATE2DMY(WORKDATE, 2);
                    IF PeriodNumber_All[11] > 0 THEN
                        PeriodNumber_All[11] := PeriodNumber_All[11] - 1;
                    DStartDate[11] := DMY2DATE(1, 1, PeriodYear[11]);
                    DEndDate[11] := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber_All[11] + 1, PeriodYear[11]));
                    MakeDateFilter(UNILEOReport);
                END;
            UNILEOReport::DTAS:
                BEGIN
                    gDTAS := TRUE;
                    IF DEndDate[12] = 0D THEN
                        DEndDate[12] := WORKDATE;
                    PeriodYear[12] := DATE2DMY(WORKDATE, 3);
                    PeriodNumber_All[12] := DATE2DMY(WORKDATE, 2) - 1;
                    DEndDate[12] := DMY2DATE(1, PeriodNumber_All[12] + 1, PeriodYear[12]);
                    DEndDate[12] := CALCDATE('<CM>', DEndDate[12]);
                    MakeDateFilter(UNILEOReport);
                END;
        END;
    end;

    procedure MakeDateFilter(UNILEOReportType: Enum "UNILEO Report Type")
    begin

        CASE UNILEOReportType OF
            UNILEOReportType::DOREC:
                BEGIN
                    CASE OptPeriodType_SM[1] OF
                        OptPeriodType_SM[1] ::S:
                            BEGIN
                                UNILEOMgt.WeekStartEndDate(DStartDate[1], DEndDate[1], PeriodNumber[1], PeriodYear[1]);
                                DStartDate[1] := DMY2DATE(1, 1, PeriodYear[1]);
                            END;
                        OptPeriodType_SM[1] ::M:
                            BEGIN
                                DStartDate[1] := DMY2DATE(1, 1, PeriodYear[1]);
                                IF PeriodNumber[1] > 12 THEN
                                    DEndDate[1] := CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear[1]))
                                ELSE
                                    DEndDate[1] := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber[1], PeriodYear[1]));
                                IF PeriodNumber[1] = 14 THEN
                                    DEndDate[1] := CLOSINGDATE(DEndDate[1]);
                            END;
                    END;
                    XMLPeriodType_ToWeb := FORMAT(OptPeriodType_SM[1]);
                    XMLYear_ToWeb := FORMAT(PeriodYear[1]);
                END;
            UNILEOReportType::DODES:
                BEGIN
                    CASE OptPeriodType_SM[2] OF
                        OptPeriodType_SM[2] ::S:
                            BEGIN
                                UNILEOMgt.WeekStartEndDate(DStartDate[2], DEndDate[2], PeriodNumber[2], PeriodYear[2]);
                                DStartDate[2] := DMY2DATE(1, 1, PeriodYear[2]);
                            END;
                        OptPeriodType_SM[2] ::M:
                            BEGIN
                                DStartDate[2] := DMY2DATE(1, 1, PeriodYear[2]);
                                IF PeriodNumber[2] > 12 THEN
                                    DEndDate[2] := CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear[2]))
                                ELSE
                                    DEndDate[2] := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber[2], PeriodYear[2]));
                                IF PeriodNumber[2] = 14 THEN
                                    DEndDate[2] := CLOSINGDATE(DEndDate[2]);
                            END;
                    END;
                    XMLPeriodType_ToWeb := FORMAT(OptPeriodType_SM[2]);
                    XMLYear_ToWeb := FORMAT(PeriodYear[2]);
                END;
            UNILEOReportType::AFT:
                BEGIN
                    CASE PeriodNumber_T[3] OF
                        PeriodNumber_T[3] ::"1":
                            BEGIN
                                DStartDate[3] := DMY2DATE(1, 1, PeriodYear[3]);
                                DEndDate[3] := DMY2DATE(31, 3, PeriodYear[3]);
                            END;
                        PeriodNumber_T[3] ::"2":
                            BEGIN
                                DStartDate[3] := DMY2DATE(1, 1, PeriodYear[3]);
                                DEndDate[3] := DMY2DATE(30, 6, PeriodYear[3]);
                            END;
                        PeriodNumber_T[3] ::"3":
                            BEGIN
                                DStartDate[3] := DMY2DATE(1, 1, PeriodYear[3]);
                                DEndDate[3] := DMY2DATE(30, 9, PeriodYear[3]);
                            END;
                        PeriodNumber_T[3] ::"4":
                            BEGIN
                                DStartDate[3] := DMY2DATE(1, 1, PeriodYear[3]);
                                DEndDate[3] := DMY2DATE(31, 12, PeriodYear[3]);
                            END;
                        PeriodNumber_T[3] ::"5":
                            BEGIN
                                DStartDate[3] := DMY2DATE(1, 1, PeriodYear[3]);
                                DEndDate[3] := CLOSINGDATE(DMY2DATE(31, 12, PeriodYear[3]));
                            END;
                    END;
                    XMLPeriodType_ToWeb := FORMAT(OptPeriodType_T[3]);
                    XMLYear_ToWeb := FORMAT(PeriodYear[3]);
                END;
            UNILEOReportType::AI:
                BEGIN
                    CASE PeriodNumber_T[4] OF
                        PeriodNumber_T[4] ::"1":
                            BEGIN
                                DStartDate[4] := DMY2DATE(1, 1, PeriodYear[4]);
                                DEndDate[4] := DMY2DATE(31, 3, PeriodYear[4]);
                            END;
                        PeriodNumber_T[4] ::"2":
                            BEGIN
                                DStartDate[4] := DMY2DATE(1, 1, PeriodYear[4]);
                                DEndDate[4] := DMY2DATE(30, 6, PeriodYear[4]);
                            END;
                        PeriodNumber_T[4] ::"3":
                            BEGIN
                                DStartDate[4] := DMY2DATE(1, 1, PeriodYear[4]);
                                DEndDate[4] := DMY2DATE(30, 9, PeriodYear[4]);
                            END;
                        PeriodNumber_T[4] ::"4":
                            BEGIN
                                DStartDate[4] := DMY2DATE(1, 1, PeriodYear[4]);
                                DEndDate[4] := DMY2DATE(31, 12, PeriodYear[4]);
                            END;
                        PeriodNumber_T[4] ::"5":
                            BEGIN
                                DStartDate[4] := DMY2DATE(1, 1, PeriodYear[4]);
                                DEndDate[4] := CLOSINGDATE(DMY2DATE(31, 12, PeriodYear[4]));
                            END;
                    END;
                    XMLPeriodType_ToWeb := FORMAT(OptPeriodType_T[4]);
                    XMLYear_ToWeb := FORMAT(PeriodYear[4]);
                END;
            UNILEOReportType::BA:
                BEGIN
                    CASE Frequency_WM[5] OF
                        Frequency_WM[5] ::Week:
                            BEGIN
                                UNILEOMgt.WeekStartEndDate(DStartDate[5], DEndDate[5], PeriodNumber[5], PeriodYear[5]);
                            END;
                        Frequency_WM[5] ::Month:
                            BEGIN
                                IF PeriodNumber[5] > 12 THEN
                                    DStartDate[5] := DMY2DATE(1, 12, PeriodYear[5])
                                ELSE
                                    DStartDate[5] := DMY2DATE(1, PeriodNumber[5], PeriodYear[5]);
                                DEndDate[5] := CALCDATE('<CM>', DStartDate[5]);
                                IF PeriodNumber[5] = 14 THEN
                                    DEndDate[5] := CLOSINGDATE(DEndDate[5]);
                            END;
                    END;
                    IF Frequency_WM[5] = Frequency_WM[5] ::Month THEN
                        XMLPeriodType_ToWeb := 'M';
                    IF Frequency_WM[5] = Frequency_WM[5] ::Week THEN
                        XMLPeriodType_ToWeb := 'S';
                    XMLYear_ToWeb := FORMAT(PeriodYear[5]);
                END;
            UNILEOReportType::BLC:
                BEGIN
                    DStartDate[6] := DMY2DATE(1, 1, PeriodYear[6]);
                    CASE PeriodNumber_All[6] OF
                        PeriodNumber_All[6] ::"1",
                        PeriodNumber_All[6] ::"2",
                        PeriodNumber_All[6] ::"3",
                        PeriodNumber_All[6] ::"4",
                        PeriodNumber_All[6] ::"5",
                        PeriodNumber_All[6] ::"6",
                        PeriodNumber_All[6] ::"7",
                        PeriodNumber_All[6] ::"8",
                        PeriodNumber_All[6] ::"9",
                        PeriodNumber_All[6] ::"10",
                        PeriodNumber_All[6] ::"11",
                        PeriodNumber_All[6] ::"12":
                            BEGIN
                                DEndDate[6] := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber_All[6] + 1, PeriodYear[6]));
                            END;
                        PeriodNumber_All[6] ::"13":
                            BEGIN
                                DEndDate[6] := CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear[6]));
                            END;
                        PeriodNumber_All[6] ::"14":
                            BEGIN
                                DEndDate[6] := CLOSINGDATE(CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear[6])));
                            END;
                    END;
                    XMLPeriodType_ToWeb := 'M';
                    XMLYear_ToWeb := FORMAT(PeriodYear[6]);
                END;
            UNILEOReportType::CPLC:
                BEGIN
                    XMLPeriodType_ToWeb := 'A';
                    XMLYear_ToWeb := FORMAT(PeriodYear[7]);
                END;
            UNILEOReportType::DAPL:
                BEGIN
                    DStartDate[8] := DMY2DATE(1, 1, PeriodYear[8]);
                    CASE PeriodNumber_All[8] OF
                        PeriodNumber_All[8] ::"1",
                        PeriodNumber_All[8] ::"2",
                        PeriodNumber_All[8] ::"3",
                        PeriodNumber_All[8] ::"4",
                        PeriodNumber_All[8] ::"5",
                        PeriodNumber_All[8] ::"6",
                        PeriodNumber_All[8] ::"7",
                        PeriodNumber_All[8] ::"8",
                        PeriodNumber_All[8] ::"9",
                        PeriodNumber_All[8] ::"10",
                        PeriodNumber_All[8] ::"11",
                        PeriodNumber_All[8] ::"12":
                            BEGIN
                                DEndDate[8] := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber_All[8] + 1, PeriodYear[8]));
                            END;
                        PeriodNumber_All[8] ::"13":
                            BEGIN
                                DEndDate[8] := CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear[8]));
                            END;
                        PeriodNumber_All[8] ::"14":
                            BEGIN
                                DEndDate[8] := CLOSINGDATE(CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear[8])));
                            END;
                    END;
                    XMLPeriodType_ToWeb := FORMAT(OptPeriodType_All[8]);
                    XMLYear_ToWeb := FORMAT(PeriodYear[8]);
                END;
            UNILEOReportType::DDORC:
                BEGIN
                    CASE OptPeriodType_SM[9] OF
                        OptPeriodType_SM[9] ::S:
                            BEGIN
                                UNILEOMgt.WeekStartEndDate(DStartDate[9], DEndDate[9], PeriodNumber[9], PeriodYear[9]);
                                DStartDate[9] := DMY2DATE(1, 1, PeriodYear[9]);
                            END;
                        OptPeriodType_SM[9] ::M:
                            BEGIN
                                DStartDate[9] := DMY2DATE(1, 1, PeriodYear[9]);
                                IF PeriodNumber[9] > 12 THEN
                                    DEndDate[9] := CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear[9]))
                                ELSE
                                    DEndDate[9] := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber[9], PeriodYear[9]));
                                IF PeriodNumber[9] = 14 THEN
                                    DEndDate[9] := CLOSINGDATE(DEndDate[9]);
                            END;
                    END;
                    XMLPeriodType_ToWeb := FORMAT(OptPeriodType_SM[9]);
                    XMLYear_ToWeb := FORMAT(PeriodYear[9]);
                END;
            UNILEOReportType::DFC:
                BEGIN
                    DStartDate[10] := DMY2DATE(1, 1, PeriodYear[10]);
                    CASE PeriodNumber_All[10] OF
                        PeriodNumber_All[10] ::"1",
                        PeriodNumber_All[10] ::"2",
                        PeriodNumber_All[10] ::"3",
                        PeriodNumber_All[10] ::"4",
                        PeriodNumber_All[10] ::"5",
                        PeriodNumber_All[10] ::"6",
                        PeriodNumber_All[10] ::"7",
                        PeriodNumber_All[10] ::"8",
                        PeriodNumber_All[10] ::"9",
                        PeriodNumber_All[10] ::"10",
                        PeriodNumber_All[10] ::"11",
                        PeriodNumber_All[10] ::"12":
                            BEGIN
                                DEndDate[10] := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber_All[10] + 1, PeriodYear[10]));
                            END;
                        PeriodNumber_All[10] ::"13":
                            BEGIN
                                DEndDate[10] := CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear[10]));
                            END;
                        PeriodNumber_All[10] ::"14":
                            BEGIN
                                DEndDate[10] := CLOSINGDATE(CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear[10])));
                            END;
                    END;
                    XMLPeriodType_ToWeb := 'M';
                    XMLYear_ToWeb := FORMAT(PeriodYear[10]);
                END;
            UNILEOReportType::DR:
                BEGIN
                    DStartDate[11] := DMY2DATE(1, 1, PeriodYear[11]);
                    CASE PeriodNumber_All[11] OF
                        PeriodNumber_All[11] ::"1",
                        PeriodNumber_All[11] ::"2",
                        PeriodNumber_All[11] ::"3",
                        PeriodNumber_All[11] ::"4",
                        PeriodNumber_All[11] ::"5",
                        PeriodNumber_All[11] ::"6",
                        PeriodNumber_All[11] ::"7",
                        PeriodNumber_All[11] ::"8",
                        PeriodNumber_All[11] ::"9",
                        PeriodNumber_All[11] ::"10",
                        PeriodNumber_All[11] ::"11",
                        PeriodNumber_All[11] ::"12":
                            BEGIN
                                DEndDate[11] := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber_All[11] + 1, PeriodYear[11]));
                            END;
                        PeriodNumber_All[11] ::"13":
                            BEGIN
                                DEndDate[11] := CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear[11]));
                            END;
                        PeriodNumber_All[11] ::"14":
                            BEGIN
                                DEndDate[11] := CLOSINGDATE(CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear[11])));
                            END;
                    END;
                    XMLPeriodType_ToWeb := 'M';
                    XMLYear_ToWeb := FORMAT(PeriodYear[11]);
                END;
            UNILEOReportType::DTAS:
                BEGIN
                    IF PeriodNumber_All[12] + 1 > 12 THEN
                        DEndDate[12] := CALCDATE('<CM>', DMY2DATE(1, 12, PeriodYear[12]))
                    ELSE
                        DEndDate[12] := CALCDATE('<CM>', DMY2DATE(1, PeriodNumber_All[12] + 1, PeriodYear[12]));
                    XMLPeriodType_ToWeb := 'M';
                    XMLYear_ToWeb := FORMAT(PeriodYear[12]);
                END;
        END;
        MakeFileName(UNILEOReportType);
    end;

    procedure MakeFileName(UNILEOReportType: Enum "UNILEO Report Type")
    var
        CompanyInformation: Record "Company Information";
    begin
        CompanyInformation.GET;
        CASE UNILEOReportType OF
            UNILEOReportType::DOREC:
                BEGIN
                    XMLFileName[1] := CompanyInformation."VAT Registration No." + FORMAT(PeriodYear[1]) + FORMAT(PeriodNumber[1], 3, '<integer,3><filler character,0>') + FORMAT(OptPeriodType_SM[1]) + 'DOREC.XML';
                    XMLFileName_ToWeb := XMLFileName[1];
                END;
            UNILEOReportType::DODES:
                BEGIN
                    XMLFileName[2] := CompanyInformation."VAT Registration No." + FORMAT(PeriodYear[2]) + FORMAT(PeriodNumber[2], 3, '<integer,3><filler character,0>') + FORMAT(OptPeriodType_SM[2]) + 'DODES.XML';
                    XMLFileName_ToWeb := XMLFileName[2];
                END;
            UNILEOReportType::AFT:
                BEGIN
                    XMLFileName[3] := CompanyInformation."VAT Registration No." + FORMAT(PeriodYear[3]) + FORMAT(PeriodNumber_T[3] + 1, 3, '<integer,3><filler character,0>') + FORMAT(OptPeriodType_T[3]) + 'AFT.XML';
                    XMLFileName_ToWeb := XMLFileName[3];
                END;
            UNILEOReportType::AI:
                BEGIN
                    XMLFileName[4] := CompanyInformation."VAT Registration No." + FORMAT(PeriodYear[4]) + FORMAT(PeriodNumber_T[4] + 1, 3, '<integer,3><filler character,0>') + FORMAT(OptPeriodType_T[4]) + 'AI.XML';
                    XMLFileName_ToWeb := XMLFileName[4];
                END;
            UNILEOReportType::BA:
                BEGIN
                    IF Frequency_WM[5] = Frequency_WM[5] ::Month THEN
                        XMLFileName[5] := CompanyInformation."VAT Registration No." + FORMAT(PeriodYear[5]) + FORMAT(PeriodNumber[5], 3, '<integer,3><filler character,0>') + 'M' + 'BA.XML'
                    ELSE
                        XMLFileName[5] := CompanyInformation."VAT Registration No." + FORMAT(PeriodYear[5]) + FORMAT(PeriodNumber[5], 3, '<integer,3><filler character,0>') + 'S' + 'BA.XML';
                    XMLFileName_ToWeb := XMLFileName[5];
                END;
            UNILEOReportType::BLC:
                BEGIN
                    XMLFileName[6] := CompanyInformation."VAT Registration No." + FORMAT(PeriodYear[6]) + FORMAT(PeriodNumber_All[6] + 1, 3, '<integer,3><filler character,0>') + 'M' + 'BLC.XML';
                    XMLFileName_ToWeb := XMLFileName[6];
                END;
            UNILEOReportType::CPLC:
                BEGIN
                    XMLFileName[7] := CompanyInformation."VAT Registration No." + FORMAT(WORKDATE, 0, '<Year4><Month,2><Day,2>') + 'CPLC.XML';
                    XMLFileName_ToWeb := XMLFileName[7];
                END;
            UNILEOReportType::DAPL:
                BEGIN
                    XMLFileName[8] := CompanyInformation."VAT Registration No." + FORMAT(PeriodYear[8]) + FORMAT(PeriodNumber_All[8] + 1, 3, '<integer,3><filler character,0>') + FORMAT(OptPeriodType_All[8]) + 'DAPL.XML';
                    XMLFileName_ToWeb := XMLFileName[8];
                END;
            UNILEOReportType::DDORC:
                BEGIN
                    XMLFileName[9] := CompanyInformation."VAT Registration No." + FORMAT(PeriodYear[9]) + FORMAT(PeriodNumber[9], 3, '<integer,3><filler character,0>') + FORMAT(OptPeriodType_SM[9]) + 'DDORC.XML';
                    XMLFileName_ToWeb := XMLFileName[9];
                END;
            UNILEOReportType::DFC:
                BEGIN
                    XMLFileName[10] := CompanyInformation."VAT Registration No." + FORMAT(PeriodYear[10]) + FORMAT(PeriodNumber_All[10] + 1, 3, '<integer,3><filler character,0>') + 'M' + 'DFC.XML';
                    XMLFileName_ToWeb := XMLFileName[10];
                END;
            UNILEOReportType::DR:
                BEGIN
                    XMLFileName[11] := CompanyInformation."VAT Registration No." + FORMAT(PeriodYear[11]) + FORMAT(PeriodNumber_All[11] + 1, 3, '<integer,3><filler character,0>') + 'M' + 'DR.XML';
                    XMLFileName_ToWeb := XMLFileName[11];
                END;
            UNILEOReportType::DTAS:
                BEGIN
                    XMLFileName[12] := CompanyInformation."VAT Registration No." + FORMAT(PeriodYear[12]) + FORMAT(PeriodNumber_All[12] + 1, 3, '<integer,3><filler character,0>') + 'M' + 'DTAS.XML';
                    XMLFileName_ToWeb := XMLFileName[12];
                END;
        END;
    end;

    procedure GetXmlFileDetails(var XMLFileName: Text; var XMLPeriodType: Text; var XMLYear: Text)
    begin
        XMLFileName := XMLFileName_ToWeb;
        XMLPeriodType := XMLPeriodType_ToWeb;
        XMLYear := XMLYear_ToWeb;
    end;

    procedure GetAllParameters(var L_PeriodYear: array[20] of Integer; var L_OptPeriodType_SM: array[20] of Option S,M; var L_OptPeriodType_T: array[20] of Option T; var L_Frequency_WM: array[20] of Option Week,Month; var L_OptPeriodType_All: array[20] of Option D,S,M,T,A; var L_PeriodNumber: array[20] of Integer; var L_PeriodNumber_All: array[20] of Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14"; var L_PeriodNumber_T: array[20] of Option "1","2","3","4","5"; var L_DStartDate: array[20] of Date; var L_DEndDate: array[20] of Date; var L_XMLFileName: array[20] of Text)
    var
        j: Integer;
    begin
        FOR j := 1 TO 20 DO BEGIN
            L_PeriodYear[j] := PeriodYear[j];
            L_OptPeriodType_SM[j] := OptPeriodType_SM[j];
            L_OptPeriodType_T[j] := OptPeriodType_T[j];
            L_Frequency_WM[j] := Frequency_WM[j];
            L_OptPeriodType_All[j] := OptPeriodType_All[j];
            L_PeriodNumber[j] := PeriodNumber[j];
            L_PeriodNumber_All[j] := PeriodNumber_All[j];
            L_PeriodNumber_T[j] := PeriodNumber_T[j];
            L_DStartDate[j] := DStartDate[j];
            L_DEndDate[j] := DEndDate[j];
            L_XMLFileName[j] := XMLFileName[j];
        END;
    end;
}

