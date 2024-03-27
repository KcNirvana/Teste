report 57022 "Vendor - Trial Balance - Group"
{

    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/VendorTrialBalanceGroup.rdl';

    Caption = 'Vendor - Trial Balance - Group';
    PreviewMode = PrintLayout;
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(Vendor; "Vendor Buffer")
        {
            DataItemTableView = SORTING("Vendor Posting Group");
            RequestFilterFields = "No.", "Date Filter";
            RequestFilterHeading = 'Vendor';
            column(No_VendorTemp; "No.")
            {
                IncludeCaption = true;
            }
            column(Name_VendorTemp; Name)
            {
                IncludeCaption = true;
            }
            column(Name2_VendorTemp; "Name 2")
            {
            }
            column(VendorPostingGroup_VendorTemp; "Vendor Posting Group")
            {
                IncludeCaption = true;
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
            column(YTDBeginBalance; YTDBeginBalance)
            {
            }
            column(YTDDebitAmt; YTDDebitAmt)
            {
            }
            column(YTDCreditAmt; YTDCreditAmt)
            {
            }
            column(YTDTotal; YTDTotal)
            {
            }
            column(LastFieldNo; LastFieldNo)
            {
            }
            column(FooterPrinted; FooterPrinted)
            {
            }
            column(HideZeroAmounts; HideZeroAmounts)
            {
            }
            column(PeriodFilter; PeriodFilter)
            {
            }
            column(FiscalYearFilter; FiscalYearFilter)
            {
            }
            column(VendFilter; VendFilter)
            {
            }
            column(PeriodStartDate; PeriodStartDate)
            {
            }
            column(PeriodEndDate; PeriodEndDate)
            {
            }
            column(FiscalYearStartDate; FiscalYearStartDate)
            {
            }
            column(VendorCpt; TABLECAPTION)
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
                LastFieldNo := FIELDNO("Vendor Posting Group");
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
        bl = 'Vendor - Trial Balance - Group';
        text003 = 'Period:';
        vdl = 'Amounts in LCY';
        afcmno = 'Only includes vendors with entries in the period';
        TotaisGrupo = 'Group Totals:';
        TotalPara = 'Total for';
        TotalDL = 'Total in LCY';
        periodo = 'Period';
        afd = 'Fiscal Year-To-Date';
        SaldoI = 'Initial Balance';
        SaldoP = 'Net Change';
        SaldoF = 'Final Balance';
        debito = 'Debit';
        credito = 'Credit';
    }

    trigger OnInitReport()
    begin
        HideZeroAmounts := TRUE;
    end;

    trigger OnPreReport()
    begin
        PeriodFilter := Vendor.GETFILTER("Date Filter");
        PeriodStartDate := Vendor.GETRANGEMIN("Date Filter");
        PeriodEndDate := Vendor.GETRANGEMAX("Date Filter");
        Vendor.SETRANGE("Date Filter");
        VendFilter := Vendor.GETFILTERS;
        Vendor.SETRANGE("Date Filter", PeriodStartDate, PeriodEndDate);
        AccountingPeriod.SETRANGE("Starting Date", 0D, PeriodEndDate);
        AccountingPeriod.SETRANGE("New Fiscal Year", TRUE);
        IF AccountingPeriod.FIND('+') THEN
            FiscalYearStartDate := AccountingPeriod."Starting Date"
        ELSE
            ERROR(Text000, AccountingPeriod.FIELDCAPTION("Starting Date"), AccountingPeriod.TABLECAPTION);
        FiscalYearFilter := FORMAT(FiscalYearStartDate) + '..' + FORMAT(PeriodEndDate);
        GetVendors();
    end;

    local procedure GetVendors()
    var
        VendorPstGroups: Query "VendLedEntry By Posting Groups";
        Vendors: Record Vendor;
    begin
        Clear(Vendor);
        Vendor.DeleteAll();

        Clear(VendorPstGroups);
        VendorPstGroups.SetFilter(Posting_Date, '..%1', PeriodEndDate);
        VendorPstGroups.Open();
        while VendorPstGroups.Read() do begin
            if Vendors.Get(VendorPstGroups.Vendor_No_) then begin
                Vendor.Init();
                Vendor.TransferFields(Vendors);
                Vendor."Vendor Posting Group" := VendorPstGroups.Vendor_Posting_Group;
                Vendor.Insert();
            end;
        end;
    end;

    local procedure CalcAmounts(DateFrom: Date; DateTo: Date; var BeginBalance: Decimal; var DebitAmt: Decimal; var CreditAmt: Decimal; var TotalBalance: Decimal)
    var
        DtlVendLedgEntry: Record "Detailed Vendor Ledg. Entry";
    begin
        Vendor.SETRANGE("Date Filter", 0D, DateFrom - 1);

        DtlVendLedgEntry.RESET();
        DtlVendLedgEntry.SetCurrentKey("Vendor No.", "Posting Date", "Ledger Entry Amount");
        DtlVendLedgEntry.SETRANGE("Vendor No.", Vendor."No.");
        DtlVendLedgEntry.SETRANGE("Posting Date", 0D, DateFrom - 1);
        DtlVendLedgEntry.SetRange("Ledger Entry Amount", true);
        DtlVendLedgEntry.SETRANGE("PTSS Vendor Posting Group", Vendor."Vendor Posting Group");
        DtlVendLedgEntry.CalcSums("Amount (LCY)");
        BeginBalance := BeginBalance + DtlVendLedgEntry."Amount (LCY)";

        DtlVendLedgEntry.RESET();
        DtlVendLedgEntry.SetCurrentKey("Vendor No.", "Posting Date", "Ledger Entry Amount");
        DtlVendLedgEntry.SETRANGE("Vendor No.", Vendor."No.");
        DtlVendLedgEntry.SETRANGE("Posting Date", DateFrom, DateTo);
        DtlVendLedgEntry.SetRange("Ledger Entry Amount", true);
        DtlVendLedgEntry.SETRANGE("PTSS Vendor Posting Group", Vendor."Vendor Posting Group");
        DtlVendLedgEntry.CalcSums("Debit Amount (LCY)", "Credit Amount (LCY)");
        DebitAmt := DebitAmt + DtlVendLedgEntry."Debit Amount (LCY)";
        CreditAmt := CreditAmt + DtlVendLedgEntry."Credit Amount (LCY)";

        TotalBalance := BeginBalance + DebitAmt - CreditAmt;
    end;

    var
        AccountingPeriod: Record "Accounting Period";
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
        VendFilter: Text[1024];
        PeriodStartDate: Date;
        PeriodEndDate: Date;
        FiscalYearStartDate: Date;
        Text000: Label 'It was not possible to find a %1 in %2.';
        Text003: Label 'Period: %1';
        Text004: Label 'Total for';
        Text005: Label 'Group Totals: %1';
}

