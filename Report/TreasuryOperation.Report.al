report 57008 "Treasury Operations"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/TreasuryOperation.rdl';
    Caption = 'Treasury Operations';
    ApplicationArea = All;

    dataset
    {
        dataitem(Integer; Integer)
        {
            DataItemTableView = SORTING(Number)
                                ORDER(Ascending)
                                WHERE(Number = CONST(1));
            column(ReportTitle; ReportTitle)
            {
            }
            column(FORMAT_TODAY_0_4_; FORMAT(WORKDATE, 0, 4))
            {
            }
            column(STRSUBSTNO_Text000_PeriodText_; STRSUBSTNO(PeriodText, BankAccountDetail.GETFILTER("Date Filter")))
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(USERID; USERID)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Text50000; Text50000)
            {
            }
            column(Text50001; Text50001)
            {
            }
            column(Text50002; Text50002)
            {
            }
            column(Text50003; Text50003)
            {
            }
            column(Text50004; Text50004)
            {
            }
            column(Text50005; Text50005)
            {
            }
            dataitem(BankAccountDetail; "Bank Account")
            {
                DataItemTableView = SORTING(FinancialInst)
                                    ORDER(Ascending);
                RequestFilterFields = "Date Filter", "Application Type", FinancialInst;
                column(BankAccountNo; "No.")
                {
                }
                column(Description; Name)
                {
                }
                column(FinancialInst; FinancialInst)
                {
                }
                column(FinancialInstDesc; FinancialInst)
                {
                }
                column(PositiveAmount; gDecPositiveAmount)
                {
                }
                column(NegativeAmount; gDecNegativeAmount)
                {
                }
                column(gDecDetailedInitialBalance; gDecDetailedInitialBalance)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    CLEAR(gDecDetailedInitialBalance);
                    CLEAR(gDecPositiveAmount);
                    CLEAR(gDecNegativeAmount);

                    gDecDetailedInitialBalance := GetInitialBalance(BankAccountDetail, BankAccountDetail.GETFILTER("Date Filter"));
                    GetAmounts(BankAccountDetail, BankAccountDetail.GETFILTER("Date Filter"), gDecPositiveAmount, gDecNegativeAmount);
                    IF ExcludeZeroBalance THEN BEGIN
                        IF gDecDetailedInitialBalance + gDecPositiveAmount + gDecNegativeAmount = 0 THEN
                            CurrReport.SKIP;
                    END;
                    IF ExcludeNoMovs THEN BEGIN
                        IF (gDecPositiveAmount = 0) AND (gDecNegativeAmount = 0) THEN
                            CurrReport.SKIP;
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
                group("OpçÍes")
                {
                    field(ExcludeZeroBalance; ExcludeZeroBalance)
                    {
                        Caption = 'Dont show accounts with final balance zero';
                    }
                    field(ExcludeNoMovs; ExcludeNoMovs)
                    {
                        Caption = 'Dont show accounts without entries in period';
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
        Text50000: Label 'Account No.';
        Text50001: Label 'Designation';
        Text50002: Label 'Initial Balance';
        Text50003: Label 'Revenues';
        Text50004: Label 'Payments';
        Text50005: Label 'Final Balance';
        gDecPositiveAmount: Decimal;
        gDecNegativeAmount: Decimal;
        gDecDetailedInitialBalance: Decimal;
        ReportTitle: Label 'Treasury Operations';
        PeriodText: Label 'Period: %1';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        ExcludeZeroBalance: Boolean;
        ExcludeNoMovs: Boolean;

    local procedure GetInitialBalance(lRecBankAccount: Record "Bank Account"; DateFilter: Text) decReturn: Decimal
    var
        lAuxDate: Date;
        lRecBankAccLedgerEntry: Record "Bank Account Ledger Entry";
    begin
        //Saldo Inicial
        decReturn := 0;
        lRecBankAccount.SETFILTER("Date Filter", DateFilter);
        IF lRecBankAccount.GETFILTER("Date Filter") <> '' THEN BEGIN
            lAuxDate := lRecBankAccount.GETRANGEMIN("Date Filter");
            lAuxDate := CALCDATE('-1D', lAuxDate);

            CLEAR(lRecBankAccLedgerEntry);
            lRecBankAccLedgerEntry.SETCURRENTKEY("Bank Account No.", "Posting Date", Reversed);
            lRecBankAccLedgerEntry.SETRANGE("Bank Account No.", lRecBankAccount."No.");
            lRecBankAccLedgerEntry.SETRANGE("Posting Date", 0D, lAuxDate);
            IF lRecBankAccLedgerEntry.FINDSET THEN
                REPEAT
                    decReturn += lRecBankAccLedgerEntry.Amount;
                UNTIL lRecBankAccLedgerEntry.NEXT = 0;
        END;
        EXIT(decReturn);
    end;

    local procedure GetAmounts(lRecBankAccount: Record "Bank Account"; DateFilter: Text; var lDecPositiveAmount: Decimal; var lDecNegativeAmount: Decimal)
    var
        lRecBankAccLedgerEntry: Record "Bank Account Ledger Entry";
    begin
        lRecBankAccLedgerEntry.SETCURRENTKEY("Bank Account No.", "Posting Date", Reversed);
        lRecBankAccLedgerEntry.SETRANGE("Bank Account No.", lRecBankAccount."No.");
        lRecBankAccLedgerEntry.SETFILTER("Posting Date", DateFilter);
        IF lRecBankAccLedgerEntry.FINDSET THEN
            REPEAT
                IF lRecBankAccLedgerEntry.Amount > 0 THEN
                    lDecPositiveAmount += lRecBankAccLedgerEntry.Amount
                ELSE
                    lDecNegativeAmount += lRecBankAccLedgerEntry.Amount;
            UNTIL lRecBankAccLedgerEntry.NEXT = 0;
    end;
}

