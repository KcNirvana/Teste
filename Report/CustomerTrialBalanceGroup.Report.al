report 57023 "Cust. - Trial Balance - Group"
{

    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/CustomerTrialBalanceGroup.rdl';

    Caption = 'Customer - Trial Balance - Group';
    PreviewMode = PrintLayout;
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(Customer; "Customer Buffer")
        {
            RequestFilterFields = "No.", "Date Filter";
            RequestFilterHeading = 'Customer';
            column(No_Customer; Customer."No.")
            {
                IncludeCaption = true;
            }
            column(Name_Customer; Customer.Name)
            {
                IncludeCaption = true;
            }
            column(PeriodStartDate; PeriodStartDate)
            {
            }
            column(PeriodFilter; PeriodFilter)
            {
            }
            column(PeriodEndDate; PeriodEndDate)
            {
            }
            column(FiscalYearStartDate; FiscalYearStartDate)
            {
            }
            column(FiscalYearFilter; FiscalYearFilter)
            {
            }
            column(Receivables_Account_RecCustomerPostingGroup; CustomerPostingGroup."Receivables Account")
            {
                IncludeCaption = true;
            }
            column(CustomerPostingGroup_Customer; Customer."Customer Posting Group")
            {
            }
            column(PeriodBeginBalance; PeriodBeginBalance)
            {
            }
            column(PeriodDebitAmt; PeriodDebitAmt)
            {
            }
            column(PeriodCreditAmt; PeriodCreditAmt)
            {
            }
            column(PeriodEndBalance; PeriodEndBalance)
            {
            }
            column(YTDTotal; YTDTotal)
            {
            }
            column(YTDBeginBalance; YTDBeginBalance)
            {
            }
            column(YTDCreditAmt; YTDCreditAmt)
            {
            }
            column(YTDDebitAmt; YTDDebitAmt)
            {
            }
            column(CustFilter; CustFilter)
            {
            }
            column(Customer_Caption; Customer.TABLECAPTION)
            {
            }

            trigger OnAfterGetRecord()
            begin
                Clear(PeriodBeginBalance);
                Clear(PeriodDebitAmt);
                Clear(PeriodCreditAmt);
                Clear(PeriodEndBalance);
                Clear(YTDBeginBalance);
                Clear(YTDDebitAmt);
                Clear(YTDCreditAmt);
                Clear(YTDTotal);

                CalcAmounts(PeriodStartDate, PeriodEndDate, PeriodBeginBalance, PeriodDebitAmt, PeriodCreditAmt, PeriodEndBalance);
                CalcAmounts(FiscalYearStartDate, PeriodEndDate, YTDBeginBalance, YTDDebitAmt, YTDCreditAmt, YTDTotal);
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Customer Posting Group");
            end;
        }
        dataitem("Company Information"; "Company Information")
        {
            DataItemTableView = SORTING("Primary Key");
            column(Name_CompanyInformation; Name)
            {
            }
            column(Name2_CompanyInformation; "Name 2")
            {
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
        Titulo = 'Customer - Trial Balance - Group';
        ValDL = 'Amounts in LCY';
        APeriodo = 'Only includes customers with entries in the period';
        TotalDL = 'Total in LCY';
        Periodo = 'Period:';
        total = 'Total for';
        TGroup = 'Group Totals:';
        Period = 'Period';
        AnoFiscal = 'Fiscal Year-To-Date';
        SaldInicial = 'Initial Balance';
        SaldPeriod = 'Net Change';
        SaldFinal = 'Final Balance';
        Debito = 'Debit';
        Credito = 'Credit';
    }

    trigger OnInitReport()
    begin
        HideZeroAmounts := TRUE;
    end;

    trigger OnPreReport()
    begin
        PeriodFilter := Customer.GETFILTER("Date Filter");
        PeriodStartDate := Customer.GETRANGEMIN("Date Filter");
        PeriodEndDate := Customer.GETRANGEMAX("Date Filter");
        Customer.SETRANGE("Date Filter");
        CustFilter := Customer.GETFILTERS;
        Customer.SETRANGE("Date Filter", PeriodStartDate, PeriodEndDate);
        AccountingPeriod.SETRANGE("Starting Date", 0D, PeriodEndDate);
        AccountingPeriod.SETRANGE("New Fiscal Year", TRUE);
        IF AccountingPeriod.FIND('+') THEN
            FiscalYearStartDate := AccountingPeriod."Starting Date"
        ELSE
            ERROR(Text000, AccountingPeriod.FIELDCAPTION("Starting Date"), AccountingPeriod.TABLECAPTION);
        FiscalYearFilter := FORMAT(FiscalYearStartDate) + '..' + FORMAT(PeriodEndDate);
        GetCustomers();
    end;

    local procedure GetCustomers()
    var
        CustomerPstGroups: Query "CustLedEntry By Posting Groups";
        Customers: Record Customer;
    begin
        Clear(Customer);
        Customer.DeleteAll();

        Clear(CustomerPstGroups);
        CustomerPstGroups.SetFilter(Posting_Date, '..%1', PeriodEndDate);
        CustomerPstGroups.Open();
        while CustomerPstGroups.Read() do begin
            if Customers.Get(CustomerPstGroups.Customer_No_) then begin
                Customer.Init();
                Customer.TransferFields(Customers);
                Customer."Customer Posting Group" := CustomerPstGroups.Customer_Posting_Group;
                Customer.Insert();
            end;
        end;
    end;

    local procedure CalcAmounts(DateFrom: Date; DateTo: Date; var BeginBalance: Decimal; var DebitAmt: Decimal; var CreditAmt: Decimal; var TotalBalance: Decimal)
    var
        DtlCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
    begin
        Customer.SETRANGE("Date Filter", 0D, DateFrom - 1);

        DtlCustLedgEntry.RESET();
        DtlCustLedgEntry.SetCurrentKey("Customer No.", "Posting Date", "Ledger Entry Amount");
        DtlCustLedgEntry.SETRANGE("Customer No.", Customer."No.");
        DtlCustLedgEntry.SETRANGE("Posting Date", 0D, DateFrom - 1);
        DtlCustLedgEntry.SetRange("Ledger Entry Amount", true);
        DtlCustLedgEntry.SETRANGE("PTSS Customer Posting Group", Customer."Customer Posting Group");
        DtlCustLedgEntry.CalcSums("Amount (LCY)");
        BeginBalance := BeginBalance + DtlCustLedgEntry."Amount (LCY)";

        DtlCustLedgEntry.RESET();
        DtlCustLedgEntry.SetCurrentKey("Customer No.", "Posting Date", "Ledger Entry Amount");
        DtlCustLedgEntry.SETRANGE("Customer No.", Customer."No.");
        DtlCustLedgEntry.SETRANGE("Posting Date", DateFrom, DateTo);
        DtlCustLedgEntry.SetRange("Ledger Entry Amount", true);
        DtlCustLedgEntry.SETRANGE("PTSS Customer Posting Group", Customer."Customer Posting Group");
        DtlCustLedgEntry.CalcSums("Debit Amount (LCY)", "Credit Amount (LCY)");
        DebitAmt := DebitAmt + DtlCustLedgEntry."Debit Amount (LCY)";
        CreditAmt := CreditAmt + DtlCustLedgEntry."Credit Amount (LCY)";

        TotalBalance := BeginBalance + DebitAmt - CreditAmt;
    end;

    var
        AccountingPeriod: Record "Accounting Period";
        CustomerPostingGroup: Record "Customer Posting Group";
        PeriodBeginBalance: Decimal;
        PeriodDebitAmt: Decimal;
        PeriodCreditAmt: Decimal;
        PeriodEndBalance: Decimal;
        YTDBeginBalance: Decimal;
        YTDDebitAmt: Decimal;
        YTDCreditAmt: Decimal;
        YTDTotal: Decimal;
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        HideZeroAmounts: Boolean;
        PeriodFilter: Text[250];
        FiscalYearFilter: Text[250];
        CustFilter: Text[1024];
        PeriodStartDate: Date;
        PeriodEndDate: Date;
        FiscalYearStartDate: Date;
        Text003: Label 'Period: %1';
        Text005: Label 'Group Totals: %1';
        Text004: Label 'Total for';
        Text000: Label 'It was not possible to find a %1 in %2.';
}

