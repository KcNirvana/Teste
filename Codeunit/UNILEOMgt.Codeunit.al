codeunit 57009 "UNILEO Management"
{
    procedure CheckChartAccPCC()
    var
        Window: Dialog;
        BudgetReportConfig: Record "Budget Report Configuration";
        GLAccountUNILEOPCC: Record "UNILEO G/L Account UNILEO-PCC";
        LineCounter: Integer;
        NoOfRecords: Integer;
        GLAccountUNILEOPCC2: Record "UNILEO G/L Account UNILEO-PCC";
        Text001: Label 'This function checks the consistency of and completes the PCC Chart of Accounts:\';
        Text002: Label '- Checks that a corresponding balance account exists for every posting account.\';
        Text003: Label '- Assigns values to the following fields: Income/Balance, Account Type, Totaling and Debit/Credit.\';
        Text004: Label 'Do you want to Check the PCC Chart of Accounts?';
        Text005: Label 'Checking the PCC Chart of Accounts #1########## @2@@@@@@@@@@@@@';
        Text006: Label 'Missing group %1 - Account No. %2';
        Text007: Label 'The PCC Chart of Accounts is correct.';
    begin
        BudgetReportConfig.Get();
        BudgetReportConfig.TestField("Check Chart Of Accounts");

        IF NOT CONFIRM(Text001 + Text002 + Text003 + Text004, true) then
            exit;

        Window.OPEN(Text005);
        GLAccountUNILEOPCC.RESET;
        GLAccountUNILEOPCC.SETRANGE("G/L Account Type", "UNILEO PCC GLAccount Type"::PCC);
        LineCounter := 0;
        NoOfRecords := GLAccountUNILEOPCC.COUNT;
        IF NoOfRecords <> 0 THEN BEGIN
            IF GLAccountUNILEOPCC.FindSet() THEN
                REPEAT
                    Window.UPDATE(1, GLAccountUNILEOPCC."No.");
                    GLAccountUNILEOPCC.TESTFIELD(Name);
                    IF STRLEN(GLAccountUNILEOPCC."No.") = 1 THEN
                        GLAccountUNILEOPCC.VALIDATE("Account Type", GLAccountUNILEOPCC."Account Type"::A);
                    IF GLAccountUNILEOPCC."Account Type" = GLAccountUNILEOPCC."Account Type"::M THEN BEGIN
                        CLEAR(GLAccountUNILEOPCC2);
                        GLAccountUNILEOPCC2.SETRANGE("G/L Account Type", "UNILEO PCC GLAccount Type"::PCC);
                        GLAccountUNILEOPCC2.SETFILTER("No.", '%1&<> %2', GLAccountUNILEOPCC."No." + '*', GLAccountUNILEOPCC."No.");
                        IF GLAccountUNILEOPCC2.FindFirst() THEN
                            GLAccountUNILEOPCC.VALIDATE("Account Type", GLAccountUNILEOPCC."Account Type"::A)
                        ELSE
                            GLAccountUNILEOPCC.VALIDATE("Account Type", GLAccountUNILEOPCC."Account Type"::M);
                    END;

                    IF GLAccountUNILEOPCC."Account Type" = GLAccountUNILEOPCC."Account Type"::A THEN
                        GLAccountUNILEOPCC.Totaling := GLAccountUNILEOPCC."No." + '..' + PADSTR(GLAccountUNILEOPCC."No.", 20, '9')
                    ELSE BEGIN
                        CLEAR(GLAccountUNILEOPCC2);
                        GLAccountUNILEOPCC2.SETRANGE("G/L Account Type", "UNILEO PCC GLAccount Type"::PCC);
                        GLAccountUNILEOPCC2.SETFILTER("No.", '<>%1 & %2', GLAccountUNILEOPCC."No." + '*', COPYSTR(GLAccountUNILEOPCC."No.", 1, 1) + '*');
                        IF NOT GLAccountUNILEOPCC2.FindFirst() THEN
                            ERROR(Text006, COPYSTR(GLAccountUNILEOPCC."No.", 1, 3), GLAccountUNILEOPCC."No.");

                        IF COPYSTR(GLAccountUNILEOPCC."No.", 1, 1) IN ['6', '7'] THEN
                            GLAccountUNILEOPCC."Income/Balance" := GLAccountUNILEOPCC."Income/Balance"::"Income Statement"
                        ELSE
                            IF COPYSTR(GLAccountUNILEOPCC."No.", 1, 1) <> '8' THEN
                                GLAccountUNILEOPCC."Income/Balance" := GLAccountUNILEOPCC."Income/Balance"::"Balance Sheet";
                    END;
                    GLAccountUNILEOPCC.MODIFY;
                    LineCounter := LineCounter + 1;
                    Window.UPDATE(2, ROUND(LineCounter / NoOfRecords * 10000, 1));
                UNTIL GLAccountUNILEOPCC.NEXT = 0;

        END;
        Window.CLOSE;
        MESSAGE(Text007);
    end;

    procedure CheckChartAccUNILEO()
    var
        Window: Dialog;
        BudgetReportConfig: Record "Budget Report Configuration";
        GLAccountUNILEOPCC: Record "UNILEO G/L Account UNILEO-PCC";
        LineCounter: Integer;
        NoOfRecords: Integer;
        GLAccountUNILEOPCC2: Record "UNILEO G/L Account UNILEO-PCC";
        Text001: Label 'This function checks the consistency of and completes the UNILEO Chart of Accounts:\';
        Text002: Label '- Checks that a corresponding balance account exists for every posting account.\';
        Text003: Label '- Assigns values to the following fields: Income/Balance, Account Type, Totaling and Debit/Credit.\';
        Text004: Label 'Do you want to Check the UNILEO Chart of Accounts?';
        Text005: Label 'Checking the UNILEO Chart of Accounts #1########## @2@@@@@@@@@@@@@';
        Text006: Label 'Missing group %1 - Account No. %2';
        Text007: Label 'The UNILEO Chart of Accounts is correct.';
    begin
        BudgetReportConfig.Get();
        BudgetReportConfig.TestField("Check Chart Of Accounts");

        IF NOT CONFIRM(Text001 + Text002 + Text003 + Text004, true) then
            exit;

        Window.OPEN(Text005);
        GLAccountUNILEOPCC.RESET;
        GLAccountUNILEOPCC.SETRANGE("G/L Account Type", "UNILEO PCC GLAccount Type"::UNILEO);
        LineCounter := 0;
        NoOfRecords := GLAccountUNILEOPCC.COUNT;
        IF NoOfRecords <> 0 THEN BEGIN
            IF GLAccountUNILEOPCC.FindSet() THEN
                REPEAT
                    Window.UPDATE(1, GLAccountUNILEOPCC."No.");
                    GLAccountUNILEOPCC.TESTFIELD(Name);
                    IF STRLEN(GLAccountUNILEOPCC."No.") = 1 THEN
                        GLAccountUNILEOPCC.VALIDATE("Account Type", GLAccountUNILEOPCC."Account Type"::A);
                    IF GLAccountUNILEOPCC."Account Type" = GLAccountUNILEOPCC."Account Type"::M THEN BEGIN
                        CLEAR(GLAccountUNILEOPCC2);
                        GLAccountUNILEOPCC2.SETRANGE("G/L Account Type", "UNILEO PCC GLAccount Type"::UNILEO);
                        GLAccountUNILEOPCC2.SETFILTER("No.", '%1&<> %2', GLAccountUNILEOPCC."No." + '*', GLAccountUNILEOPCC."No.");
                        IF GLAccountUNILEOPCC2.FindFirst() THEN
                            GLAccountUNILEOPCC.VALIDATE("Account Type", GLAccountUNILEOPCC."Account Type"::A)
                        ELSE
                            GLAccountUNILEOPCC.VALIDATE("Account Type", GLAccountUNILEOPCC."Account Type"::M);
                    END;

                    IF GLAccountUNILEOPCC."Account Type" = GLAccountUNILEOPCC."Account Type"::A THEN
                        GLAccountUNILEOPCC.Totaling := GLAccountUNILEOPCC."No." + '..' + PADSTR(GLAccountUNILEOPCC."No.", 20, '9')
                    ELSE BEGIN
                        CLEAR(GLAccountUNILEOPCC2);
                        GLAccountUNILEOPCC2.SETRANGE("G/L Account Type", "UNILEO PCC GLAccount Type"::UNILEO);
                        GLAccountUNILEOPCC2.SETFILTER("No.", '<>%1 & %2', GLAccountUNILEOPCC."No." + '*', COPYSTR(GLAccountUNILEOPCC."No.", 1, 1) + '*');
                        IF NOT GLAccountUNILEOPCC2.FindFirst() THEN
                            ERROR(Text006, COPYSTR(GLAccountUNILEOPCC."No.", 1, 3), GLAccountUNILEOPCC."No.");

                        IF COPYSTR(GLAccountUNILEOPCC."No.", 1, 1) IN ['6', '7'] THEN
                            GLAccountUNILEOPCC."Income/Balance" := GLAccountUNILEOPCC."Income/Balance"::"Income Statement"
                        ELSE
                            IF COPYSTR(GLAccountUNILEOPCC."No.", 1, 1) <> '8' THEN
                                GLAccountUNILEOPCC."Income/Balance" := GLAccountUNILEOPCC."Income/Balance"::"Balance Sheet";
                    END;
                    GLAccountUNILEOPCC.MODIFY;
                    LineCounter := LineCounter + 1;
                    Window.UPDATE(2, ROUND(LineCounter / NoOfRecords * 10000, 1));
                UNTIL GLAccountUNILEOPCC.NEXT = 0;

        END;
        Window.CLOSE;
        MESSAGE(Text007);
    end;

    procedure IndentPCC()
    var
        Text001: Label 'This function updates the indentation of all the PCC Accounts in the chart of accounts.\';
        Text002: Label '\\Do you want to indent the PCC chart of accounts?';
        Text003: Label 'Indenting the PCC Chart of Accounts #1##########';
        Window: Dialog;
        LineCounter: Integer;
        NoOfRecords: Integer;
        GLAccountUNILEOPCC: Record "UNILEO G/L Account UNILEO-PCC";
    begin
        IF NOT CONFIRM(Text001 + Text002, true) then
            exit;

        Window.OPEN(Text003);
        GLAccountUNILEOPCC.Reset();
        GLAccountUNILEOPCC.SetRange("G/L Account Type", "UNILEO PCC GLAccount Type"::PCC);
        NoOfRecords := GLAccountUNILEOPCC.COUNT;
        IF NoOfRecords <> 0 THEN
            IF GLAccountUNILEOPCC.FindSet() THEN
                REPEAT
                    Window.UPDATE(1, GLAccountUNILEOPCC."No.");
                    GLAccountUNILEOPCC.TESTFIELD(Name);
                    GLAccountUNILEOPCC.Indentation := STRLEN(GLAccountUNILEOPCC."No.") - 1;
                    GLAccountUNILEOPCC.MODIFY;
                UNTIL GLAccountUNILEOPCC.NEXT = 0;
        Window.CLOSE;
    end;

    procedure IndentUNILEO()
    var
        Text001: Label 'This function updates the indentation of all the UNILEO Accounts in the chart of accounts.\';
        Text002: Label '\\Do you want to indent the UNILEO chart of accounts?';
        Text003: Label 'Indenting the UNILEO Chart of Accounts #1##########';
        Window: Dialog;
        LineCounter: Integer;
        NoOfRecords: Integer;
        GLAccountUNILEOPCC: Record "UNILEO G/L Account UNILEO-PCC";
    begin
        IF NOT CONFIRM(Text001 + Text002, true) then
            exit;

        Window.OPEN(Text003);
        GLAccountUNILEOPCC.Reset();
        GLAccountUNILEOPCC.SetRange("G/L Account Type", "UNILEO PCC GLAccount Type"::UNILEO);
        NoOfRecords := GLAccountUNILEOPCC.COUNT;
        IF NoOfRecords <> 0 THEN
            IF GLAccountUNILEOPCC.FindSet() THEN
                REPEAT
                    Window.UPDATE(1, GLAccountUNILEOPCC."No.");
                    GLAccountUNILEOPCC.TESTFIELD(Name);
                    GLAccountUNILEOPCC.Indentation := STRLEN(GLAccountUNILEOPCC."No.") - 1;
                    GLAccountUNILEOPCC.MODIFY;
                UNTIL GLAccountUNILEOPCC.NEXT = 0;
        Window.CLOSE;
    end;

    procedure FormatDecimal2Text(DecimalValue: Decimal): Text
    begin
        IF DecimalValue < 0 THEN
            DecimalValue := DecimalValue * (-1);
        EXIT(FORMAT(DecimalValue, 0, '<Precision,2:2><Integer><Decimals><Comma,.>'));
    end;

    procedure DAPLGetFieldValue(FieldNo: Integer; var UNILEOAuxTable: Record "UNILEO Aux Table"; pDStartDate: Date; pDEndDate: Date; pDPreviousDate: Date; pDPreviousStartDate: Date) FieldAmount: Decimal
    var
        GLEntry: Record "G/L Entry";
        UNILEOAuxTable2: Record "UNILEO Aux Table";
        UNILEOReportType: Enum "UNILEO Report Type";
    begin
        UNILEOReportType := UNILEOReportType::DAPL;
        CLEAR(FieldAmount);
        CLEAR(GLEntry);
        CLEAR(UNILEOAuxTable2);
        GLEntry.SETCURRENTKEY("G/L Account No.", "Posting Date", "PTSS Acc: cash-flow code");
        UNILEOAuxTable2.SETRANGE("Report Type", UNILEOReportType);
        UNILEOAuxTable2.SETRANGE("Setup Start Date", GetLastDateSetup(UNILEOReportType, pDStartDate));
        CASE FieldNo OF
            1:
                BEGIN
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 1");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 1" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            2:
                BEGIN
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 2");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 2" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            3:
                BEGIN
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 3");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 3" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            4:
                BEGIN
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 4");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 4" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            5:
                BEGIN
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 5");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 5" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            6:
                BEGIN
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 6");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 6" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            7:
                BEGIN
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 7");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 7" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            8:
                BEGIN
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 8");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 8" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            9:
                BEGIN
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 9");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 9" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            10:
                BEGIN
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 10");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", pDPreviousStartDate, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 10" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            11:
                BEGIN
                    UNILEOAuxTable2.SETRANGE("Report Type", UNILEOAuxTable."Report Type"::DAPL);
                    UNILEOAuxTable2.SETRANGE(Code1, 'TEMP');
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            FieldAmount += UNILEOAuxTable2."Amount 11";
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            13:
                BEGIN
                    UNILEOAuxTable2.SETRANGE("Report Type", UNILEOAuxTable."Report Type"::DAPL);
                    UNILEOAuxTable2.SETRANGE(Code1, 'TEMP');
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            FieldAmount += UNILEOAuxTable2."Amount 13";
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            14:
                BEGIN
                    UNILEOAuxTable2.SETRANGE("Report Type", UNILEOAuxTable."Report Type"::DAPL);
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 14");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 14" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            15:
                BEGIN
                    UNILEOAuxTable2.SETRANGE("Report Type", UNILEOAuxTable."Report Type"::DAPL);
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 15");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 15" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            16:
                BEGIN
                    UNILEOAuxTable2.SETRANGE("Report Type", UNILEOAuxTable."Report Type"::DAPL);
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 16");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 16" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
            17:
                BEGIN
                    UNILEOAuxTable2.SETRANGE("Report Type", UNILEOReportType);
                    IF UNILEOAuxTable.Totaling <> '' THEN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling)
                    ELSE
                        UNILEOAuxTable2.SETRANGE(Integer, UNILEOAuxTable.Integer);
                    IF UNILEOAuxTable2.FINDSET THEN
                        REPEAT
                            GLEntry.SETFILTER("G/L Account No.", UNILEOAuxTable2."GL Account Filter Col 17");
                            IF UNILEOAuxTable2."N-1" THEN
                                GLEntry.SETRANGE("Posting Date", 0D, pDPreviousDate)
                            ELSE
                                GLEntry.SETRANGE("Posting Date", pDStartDate, pDEndDate);
                            GLEntry.CALCSUMS(Amount);
                            IF UNILEOAuxTable2."Reverse Sign 17" THEN
                                FieldAmount += -GLEntry.Amount
                            ELSE
                                FieldAmount += GLEntry.Amount;
                        UNTIL UNILEOAuxTable2.NEXT = 0;
                END;
        END;

        EXIT(FieldAmount);
    end;

    procedure DAPLGetFieldTotal(FieldNo: Integer; var UNILEOAuxTable: Record "UNILEO Aux Table"; var UNILEOAuxTable2: Record "UNILEO Aux Table" temporary) FieldAmount: Decimal
    var
        GLEntry: Record "G/L Entry";
    begin
        CLEAR(FieldAmount);
        CLEAR(GLEntry);

        GLEntry.SETCURRENTKEY("G/L Account No.", "Posting Date", "PTSS Acc: cash-flow code");
        CASE FieldNo OF
            11:
                BEGIN
                    IF UNILEOAuxTable.Totaling = '' THEN BEGIN
                        FieldAmount := UNILEOAuxTable2."Amount 1" + UNILEOAuxTable2."Amount 2" + UNILEOAuxTable2."Amount 3" + UNILEOAuxTable2."Amount 4" +
                                       UNILEOAuxTable2."Amount 5" + UNILEOAuxTable2."Amount 6" + UNILEOAuxTable2."Amount 7" + UNILEOAuxTable2."Amount 8" +
                                       UNILEOAuxTable2."Amount 9" + UNILEOAuxTable2."Amount 10" + UNILEOAuxTable2."Amount 14" + UNILEOAuxTable2."Amount 15" +
                                       UNILEOAuxTable2."Amount 16" + UNILEOAuxTable2."Amount 17";
                    END ELSE BEGIN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling);
                        IF UNILEOAuxTable2.FINDSET THEN
                            REPEAT
                                FieldAmount += UNILEOAuxTable2."Amount 11";
                            UNTIL UNILEOAuxTable2.NEXT = 0;
                    END;
                END;
            12:
                BEGIN
                    IF UNILEOAuxTable.Totaling = '' THEN BEGIN
                        FieldAmount := 0.0001;
                    END ELSE BEGIN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling);
                        IF UNILEOAuxTable2.FINDSET THEN
                            REPEAT
                                FieldAmount += UNILEOAuxTable2."Amount 12";
                            UNTIL UNILEOAuxTable2.NEXT = 0;
                    END;
                END;
            13:
                BEGIN
                    IF UNILEOAuxTable.Totaling = '' THEN BEGIN
                        FieldAmount := UNILEOAuxTable2."Amount 11" + UNILEOAuxTable2."Amount 12";
                    END ELSE BEGIN
                        UNILEOAuxTable2.SETFILTER(Integer, UNILEOAuxTable.Totaling);
                        IF UNILEOAuxTable2.FINDSET THEN
                            REPEAT
                                FieldAmount += UNILEOAuxTable2."Amount 13";
                            UNTIL UNILEOAuxTable2.NEXT = 0;
                    END;
                END;
        END;

        EXIT(FieldAmount);
    end;

    procedure WeekStartEndDate(var StartDate: Date; var EndDate: Date; WeekNumber: Integer; YearNumber: Integer)
    begin
        IF (WeekNumber = 52) THEN BEGIN
            StartDate := DWY2DATE(1, WeekNumber, YearNumber);
            EndDate := CALCDATE('<CW>', StartDate);
            IF CALCDATE('+1D', EndDate) = DMY2DATE(31, 12, YearNumber) THEN BEGIN  //dia 31 na 2ª
                EndDate := CALCDATE('+1D', EndDate);
                EXIT;
            END;
            IF DWY2DATE(7, WeekNumber, YearNumber) > DMY2DATE(31, 12, YearNumber) THEN BEGIN // semana termina no ano seguinte
                EndDate := DMY2DATE(31, 12, YearNumber);
                EXIT;
            END;
        END;

        IF (WeekNumber = 53) THEN BEGIN
            IF DATE2DWY(DMY2DATE(31, 12, YearNumber), 1) IN [2, 3, 4] THEN BEGIN
                StartDate := DWY2DATE(7, WeekNumber - 1, YearNumber) + 1;
                EndDate := DMY2DATE(31, 12, YearNumber);
                EXIT;
            END;
        END;

        IF (WeekNumber = 1) THEN BEGIN
            StartDate := DWY2DATE(1, WeekNumber, YearNumber);
            EndDate := CALCDATE('<CW>', StartDate);
            StartDate := DMY2DATE(1, 1, YearNumber);
            EXIT;
        END;

        StartDate := DWY2DATE(1, WeekNumber, YearNumber);
        EndDate := CALCDATE('<CW>', StartDate);
    end;

    procedure GetLastDateSetup(ReportType: Enum "UNILEO Report Type"; StartPeriodDate: Date): Date
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
        Text001: Label 'There is no setup for this period (%1).';
    begin
        UNILEOAuxTable.Reset();
        UNILEOAuxTable.SetCurrentKey("Report Type", "Setup Start Date");
        UNILEOAuxTable.SetRange("Report Type", ReportType);
        UNILEOAuxTable.SetFilter("Setup Start Date", '<=%1', StartPeriodDate);
        IF UNILEOAuxTable.FindLast() THEN
            EXIT(UNILEOAuxTable."Setup Start Date")
        ELSE
            ERROR(Text001, StartPeriodDate);
    end;

    procedure UpdateGLAccount()
    var
        GLAccount: Record "G/L Account";
        PCCUnileo: Record "UNILEO G/L Account PCC-UNILEO";
        Text001: Label 'Update done.';
    begin
        PCCUnileo.RESET;
        PCCUnileo.SETRANGE(PCCUnileo.Type, PCCUnileo.Type::Nav2PCC);
        IF PCCUnileo.FINDSET THEN BEGIN
            REPEAT
                IF GLAccount.GET(PCCUnileo."Account PCC") THEN BEGIN
                    IF GLAccount."Account Type" = GLAccount."Account Type"::Posting THEN BEGIN
                        GLAccount.CodeDot_PCC := PCCUnileo."Account UNILEO";
                        GLAccount.MODIFY;
                    END;
                END;
            UNTIL PCCUnileo.NEXT = 0;
        END;

        GLAccount.RESET;
        GLAccount.SETRANGE("Account Type", GLAccount."Account Type"::Total);
        GLAccount.MODIFYALL(CodeDot_PCC, '');

        MESSAGE(Text001);
    end;


    procedure CalculateBABalance(Year: Integer)
    var
        GLAccUNILEOPCC: Record "UNILEO G/L Account UNILEO-PCC";
        GLAccount: Record "G/L Account";
        BudgetCombDimensions: Query "UNILEO Budget Dimensions";
        TimeInitial: DateTime;
        TimeFinal: DateTime;
        StartDate: Date;
        EndDate: Date;
        BABalances: Record "UNILEO BA Balances";
        Window: Dialog;
        TotalRecNo: Integer;
        RecNo: Integer;
        TotalRecNo2: Integer;
        RecNo2: Integer;
        Text001: Label 'Calculating...\\';
        Text002: Label 'Bugdet Accounts';
        Text003: Label 'Financial Accounts';
        Text004: Label 'Do you want to upload balances for the year %1?';
        Text005: Label 'The year cant be empty';
    begin
        IF Year = 0 THEN
            ERROR(Text005);

        IF NOT CONFIRM(Text004, FALSE, FORMAT(Year)) THEN
            EXIT;

        Window.OPEN(
          Text001 +
          '#1###################################################\' +
          'Conta PCC #2############# @4@@@@@@@@@@@@@@@@@@@@@@@@@\' +
          'Conta     #3#############');

        BABalances.RESET;
        BABalances.SETRANGE(Year, Year);
        BABalances.DELETEALL;

        Window.UPDATE(1, Text002);

        StartDate := DMY2DATE(1, 1, Year);
        EndDate := DMY2DATE(31, 12, Year);
        TimeInitial := CREATEDATETIME(TODAY, TIME);
        GLAccUNILEOPCC.RESET;
        GLAccUNILEOPCC.SETCURRENTKEY("G/L Account Type", "No.");
        GLAccUNILEOPCC.SETRANGE("G/L Account Type", GLAccUNILEOPCC."G/L Account Type"::PCC);
        GLAccUNILEOPCC.SETRANGE("Account Type", GLAccUNILEOPCC."Account Type"::M);
        GLAccUNILEOPCC.SETFILTER("No.", '0*');
        IF GLAccUNILEOPCC.FINDSET THEN BEGIN
            Window.UPDATE(4, 0);
            TotalRecNo := GLAccUNILEOPCC.COUNT;
            RecNo := 0;
            REPEAT
                RecNo := RecNo + 1;
                Window.UPDATE(2, GLAccUNILEOPCC."No.");
                Window.UPDATE(4, ROUND(RecNo / TotalRecNo * 10000, 1));
                GLAccount.RESET;
                GLAccount.SETRANGE(CodeDot_PCC, GLAccUNILEOPCC."No.");
                IF GLAccount.FINDSET THEN
                    REPEAT
                        Window.UPDATE(3, GLAccount."No.");
                        BudgetCombDimensions.OPEN;
                        WHILE BudgetCombDimensions.READ DO BEGIN
                            IF (OrcHaveMov(GLAccount."No.", StartDate, EndDate, BudgetCombDimensions.Global_Dimension_1_Code, BudgetCombDimensions.Budget_Dimension_3_Code)
                                OR OrcHaveOpenEntries(GLAccount."No.", StartDate, BudgetCombDimensions.Global_Dimension_1_Code, BudgetCombDimensions.Budget_Dimension_3_Code)) THEN BEGIN
                                FillOrcBalanceEntries(Year, GLAccUNILEOPCC."No.", GLAccount."No.", BudgetCombDimensions.Global_Dimension_1_Code, BudgetCombDimensions.Budget_Dimension_3_Code, StartDate, EndDate);
                            END;
                        END;
                        BudgetCombDimensions.CLOSE;
                    UNTIL GLAccount.NEXT = 0;
            UNTIL GLAccUNILEOPCC.NEXT = 0;
        END;
        Window.UPDATE(4, 10000);

        Window.UPDATE(1, Text003);

        GLAccUNILEOPCC.RESET;
        GLAccUNILEOPCC.SETCURRENTKEY("G/L Account Type", "No.");
        GLAccUNILEOPCC.SETRANGE("G/L Account Type", GLAccUNILEOPCC."G/L Account Type"::PCC);
        GLAccUNILEOPCC.SETRANGE("Account Type", GLAccUNILEOPCC."Account Type"::M);
        GLAccUNILEOPCC.SETFILTER("No.", '<>0*');
        IF GLAccUNILEOPCC.FINDSET THEN BEGIN
            Window.UPDATE(4, 0);
            TotalRecNo := GLAccUNILEOPCC.COUNT;
            RecNo := 0;
            REPEAT
                RecNo := RecNo + 1;
                Window.UPDATE(2, GLAccUNILEOPCC."No.");
                Window.UPDATE(4, ROUND(RecNo / TotalRecNo * 10000, 1));
                GLAccount.RESET;
                GLAccount.SETRANGE(CodeDot_PCC, GLAccUNILEOPCC."No.");
                IF GLAccount.FINDSET THEN
                    REPEAT
                        Window.UPDATE(3, GLAccount."No.");
                        IF (FinHaveMov(GLAccount."No.", StartDate, EndDate) OR FinHaveOpenEntries(GLAccount."No.", StartDate)) THEN BEGIN
                            FillFinBalanceEntries(Year, GLAccUNILEOPCC."No.", GLAccount."No.", StartDate, EndDate);
                        END;
                    UNTIL GLAccount.NEXT = 0;
            UNTIL GLAccUNILEOPCC.NEXT = 0;
        END;

        Window.UPDATE(4, 10000);
        Window.CLOSE;
        TimeFinal := CREATEDATETIME(TODAY, TIME);
        MESSAGE(FORMAT(TimeFinal - TimeInitial));
    end;

    local procedure OrcHaveMov(GLNo: Code[20]; StartDate: Date; EndDate: Date; Dim1: Code[20]; Dim3: Code[20]): Boolean
    var
        GLEntry2: Record "G/L Entry";
    begin
        GLEntry2.RESET;
        GLEntry2.SETCURRENTKEY("G/L Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date");
        GLEntry2.SETRANGE("Global Dimension 1 Code", Dim1);
        GLEntry2.SETRANGE("Shortcut Dimension 3 Code", Dim3);
        GLEntry2.SETRANGE("G/L Account No.", GLNo);
        GLEntry2.SETFILTER("Posting Date", '..%1', EndDate);
        EXIT(GLEntry2.FINDFIRST);
    end;

    local procedure OrcHaveOpenEntries(GLNo: Code[20]; StartDate: Date; Dim1: Code[20]; Dim3: Code[20]): Boolean
    var
        GLEntry2: Record "G/L Entry";
    begin
        GLEntry2.RESET;
        GLEntry2.SETCURRENTKEY("G/L Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date");
        GLEntry2.SETRANGE("Global Dimension 1 Code", Dim1);
        GLEntry2.SETRANGE("Shortcut Dimension 3 Code", Dim3);
        GLEntry2.SETRANGE("G/L Account No.", GLNo);
        GLEntry2.SETFILTER("Posting Date", '..%1', CLOSINGDATE(CALCDATE('-1D', StartPeriod(StartDate))));
        EXIT(GLEntry2.FINDFIRST);
    end;

    local procedure FinHaveMov(GLNo: Code[20]; StartDate: Date; EndDate: Date): Boolean
    var
        GLEntry2: Record "G/L Entry";
    begin
        GLEntry2.RESET;
        GLEntry2.SetCurrentKey("G/L Account No.", "Posting Date");
        GLEntry2.SETFILTER("Posting Date", '..%1', EndDate);
        GLEntry2.SETRANGE("G/L Account No.", GLNo);
        EXIT(GLEntry2.FINDFIRST);
    end;

    local procedure FinHaveOpenEntries(GLNo: Code[20]; StartDate: Date): Boolean
    var
        GLEntry2: Record "G/L Entry";
    begin
        GLEntry2.RESET;
        GLEntry2.SetCurrentKey("G/L Account No.", "Posting Date");
        GLEntry2.SETFILTER("Posting Date", '..%1', CLOSINGDATE(CALCDATE('-1D', StartPeriod(StartDate))));
        GLEntry2.SETRANGE("G/L Account No.", GLNo);
        EXIT(GLEntry2.FINDFIRST);
    end;

    local procedure FillOrcBalanceEntries(BalanceYear: Integer; GLNoPCC: Code[20]; GLNo: Code[20]; Dim1: Code[20]; Dim3: Code[20]; SDate: Date; EDate: Date)
    var
        EntryNo: Integer;
        GLEntry2: Record "G/L Entry";
        ODAmt: Decimal;
        OCAmt: Decimal;
        StartDate: Date;
        EndDate: Date;
        OpenAmount: Decimal;
        BABalances: Record "UNILEO BA Balances";
    begin
        CLEAR(ODAmt);
        CLEAR(OCAmt);
        CLEAR(OpenAmount);
        StartDate := 0D;
        EndDate := CLOSINGDATE(EDate);

        GLEntry2.RESET;
        GLEntry2.SETCURRENTKEY("G/L Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date");
        GLEntry2.SETFILTER("Posting Date", '%1..%2', StartDate, EndDate);
        GLEntry2.SETRANGE("G/L Account No.", GLNo);
        GLEntry2.SETRANGE("Global Dimension 1 Code", Dim1);
        GLEntry2.SETRANGE("Shortcut Dimension 3 Code", Dim3);
        IF GLEntry2.FINDSET THEN
            REPEAT
                IF COPYSTR(FORMAT(GLNo), 1, 2) = '07' THEN
                    OpenAmount += GLEntry2.Amount
                ELSE
                    OpenAmount += 0;
            UNTIL GLEntry2.NEXT = 0;

        BABalances.RESET;
        BABalances.SETRANGE(Year, BalanceYear);
        BABalances.SETRANGE(GLNoPCC, GLNoPCC);
        BABalances.SETRANGE(GLNo, GLNo);
        BABalances.SETRANGE("Shortcut Dimension 1 Code", Dim1);
        BABalances.SETRANGE("Shortcut Dimension 3 Code", Dim3);
        IF NOT BABalances.FINDFIRST THEN BEGIN
            BABalances.INIT;
            BABalances.Year := BalanceYear;
            BABalances.Date := EDate;
            BABalances.GLNoPCC := GLNoPCC;
            BABalances.GLNo := GLNo;
            BABalances."Shortcut Dimension 1 Code" := Dim1;
            BABalances."Shortcut Dimension 3 Code" := Dim3;
            BABalances.AmountOpen += OpenAmount;
            BABalances.INSERT;
        END ELSE BEGIN
            BABalances.AmountOpen += OpenAmount;
            BABalances.MODIFY;
        END;
    end;

    local procedure FillFinBalanceEntries(BalanceYear: Integer; GLNoPCC: Code[20]; GLNo: Code[20]; SDate: Date; EDate: Date)
    var
        EntryNo: Integer;
        GLEntry2: Record "G/L Entry";
        ODAmt: Decimal;
        OCAmt: Decimal;
        StartDate: Date;
        EndDate: Date;
        OpenAmount: Decimal;
        BABalances: Record "UNILEO BA Balances";
    begin
        CLEAR(ODAmt);
        CLEAR(OCAmt);
        CLEAR(OpenAmount);

        StartDate := 0D;
        EndDate := CLOSINGDATE(EDate);

        GLEntry2.RESET;
        GLEntry2.SETCURRENTKEY("G/L Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date");
        GLEntry2.SETFILTER("Posting Date", '%1..%2', StartDate, EndDate);
        GLEntry2.SETRANGE("G/L Account No.", GLNo);
        GLEntry2.CALCSUMS(Amount);
        OpenAmount := GLEntry2.Amount;

        BABalances.RESET;
        BABalances.SETRANGE(Year, BalanceYear);
        BABalances.SETRANGE(GLNoPCC, GLNoPCC);
        BABalances.SETRANGE(GLNo, GLNo);
        IF NOT BABalances.FINDFIRST THEN BEGIN
            BABalances.INIT;
            BABalances.Year := BalanceYear;
            BABalances.Date := EDate;
            BABalances.GLNoPCC := GLNoPCC;
            BABalances.GLNo := GLNo;
            BABalances.AmountOpen += OpenAmount;
            BABalances.INSERT;
        END ELSE BEGIN
            BABalances.AmountOpen += OpenAmount;
            BABalances.MODIFY;
        END;
    end;

    local procedure StartPeriod(Date: Date): Date
    var
        PerContco: Record "Accounting Period";
        Text1110032: Label 'Fiscal period do not exist.';
        Text1110033: Label '<= %1';
    begin
        PerContco.SETRANGE("New Fiscal Year", TRUE);
        PerContco.SETFILTER("Starting Date", Text1110033, Date);
        IF PerContco.FIND('+') THEN
            EXIT(PerContco."Starting Date")
        ELSE
            ERROR(Text1110032);
    end;
}

