table 57095 "UNILEO Aux Table"
{

    fields
    {
        field(1; "Integer"; Integer)
        {
        }
        field(2; "Report Type"; enum "UNILEO Report Type")
        {
            Caption = 'Report Type';
        }
        field(3; Code1; Code[20])
        {
        }
        field(4; Description1; Text[250])
        {
        }
        field(5; Code2; Code[80])
        {
        }
        field(6; Description2; Text[250])
        {
        }
        field(7; "Column Option"; Enum "UNILEO Aux Table Col Type")
        {
            Caption = 'Column Option';
        }
        field(8; Amount1; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("G/L Entry".Amount WHERE("G/L Account No." = FIELD("GLAccount Filter 1"),
                                                        "Posting Date" = FIELD("Date Filter 1"),
                                                        "Rubric Code" = FIELD(Code2)));
            Editable = false;
            Caption = 'Amount1';

        }
        field(9; "Date Filter 1"; Date)
        {
            Caption = 'Date Filter 1';
            FieldClass = FlowFilter;
        }
        field(10; "GLAccount Filter 1"; Code[20])
        {
            FieldClass = FlowFilter;
        }
        field(11; Code3; Code[20])
        {
        }
        field(12; Code4; Code[20])
        {
        }
        field(13; GroupCode; Boolean)
        {
        }
        field(14; Amount2; Decimal)
        {
            CalcFormula = Sum("G/L Entry".Amount WHERE("G/L Account No." = FIELD("GLAccount Filter 1"),
                                                        "Posting Date" = FIELD("Date Filter 2"),
                                                        "Rubric Code" = FIELD(FILTER(Code2))));
            Caption = 'Amount2';
            FieldClass = FlowField;
        }
        field(15; "Date Filter 2"; Date)
        {
            Caption = 'Date Filter 2';
            FieldClass = FlowFilter;
        }
        field(16; "BA Debit Amount 1"; Decimal)
        {
        }
        field(17; "BA Credit Amount 1"; Decimal)
        {
        }
        field(18; "BA Debit Amount 2"; Decimal)
        {
        }
        field(19; "BA Credit Amount 2"; Decimal)
        {
        }
        field(20; "BA Debit Amount 3"; Decimal)
        {
        }
        field(21; "BA Credit Amount 3"; Decimal)
        {
        }
        field(22; "BA Debit Amount 4"; Decimal)
        {
        }
        field(23; "BA Credit Amount 4"; Decimal)
        {
        }
        field(24; "Amount 1"; Decimal)
        {
        }
        field(25; "Amount 2"; Decimal)
        {
        }
        field(26; "Amount 3"; Decimal)
        {
        }
        field(27; "Amount 4"; Decimal)
        {
        }
        field(28; "Amount 5"; Decimal)
        {
        }
        field(29; "Amount 6"; Decimal)
        {
        }
        field(30; "Amount 7"; Decimal)
        {
        }
        field(31; "Amount 8"; Decimal)
        {
        }
        field(32; "Amount 9"; Decimal)
        {
        }
        field(33; "Amount 10"; Decimal)
        {
        }
        field(34; "Amount 11"; Decimal)
        {
        }
        field(35; "Amount 12"; Decimal)
        {
        }
        field(36; "Amount 13"; Decimal)
        {
        }
        field(37; "Amount 14"; Decimal)
        {
        }
        field(38; "Amount 15"; Decimal)
        {
        }
        field(39; "Amount 16"; Decimal)
        {
        }
        field(40; "GL Account Filter Col 1"; Text[100])
        {
            Description = 'DAPL';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(41; "GL Account Filter Col 2"; Text[100])
        {
            Description = 'DAPL';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(42; "GL Account Filter Col 3"; Text[100])
        {
            Description = 'DAPL';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(43; "GL Account Filter Col 4"; Text[100])
        {
            Description = 'DAPL';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(44; "GL Account Filter Col 5"; Text[100])
        {
            Description = 'DAPL';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(45; "GL Account Filter Col 6"; Text[100])
        {
            Description = 'DAPL';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(46; "GL Account Filter Col 7"; Text[100])
        {
            Description = 'DAPL';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(47; "GL Account Filter Col 8"; Text[100])
        {
            Description = 'DAPL';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(48; "GL Account Filter Col 9"; Text[100])
        {
            Description = 'DAPL';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(49; "GL Account Filter Col 10"; Text[100])
        {
            Description = 'DAPL';
        }
        field(50; "GL Account Filter Col 11"; Text[100])
        {
            Description = 'DAPL';
        }
        field(51; "GL Account Filter Col 12"; Text[100])
        {
            Description = 'DAPL';
        }
        field(52; "GL Account Filter Col 13"; Text[100])
        {
            Description = 'DAPL';
        }
        field(53; Totaling; Text[250])
        {
            Caption = 'Totaling';
        }
        field(54; "N-1"; Boolean)
        {
            Description = 'DAPL';
        }
        field(55; "Reverse Sign 1"; Boolean)
        {
            Caption = 'Reverse Sign 1';
            Description = 'DAPL';
        }
        field(56; "Reverse Sign 2"; Boolean)
        {
            Caption = 'Reverse Sign 2';
            Description = 'DAPL';
        }
        field(57; "Reverse Sign 3"; Boolean)
        {
            Caption = 'Reverse Sign 3';
            Description = 'DAPL';
        }
        field(58; "Reverse Sign 4"; Boolean)
        {
            Caption = 'Reverse Sign 4';
            Description = 'DAPL';
        }
        field(59; "Reverse Sign 5"; Boolean)
        {
            Caption = 'Reverse Sign 5';
            Description = 'DAPL';
        }
        field(60; "Reverse Sign 6"; Boolean)
        {
            Caption = 'Reverse Sign 6';
            Description = 'DAPL';
        }
        field(61; "Reverse Sign 7"; Boolean)
        {
            Caption = 'Reverse Sign 7';
            Description = 'DAPL';
        }
        field(62; "Reverse Sign 8"; Boolean)
        {
            Caption = 'Reverse Sign 8';
            Description = 'DAPL';
        }
        field(63; "Reverse Sign 9"; Boolean)
        {
            Caption = 'Reverse Sign 9';
            Description = 'DAPL';
        }
        field(64; "Reverse Sign 10"; Boolean)
        {
            Caption = 'Reverse Sign 10';
            Description = 'DAPL';
        }
        field(65; "Reverse Sign 11"; Boolean)
        {
            Caption = 'Reverse Sign 11';
            Description = 'DAPL';
        }
        field(66; "Reverse Sign 12"; Boolean)
        {
            Caption = 'Reverse Sign 12';
            Description = 'DAPL';
        }
        field(67; "Reverse Sign 13"; Boolean)
        {
            Caption = 'Reverse Sign 13';
            Description = 'DAPL';
        }
        field(68; Bold; Boolean)
        {
            Description = 'DAPL';
        }
        field(69; Totaling2; Text[250])
        {
            Caption = 'Totaling 2';
        }
        field(100; "Setup Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(200; "GL Account Filter Col 14"; Text[100])
        {
            Description = 'DAPL';
        }
        field(201; "GL Account Filter Col 15"; Text[100])
        {
            Description = 'DAPL';
        }
        field(202; "GL Account Filter Col 16"; Text[100])
        {
            Description = 'DAPL';
        }
        field(203; "GL Account Filter Col 17"; Text[100])
        {
            Description = 'DAPL';
        }
        field(204; "GL Account Filter Col 18"; Text[100])
        {
            Description = 'DAPL';
        }
        field(205; "Reverse Sign 14"; Boolean)
        {
            Caption = 'Reverse Sign 14';
            Description = 'DAPL';
        }
        field(206; "Reverse Sign 15"; Boolean)
        {
            Caption = 'Reverse Sign 15';
            Description = 'DAPL';
        }
        field(207; "Reverse Sign 16"; Boolean)
        {
            Caption = 'Reverse Sign 16';
            Description = 'DAPL';
        }
        field(208; "Reverse Sign 17"; Boolean)
        {
            Caption = 'Reverse Sign 17';
            Description = 'DAPL';
        }
        field(209; "Reverse Sign 18"; Boolean)
        {
            Caption = 'Reverse Sign 18';
            Description = 'DAPL';
        }
        field(210; "Amount 17"; Decimal)
        {
        }
        field(211; "Amount 18"; Decimal)
        {
        }
        field(212; "Totaling Type"; Option)
        {
            Caption = 'Totaling Type';
            OptionCaption = 'Posting,Formula';
            OptionMembers = Posting,Formula;

            trigger OnValidate()
            begin
                VALIDATE(Totaling);
            end;
        }
        field(213; Show; Option)
        {
            Caption = 'Show';
            OptionCaption = 'Yes,No';
            OptionMembers = Yes,No;
        }
    }

    keys
    {
        key(Key1; Integer, "Report Type", Code1, "Setup Start Date")
        {
            Clustered = true;
        }
        key(Key2; "Report Type", "Setup Start Date")
        {
        }
        key(Key3; Code1)
        {
        }
        key(Key4; Integer, "Report Type", Code1)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Code1, Description1)
        {
        }
    }

    var
        CallLevel: Integer;
        Text020: Label 'Because of circular references, the program cannot calculate a formula.';

    procedure EvaluateExpression(IsUnileoExpression: Boolean; Expression: Text[250]; UNILEOAuxTable: Record "UNILEO Aux Table"; StartDate: Date; EndDate: Date): Decimal
    var
        Result: Decimal;
        Parantheses: Integer;
        Operator: Char;
        LeftOperand: Text[250];
        RightOperand: Text[250];
        LeftResult: Decimal;
        RightResult: Decimal;
        i: Integer;
        IsExpression: Boolean;
        IsFilter: Boolean;
        Operators: Text[8];
        OperatorNo: Integer;
        DivisionError: Boolean;
        PeriodError: Boolean;
        UnileoLine: Integer;
    begin
        Result := 0;
        IF NOT IsUnileoExpression THEN BEGIN
            IF HasValueBalance(DATE2DMY(StartDate, 3), Expression) THEN
                Result := GetBalanceAmounts(DATE2DMY(StartDate, 3), Expression)
            ELSE
                Result := GetGLAmounts(StartDate, EndDate, Expression);
            EXIT(Result);
        END;
        CallLevel := CallLevel + 1;
        IF CallLevel > 25 THEN
            ERROR(Text020);

        Expression := DELCHR(Expression, '<>', ' ');
        IF STRLEN(Expression) > 0 THEN BEGIN
            Parantheses := 0;
            IsExpression := FALSE;
            Operators := '+-*/^%[';
            OperatorNo := 1;
            REPEAT
                i := STRLEN(Expression);
                REPEAT
                    IF Expression[i] = '(' THEN
                        Parantheses := Parantheses + 1
                    ELSE
                        IF Expression[i] = ')' THEN
                            Parantheses := Parantheses - 1;
                    IF (Parantheses = 0) AND (Expression[i] = Operators[OperatorNo]) THEN
                        IsExpression := TRUE
                    ELSE
                        i := i - 1;
                UNTIL IsExpression OR (i <= 0);
                IF NOT IsExpression THEN
                    OperatorNo := OperatorNo + 1;
            UNTIL (OperatorNo > STRLEN(Operators)) OR IsExpression;
            IF IsExpression THEN BEGIN
                IF i > 1 THEN
                    LeftOperand := COPYSTR(Expression, 1, i - 1)
                ELSE
                    LeftOperand := '';
                IF i < STRLEN(Expression) THEN
                    RightOperand := COPYSTR(Expression, i + 1)
                ELSE
                    RightOperand := '';
                Operator := Expression[i];
                LeftResult :=
                  EvaluateExpression(
                    IsUnileoExpression, LeftOperand, UNILEOAuxTable, StartDate, EndDate);
                RightResult :=
                  EvaluateExpression(
                    IsUnileoExpression, RightOperand, UNILEOAuxTable, StartDate, EndDate);
                CASE Operator OF
                    '^':
                        Result := POWER(LeftResult, RightResult);
                    '%':
                        IF RightResult = 0 THEN BEGIN
                            Result := 0;
                            DivisionError := TRUE;
                        END ELSE
                            Result := 100 * LeftResult / RightResult;
                    '*':
                        Result := LeftResult * RightResult;
                    '/':
                        IF RightResult = 0 THEN BEGIN
                            Result := 0;
                            DivisionError := TRUE;
                        END ELSE
                            Result := LeftResult / RightResult;
                    '+':
                        Result := LeftResult + RightResult;
                    '-':
                        Result := LeftResult - RightResult;
                    '[':
                        IF RightResult >= 0 THEN
                            Result := LeftResult + RightResult
                        ELSE
                            Result := LeftResult;
                END;
            END ELSE
                IF (Expression[1] = '(') AND (Expression[STRLEN(Expression)] = ')') THEN
                    Result :=
                      EvaluateExpression(
                        IsUnileoExpression, COPYSTR(Expression, 2, STRLEN(Expression) - 2), UNILEOAuxTable, StartDate, EndDate)

                ELSE BEGIN
                    IsFilter :=
                      (STRPOS(Expression, '..') +
                       STRPOS(Expression, '|') +
                       STRPOS(Expression, '<') +
                       STRPOS(Expression, '>') +
                       STRPOS(Expression, '&') +
                       STRPOS(Expression, '=') > 0);
                    IF (STRLEN(Expression) > 10) AND (NOT IsFilter) THEN
                        EVALUATE(Result, Expression)
                    ELSE
                        IF IsUnileoExpression THEN BEGIN
                            UNILEOAuxTable.SETRANGE("Report Type", UNILEOAuxTable."Report Type");
                            UNILEOAuxTable.SETFILTER(Code1, Expression);
                            UNILEOAuxTable.SETRANGE("Setup Start Date", UNILEOAuxTable."Setup Start Date");
                            UnileoLine := UNILEOAuxTable.Integer;
                            IF UNILEOAuxTable.FINDSET THEN
                                REPEAT
                                    IF UNILEOAuxTable.Integer <> UnileoLine THEN BEGIN
                                        IF (UNILEOAuxTable.Code2 <> '') THEN
                                            Result := EvaluateExpression(UNILEOAuxTable."Totaling Type" = UNILEOAuxTable."Totaling Type"::Formula, UNILEOAuxTable.Code2, UNILEOAuxTable, StartDate, EndDate)
                                    END;
                                UNTIL UNILEOAuxTable.NEXT = 0
                        END ELSE BEGIN
                            IF HasValueBalance(DATE2DMY(StartDate, 3), Expression) THEN
                                Result := GetBalanceAmounts(DATE2DMY(StartDate, 3), Expression)
                            ELSE
                                Result := GetGLAmounts(StartDate, EndDate, Expression);
                        END;
                END;
        END;
        CallLevel := CallLevel - 1;
        EXIT(Result);
    end;

    local procedure GetBalanceAmounts(lYear: Integer; lCode: Text) Amount: Decimal
    var
        ManagementBalances: Record "UNILEO Management Balances";
    begin
        CLEAR(Amount);
        ManagementBalances.RESET;
        ManagementBalances.SETRANGE(Year, lYear);
        ManagementBalances.SETFILTER("Rubric Code", lCode);
        ManagementBalances.CALCSUMS(AmountOpen);
        EXIT(ManagementBalances.AmountOpen);
    end;

    local procedure GetGLAmounts(lStartDate: Date; lEndDate: Date; lCode: Text): Decimal
    var
        GLEntry: Record "G/L Entry";
        DateSetup: Date;
        UNILEOMgt: Codeunit "UNILEO Management";
        UNILEOAuxTable: Record "UNILEO Aux Table";
        lAccountFilter: Text;
        lDateFilter: Text;
    begin
        DateSetup := UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DDORC2, lStartDate);
        UNILEOAuxTable.RESET;
        UNILEOAuxTable.SETRANGE("Report Type", "UNILEO Report Type"::DDORC2);
        UNILEOAuxTable.SETRANGE("Setup Start Date", DateSetup);
        IF UNILEOAuxTable.FINDSET THEN
            REPEAT
                IF lAccountFilter <> '' THEN
                    lAccountFilter := lAccountFilter + '|' + UNILEOAuxTable.Totaling
                ELSE
                    lAccountFilter := UNILEOAuxTable.Totaling;
            UNTIL UNILEOAuxTable.NEXT = 0;

        lDateFilter := FORMAT(lStartDate) + '..' + FORMAT(lEndDate);
        GLEntry.RESET;
        GLEntry.SETFILTER("G/L Account No.", lAccountFilter);
        GLEntry.SETFILTER("Posting Date", lDateFilter);
        GLEntry.SETFILTER("Rubric Code", lCode);
        GLEntry.CALCSUMS(Amount);
        EXIT(GLEntry.Amount);
    end;

    local procedure HasValueBalance(lYear: Integer; lCode: Text): Boolean
    var
        ManagementBalances: Record "UNILEO Management Balances";
    begin
        ManagementBalances.RESET;
        ManagementBalances.SETRANGE(Year, lYear);
        ManagementBalances.SETFILTER("Rubric Code", lCode);
        EXIT(not ManagementBalances.IsEmpty);
    end;
}

