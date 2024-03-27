tableextension 57037 NoSeriesTableExt extends "No. Series"
{
    fields
    {
        field(57000; "Automatic Creation"; Boolean)
        {
            Caption = 'Automatic Creation';

            trigger OnValidate()
            begin
                IF NOT "Automatic Creation" THEN
                    ClearAutoSeries;
            end;
        }
        field(57001; "Auto Series No."; Code[20])
        {
            Caption = 'Auto Series No.';

            trigger OnValidate()
            begin
                ValidateAutoNumber("Auto Series No.");
                UpdateAutoSeries;
            end;
        }
        field(57002; "Auto Series Prefix"; Integer)
        {
            BlankZero = true;
            Caption = 'Auto Series Prefix';
            MaxValue = 10;
            MinValue = 0;

            trigger OnValidate()
            begin
                UpdateAutoSeries;
            end;
        }
        field(57003; "Auto Series Sufix"; Integer)
        {
            BlankZero = true;
            Caption = 'Auto Series Sufix';
            MaxValue = 10;
            MinValue = 0;

            trigger OnValidate()
            begin
                UpdateAutoSeries;
            end;
        }
        field(57004; "Auto Series Type"; Enum "Auto Series Type")
        {
            Caption = 'Auto Series Type';

            trigger OnValidate()
            begin
                UpdateAutoSeries;
            end;
        }
        field(57005; "Auto Number"; Code[20])
        {
            Caption = 'Auto Number';
            Editable = false;
        }
    }

    local procedure ClearAutoSeries()
    begin
        "Auto Series No." := '';
        "Auto Number" := '';
        "Auto Series Prefix" := 0;
        "Auto Series Sufix" := 0;
        "Auto Series Type" := "Auto Series Type"::" ";
    end;

    procedure UpdateAutoSeries()
    var
        NoSeries: Record "No. Series";
        AutoType: Text;
        Prefix: Code[10];
        Sufix: Code[10];
        Text001: Label 'Length of field %1 can not be higher than %2 and %3.';
    begin
        CLEAR(AutoType);
        CLEAR(Prefix);
        CLEAR(Sufix);
        TESTFIELD("Automatic Creation");

        IF STRLEN("Auto Series No.") < ("Auto Series Prefix" + "Auto Series Sufix") THEN
            ERROR(Text001, FIELDCAPTION("Auto Series No."), FIELDCAPTION("Auto Series Prefix"), FIELDCAPTION("Auto Series Sufix"));

        CASE "Auto Series Type" OF
            "Auto Series Type"::MMYY:
                AutoType := '(mmyy)';
            "Auto Series Type"::YY:
                AutoType := '(yy)';
            "Auto Series Type"::YYMM:
                AutoType := '(yymm)';
        END;

        IF "Auto Series Prefix" <> 0 THEN
            Prefix := COPYSTR("Auto Series No.", 1, "Auto Series Prefix");
        IF "Auto Series Sufix" <> 0 THEN
            Sufix := COPYSTR("Auto Series No.", STRLEN("Auto Series No.") - ("Auto Series Sufix" - 1), STRLEN("Auto Series No."));

        "Auto Number" := Prefix + AutoType + Sufix;
    end;

    procedure ValidateAutoNumber(pCodAutoNumber: Code[20])
    var
        TxtLastDigit: Text[1];
        IntPosition: Integer;
        Text001: Label '%1 must have only zeros and end with digit 1.';
    begin
        IF pCodAutoNumber = '' THEN
            EXIT;

        TxtLastDigit := COPYSTR(pCodAutoNumber, STRLEN(pCodAutoNumber), 1);

        IF TxtLastDigit <> '1' THEN
            ERROR(Text001, FIELDCAPTION("Auto Series No."));
    end;
}

