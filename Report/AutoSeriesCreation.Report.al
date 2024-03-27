report 57009 "Auto Series Creation"
{

    Caption = 'Automatic Series Creation';
    ProcessingOnly = true;
    ApplicationArea = All;
    dataset
    {
        dataitem(Integer; Integer)
        {
            DataItemTableView = SORTING(Number)
                                ORDER(Ascending)
                                WHERE(Number = CONST(1));

            trigger OnAfterGetRecord()
            begin
                CreateSerialNumber;
            end;

            trigger OnPostDataItem()
            begin
                Message(Text0002, YearToOpen);
            end;

            trigger OnPreDataItem()
            begin
                ValidateSerialNumber;
            end;
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
                    Caption = 'Options';
                    field(YearToOpen; YearToOpen)
                    {
                        Caption = 'Year To Open';
                        MinValue = 0;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        YearToOpen: Integer;
        Text0001: Label 'The year to open is empty.';
        Text0002: Label 'The automatic numeration was open for year %1.';

    local procedure ValidateSerialNumber()
    var
        NoSeries: Record "No. Series";
    begin
        NoSeries.Reset();
        NoSeries.SetRange("Automatic Creation", true);
        if NoSeries.FindSet() then
            Repeat
                NoSeries.TestField("Auto Series No.");
                NoSeries.TestField("Auto Number");
                NoSeries.ValidateAutoNumber(NoSeries."Auto Number");
            Until NoSeries.Next() = 0;
    end;

    local procedure CreateSerialNumber()
    var
        NoSeries: Record "No. Series";
        NoSeriesLine: Record "No. Series Line";
        DateToOpen: Date;
        DateToOpen2: Date;
        i: Integer;
        LineNo: Integer;
        SaftPrefix: Integer;
    begin
        if YearToOpen = 0 then
            Error(Text0001);

        DateToOpen := DMY2Date(1, 1, YearToOpen);

        NoSeries.Reset();
        NoSeries.SetRange("Automatic Creation", true);
        if NoSeries.FindSet() then
            Repeat
                Clear(LineNo);
                Clear(SaftPrefix);
                if (NoSeries."PTSS SAF-T Invoice Type" <> NoSeries."PTSS SAF-T Invoice Type"::" ") or
                    (NoSeries."PTSS GTAT Document Type" <> NoSeries."PTSS GTAT Document Type"::" ") or
                    (NoSeries."PTSS SAF-T Working Doc Type" <> NoSeries."PTSS SAF-T Working Doc Type"::" ") or
                    (NoSeries."PTSS Receipt Type" <> NoSeries."PTSS Receipt Type"::" ") then
                    SaftPrefix := GetSaftPrefix(NoSeries."Auto Series Type", NoSeries."Auto Series Prefix");

                NoSeriesLine.Reset();
                NoSeriesLine.SetRange("Series Code", NoSeries.Code);
                if NoSeriesLine.FindLast() then
                    LineNo := NoSeriesLine."Line No." + 10000
                else
                    LineNo := 10000;
                case NoSeries."Auto Series Type" of
                    NoSeries."Auto Series Type"::" ", NoSeries."Auto Series Type"::YY:
                        CreateSerialLine(NoSeries.Code, LineNo, DateToOpen, GetSerialNumber(NoSeries."Auto Series Type", NoSeries."Auto Number", DateToOpen),
                                   GetLastSerialNumber(NoSeries."Auto Series Type", NoSeries."Auto Number", NoSeries."Auto Series Sufix", DateToOpen),
                                   SaftPrefix);
                    NoSeries."Auto Series Type"::MMYY, NoSeries."Auto Series Type"::YYMM:
                        for i := 1 to 12 do begin
                            Clear(DateToOpen2);
                            DateToOpen2 := DMY2Date(1, i, YearToOpen);
                            CreateSerialLine(NoSeries.Code, LineNo, DateToOpen2, GetSerialNumber(NoSeries."Auto Series Type", NoSeries."Auto Number", DateToOpen2),
                                   GetLastSerialNumber(NoSeries."Auto Series Type", NoSeries."Auto Number", NoSeries."Auto Series Sufix", DateToOpen2),
                                   SaftPrefix);
                        end;
                end;
                CreateSerialLine(NoSeries.Code, LineNo, DMY2Date(1, 1, YearToOpen + 1), '', '', 0);
            Until NoSeries.NEXT = 0;
    end;

    local procedure CreateSerialLine(NoSeriesCode: Code[20]; var LineNo: Integer; DateToOpen: Date; StartNumber: Code[20]; EndNumber: Code[20]; SaftPrefix: Integer)
    var
        NoSeriesLine: Record "No. Series Line";
    begin
        Clear(NoSeriesLine);
        NoSeriesLine.SetRange("Series Code", NoSeriesCode);
        NoSeriesLine.SetRange("Starting Date", DateToOpen);
        if NoSeriesLine.FindFirst() then begin
            if (NoSeriesLine."Last No. Used" <> '') or (NoSeriesLine."PTSS AT Validation Code" <> '')
            or (NoSeriesLine."Starting No." = StartNumber) then
                exit;
            NoSeriesLine.Validate("Starting No.", StartNumber);
            NoSeriesLine.Validate("Ending No.", EndNumber);
            NoSeriesLine.Validate("PTSS SAF-T No. Series Del.", SaftPrefix);
            NoSeriesLine.Modify(true);
        end else begin
            NoSeriesLine.Init();
            NoSeriesLine.Validate("Series Code", NoSeriesCode);
            NoSeriesLine.Validate("Line No.", LineNo);
            NoSeriesLine.Validate("Starting Date", DateToOpen);
            if StartNumber <> '' then
                NoSeriesLine.Validate("Starting No.", StartNumber);
            NoSeriesLine.Validate("Ending No.", EndNumber);
            NoSeriesLine.Validate("PTSS SAF-T No. Series Del.", SaftPrefix);
            NoSeriesLine.Insert(true);
            LineNo += 10000;
        end;
    end;

    local procedure GetSerialNumber(AutoSeriesType: enum "Auto Series Type"; AutoNumber: Code[20]; DateToOpen: Date): Code[20]
    var
        NoSeriesCode: Code[20];
    begin
        CLEAR(NoSeriesCode);
        CASE AutoSeriesType OF
            AutoSeriesType::" ":
                NoSeriesCode := AutoNumber;
            AutoSeriesType::YY:
                NoSeriesCode := ReplaceString(UPPERCASE(AutoNumber), UPPERCASE('(YY)'), FORMAT(DateToOpen, 0, '<Year>'));
            AutoSeriesType::MMYY:
                NoSeriesCode := ReplaceString(UPPERCASE(AutoNumber), UPPERCASE('(MMYY)'), FORMAT(DateToOpen, 0, '<Month,2><Year>'));
            AutoSeriesType::YYMM:
                NoSeriesCode := ReplaceString(UPPERCASE(AutoNumber), UPPERCASE('(YYMM)'), FORMAT(DateToOpen, 0, '<Year><Month,2>'));
        END;
        EXIT(NoSeriesCode);
    end;

    local procedure GetLastSerialNumber(AutoSeriesType: enum "Auto Series Type"; AutoNumber: Code[20]; AutoSeriesSuffix: Integer; DateToOpen: Date): Code[20]
    VAR
        NoSeriesCode: Code[20];
        NoSeriesSufix: Code[20];
    BEGIN
        Clear(NoSeriesCode);
        Clear(NoSeriesSufix);
        case AutoSeriesType of
            AutoSeriesType::" ":
                NoSeriesCode := AutoNumber;
            AutoSeriesType::YY:
                NoSeriesCode := ReplaceString(UpperCase(AutoNumber), UpperCase('(YY)'), Format(DateToOpen, 0, '<Year>'));
            AutoSeriesType::MMYY:
                NoSeriesCode := ReplaceString(UpperCase(AutoNumber), UpperCase('(MMYY)'), Format(DateToOpen, 0, '<Month,2><Year>'));
            AutoSeriesType::YYMM:
                NoSeriesCode := ReplaceString(UpperCase(AutoNumber), UpperCase('(YYMM)'), Format(DateToOpen, 0, '<Year><Month,2>'));
        end;
        NoSeriesSufix := PadStr(NoSeriesSufix, AutoSeriesSuffix, '9');
        NoSeriesCode := CopyStr(NoSeriesCode, 1, STRLEN(NoSeriesCode) - AutoSeriesSuffix) + NoSeriesSufix;
        exit(NoSeriesCode);
    end;

    local procedure GetSaftPrefix(AutoSeriesType: enum "Auto Series Type"; AutoSeriesPrefix: Integer): Integer
    begin
        case AutoSeriesType of
            AutoSeriesType::" ":
                exit(0);
            AutoSeriesType::YY:
                exit(AutoSeriesPrefix + 2);
            AutoSeriesType::MMYY, AutoSeriesType::YYMM:
                exit(AutoSeriesPrefix + 4);
        end;
        exit(0);
    end;

    local procedure ReplaceString(String: Text; FindWhat: Text; ReplaceWith: Text) NewString: Text
    begin
        Clear(NewString);
        while StrPos(String, FindWhat) > 0 do
            String := DelStr(String, StrPos(String, FindWhat)) + ReplaceWith + CopyStr(String, StrPos(String, FindWhat) + StrLen(FindWhat));

        NewString := String;
        exit(NewString);
    end;
}

