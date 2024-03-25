report 50004 "Detail Account Statement"
{
    // SS.13.02.01.01 - Hotfix SS.13.02.01.01 - 22.02.19
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RLD/DetailAccountStatement.rdl';

    Caption = 'Detail Account Statement';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem("<Integer3>"; "Integer")
        {
            DataItemTableView = SORTING(Number)
                                WHERE(Number = CONST(1));
            dataitem("G/L Account"; "G/L Account")
            {
                DataItemTableView = SORTING("No.");
                PrintOnlyIfDetail = true;
                RequestFilterFields = "Date Filter", "No.", "Global Dimension 2 Filter", "Global Dimension 1 Filter";
                column(CurrReportPAGENO; CurrReport.PAGENO)
                {
                }
                column(FORMATTODAY04; FORMAT(TODAY, 0, 4))
                {
                }
                column(USERID; USERID)
                {
                }
                column(STRSUBSTNOText1110002GLFilter; STRSUBSTNO(Text31022892, GLFilter))
                {
                }
                column(COMPANYNAME; COMPANYNAME)
                {
                }
                column(GLAccountTABLECAPTIONGLFilterAcc; "G/L Account".TABLECAPTION + ': ' + GLFilterAcc)
                {
                }
                column(FIELDCAPTIONGlobalDimension1FilterGLFilterDim1; FIELDCAPTION("Global Dimension 1 Filter") + ': ' + GLFilterDim1)
                {
                }
                column(FIELDCAPTIONGlobalDimension2FilterGLFilterDim2; FIELDCAPTION("Global Dimension 2 Filter") + ': ' + GLFilterDim2)
                {
                }
                column(HeaderText; HeaderText)
                {
                }
                column(EmptyString; '. . . . . . . . . . . . . . . . . . . . . .')
                {
                }
                column(GLFilterAcc; GLFilterAcc)
                {
                }
                column(GLFilterDim1; GLFilterDim1)
                {
                }
                column(GLFilterDim2; GLFilterDim2)
                {
                }
                column(NumAcc; NumAcc)
                {
                }
                column(TransDebitTransCredit; TransDebit - TransCredit)
                {
                }
                column(TransCredit; TransCredit)
                {
                }
                column(TransDebit; TransDebit)
                {
                }
                column(NameAcc; NameAcc)
                {
                }
                column(NumAccControl24; NumAcc)
                {
                }
                column(TransDebitTransCreditControl94; TransDebit - TransCredit)
                {
                }
                column(NumAccControl8; NumAcc)
                {
                }
                column(TransCreditControl4; TransCredit)
                {
                }
                column(TransDebitControl10; TransDebit)
                {
                }
                column(TD; TD)
                {
                }
                column(TB; TB)
                {
                }
                column(TC; TC)
                {
                }
                column(GLAccountNo; "No.")
                {
                }
                column(GLAccountDateFilter; "Date Filter")
                {
                }
                column(GLAccountGlobalDimension1Filter; "Global Dimension 1 Filter")
                {
                }
                column(GLAccountGlobalDimension2Filter; "Global Dimension 2 Filter")
                {
                }
                column(GLAccountBusinessUnitFilter; "Business Unit Filter")
                {
                }
                column(Open; Open)
                {
                }
                column(NotFound; NotFound)
                {
                }
                column(PrintAmountsInAddCurrency; PrintAmountsInAddCurrency)
                {
                }
                column(Num; Num)
                {
                }
                column(Found; Found)
                {
                }
                column(IncludeAccountBalance; IncludeAccountBalance)
                {
                }
                column(HaveEntries; HaveEntries)
                {
                }
                column(PagerPerAcc; NewPagePerAcc)
                {
                }
                dataitem("<Integer>"; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(GLBalance; GLBalance)
                    {
                    }
                    column(TotalDebit; TotalDebit)
                    {
                    }
                    column(FromDate; FORMAT(FromDate, 0, 1))
                    {
                    }
                    column(TotalCredit; TotalCredit)
                    {
                    }
                    column(IntegerNumber; Number)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        Open := FALSE;
                        GLBalance := 0;
                        IF GLFilterDim1 <> '' THEN
                            GLAccount.SETFILTER("Global Dimension 1 Filter", GLFilterDim1);
                        IF GLFilterDim2 <> '' THEN
                            GLAccount.SETFILTER("Global Dimension 2 Filter", GLFilterDim2);

                        IF (InitPeriodDate = FromDate) THEN BEGIN
                            Open := TRUE;
                            GLAccount.SETRANGE("Date Filter", 0D, CLOSINGDATE(CALCDATE(Text31022891, FromDate)));
                            GLAccount.SETFILTER("No.", "G/L Account"."No.");
                            IF GLAccount.FINDSET THEN BEGIN
                                REPEAT
                                    GLAccount.CALCFIELDS("Additional-Currency Net Change", "Net Change");
                                    IF PrintAmountsInAddCurrency THEN BEGIN
                                        IF GLAccount."Additional-Currency Net Change" > 0 THEN
                                            TotalDebit := TotalDebit + GLAccount."Additional-Currency Net Change"
                                        ELSE
                                            TotalCredit := TotalCredit + ABS(GLAccount."Additional-Currency Net Change");
                                    END ELSE BEGIN
                                        IF GLAccount."Net Change" > 0 THEN
                                            TotalDebit := TotalDebit + GLAccount."Net Change"
                                        ELSE
                                            TotalCredit := TotalCredit + ABS(GLAccount."Net Change");
                                    END;
                                UNTIL GLAccount.NEXT = 0;
                            END;

                        END ELSE BEGIN
                            Open := TRUE;
                            GLAccount.SETRANGE("Date Filter", 0D, CLOSINGDATE(CALCDATE(Text31022891, FromDate)));
                            GLAccount.SETFILTER("No.", "G/L Account"."No.");
                            IF GLAccount.FINDSET THEN BEGIN
                                REPEAT
                                    GLAccount.CALCFIELDS("Additional-Currency Net Change", "Net Change");
                                    IF PrintAmountsInAddCurrency THEN BEGIN
                                        IF GLAccount."Additional-Currency Net Change" > 0 THEN
                                            TotalDebit := TotalDebit + GLAccount."Additional-Currency Net Change"
                                        ELSE
                                            TotalCredit := TotalCredit + ABS(GLAccount."Additional-Currency Net Change");
                                    END ELSE BEGIN
                                        IF GLAccount."Net Change" > 0 THEN
                                            TotalDebit := TotalDebit + GLAccount."Net Change"
                                        ELSE
                                            TotalCredit := TotalCredit + ABS(GLAccount."Net Change");
                                    END;
                                UNTIL GLAccount.NEXT = 0;
                            END;
                        END;

                        GLBalance := TotalDebit - TotalCredit;
                        IF GLBalance = 0 THEN BEGIN
                            TotalDebit := 0;
                            TotalCredit := 0;
                        END;
                        TransDebit := TFTotalDebitAmt;
                        TransCredit := TFTotalCreditAmt;

                        IF (Open AND (GLBalance <> 0)) THEN BEGIN
                            TFTotalDebitAmt := TFTotalDebitAmt + TotalDebit;
                            TFTotalCreditAmt := TFTotalCreditAmt + TotalCredit;
                        END;
                    end;
                }
                dataitem("<Accounting Period2>"; "Accounting Period")
                {
                    DataItemTableView = SORTING("Starting Date");
                    column(CLOSINGDATECALCDATEText1110001StartingDate; CLOSINGDATE(CALCDATE(Text31022891, "Starting Date")))
                    {
                    }
                    column(AccountingPeriod2StartingDate; "Starting Date")
                    {
                    }
                    column(GLBalanceControl13; GLBalance)
                    {
                    }
                    column(TotalDebitControl2; TotalDebit)
                    {
                    }
                    column(TotalCreditControl9; TotalCredit)
                    {
                    }
                    column(TotalDebitControl27; TotalDebit)
                    {
                    }
                    column(TotalCreditControl28; TotalCredit)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        IF GLBalance = 0 THEN BEGIN
                            TotalDebit := 0;
                            TotalCredit := 0;
                        END;
                        TransDebit := TFTotalDebitAmt;
                        TransCredit := TFTotalCreditAmt;
                    end;

                    trigger OnPreDataItem()
                    begin
                        PostDate := FromDate;
                        GLEntry3.SETCURRENTKEY(GLEntry3."G/L Account No.", GLEntry3."Posting Date");
                        GLEntry3.SETRANGE(GLEntry3."Posting Date", FromDate, ToDate);
                        IF GLFilterDim1 <> '' THEN
                            GLEntry3.SETFILTER("Global Dimension 1 Code", GLFilterDim1);
                        IF GLFilterDim2 <> '' THEN
                            GLEntry3.SETFILTER("Global Dimension 2 Code", GLFilterDim2);
                        GLEntry3.SETFILTER(GLEntry3."G/L Account No.", "G/L Account"."No.");
                        IF GLEntry3.FINDFIRST THEN BEGIN
                            GLEntry3.NEXT(-1);
                            PostDate := GLEntry3."Posting Date";
                        END ELSE BEGIN
                            NotFound := TRUE
                        END;

                        SETRANGE("New Fiscal Year", TRUE);
                        SETRANGE("Date Locked", TRUE);
                        SETFILTER("Starting Date", '> %1 & <= %2', FromDate, PostDate);

                        IF NotFound THEN
                            CurrReport.SKIP;
                    end;
                }
                dataitem("<G/L Entry>"; "G/L Entry")
                {
                    DataItemLink = "Posting Date" = FIELD("Date Filter"),
                                   "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                   "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                   "Business Unit Code" = FIELD("Business Unit Filter");
                    //"Source Type"=FIELD("Source Type Filter"),
                    //"Source No."=FIELD("Source No. Filter");
                    DataItemLinkReference = "G/L Account";
                    DataItemTableView = SORTING("Posting Date", "G/L Account No.");
                    column(DocumentNoGLEntry; "Document No.")
                    {
                    }
                    column(ExternalDocumentNoGLEntry; "External Document No.")
                    {
                    }
                    column(PostingVATBus_GLEntry; "VAT Bus. Posting Group")
                    {
                    }
                    column(PostingVATProd_GLEntry; "VAT Prod. Posting Group")
                    {
                    }
                    column(GLEntryEntryNo; "Entry No.")
                    {
                    }
                    column(GLEntryPostingDate; "Posting Date")
                    {
                    }
                    column(GLEntryDocumentDate; "Document Date")
                    {
                    }
                    column(GLEntryDocumentType; "Document Type")
                    {
                    }
                    column(GLEntryDescription; Description)
                    {
                    }
                    column(GLEntryAddCurrencyDebitAmount; "Add.-Currency Debit Amount")
                    {
                    }
                    column(SourceTypeGLEntry; "Source Type")
                    {
                    }
                    column(GLEntryAddCurrencyCreditAmount; "Add.-Currency Credit Amount")
                    {
                    }
                    column(SourceNoGLEntry; "Source No.")
                    {
                    }
                    column(GLBalanceControl76; GLBalance)
                    {
                    }
                    column(GLEntryPostingDateControl3; "Posting Date")
                    {
                    }
                    column(GLEntryDescriptionControl11; Description)
                    {
                    }
                    column(GLBalance_Control14; GLBalance)
                    {
                    }
                    column(GLEntryDebitAmount; "Debit Amount")
                    {
                    }
                    column(GLEntryCreditAmount; "Credit Amount")
                    {
                    }
                    column(GLEntryEntryNo1; "Entry No.")
                    {
                    }
                    column(GLEntryGlobalDimension1Code; "Global Dimension 1 Code")
                    {
                    }
                    column(GLEntryGlobalDimension2Code; "Global Dimension 2 Code")
                    {
                    }
                    column(GLEntryBusinessUnitCode; "Business Unit Code")
                    {
                    }
                    dataitem("<Accounting Period3>"; "Accounting Period")
                    {
                        DataItemTableView = SORTING("Starting Date");
                        column(AccountingPeriod3StartingDate; "Starting Date")
                        {
                        }
                        column(CLOSINGDATECALCDATEText1110001StartingDateControl102; CLOSINGDATE(CALCDATE(Text31022891, "Starting Date")))
                        {
                        }
                        column(GLBalanceControl63; GLBalance)
                        {
                        }
                        column(TotalDebitControl16; TotalDebit)
                        {
                        }
                        column(TotalCreditControl19; TotalCredit)
                        {
                        }
                        column(TotalCreditControl29; TotalCredit)
                        {
                        }
                        column(TotalDebitControl30; TotalDebit)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Num = 0 THEN
                                CurrReport.SKIP;
                            TotalDebit := 0;
                            TotalCredit := 0;
                            GLAccount.SETRANGE("Date Filter");
                            IF GLFilterDim1 <> '' THEN
                                GLAccount.SETFILTER("Global Dimension 1 Filter", GLFilterDim1);
                            IF GLFilterDim2 <> '' THEN
                                GLAccount.SETFILTER("Global Dimension 2 Filter", GLFilterDim2);
                            GLAccount.SETRANGE("Date Filter", 0D, CLOSINGDATE(CALCDATE(Text31022891, "Starting Date")));
                            GLAccount.SETFILTER("No.", "G/L Account"."No.");
                            IF GLAccount.FINDSET THEN BEGIN
                                REPEAT
                                    GLAccount.CALCFIELDS("Additional-Currency Net Change", "Net Change");
                                    IF PrintAmountsInAddCurrency THEN BEGIN
                                        IF GLAccount."Additional-Currency Net Change" > 0 THEN
                                            TotalDebit := TotalDebit + GLAccount."Additional-Currency Net Change"
                                        ELSE
                                            TotalCredit := TotalCredit + ABS(GLAccount."Additional-Currency Net Change");
                                    END ELSE BEGIN
                                        IF GLAccount."Net Change" > 0 THEN
                                            TotalDebit := TotalDebit + GLAccount."Net Change"
                                        ELSE
                                            TotalCredit := TotalCredit + ABS(GLAccount."Net Change");
                                    END;
                                UNTIL GLAccount.NEXT = 0;
                            END;
                            IF GLBalance = 0 THEN BEGIN
                                TotalDebit := 0;
                                TotalCredit := 0;
                            END;
                            TransDebit := TFTotalDebitAmt;
                            TransCredit := TFTotalCreditAmt;
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF Num > 0 THEN BEGIN
                                SETFILTER("Starting Date", '>%1 & <= %2', LastDate, NormPostDate);
                                SETRANGE("Date Locked", TRUE);
                                SETRANGE("New Fiscal Year", TRUE);
                            END;
                            IF Num = 0 THEN BEGIN
                                SETRANGE("New Fiscal Year", TRUE);
                                FINDFIRST;
                                CurrReport.SKIP;
                            END;
                        end;
                    }

                    trigger OnAfterGetRecord()
                    var
                        Cust: Record Customer;
                        Vend: Record Vendor;
                        Bacc: Record "Bank Account";
                        FAsset: Record "Fixed Asset";
                    begin
                        Num := 0;
                        TransDebit := TFTotalDebitAmt;
                        TransCredit := TFTotalCreditAmt;
                        TotalDebit := 0;
                        TotalCredit := 0;

                        IF NOT PrintAmountsInAddCurrency THEN BEGIN
                            TFTotalDebitAmt := TFTotalDebitAmt + "Debit Amount";
                            TFTotalCreditAmt := TFTotalCreditAmt + "Credit Amount";
                            TFGLBalance := TFGLBalance + "Debit Amount" - "Credit Amount";
                        END ELSE BEGIN
                            TFTotalDebitAmt := TFTotalDebitAmt + "Add.-Currency Debit Amount";
                            TFTotalCreditAmt := TFTotalCreditAmt + "Add.-Currency Credit Amount";
                            TFGLBalance := TFGLBalance + "Add.-Currency Debit Amount" - "Add.-Currency Credit Amount";
                        END;
                        IF NOT PrintAmountsInAddCurrency THEN BEGIN
                            TotalDebit := TotalDebit + "Debit Amount";
                            TotalCredit := TotalCredit + "Credit Amount";
                            GLBalance := GLBalance + "Debit Amount" - "Credit Amount";
                        END ELSE BEGIN
                            TotalDebit := TotalDebit + "Add.-Currency Debit Amount";
                            TotalCredit := TotalCredit + "Add.-Currency Credit Amount";
                            GLBalance := GLBalance + "Add.-Currency Debit Amount" - "Add.-Currency Credit Amount";
                        END;
                        PostDate := "Posting Date";
                        LastDate := "Posting Date";
                        i := i + 1;
                        Print := TRUE;

                        IF NEXT <> 0 THEN BEGIN
                            NormPostDate := NORMALDATE("Posting Date");
                            Num := CalcAccountingPeriod(NormPostDate, LastDate);
                            NEXT(-1);
                        END;

                        IF "Source No." <> '' THEN BEGIN
                            CASE "Source Type" OF
                                "Source Type"::Customer:
                                    IF Cust.GET("Source No.") THEN
                                        Desc := Cust.Name;
                                "Source Type"::Vendor:
                                    IF Vend.GET("Source No.") THEN
                                        Desc := Vend.Name;
                                "Source Type"::"Bank Account":
                                    IF Bacc.GET("Source No.") THEN
                                        Desc := Bacc.Name;
                                "Source Type"::"Fixed Asset":
                                    IF FAsset.GET("Source No.") THEN
                                        Desc := FAsset.Description;
                            END;
                        END
                        ELSE
                            Desc := Description;
                    end;

                    trigger OnPostDataItem()
                    begin
                        Num := 1;
                    end;

                    trigger OnPreDataItem()
                    begin
                        SETCURRENTKEY("Posting Date", "G/L Account No.", "Entry No.");
                        SETRANGE("Posting Date", FromDate, ToDate);
                        IF GLFilterDim1 <> '' THEN
                            SETFILTER("Global Dimension 1 Code", GLFilterDim1);
                        IF GLFilterDim2 <> '' THEN
                            SETFILTER("Global Dimension 2 Code", GLFilterDim2);
                        SETFILTER("G/L Account No.", "G/L Account"."No.");
                        LastDate := 0D;
                        Num := 0;
                        Print := FALSE;
                        Open := FALSE;
                        i := 0;
                        TotalDebit := 0;
                        TotalCredit := 0;
                    end;
                }
                dataitem("Accounting Period"; "Accounting Period")
                {
                    DataItemTableView = SORTING("Starting Date");
                    column(DateOpen; DateOpen)
                    {
                    }
                    column(CLOSINGDATEDateClose; CLOSINGDATE(DateClose))
                    {
                    }
                    column(GLBalanceControl84; GLBalance)
                    {
                    }
                    column(TotalDebitControl21; TotalDebit)
                    {
                    }
                    column(TotalCreditControl22; TotalCredit)
                    {
                    }
                    column(TotalCreditControl43; TotalCredit)
                    {
                    }
                    column(TotalDebitControl44; TotalDebit)
                    {
                    }
                    column(AccountingPeriodStartingDate; "Starting Date")
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        DateOpen := "Starting Date";
                        DateClose := CLOSINGDATE(CALCDATE(Text31022891, "Starting Date"));
                        TotalDebit := 0;
                        TotalCredit := 0;
                        GLAccount.SETRANGE("Date Filter");
                        IF GLFilterDim1 <> '' THEN
                            GLAccount.SETFILTER("Global Dimension 1 Filter", GLFilterDim1);
                        IF GLFilterDim2 <> '' THEN
                            GLAccount.SETFILTER("Global Dimension 2 Filter", GLFilterDim2);
                        GLAccount.SETRANGE("Date Filter", 0D, DateClose);
                        GLAccount.SETFILTER("No.", "G/L Account"."No.");
                        IF GLAccount.FINDSET THEN BEGIN
                            REPEAT
                                GLAccount.CALCFIELDS("Additional-Currency Net Change", "Net Change");
                                IF PrintAmountsInAddCurrency THEN BEGIN
                                    IF GLAccount."Additional-Currency Net Change" > 0 THEN
                                        TotalDebit := TotalDebit + GLAccount."Additional-Currency Net Change"
                                    ELSE
                                        TotalCredit := TotalCredit + ABS(GLAccount."Additional-Currency Net Change");
                                END ELSE BEGIN
                                    IF GLAccount."Net Change" > 0 THEN
                                        TotalDebit := TotalDebit + GLAccount."Net Change"
                                    ELSE
                                        TotalCredit := TotalCredit + ABS(GLAccount."Net Change");
                                END;
                            UNTIL GLAccount.NEXT = 0;
                        END;
                        IF GLBalance = 0 THEN BEGIN
                            TotalDebit := 0;
                            TotalCredit := 0;
                        END;
                        TransDebit := TFTotalDebitAmt;
                        TransCredit := TFTotalCreditAmt;
                    end;

                    trigger OnPreDataItem()
                    begin
                        IF Print THEN BEGIN
                            "Accounting Period".SETRANGE("Accounting Period"."New Fiscal Year", TRUE);
                            "Accounting Period".SETRANGE("Accounting Period"."Date Locked", TRUE);
                            "Accounting Period".SETFILTER("Accounting Period"."Starting Date", '> %1 & <= %2', LastDate, ToDate);
                        END ELSE BEGIN
                            "Accounting Period".SETRANGE("Accounting Period"."New Fiscal Year", TRUE);
                            "Accounting Period".SETRANGE("Accounting Period"."Date Locked", TRUE);
                            "Accounting Period".SETFILTER("Accounting Period"."Starting Date", '> %1 & <= %2', FromDate, ToDate);
                        END;
                    end;
                }
                dataitem("<Integer2>"; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(CLOSINGDATEDateCloseControl90; DateClose)
                    {
                    }
                    column(TotalCreditControl45; TotalCredit)
                    {
                    }
                    column(TotalDebitControl46; TotalDebit)
                    {
                    }
                    column(TFTotalDebitAmt; TFTotalDebitAmt)
                    {
                    }
                    column(TFTotalCreditAmt; TFTotalCreditAmt)
                    {
                    }
                    column(NumAccControl5; NumAcc)
                    {
                    }
                    column(Integer2Number; Number)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        IF Found THEN BEGIN
                            DateClose := CLOSINGDATE(ToDate);
                            PrintClosing := TRUE;
                            TotalDebit := 0;
                            TotalCredit := 0;
                            GLAccount.SETRANGE("Date Filter");
                            GLAccount.SETRANGE("Date Filter", 0D, ToDate);
                            IF GLFilterDim1 <> '' THEN
                                GLAccount.SETFILTER("Global Dimension 1 Filter", GLFilterDim1);
                            IF GLFilterDim2 <> '' THEN
                                GLAccount.SETFILTER("Global Dimension 2 Filter", GLFilterDim2);
                            GLAccount.SETFILTER("No.", "G/L Account"."No.");
                            IF GLAccount.FINDSET THEN BEGIN
                                REPEAT
                                    GLAccount.CALCFIELDS("Additional-Currency Net Change", "Net Change");
                                    IF PrintAmountsInAddCurrency THEN BEGIN
                                        IF GLAccount."Additional-Currency Net Change" > 0 THEN
                                            TotalDebit := TotalDebit + GLAccount."Additional-Currency Net Change"
                                        ELSE
                                            TotalCredit := TotalCredit + ABS(GLAccount."Additional-Currency Net Change")
                                    END ELSE BEGIN
                                        IF GLAccount."Net Change" > 0 THEN
                                            TotalDebit := TotalDebit + GLAccount."Net Change"
                                        ELSE
                                            TotalCredit := TotalCredit + ABS(GLAccount."Net Change");
                                    END;
                                UNTIL GLAccount.NEXT = 0;
                            END;
                        END;
                        TotalBalance := TFTotalDebitAmt - TFTotalCreditAmt;
                        TD := TD + TFTotalDebitAmt;
                        TC := TC + TFTotalCreditAmt;
                        TB := TB + TFTotalDebitAmt - TFTotalCreditAmt;
                    end;

                    trigger OnPreDataItem()
                    begin
                        Found := FALSE;
                        "Accounting Period".RESET;
                        "Accounting Period".SETRANGE("Accounting Period"."New Fiscal Year", TRUE);
                        "Accounting Period".FINDLAST;
                        IF ToDate <> NORMALDATE(ToDate) THEN
                            IF "Accounting Period".GET(CALCDATE(Text31022894, NORMALDATE(ToDate))) THEN BEGIN
                                IF ("Accounting Period"."New Fiscal Year" = TRUE) AND
                                  ("Accounting Period"."Date Locked" = TRUE) THEN
                                    Found := TRUE
                                ELSE
                                    Found := FALSE;
                            END;
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    TotalDebit := 0;
                    TotalCredit := 0;
                    GLBalance := 0;
                    TFTotalDebitAmt := 0;
                    TFTotalCreditAmt := 0;
                    TFGLBalance := 0;
                    TransDebit := 0;
                    TransCredit := 0;
                    NotFound := FALSE;
                    Print := FALSE;
                    FromDate := GETRANGEMIN("Date Filter");
                    ToDate := GETRANGEMAX("Date Filter");
                    IF (ToDate <> NORMALDATE(ToDate)) AND NOT IncludeAccountBalance THEN
                        ERROR(Text31022890);
                    NameAcc := Name;
                    NumAcc := "No.";
                    GLAcc2 := "G/L Account";
                    GLAcc2.SETRANGE("Date Filter", 0D, ToDate);
                    GLAcc2.CALCFIELDS("Balance at Date");
                    SETRANGE("G/L Account"."Date Filter", FromDate, ToDate);
                    CALCFIELDS("Debit Amount", "Credit Amount", Balance, "Balance at Date", "Additional-Currency Balance", "Net Change");
                    IF IncludeAccountBalance THEN BEGIN
                        IF "Balance at Date" = 0 THEN
                            HaveEntries := CalcEntries(FromDate)
                        ELSE
                            HaveEntries := CalcEntries(0D);
                        IF ("Balance at Date" = 0) AND (NOT IncludeZeroBalance) THEN
                            CurrReport.SKIP;
                    END ELSE BEGIN
                        IF (GLAcc2."Balance at Date" = 0) AND (NOT IncludeZeroBalance) THEN
                            CurrReport.SKIP;
                        IF ("Debit Amount" <> 0) OR ("Credit Amount" <> 0) THEN
                            HaveEntries := FALSE
                        ELSE
                            HaveEntries := TRUE;
                    END;
                    InitPeriodDate := CalcPeriod(FromDate);
                    EndPeriodDate := CalcPeriodEnd(ToDate);

                    IF NewPagePerAcc AND PreviusData THEN BEGIN
                        CurrReport.NEWPAGE;
                        PageGroupNo += 1;
                    END;
                    PreviusData := TRUE;
                end;

                trigger OnPreDataItem()
                begin
                    GLFilterDim1 := GETFILTER("Global Dimension 1 Filter");
                    GLFilterDim2 := GETFILTER("Global Dimension 2 Filter");
                    GLFilter := GETFILTER("Date Filter");
                    GLFilterAcc := GETFILTER("No.");
                    GLFilterAccType := GETFILTER("Account Type");
                    SETRANGE("Account Type", "Account Type"::Posting);
                    //fromPreSection
                    GLSetup.GET;
                    IF PrintAmountsInAddCurrency THEN
                        HeaderText := STRSUBSTNO(Text31022893, GLSetup."Additional Reporting Currency")
                    ELSE BEGIN
                        GLSetup.TESTFIELD("LCY Code");
                        HeaderText := STRSUBSTNO(Text31022893, GLSetup."LCY Code");
                    END;
                end;
            }
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
                    field(PrintAmountsInAddCurrency; PrintAmountsInAddCurrency)
                    {
                        Caption = 'Show Amounts In Add Currency';
                    }
                    field(NewPagePerAcc; NewPagePerAcc)
                    {
                        Caption = 'New Page Per Account';
                    }
                    field(IncludeAccountBalance; IncludeAccountBalance)
                    {
                        Caption = 'Only Accs. With Entries at Date';
                    }
                    field(IncludeZeroBalance; IncludeZeroBalance)
                    {
                        Caption = 'Show Entries zero balance';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            IncludeAccountBalance := TRUE;
        end;
    }

    labels
    {
        PAGENO = 'Page';
        DetailAccountStatement = 'Detail Account Statement';
        OnlyAccsWithEntriesatDate = 'Only Accs. With Entries at Date';
        Balanceatdate = 'Balance at date';
        NetChange = 'Net Change';
        Credit = 'Credit';
        Debit = 'Debit';
        Description = 'Description';
        PostingDate = 'Posting Date';
        Continued = 'Continued............................';
        NumAccount = 'Num.Account:';
        Total = 'Total';
        TotalOpeningEntries = 'Total Opening Entries';
        TotalClosingEntries = 'Total Closing Entries';
        DocumentNo = 'Document No.';
        DocumentDate = 'Document Date';
        ExternalDocNo = 'Ext. Doc. No.';
        DocumentType = 'Document Type';
        VatBusPosting = 'VAT Bus. Posting Group';
        VatProdPosting = 'VAT Prod. Posting Group';
    }

    var
        Text31022890: Label 'You cannot deactivate the field "Only Accs. With Entries at Date" with a "C" date';
        Text31022891: Label '-1D';
        Text31022892: Label 'Period: %1';
        Text31022893: Label 'All amounts are in %1';
        Text31022894: Label '1D';
        Text31022895: Label 'There is not any period in this range of date';
        GLSetup: Record "General Ledger Setup";
        GLAccount: Record "G/L Account";
        GLEntry: Record "G/L Entry";
        GLEntry3: Record "G/L Entry";
        NextAccPeriod: Record "Accounting Period";
        NumAcc: Text[20];
        GLFilterAccType: Text[30];
        GLFilterAcc: Text[30];
        HeaderText: Text[40];
        GLFilter: Text[30];
        NameAcc: Text[100];
        Num: Integer;
        i: Integer;
        FromDate: Date;
        ToDate: Date;
        PostDate: Date;
        InitPeriodDate: Date;
        DateClose: Date;
        EndPeriodDate: Date;
        DateOpen: Date;
        LastDate: Date;
        NormPostDate: Date;
        PrintAmountsInAddCurrency: Boolean;
        Print: Boolean;
        PrintClosing: Boolean;
        HaveEntries: Boolean;
        NotFound: Boolean;
        Found: Boolean;
        Open: Boolean;
        TFTotalDebitAmt: Decimal;
        TFTotalCreditAmt: Decimal;
        TFGLBalance: Decimal;
        TD: Decimal;
        TC: Decimal;
        TB: Decimal;
        TotalDebit: Decimal;
        TotalBalance: Decimal;
        TotalCredit: Decimal;
        GLBalance: Decimal;
        CloseTotalDebitEntries: Decimal;
        CloseTotalCreditEntries: Decimal;
        CloseGLBalanceEntries: Decimal;
        TransDebit: Decimal;
        TransCredit: Decimal;
        NewPagePerAcc: Boolean;
        PreviusData: Boolean;
        IncludeAccountBalance: Boolean;
        GLAcc2: Record "G/L Account";
        IncludeZeroBalance: Boolean;
        GLFilterDim1: Code[20];
        GLFilterDim2: Code[20];
        "//--soft--//": Integer;
        PageGroupNo: Integer;
        PostingGroupBreak: Boolean;
        TDbyPG: Decimal;
        TCbyPG: Decimal;
        HasPostingGroup: Boolean;
        GLEnt: Record "G/L Entry";
        Desc: Text[100];

    procedure CalcPeriod(InitialDate: Date): Date
    var
        AccPeriod: Record "Accounting Period";
    begin
        AccPeriod.SETRANGE(AccPeriod."New Fiscal Year", TRUE);
        AccPeriod.SETFILTER(AccPeriod."Starting Date", '<=%1', InitialDate);
        IF AccPeriod.FINDLAST THEN
            EXIT(AccPeriod."Starting Date")
        ELSE
            ERROR(Text31022895);
    end;

    procedure CalcAccountingPeriod(DateAux: Date; Lastdate: Date): Integer
    var
        AccPeriod: Record "Accounting Period";
    begin
        AccPeriod.SETRANGE(AccPeriod."New Fiscal Year", TRUE);
        AccPeriod.SETFILTER(AccPeriod."Starting Date", '>%1 & <=%2', Lastdate, DateAux);
        EXIT(AccPeriod.COUNT);
    end;

    procedure CalcEntries(EndDate: Date): Boolean
    var
        GLEntry: Record "G/L Entry";
    begin
        GLEntry.SETCURRENTKEY("Posting Date", "G/L Account No.");
        GLEntry.SETRANGE("Posting Date", EndDate, ToDate);
        IF GLFilterDim1 <> '' THEN
            GLEntry.SETFILTER("Global Dimension 1 Code", GLFilterDim1);
        IF GLFilterDim2 <> '' THEN
            GLEntry.SETFILTER("Global Dimension 2 Code", GLFilterDim2);
        GLEntry.SETFILTER("G/L Account No.", "G/L Account"."No.");
        IF GLEntry.FINDFIRST THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;

    procedure CalcPeriodEnd(EndPeriodDate: Date): Date
    var
        AccPeriod: Record "Accounting Period";
    begin
        AccPeriod.SETRANGE(AccPeriod."New Fiscal Year", TRUE);
        AccPeriod.SETFILTER(AccPeriod."Starting Date", '<=%1', CALCDATE(Text31022894, NORMALDATE(EndPeriodDate)));
        IF AccPeriod.FINDLAST THEN
            EXIT(AccPeriod."Starting Date")
        ELSE
            ERROR(Text31022895);
    end;
}

