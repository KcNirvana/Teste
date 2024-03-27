report 57027 "Adjust Exchange Rates PV"
{
    Caption = 'Adjust Exchange Rates (Parvalorem)';
    Permissions = TableData "Cust. Ledger Entry" = rimd,
                  TableData "Vendor Ledger Entry" = rimd,
                  TableData "Exch. Rate Adjmt. Reg." = rimd,
                  TableData "VAT Entry" = rimd,
                  TableData "Detailed Cust. Ledg. Entry" = rimd,
                  TableData "Detailed Vendor Ledg. Entry" = rimd;

    UsageCategory = Tasks;
    ApplicationArea = All;
    ProcessingOnly = true;
    dataset
    {
        dataitem(Currency; Currency)
        {
            DataItemTableView = SORTING(Code);
            RequestFilterFields = "Code";
            dataitem("Bank Account"; "Bank Account")
            {
                DataItemLink = "Currency Code" = FIELD(Code);
                DataItemTableView = SORTING("Bank Acc. Posting Group");
                dataitem(BankAccountGroupTotal; "Integer")
                {
                    DataItemTableView = SORTING(Number);
                    MaxIteration = 1;

                    trigger OnAfterGetRecord()
                    var
                        BankAccount: Record "Bank Account";
                        GroupTotal: Boolean;
                    begin
                        BankAccount.Copy("Bank Account");
                        if BankAccount.Next = 1 then begin
                            if BankAccount."Bank Acc. Posting Group" <> "Bank Account"."Bank Acc. Posting Group" then
                                GroupTotal := true;
                        end else
                            GroupTotal := true;

                        if GroupTotal then
                            if TotalAdjAmount <> 0 then begin
                                AdjExchRateBufferUpdate(
                                  "Bank Account"."Currency Code", "Bank Account"."Bank Acc. Posting Group",
                                  TotalAdjBase, TotalAdjBaseLCY, TotalAdjAmount, 0, 0, 0, PostingDate, '',
                                  zGetBankPostingGrAcc("Bank Account"."Bank Acc. Posting Group"), BankAccount."No.");
                                InsertExchRateAdjmtReg("AdjExchRates Account Type"::"Bank Account", "Bank Account"."Bank Acc. Posting Group", "Bank Account"."Currency Code");
                                TotalBankAccountsAdjusted += 1;
                                AdjExchRateBuffer.Reset;
                                AdjExchRateBuffer.DeleteAll;
                                TotalAdjBase := 0;
                                TotalAdjBaseLCY := 0;
                                TotalAdjAmount := 0;
                            end;
                    end;
                }

                trigger OnAfterGetRecord()
                var
                    l_BankAccLedgEntry: Record "Bank Account Ledger Entry";
                    lEndDate: Date;
                begin
                    TempEntryNoAmountBuf.DeleteAll;
                    BankAccNo := BankAccNo + 1;
                    Window.Update(1, Round(BankAccNo / BankAccNoTotal * 10000, 1));
                    g_TempBankAccountBuffer[1].DELETEALL;

                    l_BankAccLedgEntry.Reset;
                    l_BankAccLedgEntry.SetRange("Bank Account No.", "No.");
                    l_BankAccLedgEntry.SetRange("Posting Date", 0D, EndDate1);
                    if l_BankAccLedgEntry.FindSet then
                        repeat
                            zFillBankAccountBuffer(l_BankAccLedgEntry);
                        until l_BankAccLedgEntry.Next = 0;

                    if g_TempBankAccountBuffer[1].FINDLAST then
                        repeat
                            TempDimSetEntry.Reset;
                            TempDimSetEntry.DeleteAll;
                            TempDimBuf.Reset;
                            TempDimBuf.DeleteAll;

                            if g_TempBankAccountBuffer[1]."Base Amount (LCY)" <> 0 then begin
                                AdjBase := g_TempBankAccountBuffer[1]."Base Amount";
                                AdjBaseLCY := g_TempBankAccountBuffer[1]."Base Amount (LCY)";
                                AdjAmount :=
                                  Round(
                                    CurrExchRate.ExchangeAmtFCYToLCYAdjmt(
                                      PostingDate, Currency.Code, g_TempBankAccountBuffer[1]."Base Amount", Currency."Currency Factor")) -
                                      g_TempBankAccountBuffer[1]."Base Amount (LCY)";

                                zInsertAdjExchRates("AdjExchRates Account Type"::"Bank Account", "Bank Account"."No.", g_TempBankAccountBuffer[1]."Cash Flow Code", AdjBase, AdjBaseLCY, AdjAmount, Currency.Code, PostingDate, PostingDocNo, "Bank Account".Name);

                                Codigo := "Bank Account"."No.";

                                if AdjAmount <> 0 then begin
                                    GenJnlLine.Validate("Posting Date", PostingDate);
                                    GenJnlLine."Document No." := PostingDocNo;
                                    GenJnlLine."Account Type" := GenJnlLine."Account Type"::"Bank Account";
                                    GenJnlLine.Validate("Account No.", "No.");
                                    GenJnlLine.Description := CopyStr(StrSubstNo(PostingDescription, Currency.Code, AdjBase, Codigo), 1, 100);
                                    GenJnlLine.Validate(Amount, 0);
                                    GenJnlLine."Amount (LCY)" := AdjAmount;
                                    GenJnlLine."Source Currency Code" := Currency.Code;
                                    if Currency.Code = GLSetup."Additional Reporting Currency" then
                                        GenJnlLine."Source Currency Amount" := 0;
                                    GenJnlLine."Source Code" := SourceCodeSetup."Exchange Rate Adjmt.";
                                    GenJnlLine."PTSS Acc: cash-flow code" := CashflowAccount;
                                    GenJnlLine."System-Created Entry" := true;
                                    GetJnlLineDefDim(GenJnlLine, TempDimSetEntry);
                                    CopyDimSetEntryToDimBuf(TempDimSetEntry, TempDimBuf);
                                    PostGenJnlLine(GenJnlLine, TempDimSetEntry);
                                    with TempEntryNoAmountBuf do begin
                                        Init;
                                        "Business Unit Code" := '';
                                        "Entry No." := "Entry No." + 1;
                                        Amount := AdjAmount;
                                        Amount2 := AdjBase;
                                        Insert;
                                    end;
                                    TempDimBuf2.Init;
                                    TempDimBuf2."Table ID" := TempEntryNoAmountBuf."Entry No.";
                                    TempDimBuf2."Entry No." := GetDimCombID(TempDimBuf);
                                    TempDimBuf2.Insert;
                                    TotalAdjBase := TotalAdjBase + AdjBase;
                                    TotalAdjBaseLCY := TotalAdjBaseLCY + AdjBaseLCY;
                                    TotalAdjAmount := TotalAdjAmount + AdjAmount;

                                    if TempEntryNoAmountBuf.Amount <> 0 then begin
                                        TempDimSetEntry.Reset;
                                        TempDimSetEntry.DeleteAll;
                                        TempDimBuf.Reset;
                                        TempDimBuf.DeleteAll;
                                        TempDimBuf2.SetRange("Table ID", TempEntryNoAmountBuf."Entry No.");
                                        if TempDimBuf2.FindFirst then
                                            DimBufMgt.GetDimensions(TempDimBuf2."Entry No.", TempDimBuf);
                                        DimMgt.CopyDimBufToDimSetEntry(TempDimBuf, TempDimSetEntry);
                                        Codigo := "Bank Account"."No.";
                                        if TempEntryNoAmountBuf.Amount > 0 then begin
                                            Currency.TestField("Realized Gains Acc.");
                                            PostAdjmt(
                                              Currency."Realized Gains Acc.", -TempEntryNoAmountBuf.Amount, TempEntryNoAmountBuf.Amount2,
                                              "Currency Code", TempDimSetEntry, PostingDate, '');
                                        end else begin
                                            Currency.TestField("Realized Losses Acc.");
                                            PostAdjmt(
                                              Currency."Realized Losses Acc.", -TempEntryNoAmountBuf.Amount, TempEntryNoAmountBuf.Amount2,
                                              "Currency Code", TempDimSetEntry, PostingDate, '');
                                        end;
                                    end;

                                end;
                                TempDimBuf2.DeleteAll;
                            end;
                        until g_TempBankAccountBuffer[1].NEXT(-1) = 0;

                    Window.Update(4, TotalAdjAmount);
                end;

                trigger OnPreDataItem()
                begin
                    if not AdjCustVendBank then
                        CurrReport.Break;
                    SetRange("Date Filter", StartDate, EndDate1);
                    TempDimBuf2.DeleteAll;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                "Last Date Adjusted" := PostingDate;
                Modify;

                "Currency Factor" :=
                  CurrExchRate.ExchangeRateAdjmt(PostingDate, Code);

                Currency2 := Currency;
                Currency2.Insert;
            end;

            trigger OnPostDataItem()
            begin
                if (Code = '') and (AdjCustVendBank or g_AdjCustVendBank2 or g_AdjCustVendBank3) then
                    Error(Text011);
            end;

            trigger OnPreDataItem()
            begin
                CheckPostingDate;
                if not (AdjCustVendBank or g_AdjCustVendBank2 or g_AdjCustVendBank3) then
                    CurrReport.Break;

                Window.Open(Text006 + Text007 + Text008 + Text009 + Text010);
                CustNoTotal := Customer.Count;
                VendNoTotal := Vendor.Count;
                CopyFilter(Code, "Bank Account"."Currency Code");
                FilterGroup(2);
                "Bank Account".SetFilter("Currency Code", '<>%1', '');
                FilterGroup(0);
                BankAccNoTotal := "Bank Account".Count;
                "Bank Account".Reset;
            end;
        }
        dataitem(Customer; Customer)
        {
            DataItemTableView = SORTING("No.");
            dataitem(CustomerLedgerEntryLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem("Detailed Cust. Ledg. Entry"; "Detailed Cust. Ledg. Entry")
                {
                    DataItemTableView = SORTING("Cust. Ledger Entry No.", "Posting Date");

                    trigger OnAfterGetRecord()
                    begin
                        AdjustCustomerLedgerEntry(CustLedgerEntry, "Posting Date");
                    end;

                    trigger OnPreDataItem()
                    begin
                        SetCurrentKey("Cust. Ledger Entry No.");
                        SetRange("Cust. Ledger Entry No.", CustLedgerEntry."Entry No.");
                        SetFilter("Posting Date", '%1..', CalcDate('<+1D>', PostingDate));
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    if FirstEntry then begin
                        TempCustLedgerEntry.Find('-');
                        FirstEntry := false
                    end else
                        if TempCustLedgerEntry.Next = 0 then
                            CurrReport.Break;
                    CustLedgerEntry.Get(TempCustLedgerEntry."Entry No.");
                    AdjustCustomerLedgerEntry(CustLedgerEntry, PostingDate);
                end;

                trigger OnPreDataItem()
                begin
                    if not TempCustLedgerEntry.Find('-') then
                        CurrReport.Break;
                    FirstEntry := true;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                CustNo := CustNo + 1;
                Window.Update(2, Round(CustNo / CustNoTotal * 10000, 1));

                TempCustLedgerEntry.DeleteAll;

                Currency.CopyFilter(Code, CustLedgerEntry."Currency Code");
                CustLedgerEntry.FilterGroup(2);
                CustLedgerEntry.SetFilter("Currency Code", '<>%1', '');
                CustLedgerEntry.FilterGroup(0);

                DtldCustLedgEntry.Reset;
                DtldCustLedgEntry.SetCurrentKey("Customer No.", "Posting Date", "Entry Type");
                DtldCustLedgEntry.SetRange("Customer No.", "No.");
                DtldCustLedgEntry.SetRange("Posting Date", CalcDate('<+1D>', EndDate1), 99991231D);
                if DtldCustLedgEntry.Find('-') then
                    repeat
                        CustLedgerEntry."Entry No." := DtldCustLedgEntry."Cust. Ledger Entry No.";
                        if CustLedgerEntry.Find('=') then
                            if (CustLedgerEntry."Posting Date" >= StartDate) and
                               (CustLedgerEntry."Posting Date" <= EndDate1)
                            then begin
                                TempCustLedgerEntry."Entry No." := CustLedgerEntry."Entry No.";
                                if TempCustLedgerEntry.Insert then;
                            end;
                    until DtldCustLedgEntry.Next = 0;

                CustLedgerEntry.SetCurrentKey("Customer No.", Open);
                CustLedgerEntry.SetRange("Customer No.", "No.");
                CustLedgerEntry.SetRange(Open, true);
                CustLedgerEntry.SetRange("Posting Date", 0D, EndDate1);
                if CustLedgerEntry.Find('-') then
                    repeat
                        TempCustLedgerEntry."Entry No." := CustLedgerEntry."Entry No.";
                        if TempCustLedgerEntry.Insert then;
                    until CustLedgerEntry.Next = 0;
                CustLedgerEntry.Reset;
            end;

            trigger OnPostDataItem()
            begin
                if CustNo <> 0 then begin
                    HandlePostAdjmt(1); // Customer
                end;
            end;

            trigger OnPreDataItem()
            begin
                if not g_AdjCustVendBank2 then
                    CurrReport.Break;

                DtldCustLedgEntry.LockTable;
                CustLedgerEntry.LockTable;

                CustNo := 0;

                if DtldCustLedgEntry.Find('+') then
                    NewEntryNo := DtldCustLedgEntry."Entry No." + 1
                else
                    NewEntryNo := 1;

                Clear(DimMgt);
                TempEntryNoAmountBuf.DeleteAll;
            end;
        }
        dataitem(Vendor; Vendor)
        {
            DataItemTableView = SORTING("No.");
            dataitem(VendorLedgerEntryLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem("Detailed Vendor Ledg. Entry"; "Detailed Vendor Ledg. Entry")
                {
                    DataItemTableView = SORTING("Vendor Ledger Entry No.", "Posting Date");

                    trigger OnAfterGetRecord()
                    begin
                        AdjustVendorLedgerEntry(VendorLedgerEntry, "Posting Date");
                    end;

                    trigger OnPreDataItem()
                    begin
                        SetCurrentKey("Vendor Ledger Entry No.");
                        SetRange("Vendor Ledger Entry No.", VendorLedgerEntry."Entry No.");
                        SetFilter("Posting Date", '%1..', CalcDate('<+1D>', PostingDate));
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    if FirstEntry then begin
                        TempVendorLedgerEntry.Find('-');
                        FirstEntry := false
                    end else
                        if TempVendorLedgerEntry.Next = 0 then
                            CurrReport.Break;
                    VendorLedgerEntry.Get(TempVendorLedgerEntry."Entry No.");
                    AdjustVendorLedgerEntry(VendorLedgerEntry, PostingDate);
                end;

                trigger OnPreDataItem()
                begin
                    if not TempVendorLedgerEntry.Find('-') then
                        CurrReport.Break;
                    FirstEntry := true;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                VendNo := VendNo + 1;
                Window.Update(3, Round(VendNo / VendNoTotal * 10000, 1));

                TempVendorLedgerEntry.DeleteAll;

                Currency.CopyFilter(Code, VendorLedgerEntry."Currency Code");
                VendorLedgerEntry.FilterGroup(2);
                VendorLedgerEntry.SetFilter("Currency Code", '<>%1', '');
                VendorLedgerEntry.FilterGroup(0);

                DtldVendLedgEntry.Reset;
                DtldVendLedgEntry.SetCurrentKey("Vendor No.", "Posting Date", "Entry Type");
                DtldVendLedgEntry.SetRange("Vendor No.", "No.");
                DtldVendLedgEntry.SetRange("Posting Date", CalcDate('<+1D>', EndDate1), 99991231D);
                if DtldVendLedgEntry.Find('-') then
                    repeat
                        VendorLedgerEntry."Entry No." := DtldVendLedgEntry."Vendor Ledger Entry No.";
                        if VendorLedgerEntry.Find('=') then
                            if (VendorLedgerEntry."Posting Date" >= StartDate) and
                               (VendorLedgerEntry."Posting Date" <= EndDate1)
                            then begin
                                TempVendorLedgerEntry."Entry No." := VendorLedgerEntry."Entry No.";
                                if TempVendorLedgerEntry.Insert then;
                            end;
                    until DtldVendLedgEntry.Next = 0;

                VendorLedgerEntry.SetCurrentKey("Vendor No.", Open);
                VendorLedgerEntry.SetRange("Vendor No.", "No.");
                VendorLedgerEntry.SetRange(Open, true);
                VendorLedgerEntry.SetRange("Posting Date", 0D, EndDate1);
                if VendorLedgerEntry.Find('-') then
                    repeat
                        TempVendorLedgerEntry."Entry No." := VendorLedgerEntry."Entry No.";
                        if TempVendorLedgerEntry.Insert then;
                    until VendorLedgerEntry.Next = 0;
                VendorLedgerEntry.Reset;
            end;

            trigger OnPostDataItem()
            begin
                if VendNo <> 0 then begin
                    HandlePostAdjmt(2); // Vendor
                end;
            end;

            trigger OnPreDataItem()
            begin
                if not g_AdjCustVendBank3 then
                    CurrReport.Break;

                DtldVendLedgEntry.LockTable;
                VendorLedgerEntry.LockTable;

                VendNo := 0;
                if DtldVendLedgEntry.Find('+') then
                    NewEntryNo := DtldVendLedgEntry."Entry No." + 1
                else
                    NewEntryNo := 1;

                Clear(DimMgt);
                TempEntryNoAmountBuf.DeleteAll;
            end;
        }
        dataitem("VAT Posting Setup"; "VAT Posting Setup")
        {
            DataItemTableView = SORTING("VAT Bus. Posting Group", "VAT Prod. Posting Group");

            trigger OnAfterGetRecord()
            begin
                VATEntryNo := VATEntryNo + 1;
                Window.Update(1, Round(VATEntryNo / VATEntryNoTotal * 10000, 1));

                VATEntry.SetRange("VAT Bus. Posting Group", "VAT Bus. Posting Group");
                VATEntry.SetRange("VAT Prod. Posting Group", "VAT Prod. Posting Group");

                if "VAT Calculation Type" <> "VAT Calculation Type"::"Sales Tax" then begin
                    AdjustVATEntries(VATEntry.Type::Purchase, false);
                    if (VATEntry2.Amount <> 0) or (VATEntry2."Additional-Currency Amount" <> 0) then begin
                        TestField("Purchase VAT Account");
                        AdjustVATAccount(
                          "Purchase VAT Account",
                          VATEntry2.Amount, VATEntry2."Additional-Currency Amount",
                          VATEntryTotalBase.Amount, VATEntryTotalBase."Additional-Currency Amount");
                        if "VAT Calculation Type" = "VAT Calculation Type"::"Reverse Charge VAT" then begin
                            TestField("Reverse Chrg. VAT Acc.");
                            AdjustVATAccount(
                              "Reverse Chrg. VAT Acc.",
                              -VATEntry2.Amount, -VATEntry2."Additional-Currency Amount",
                              -VATEntryTotalBase.Amount, -VATEntryTotalBase."Additional-Currency Amount");
                        end;
                    end;
                    if (VATEntry2."Remaining Unrealized Amount" <> 0) or
                       (VATEntry2."Add.-Curr. Rem. Unreal. Amount" <> 0)
                    then begin
                        TestField("Unrealized VAT Type");
                        TestField("Purch. VAT Unreal. Account");
                        AdjustVATAccount(
                          "Purch. VAT Unreal. Account",
                          VATEntry2."Remaining Unrealized Amount",
                          VATEntry2."Add.-Curr. Rem. Unreal. Amount",
                          VATEntryTotalBase."Remaining Unrealized Amount",
                          VATEntryTotalBase."Add.-Curr. Rem. Unreal. Amount");
                        if "VAT Calculation Type" = "VAT Calculation Type"::"Reverse Charge VAT" then begin
                            TestField("Reverse Chrg. VAT Unreal. Acc.");
                            AdjustVATAccount(
                              "Reverse Chrg. VAT Unreal. Acc.",
                              -VATEntry2."Remaining Unrealized Amount",
                              -VATEntry2."Add.-Curr. Rem. Unreal. Amount",
                              -VATEntryTotalBase."Remaining Unrealized Amount",
                              -VATEntryTotalBase."Add.-Curr. Rem. Unreal. Amount");
                        end;
                    end;

                    AdjustVATEntries(VATEntry.Type::Sale, false);
                    if (VATEntry2.Amount <> 0) or (VATEntry2."Additional-Currency Amount" <> 0) then begin
                        TestField("Sales VAT Account");
                        AdjustVATAccount(
                          "Sales VAT Account",
                          VATEntry2.Amount, VATEntry2."Additional-Currency Amount",
                          VATEntryTotalBase.Amount, VATEntryTotalBase."Additional-Currency Amount");
                    end;
                    if (VATEntry2."Remaining Unrealized Amount" <> 0) or
                       (VATEntry2."Add.-Curr. Rem. Unreal. Amount" <> 0)
                    then begin
                        TestField("Unrealized VAT Type");
                        TestField("Sales VAT Unreal. Account");
                        AdjustVATAccount(
                          "Sales VAT Unreal. Account",
                          VATEntry2."Remaining Unrealized Amount",
                          VATEntry2."Add.-Curr. Rem. Unreal. Amount",
                          VATEntryTotalBase."Remaining Unrealized Amount",
                          VATEntryTotalBase."Add.-Curr. Rem. Unreal. Amount");
                    end;
                end else begin
                    if TaxJurisdiction.Find('-') then
                        repeat
                            VATEntry.SetRange("Tax Jurisdiction Code", TaxJurisdiction.Code);
                            AdjustVATEntries(VATEntry.Type::Purchase, false);
                            AdjustPurchTax(false);
                            AdjustVATEntries(VATEntry.Type::Purchase, true);
                            AdjustPurchTax(true);
                            AdjustVATEntries(VATEntry.Type::Sale, false);
                            AdjustSalesTax;
                        until TaxJurisdiction.Next = 0;
                    VATEntry.SetRange("Tax Jurisdiction Code");
                end;
                Clear(VATEntryTotalBase);
            end;

            trigger OnPreDataItem()
            begin
                if not AdjGLAcc or
                   (GLSetup."VAT Exchange Rate Adjustment" = GLSetup."VAT Exchange Rate Adjustment"::"No Adjustment")
                then
                    CurrReport.Break;

                Window.Open(
                  Text012 +
                  Text013);

                VATEntryNoTotal := VATEntry.Count;
                if not
                   VATEntry.SetCurrentKey(
                     Type, Closed, "VAT Bus. Posting Group", "VAT Prod. Posting Group", "Posting Date")
                then
                    VATEntry.SetCurrentKey(
                      Type, Closed, "Tax Jurisdiction Code", "Use Tax", "Posting Date");
                VATEntry.SetRange(Closed, false);
                VATEntry.SetRange("Posting Date", StartDate, EndDate1);
            end;
        }
        dataitem("G/L Account"; "G/L Account")
        {
            DataItemTableView = SORTING("No.") WHERE("Exchange Rate Adjustment" = FILTER("Adjust Amount" .. "Adjust Additional-Currency Amount"));

            trigger OnAfterGetRecord()
            begin
                GLAccNo := GLAccNo + 1;
                Window.Update(1, Round(GLAccNo / GLAccNoTotal * 10000, 1));
                if "Exchange Rate Adjustment" = "Exchange Rate Adjustment"::"No Adjustment" then
                    CurrReport.Skip;

                TempDimSetEntry.Reset;
                TempDimSetEntry.DeleteAll;
                CalcFields("Net Change", "Additional-Currency Net Change");
                case "Exchange Rate Adjustment" of
                    "Exchange Rate Adjustment"::"Adjust Amount":
                        PostGLAccAdjmt(
                          "No.", "Exchange Rate Adjustment"::"Adjust Amount".AsInteger(),
                          Round(
                            CurrExchRate2.ExchangeAmtFCYToLCYAdjmt(
                              PostingDate, GLSetup."Additional Reporting Currency",
                              "Additional-Currency Net Change", AddCurrCurrencyFactor) -
                            "Net Change"),
                          "Net Change",
                          "Additional-Currency Net Change");
                    "Exchange Rate Adjustment"::"Adjust Additional-Currency Amount":
                        PostGLAccAdjmt(
                          "No.", "Exchange Rate Adjustment"::"Adjust Additional-Currency Amount".AsInteger(),
                          Round(
                            CurrExchRate2.ExchangeAmtLCYToFCY(
                              PostingDate, GLSetup."Additional Reporting Currency",
                              "Net Change", AddCurrCurrencyFactor) -
                            "Additional-Currency Net Change",
                            Currency3."Amount Rounding Precision"),
                          "Net Change",
                          "Additional-Currency Net Change");
                end;
            end;

            trigger OnPostDataItem()
            begin
                if AdjGLAcc then begin
                    GenJnlLine."Document No." := PostingDocNo;
                    GenJnlLine."Account Type" := GenJnlLine."Account Type"::"G/L Account";
                    GenJnlLine."Posting Date" := PostingDate;
                    GenJnlLine."Source Code" := SourceCodeSetup."Exchange Rate Adjmt.";

                    if GLAmtTotal <> 0 then begin
                        if GLAmtTotal < 0 then
                            GenJnlLine."Account No." := Currency3."Realized G/L Losses Account"
                        else
                            GenJnlLine."Account No." := Currency3."Realized G/L Gains Account";
                        GenJnlLine.Description :=
                          CopyStr(StrSubstNo(PostingDescription, GLSetup."Additional Reporting Currency", GLAddCurrNetChangeTotal, Codigo), 1, 100);
                        GenJnlLine."Additional-Currency Posting" := GenJnlLine."Additional-Currency Posting"::"Amount Only";
                        GenJnlLine."Currency Code" := '';
                        GenJnlLine.Amount := -GLAmtTotal;
                        GenJnlLine."Amount (LCY)" := -GLAmtTotal;
                        GetJnlLineDefDim(GenJnlLine, TempDimSetEntry);
                        PostGenJnlLine(GenJnlLine, TempDimSetEntry);
                    end;
                    if GLAddCurrAmtTotal <> 0 then begin
                        if GLAddCurrAmtTotal < 0 then
                            GenJnlLine."Account No." := Currency3."Realized G/L Losses Account"
                        else
                            GenJnlLine."Account No." := Currency3."Realized G/L Gains Account";
                        GenJnlLine.Description :=
                          StrSubstNo(
                            PostingDescription, '',
                            GLNetChangeTotal, Codigo);
                        GenJnlLine."Additional-Currency Posting" := GenJnlLine."Additional-Currency Posting"::"Additional-Currency Amount Only";
                        GenJnlLine."Currency Code" := GLSetup."Additional Reporting Currency";
                        GenJnlLine.Amount := -GLAddCurrAmtTotal;
                        GenJnlLine."Amount (LCY)" := 0;
                        GetJnlLineDefDim(GenJnlLine, TempDimSetEntry);
                        PostGenJnlLine(GenJnlLine, TempDimSetEntry);
                    end;

                    with ExchRateAdjReg do begin
                        "No." := "No." + 1;
                        "Creation Date" := PostingDate;
                        "Account Type" := "Account Type"::"G/L Account";
                        "Posting Group" := '';
                        "Currency Code" := GLSetup."Additional Reporting Currency";
                        "Currency Factor" := CurrExchRate2."Adjustment Exch. Rate Amount";
                        "Adjusted Base" := 0;
                        "Adjusted Base (LCY)" := GLNetChangeBase;
                        "Adjusted Amt. (LCY)" := GLAmtTotal;
                        "Adjusted Base (Add.-Curr.)" := GLAddCurrNetChangeBase;
                        "Adjusted Amt. (Add.-Curr.)" := GLAddCurrAmtTotal;
                        Insert;
                    end;
                end;
            end;

            trigger OnPreDataItem()
            begin
                if not AdjGLAcc then
                    CurrReport.Break;

                Window.Open(
                  Text014 +
                  Text015);

                GLAccNoTotal := Count;
                SetRange("Date Filter", StartDate, EndDate1);
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
                    group(AdjustmentPeriod)
                    {
                        Caption = 'Adjustment Period';
                        field(StartingDate; StartDate)
                        {
                            Caption = 'Starting Date';
                        }
                        field(EndingDate; EndDateReq)
                        {
                            Caption = 'Ending Date';

                            trigger OnValidate()
                            begin
                                PostingDate := EndDateReq;
                            end;
                        }
                    }
                    field(PostingDescription; PostingDescription)
                    {
                        Caption = 'Posting Description';
                    }
                    field(PostingDate; PostingDate)
                    {
                        Caption = 'Posting Date';

                        trigger OnValidate()
                        begin
                            CheckPostingDate;
                        end;
                    }
                    field(DocumentNo; PostingDocNo)
                    {
                        Caption = 'Document No.';
                    }
                    field(g_AdjCustVendBank2; g_AdjCustVendBank2)
                    {
                        Caption = 'Adjust Customer';
                        MultiLine = true;
                    }
                    field(g_AdjCustVendBank3; g_AdjCustVendBank3)
                    {
                        Caption = 'Adjust Vendor';
                        MultiLine = true;
                    }
                    field(AdjCustVendBank; AdjCustVendBank)
                    {
                        Caption = 'Adjust Bank Accounts';
                        MultiLine = true;
                    }
                    field(AdjGLAcc; AdjGLAcc)
                    {
                        Caption = 'Adjust G/L Accounts for Add.-Reporting Currency';
                        MultiLine = true;
                    }
                    field(CashFlowAccount; CashFlowAccount)
                    {
                        ApplicationArea = All;
                        Caption = 'Cash Flow Account';
                        TableRelation = "PTSS Cash-Flow Plan" where(Type = const(posting));
                        trigger OnValidate()
                        var
                            PTSSCashFlow: Record "PTSS Cash-Flow Plan";
                        begin
                            if CashFlowAccount <> '' then begin
                                PTSSCashFlow.Get(CashFlowAccount);
                                PTSSCashFlow.Testfield(Type, PTSSCashFlow.Type::Posting);
                            end;
                        end;
                    }
                }
                group(Dimensions)
                {
                    Caption = 'Dimensions';
                    field(ShortcutDimensionsCode1; ShortcutDimCode[1])
                    {
                        TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1), "Dimension Value Type" = CONST(Standard), Blocked = CONST(false));
                        CaptionClass = '1,2,1';
                        Visible = ShortcutDimVisible1;
                    }
                    field(ShortcutDimensionsCode2; ShortcutDimCode[2])
                    {
                        TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2), "Dimension Value Type" = CONST(Standard), Blocked = CONST(false));
                        CaptionClass = '1,2,2';
                        Visible = ShortcutDimVisible2;
                    }
                    field(ShortcutDimensionsCode3; ShortcutDimCode[3])
                    {
                        TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(3), "Dimension Value Type" = CONST(Standard), Blocked = CONST(false));
                        CaptionClass = '1,2,3';
                        Visible = ShortcutDimVisible3;
                    }
                    field(ShortcutDimensionsCode4; ShortcutDimCode[4])
                    {
                        TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(4), "Dimension Value Type" = CONST(Standard), Blocked = CONST(false));
                        CaptionClass = '1,2,4';
                        Visible = ShortcutDimVisible4;
                    }
                    field(ShortcutDimensionsCode5; ShortcutDimCode[5])
                    {
                        TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(5), "Dimension Value Type" = CONST(Standard), Blocked = CONST(false));
                        CaptionClass = '1,2,5';
                        Visible = ShortcutDimVisible5;
                    }
                    field(ShortcutDimensionsCode6; ShortcutDimCode[6])
                    {
                        TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(6), "Dimension Value Type" = CONST(Standard), Blocked = CONST(false));
                        CaptionClass = '1,2,6';
                        Visible = ShortcutDimVisible6;
                    }
                    field(ShortcutDimensionsCode7; ShortcutDimCode[7])
                    {
                        TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(7), "Dimension Value Type" = CONST(Standard), Blocked = CONST(false));
                        CaptionClass = '1,2,7';
                        Visible = ShortcutDimVisible7;
                    }
                    field(ShortcutDimensionsCode8; ShortcutDimCode[8])
                    {
                        TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(8), "Dimension Value Type" = CONST(Standard), Blocked = CONST(false));
                        CaptionClass = '1,2,8';
                        Visible = ShortcutDimVisible8;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            GetDimVisible();
            if PostingDescription = '' then
                PostingDescription := Text016;
            if not (AdjCustVendBank or g_AdjCustVendBank2 or g_AdjCustVendBank3 or AdjGLAcc) then begin
                AdjCustVendBank := true;
                g_AdjCustVendBank2 := true;
                g_AdjCustVendBank3 := true;
            end;
        end;
    }

    trigger OnPostReport()
    begin
        UpdateAnalysisView.UpdateAll(0, true);
        if TotalCustomersAdjusted + TotalVendorsAdjusted + TotalBankAccountsAdjusted + TotalGLAccountsAdjusted < 1 then
            Message(NothingToAdjustMsg)
        else
            Message(RatesAdjustedMsg);
    end;

    trigger OnPreReport()
    begin
        if EndDateReq = 0D then
            EndDate1 := 99991231D
        else
            EndDate1 := EndDateReq;
        if PostingDocNo = '' then
            Error(Text000, GenJnlLine.FieldCaption("Document No."));

        g_CurrencyFilters := Currency.GetFilters;
        g_ReportBufferEntryNo := 1;

        if not (AdjCustVendBank or g_AdjCustVendBank2 or g_AdjCustVendBank3) and AdjGLAcc then
            if not Confirm(Text001 + Text004, false) then
                Error(Text005);

        if CashFlowAccount = '' then
            Error(Text50000);

        SourceCodeSetup.Get;

        if ExchRateAdjReg.FindLast then
            ExchRateAdjReg.Init;

        GLSetup.Get;

        if AdjGLAcc then begin
            GLSetup.TestField("Additional Reporting Currency");

            Currency3.Get(GLSetup."Additional Reporting Currency");
            Currency3.TestField("Realized G/L Gains Account");
            "G/L Account".Get(Currency3."Realized G/L Gains Account");
            "G/L Account".TestField(
              "Exchange Rate Adjustment",
              "G/L Account"."Exchange Rate Adjustment"::"No Adjustment");

            Currency3.TestField("Realized G/L Losses Account");
            "G/L Account".Get(Currency3."Realized G/L Losses Account");
            "G/L Account".TestField(
              "Exchange Rate Adjustment",
              "G/L Account"."Exchange Rate Adjustment"::"No Adjustment");

            with VATPostingSetup2 do
                if Find('-') then
                    repeat
                        if "VAT Calculation Type" <> "VAT Calculation Type"::"Sales Tax" then begin
                            CheckExchRateAdjustment(
                              "Purchase VAT Account", TableCaption, FieldCaption("Purchase VAT Account"));
                            CheckExchRateAdjustment(
                              "Reverse Chrg. VAT Acc.", TableCaption, FieldCaption("Reverse Chrg. VAT Acc."));
                            CheckExchRateAdjustment(
                              "Purch. VAT Unreal. Account", TableCaption, FieldCaption("Purch. VAT Unreal. Account"));
                            CheckExchRateAdjustment(
                              "Reverse Chrg. VAT Unreal. Acc.", TableCaption, FieldCaption("Reverse Chrg. VAT Unreal. Acc."));
                            CheckExchRateAdjustment(
                              "Sales VAT Account", TableCaption, FieldCaption("Sales VAT Account"));
                            CheckExchRateAdjustment(
                              "Sales VAT Unreal. Account", TableCaption, FieldCaption("Sales VAT Unreal. Account"));
                        end;
                    until Next = 0;

            with TaxJurisdiction2 do
                if Find('-') then
                    repeat
                        CheckExchRateAdjustment(
                          "Tax Account (Purchases)", TableCaption, FieldCaption("Tax Account (Purchases)"));
                        CheckExchRateAdjustment(
                          "Reverse Charge (Purchases)", TableCaption, FieldCaption("Reverse Charge (Purchases)"));
                        CheckExchRateAdjustment(
                          "Unreal. Tax Acc. (Purchases)", TableCaption, FieldCaption("Unreal. Tax Acc. (Purchases)"));
                        CheckExchRateAdjustment(
                          "Unreal. Rev. Charge (Purch.)", TableCaption, FieldCaption("Unreal. Rev. Charge (Purch.)"));
                        CheckExchRateAdjustment(
                          "Tax Account (Sales)", TableCaption, FieldCaption("Tax Account (Sales)"));
                        CheckExchRateAdjustment(
                          "Unreal. Tax Acc. (Sales)", TableCaption, FieldCaption("Unreal. Tax Acc. (Sales)"));
                    until Next = 0;

            AddCurrCurrencyFactor :=
              CurrExchRate2.ExchangeRateAdjmt(PostingDate, GLSetup."Additional Reporting Currency");
        end;
    end;

    var
        Text000: Label '%1 must be entered.';
        Text001: Label 'Do you want to adjust general ledger entries for currency fluctuations without adjusting customer, vendor and bank ledger entries? This may result in incorrect currency adjustments to payables, receivables and bank accounts.\\ ';
        Text004: Label 'Do you wish to continue?';
        Text005: Label 'The adjustment of exchange rates has been canceled.';
        Text006: Label 'Adjusting exchange rates...\\';
        Text007: Label 'Bank Account    @1@@@@@@@@@@@@@\\';
        Text008: Label 'Customer        @2@@@@@@@@@@@@@\';
        Text009: Label 'Vendor          @3@@@@@@@@@@@@@\';
        Text010: Label 'Adjustment      #4#############';
        Text011: Label 'No currencies have been found.';
        Text012: Label 'Adjusting VAT Entries...\\';
        Text013: Label 'VAT Entry    @1@@@@@@@@@@@@@';
        Text014: Label 'Adjusting general ledger...\\';
        Text015: Label 'G/L Account    @1@@@@@@@@@@@@@';
        Text016: Label 'Ex.Rate Adj. %1 %2 %3', Comment = '%1 = Currency Code, %2= Adjust Amount';
        Text017: Label '%1 on %2 %3 must be %4. When this %2 is used in %5, the exchange rate adjustment is defined in the %6 field in the %7. %2 %3 is used in the %8 field in the %5. ';
        DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
        TempDtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry" temporary;
        DtldVendLedgEntry: Record "Detailed Vendor Ledg. Entry";
        TempDtldVendLedgEntry: Record "Detailed Vendor Ledg. Entry" temporary;
        ExchRateAdjReg: Record "Exch. Rate Adjmt. Reg.";
        CustPostingGr: Record "Customer Posting Group";
        VendPostingGr: Record "Vendor Posting Group";
        GenJnlLine: Record "Gen. Journal Line";
        SourceCodeSetup: Record "Source Code Setup";
        AdjExchRateBuffer: Record "PTSS Adj. Exch. Rate Buffer" temporary;
        AdjExchRateBuffer2: Record "PTSS Adj. Exch. Rate Buffer" temporary;
        Currency2: Record Currency temporary;
        Currency3: Record Currency;
        CurrExchRate: Record "Currency Exchange Rate";
        CurrExchRate2: Record "Currency Exchange Rate";
        GLSetup: Record "General Ledger Setup";
        VATEntry: Record "VAT Entry";
        VATEntry2: Record "VAT Entry";
        VATEntryTotalBase: Record "VAT Entry";
        TaxJurisdiction: Record "Tax Jurisdiction";
        VATPostingSetup2: Record "VAT Posting Setup";
        TaxJurisdiction2: Record "Tax Jurisdiction";
        TempDimBuf: Record "Dimension Buffer" temporary;
        TempDimBuf2: Record "Dimension Buffer" temporary;
        TempDimSetEntry: Record "Dimension Set Entry" temporary;
        TempEntryNoAmountBuf: Record "Entry No. Amount Buffer" temporary;
        CustLedgerEntry: Record "Cust. Ledger Entry";
        TempCustLedgerEntry: Record "Cust. Ledger Entry" temporary;
        VendorLedgerEntry: Record "Vendor Ledger Entry";
        TempVendorLedgerEntry: Record "Vendor Ledger Entry" temporary;
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
        UpdateAnalysisView: Codeunit "Update Analysis View";
        DimMgt: Codeunit DimensionManagement;
        DimBufMgt: Codeunit "Dimension Buffer Management";
        Window: Dialog;
        TotalAdjBase: Decimal;
        TotalAdjBaseLCY: Decimal;
        TotalAdjAmount: Decimal;
        GainsAmount: Decimal;
        LossesAmount: Decimal;
        PostingDate: Date;
        PostingDescription: Text[100];
        AdjBase: Decimal;
        AdjBaseLCY: Decimal;
        AdjAmount: Decimal;
        CustNo: Decimal;
        CustNoTotal: Decimal;
        VendNo: Decimal;
        VendNoTotal: Decimal;
        BankAccNo: Decimal;
        BankAccNoTotal: Decimal;
        GLAccNo: Decimal;
        GLAccNoTotal: Decimal;
        GLAmtTotal: Decimal;
        GLAddCurrAmtTotal: Decimal;
        GLNetChangeTotal: Decimal;
        GLAddCurrNetChangeTotal: Decimal;
        GLNetChangeBase: Decimal;
        GLAddCurrNetChangeBase: Decimal;
        PostingDocNo: Code[20];
        StartDate: Date;
        EndDate1: Date;
        EndDateReq: Date;
        Correction: Boolean;
        OK: Boolean;
        AdjCustVendBank: Boolean;
        AdjGLAcc: Boolean;
        AddCurrCurrencyFactor: Decimal;
        VATEntryNoTotal: Decimal;
        VATEntryNo: Decimal;
        NewEntryNo: Integer;
        Text018: Label 'This posting date cannot be entered because it does not occur within the adjustment period. Reenter the posting date.';
        FirstEntry: Boolean;
        MaxAdjExchRateBufIndex: Integer;
        RatesAdjustedMsg: Label 'One or more currency exchange rates have been adjusted';
        NothingToAdjustMsg: Label 'There is nothing to adjust';
        TotalBankAccountsAdjusted: Integer;
        TotalCustomersAdjusted: Integer;
        TotalVendorsAdjusted: Integer;
        TotalGLAccountsAdjusted: Integer;
        g_TempBankAccountBuffer: array[2] of Record "Adj. Exch. Rates Report Buffer" temporary;
        g_TempAdjExchRatesReportBuffer: Record "Adj. Exch. Rates Report Buffer" temporary;
        g_CurrencyFilters: Text;
        g_AdjCustVendBank2: Boolean;
        g_AdjCustVendBank3: Boolean;
        g_ReportBufferEntryNo: Integer;
        CashFlowAccount: Code[20];
        Codigo: Code[20];
        ShortcutDimCode: array[8] of Code[20];
        ShortcutDimVisible1: Boolean;
        ShortcutDimVisible2: Boolean;
        ShortcutDimVisible3: Boolean;
        ShortcutDimVisible4: Boolean;
        ShortcutDimVisible5: Boolean;
        ShortcutDimVisible6: Boolean;
        ShortcutDimVisible7: Boolean;
        ShortcutDimVisible8: Boolean;
        Text50000: Label 'You must select a Cash Flow Account.';

    local procedure PostAdjmt(GLAccNo: Code[20]; PostingAmount: Decimal; AdjBase2: Decimal; CurrencyCode2: Code[10]; var DimSetEntry: Record "Dimension Set Entry"; PostingDate2: Date; ICCode: Code[20]) TransactionNo: Integer
    begin
        with GenJnlLine do
            if PostingAmount <> 0 then begin
                Init;
                Validate("Posting Date", PostingDate2);
                "Document No." := PostingDocNo;
                "Account Type" := "Account Type"::"G/L Account";
                Validate("Account No.", GLAccNo);
                Description := CopyStr(StrSubstNo(PostingDescription, CurrencyCode2, AdjBase2, Codigo), 1, 100);
                Validate(Amount, PostingAmount);
                "Source Currency Code" := CurrencyCode2;
                "IC Partner Code" := ICCode;
                if CurrencyCode2 = GLSetup."Additional Reporting Currency" then
                    "Source Currency Amount" := 0;
                "Source Code" := SourceCodeSetup."Exchange Rate Adjmt.";
                "System-Created Entry" := true;
                TransactionNo := PostGenJnlLine(GenJnlLine, DimSetEntry);
            end;
    end;

    local procedure InsertExchRateAdjmtReg(AdjustAccType: enum "AdjExchRates Account Type"; PostingGrCode: Code[10]; CurrencyCode: Code[10])
    begin
        if Currency2.Code <> CurrencyCode then
            Currency2.Get(CurrencyCode);

        with ExchRateAdjReg do begin
            "No." := "No." + 1;
            "Creation Date" := PostingDate;
            "Account Type" := AdjustAccType;
            "Posting Group" := PostingGrCode;
            "Currency Code" := Currency2.Code;
            "Currency Factor" := Currency2."Currency Factor";
            "Adjusted Base" := AdjExchRateBuffer.AdjBase;
            "Adjusted Base (LCY)" := AdjExchRateBuffer.AdjBaseLCY;
            "Adjusted Amt. (LCY)" := AdjExchRateBuffer.AdjAmount;
            Insert;
        end;
    end;

    local procedure AdjExchRateBufferUpdate(CurrencyCode2: Code[10]; PostingGroup2: Code[10]; AdjBase2: Decimal; AdjBaseLCY2: Decimal; AdjAmount2: Decimal; GainsAmount2: Decimal; LossesAmount2: Decimal; DimEntryNo: Integer; Postingdate2: Date; ICCode: Code[20]; p_PostingGrAccNo: Code[20]; p_EntityNo: Code[20]): Integer
    begin
        AdjExchRateBuffer.Init;
        // --ITNPT7.10.01.00009--
        OK := AdjExchRateBuffer.Get(CurrencyCode2, PostingGroup2, DimEntryNo, Postingdate2, ICCode, p_EntityNo, p_PostingGrAccNo);
        // ------------end-

        AdjExchRateBuffer.AdjBase := AdjExchRateBuffer.AdjBase + AdjBase2;
        AdjExchRateBuffer.AdjBaseLCY := AdjExchRateBuffer.AdjBaseLCY + AdjBaseLCY2;
        AdjExchRateBuffer.AdjAmount := AdjExchRateBuffer.AdjAmount + AdjAmount2;
        AdjExchRateBuffer.TotalGainsAmount := AdjExchRateBuffer.TotalGainsAmount + GainsAmount2;
        AdjExchRateBuffer.TotalLossesAmount := AdjExchRateBuffer.TotalLossesAmount + LossesAmount2;

        if not OK then begin
            AdjExchRateBuffer."Currency Code" := CurrencyCode2;
            AdjExchRateBuffer."Posting Group" := PostingGroup2;
            AdjExchRateBuffer."Dimension Entry No." := DimEntryNo;
            AdjExchRateBuffer."Posting Date" := Postingdate2;
            AdjExchRateBuffer."IC Partner Code" := ICCode;
            // --ITNPT7.10.01.00009--
            AdjExchRateBuffer."No." := p_EntityNo;
            AdjExchRateBuffer."Account No." := p_PostingGrAccNo;
            // ------------end-
            MaxAdjExchRateBufIndex += 1;
            AdjExchRateBuffer.Index := MaxAdjExchRateBufIndex;
            AdjExchRateBuffer.Insert;
        end else
            AdjExchRateBuffer.Modify;

        exit(AdjExchRateBuffer.Index);
    end;

    local procedure HandlePostAdjmt(AdjustAccType: Integer)
    var
        GLEntry: Record "G/L Entry";
        TempDtldCVLedgEntryBuf: Record "Detailed CV Ledg. Entry Buffer" temporary;
    begin
        if AdjExchRateBuffer.Find('-') then begin
            // Summarize per currency and dimension combination and customer/vendor
            repeat
                AdjExchRateBuffer2.Init;
                // --ITNPT7.10.01.00009--
                OK :=
                  AdjExchRateBuffer2.Get(
                    AdjExchRateBuffer."Currency Code",
                    '',
                    AdjExchRateBuffer."Dimension Entry No.",
                    AdjExchRateBuffer."Posting Date",
                    AdjExchRateBuffer."IC Partner Code",
                    AdjExchRateBuffer."No.", //ANAV1.00
                    '');
                // ------------end-
                AdjExchRateBuffer2.AdjBase := AdjExchRateBuffer2.AdjBase + AdjExchRateBuffer.AdjBase;
                AdjExchRateBuffer2.TotalGainsAmount := AdjExchRateBuffer2.TotalGainsAmount + AdjExchRateBuffer.TotalGainsAmount;
                AdjExchRateBuffer2.TotalLossesAmount := AdjExchRateBuffer2.TotalLossesAmount + AdjExchRateBuffer.TotalLossesAmount;
                if not OK then begin
                    AdjExchRateBuffer2."Currency Code" := AdjExchRateBuffer."Currency Code";
                    AdjExchRateBuffer2."Dimension Entry No." := AdjExchRateBuffer."Dimension Entry No.";
                    AdjExchRateBuffer2."Posting Date" := AdjExchRateBuffer."Posting Date";
                    AdjExchRateBuffer2."IC Partner Code" := AdjExchRateBuffer."IC Partner Code";
                    AdjExchRateBuffer2."No." := AdjExchRateBuffer."No."; //ANAV1.00
                    AdjExchRateBuffer2.Insert;
                end else
                    AdjExchRateBuffer2.Modify;
            until AdjExchRateBuffer.Next = 0;

            // Post per posting group and per currency
            if AdjExchRateBuffer2.Find('-') then
                repeat
                    with AdjExchRateBuffer do begin
                        SetRange("Currency Code", AdjExchRateBuffer2."Currency Code");
                        SetRange("Dimension Entry No.", AdjExchRateBuffer2."Dimension Entry No.");
                        SetRange("Posting Date", AdjExchRateBuffer2."Posting Date");
                        SetRange("IC Partner Code", AdjExchRateBuffer2."IC Partner Code");
                        SetRange("No.", AdjExchRateBuffer2."No."); //ANAV1.00
                        TempDimBuf.Reset;
                        TempDimBuf.DeleteAll;
                        TempDimSetEntry.Reset;
                        TempDimSetEntry.DeleteAll;
                        Find('-');
                        DimBufMgt.GetDimensions("Dimension Entry No.", TempDimBuf);
                        DimMgt.CopyDimBufToDimSetEntry(TempDimBuf, TempDimSetEntry);
                        repeat
                            TempDtldCVLedgEntryBuf.Init;
                            TempDtldCVLedgEntryBuf."Entry No." := Index;
                            if AdjAmount <> 0 then
                                case AdjustAccType of
                                    1: // Customer
                                        begin
                                            Codigo := AdjExchRateBuffer."No.";
                                            TempDtldCVLedgEntryBuf."Transaction No." :=
                                              PostAdjmt(
                                                "Account No.", AdjAmount, AdjBase, "Currency Code", TempDimSetEntry,
                                                AdjExchRateBuffer2."Posting Date", "IC Partner Code");
                                            if TempDtldCVLedgEntryBuf.Insert then;
                                            InsertExchRateAdjmtReg("AdjExchRates Account Type"::Customer, "Posting Group", "Currency Code");
                                            TotalCustomersAdjusted += 1;
                                        end;
                                    2: // Vendor
                                        begin
                                            Codigo := AdjExchRateBuffer."No.";
                                            TempDtldCVLedgEntryBuf."Transaction No." :=
                                              PostAdjmt(
                                                "Account No.", AdjAmount, AdjBase, "Currency Code", TempDimSetEntry,
                                                AdjExchRateBuffer2."Posting Date", "IC Partner Code");
                                            if TempDtldCVLedgEntryBuf.Insert then;
                                            InsertExchRateAdjmtReg("AdjExchRates Account Type"::Vendor, "Posting Group", "Currency Code");
                                            TotalVendorsAdjusted += 1;
                                        end;
                                end;
                        until Next = 0;
                    end;

                    with AdjExchRateBuffer2 do begin
                        Codigo := AdjExchRateBuffer."No.";//ANAV1.00
                        Currency2.Get("Currency Code");
                        if TotalGainsAmount <> 0 then begin
                            Currency2.TestField("Unrealized Gains Acc.");
                            PostAdjmt(
                              Currency2."Unrealized Gains Acc.", -TotalGainsAmount, AdjBase, "Currency Code", TempDimSetEntry,
                              "Posting Date", "IC Partner Code");
                        end;
                        if TotalLossesAmount <> 0 then begin
                            Currency2.TestField("Unrealized Losses Acc.");
                            PostAdjmt(
                              Currency2."Unrealized Losses Acc.", -TotalLossesAmount, AdjBase, "Currency Code", TempDimSetEntry,
                              "Posting Date", "IC Partner Code");
                        end;
                    end;
                until AdjExchRateBuffer2.Next = 0;

            GLEntry.FindLast;
            case AdjustAccType of
                1: // Customer
                    if TempDtldCustLedgEntry.Find('-') then
                        repeat
                            if TempDtldCVLedgEntryBuf.Get(TempDtldCustLedgEntry."Transaction No.") then
                                TempDtldCustLedgEntry."Transaction No." := TempDtldCVLedgEntryBuf."Transaction No."
                            else
                                TempDtldCustLedgEntry."Transaction No." := GLEntry."Transaction No.";
                            DtldCustLedgEntry := TempDtldCustLedgEntry;
                            DtldCustLedgEntry.Insert(true);
                        until TempDtldCustLedgEntry.Next = 0;
                2: // Vendor
                    if TempDtldVendLedgEntry.Find('-') then
                        repeat
                            if TempDtldCVLedgEntryBuf.Get(TempDtldVendLedgEntry."Transaction No.") then
                                TempDtldVendLedgEntry."Transaction No." := TempDtldCVLedgEntryBuf."Transaction No."
                            else
                                TempDtldVendLedgEntry."Transaction No." := GLEntry."Transaction No.";
                            DtldVendLedgEntry := TempDtldVendLedgEntry;
                            DtldVendLedgEntry.Insert(true);
                        until TempDtldVendLedgEntry.Next = 0;
            end;

            AdjExchRateBuffer.Reset;
            AdjExchRateBuffer.DeleteAll;
            AdjExchRateBuffer2.Reset;
            AdjExchRateBuffer2.DeleteAll;
            TempDtldCustLedgEntry.Reset;
            TempDtldCustLedgEntry.DeleteAll;
            TempDtldVendLedgEntry.Reset;
            TempDtldVendLedgEntry.DeleteAll;
        end;
    end;

    local procedure AdjustVATEntries(VATType: Enum "General Posting Type"; UseTax: Boolean)
    begin
        Clear(VATEntry2);
        with VATEntry do begin
            SetRange(Type, VATType);
            SetRange("Use Tax", UseTax);
            if Find('-') then
                repeat
                    Accumulate(VATEntry2.Base, Base);
                    Accumulate(VATEntry2.Amount, Amount);
                    Accumulate(VATEntry2."Unrealized Amount", "Unrealized Amount");
                    Accumulate(VATEntry2."Unrealized Base", "Unrealized Base");
                    Accumulate(VATEntry2."Remaining Unrealized Amount", "Remaining Unrealized Amount");
                    Accumulate(VATEntry2."Remaining Unrealized Base", "Remaining Unrealized Base");
                    Accumulate(VATEntry2."Additional-Currency Amount", "Additional-Currency Amount");
                    Accumulate(VATEntry2."Additional-Currency Base", "Additional-Currency Base");
                    Accumulate(VATEntry2."Add.-Currency Unrealized Amt.", "Add.-Currency Unrealized Amt.");
                    Accumulate(VATEntry2."Add.-Currency Unrealized Base", "Add.-Currency Unrealized Base");
                    Accumulate(VATEntry2."Add.-Curr. Rem. Unreal. Amount", "Add.-Curr. Rem. Unreal. Amount");
                    Accumulate(VATEntry2."Add.-Curr. Rem. Unreal. Base", "Add.-Curr. Rem. Unreal. Base");

                    Accumulate(VATEntryTotalBase.Base, Base);
                    Accumulate(VATEntryTotalBase.Amount, Amount);
                    Accumulate(VATEntryTotalBase."Unrealized Amount", "Unrealized Amount");
                    Accumulate(VATEntryTotalBase."Unrealized Base", "Unrealized Base");
                    Accumulate(VATEntryTotalBase."Remaining Unrealized Amount", "Remaining Unrealized Amount");
                    Accumulate(VATEntryTotalBase."Remaining Unrealized Base", "Remaining Unrealized Base");
                    Accumulate(VATEntryTotalBase."Additional-Currency Amount", "Additional-Currency Amount");
                    Accumulate(VATEntryTotalBase."Additional-Currency Base", "Additional-Currency Base");
                    Accumulate(VATEntryTotalBase."Add.-Currency Unrealized Amt.", "Add.-Currency Unrealized Amt.");
                    Accumulate(VATEntryTotalBase."Add.-Currency Unrealized Base", "Add.-Currency Unrealized Base");
                    Accumulate(
                      VATEntryTotalBase."Add.-Curr. Rem. Unreal. Amount", "Add.-Curr. Rem. Unreal. Amount");
                    Accumulate(VATEntryTotalBase."Add.-Curr. Rem. Unreal. Base", "Add.-Curr. Rem. Unreal. Base");

                    AdjustVATAmount(Base, "Additional-Currency Base");
                    AdjustVATAmount(Amount, "Additional-Currency Amount");
                    AdjustVATAmount("Unrealized Amount", "Add.-Currency Unrealized Amt.");
                    AdjustVATAmount("Unrealized Base", "Add.-Currency Unrealized Base");
                    AdjustVATAmount("Remaining Unrealized Amount", "Add.-Curr. Rem. Unreal. Amount");
                    AdjustVATAmount("Remaining Unrealized Base", "Add.-Curr. Rem. Unreal. Base");
                    Modify;

                    Accumulate(VATEntry2.Base, -Base);
                    Accumulate(VATEntry2.Amount, -Amount);
                    Accumulate(VATEntry2."Unrealized Amount", -"Unrealized Amount");
                    Accumulate(VATEntry2."Unrealized Base", -"Unrealized Base");
                    Accumulate(VATEntry2."Remaining Unrealized Amount", -"Remaining Unrealized Amount");
                    Accumulate(VATEntry2."Remaining Unrealized Base", -"Remaining Unrealized Base");
                    Accumulate(VATEntry2."Additional-Currency Amount", -"Additional-Currency Amount");
                    Accumulate(VATEntry2."Additional-Currency Base", -"Additional-Currency Base");
                    Accumulate(VATEntry2."Add.-Currency Unrealized Amt.", -"Add.-Currency Unrealized Amt.");
                    Accumulate(VATEntry2."Add.-Currency Unrealized Base", -"Add.-Currency Unrealized Base");
                    Accumulate(VATEntry2."Add.-Curr. Rem. Unreal. Amount", -"Add.-Curr. Rem. Unreal. Amount");
                    Accumulate(VATEntry2."Add.-Curr. Rem. Unreal. Base", -"Add.-Curr. Rem. Unreal. Base");
                until Next = 0;
        end;
    end;

    local procedure AdjustVATAmount(var AmountLCY: Decimal; var AmountAddCurr: Decimal)
    begin
        case GLSetup."VAT Exchange Rate Adjustment" of
            GLSetup."VAT Exchange Rate Adjustment"::"Adjust Amount":
                AmountLCY :=
                  Round(
                    CurrExchRate2.ExchangeAmtFCYToLCYAdjmt(
                      PostingDate, GLSetup."Additional Reporting Currency",
                      AmountAddCurr, AddCurrCurrencyFactor));
            GLSetup."VAT Exchange Rate Adjustment"::"Adjust Additional-Currency Amount":
                AmountAddCurr :=
                  Round(
                    CurrExchRate2.ExchangeAmtLCYToFCY(
                      PostingDate, GLSetup."Additional Reporting Currency",
                      AmountLCY, AddCurrCurrencyFactor));
        end;
    end;

    local procedure AdjustVATAccount(AccNo: Code[20]; AmountLCY: Decimal; AmountAddCurr: Decimal; BaseLCY: Decimal; BaseAddCurr: Decimal)
    begin
        "G/L Account".Get(AccNo);
        "G/L Account".SetRange("Date Filter", StartDate, EndDate1);
        case GLSetup."VAT Exchange Rate Adjustment" of
            GLSetup."VAT Exchange Rate Adjustment"::"Adjust Amount":
                PostGLAccAdjmt(
                  AccNo, GLSetup."VAT Exchange Rate Adjustment"::"Adjust Amount".AsInteger(),
                  -AmountLCY, BaseLCY, BaseAddCurr);
            GLSetup."VAT Exchange Rate Adjustment"::"Adjust Additional-Currency Amount":
                PostGLAccAdjmt(
                  AccNo, GLSetup."VAT Exchange Rate Adjustment"::"Adjust Additional-Currency Amount".AsInteger(),
                  -AmountAddCurr, BaseLCY, BaseAddCurr);
        end;
    end;

    local procedure AdjustPurchTax(UseTax: Boolean)
    begin
        if (VATEntry2.Amount <> 0) or (VATEntry2."Additional-Currency Amount" <> 0) then begin
            TaxJurisdiction.TestField("Tax Account (Purchases)");
            AdjustVATAccount(
              TaxJurisdiction."Tax Account (Purchases)",
              VATEntry2.Amount, VATEntry2."Additional-Currency Amount",
              VATEntryTotalBase.Amount, VATEntryTotalBase."Additional-Currency Amount");
            if UseTax then begin
                TaxJurisdiction.TestField("Reverse Charge (Purchases)");
                AdjustVATAccount(
                  TaxJurisdiction."Reverse Charge (Purchases)",
                  -VATEntry2.Amount, -VATEntry2."Additional-Currency Amount",
                  -VATEntryTotalBase.Amount, -VATEntryTotalBase."Additional-Currency Amount");
            end;
        end;
        if (VATEntry2."Remaining Unrealized Amount" <> 0) or
           (VATEntry2."Add.-Curr. Rem. Unreal. Amount" <> 0)
        then begin
            TaxJurisdiction.TestField("Unrealized VAT Type");
            TaxJurisdiction.TestField("Unreal. Tax Acc. (Purchases)");
            AdjustVATAccount(
              TaxJurisdiction."Unreal. Tax Acc. (Purchases)",
              VATEntry2."Remaining Unrealized Amount", VATEntry2."Add.-Curr. Rem. Unreal. Amount",
              VATEntryTotalBase."Remaining Unrealized Amount", VATEntry2."Add.-Curr. Rem. Unreal. Amount");

            if UseTax then begin
                TaxJurisdiction.TestField("Unreal. Rev. Charge (Purch.)");
                AdjustVATAccount(
                  TaxJurisdiction."Unreal. Rev. Charge (Purch.)",
                  -VATEntry2."Remaining Unrealized Amount",
                  -VATEntry2."Add.-Curr. Rem. Unreal. Amount",
                  -VATEntryTotalBase."Remaining Unrealized Amount",
                  -VATEntryTotalBase."Add.-Curr. Rem. Unreal. Amount");
            end;
        end;
    end;

    local procedure AdjustSalesTax()
    begin
        TaxJurisdiction.TestField("Tax Account (Sales)");
        AdjustVATAccount(
          TaxJurisdiction."Tax Account (Sales)",
          VATEntry2.Amount, VATEntry2."Additional-Currency Amount",
          VATEntryTotalBase.Amount, VATEntryTotalBase."Additional-Currency Amount");
        if (VATEntry2."Remaining Unrealized Amount" <> 0) or
           (VATEntry2."Add.-Curr. Rem. Unreal. Amount" <> 0)
        then begin
            TaxJurisdiction.TestField("Unrealized VAT Type");
            TaxJurisdiction.TestField("Unreal. Tax Acc. (Sales)");
            AdjustVATAccount(
              TaxJurisdiction."Unreal. Tax Acc. (Sales)",
              VATEntry2."Remaining Unrealized Amount",
              VATEntry2."Add.-Curr. Rem. Unreal. Amount",
              VATEntryTotalBase."Remaining Unrealized Amount",
              VATEntryTotalBase."Add.-Curr. Rem. Unreal. Amount");
        end;
    end;

    local procedure Accumulate(var TotalAmount: Decimal; AmountToAdd: Decimal)
    begin
        TotalAmount := TotalAmount + AmountToAdd;
    end;

    local procedure PostGLAccAdjmt(GLAccNo: Code[20]; ExchRateAdjmt: Integer; Amount: Decimal; NetChange: Decimal; AddCurrNetChange: Decimal)
    begin
        GenJnlLine.Init;
        case ExchRateAdjmt of
            "G/L Account"."Exchange Rate Adjustment"::"Adjust Amount".AsInteger():
                begin
                    GenJnlLine."Additional-Currency Posting" := GenJnlLine."Additional-Currency Posting"::"Amount Only";
                    GenJnlLine."Currency Code" := '';
                    GenJnlLine.Amount := Amount;
                    GenJnlLine."Amount (LCY)" := GenJnlLine.Amount;
                    GLAmtTotal := GLAmtTotal + GenJnlLine.Amount;
                    GLAddCurrNetChangeTotal := GLAddCurrNetChangeTotal + AddCurrNetChange;
                    GLNetChangeBase := GLNetChangeBase + NetChange;
                end;
            "G/L Account"."Exchange Rate Adjustment"::"Adjust Additional-Currency Amount".AsInteger():
                begin
                    GenJnlLine."Additional-Currency Posting" := GenJnlLine."Additional-Currency Posting"::"Additional-Currency Amount Only";
                    GenJnlLine."Currency Code" := GLSetup."Additional Reporting Currency";
                    GenJnlLine.Amount := Amount;
                    GenJnlLine."Amount (LCY)" := 0;
                    GLAddCurrAmtTotal := GLAddCurrAmtTotal + GenJnlLine.Amount;
                    GLNetChangeTotal := GLNetChangeTotal + NetChange;
                    GLAddCurrNetChangeBase := GLAddCurrNetChangeBase + AddCurrNetChange;
                end;
        end;
        if GenJnlLine.Amount <> 0 then begin
            GenJnlLine."Document No." := PostingDocNo;
            GenJnlLine."Account Type" := GenJnlLine."Account Type"::"G/L Account";
            GenJnlLine."Account No." := GLAccNo;
            GenJnlLine."Posting Date" := PostingDate;
            case GenJnlLine."Additional-Currency Posting" of
                GenJnlLine."Additional-Currency Posting"::"Amount Only":
                    GenJnlLine.Description :=
                      StrSubstNo(
                        PostingDescription,
                        GLSetup."Additional Reporting Currency",
                        AddCurrNetChange);
                GenJnlLine."Additional-Currency Posting"::"Additional-Currency Amount Only":
                    GenJnlLine.Description :=
                      StrSubstNo(
                        PostingDescription,
                        '',
                        NetChange);
            end;
            GenJnlLine."System-Created Entry" := true;
            GenJnlLine."Source Code" := SourceCodeSetup."Exchange Rate Adjmt.";
            GetJnlLineDefDim(GenJnlLine, TempDimSetEntry);
            PostGenJnlLine(GenJnlLine, TempDimSetEntry);
        end;
    end;

    local procedure CheckExchRateAdjustment(AccNo: Code[20]; SetupTableName: Text[100]; SetupFieldName: Text[100])
    var
        GLAcc: Record "G/L Account";
        GLSetup: Record "General Ledger Setup";
    begin
        if AccNo = '' then
            exit;
        GLAcc.Get(AccNo);
        if GLAcc."Exchange Rate Adjustment" <> GLAcc."Exchange Rate Adjustment"::"No Adjustment" then begin
            GLAcc."Exchange Rate Adjustment" := GLAcc."Exchange Rate Adjustment"::"No Adjustment";
            Error(
              Text017,
              GLAcc.FieldCaption("Exchange Rate Adjustment"), GLAcc.TableCaption,
              GLAcc."No.", GLAcc."Exchange Rate Adjustment",
              SetupTableName, GLSetup.FieldCaption("VAT Exchange Rate Adjustment"),
              GLSetup.TableCaption, SetupFieldName);
        end;
    end;

    local procedure HandleCustDebitCredit(Amount: Decimal; "Amount (LCY)": Decimal; Correction: Boolean; AdjAmount: Decimal)
    begin
        if ((Amount > 0) or ("Amount (LCY)" > 0)) and (not Correction) or
           ((Amount < 0) or ("Amount (LCY)" < 0)) and Correction
        then begin
            TempDtldCustLedgEntry."Debit Amount (LCY)" := AdjAmount;
            TempDtldCustLedgEntry."Credit Amount (LCY)" := 0;
        end else begin
            TempDtldCustLedgEntry."Debit Amount (LCY)" := 0;
            TempDtldCustLedgEntry."Credit Amount (LCY)" := -AdjAmount;
        end;
    end;

    local procedure HandleVendDebitCredit(Amount: Decimal; "Amount (LCY)": Decimal; Correction: Boolean; AdjAmount: Decimal)
    begin
        if ((Amount > 0) or ("Amount (LCY)" > 0)) and (not Correction) or
           ((Amount < 0) or ("Amount (LCY)" < 0)) and Correction
        then begin
            TempDtldVendLedgEntry."Debit Amount (LCY)" := AdjAmount;
            TempDtldVendLedgEntry."Credit Amount (LCY)" := 0;
        end else begin
            TempDtldVendLedgEntry."Debit Amount (LCY)" := 0;
            TempDtldVendLedgEntry."Credit Amount (LCY)" := -AdjAmount;
        end;
    end;

    local procedure GetJnlLineDefDim(var GenJnlLine: Record "Gen. Journal Line"; var DimSetEntry: Record "Dimension Set Entry")
    var
        TableID1: array[10] of Integer;
        No: array[10] of Code[20];
    begin
        with GenJnlLine do begin
            case "Account Type" of
                "Account Type"::"G/L Account":
                    TableID1[1] := DATABASE::"G/L Account";
                "Account Type"::"Bank Account":
                    TableID1[1] := DATABASE::"Bank Account";
            end;
            No[1] := "Account No.";
            DimMgt.GetDefaultDimID(TableID1, No, "Source Code", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Dimension Set ID", 0);
        end;
        DimMgt.GetDimSetEntryDefaultDim(DimSetEntry);
    end;

    local procedure CopyDimSetEntryToDimBuf(var DimSetEntry: Record "Dimension Set Entry"; var DimBuf: Record "Dimension Buffer")
    begin
        if DimSetEntry.Find('-') then
            repeat
                DimBuf."Table ID" := DATABASE::"Dimension Buffer";
                DimBuf."Entry No." := 0;
                DimBuf."Dimension Code" := DimSetEntry."Dimension Code";
                DimBuf."Dimension Value Code" := DimSetEntry."Dimension Value Code";
                DimBuf.Insert;
            until DimSetEntry.Next = 0;
    end;

    local procedure GetDimCombID(var DimBuf: Record "Dimension Buffer"): Integer
    var
        DimEntryNo: Integer;
    begin
        DimEntryNo := DimBufMgt.FindDimensions(DimBuf);
        if DimEntryNo = 0 then
            DimEntryNo := DimBufMgt.InsertDimensions(DimBuf);
        exit(DimEntryNo);
    end;

    local procedure PostGenJnlLine(var GenJnlLine: Record "Gen. Journal Line"; var DimSetEntry: Record "Dimension Set Entry"): Integer
    begin
        GenJnlLine."Shortcut Dimension 1 Code" := GetGlobalDimVal(GLSetup."Global Dimension 1 Code", DimSetEntry);
        GenJnlLine."Shortcut Dimension 2 Code" := GetGlobalDimVal(GLSetup."Global Dimension 2 Code", DimSetEntry);
        GenJnlLine."Dimension Set ID" := DimMgt.GetDimensionSetID(TempDimSetEntry);
        InsertDimensions;
        GenJnlPostLine.Run(GenJnlLine);
        exit(GenJnlPostLine.GetNextTransactionNo);
    end;

    local procedure GetGlobalDimVal(GlobalDimCode: Code[20]; var DimSetEntry: Record "Dimension Set Entry"): Code[20]
    var
        DimVal: Code[20];
    begin
        if GlobalDimCode = '' then
            DimVal := ''
        else begin
            DimSetEntry.SetRange("Dimension Code", GlobalDimCode);
            if DimSetEntry.Find('-') then
                DimVal := DimSetEntry."Dimension Value Code"
            else
                DimVal := '';
            DimSetEntry.SetRange("Dimension Code");
        end;
        exit(DimVal);
    end;

    procedure CheckPostingDate()
    begin
        if PostingDate < StartDate then
            Error(Text018);
        if PostingDate > EndDateReq then
            Error(Text018);
    end;

    procedure AdjustCustomerLedgerEntry(CusLedgerEntry: Record "Cust. Ledger Entry"; PostingDate2: Date)
    var
        DimSetEntry: Record "Dimension Set Entry";
        DimEntryNo: Integer;
        OldAdjAmount: Decimal;
        Adjust: Boolean;
        AdjExchRateBufIndex: Integer;
    begin
        with CusLedgerEntry do begin
            SetRange("Date Filter", 0D, PostingDate2);
            Currency2.Get("Currency Code");
            GainsAmount := 0;
            LossesAmount := 0;
            OldAdjAmount := 0;
            Adjust := false;

            TempDimSetEntry.Reset;
            TempDimSetEntry.DeleteAll;
            TempDimBuf.Reset;
            TempDimBuf.DeleteAll;
            DimSetEntry.SetRange("Dimension Set ID", "Dimension Set ID");
            CopyDimSetEntryToDimBuf(DimSetEntry, TempDimBuf);
            DimEntryNo := GetDimCombID(TempDimBuf);

            CalcFields(
              Amount, "Amount (LCY)", "Remaining Amount", "Remaining Amt. (LCY)", "Original Amt. (LCY)",
              "Debit Amount", "Credit Amount", "Debit Amount (LCY)", "Credit Amount (LCY)");

            // Calculate Old Unrealized GainLoss
            SetUnrealizedGainLossFilterCust(DtldCustLedgEntry, "Entry No.");
            DtldCustLedgEntry.CalcSums("Amount (LCY)");

            SetUnrealizedGainLossFilterCust(TempDtldCustLedgEntry, "Entry No.");
            TempDtldCustLedgEntry.CalcSums("Amount (LCY)", "Debit Amount (LCY)", "Credit Amount (LCY)");
            OldAdjAmount := DtldCustLedgEntry."Amount (LCY)" + TempDtldCustLedgEntry."Amount (LCY)";
            "Remaining Amt. (LCY)" := "Remaining Amt. (LCY)" + TempDtldCustLedgEntry."Amount (LCY)";
            "Debit Amount (LCY)" := "Debit Amount (LCY)" + TempDtldCustLedgEntry."Amount (LCY)";
            "Credit Amount (LCY)" := "Credit Amount (LCY)" + TempDtldCustLedgEntry."Amount (LCY)";
            TempDtldCustLedgEntry.Reset;

            // Modify Currency factor on Customer Ledger Entry
            if "Adjusted Currency Factor" <> Currency2."Currency Factor" then begin
                "Adjusted Currency Factor" := Currency2."Currency Factor";
                Modify;
            end;

            // Calculate New Unrealized GainLoss
            AdjAmount :=
              Round(
                CurrExchRate.ExchangeAmtFCYToLCYAdjmt(
                  PostingDate2, Currency2.Code, "Remaining Amount", Currency2."Currency Factor")) -
              "Remaining Amt. (LCY)";

            if AdjAmount <> 0 then begin
                InitDtldCustLedgEntry(CusLedgerEntry, TempDtldCustLedgEntry);
                TempDtldCustLedgEntry."Entry No." := NewEntryNo;
                TempDtldCustLedgEntry."Posting Date" := PostingDate2;
                TempDtldCustLedgEntry."Document No." := PostingDocNo;

                Correction :=
                  ("Debit Amount" < 0) or
                  ("Credit Amount" < 0) or
                  ("Debit Amount (LCY)" < 0) or
                  ("Credit Amount (LCY)" < 0);

                if OldAdjAmount > 0 then
                    case true of
                        (AdjAmount > 0):
                            begin
                                TempDtldCustLedgEntry."Amount (LCY)" := AdjAmount;
                                TempDtldCustLedgEntry."Entry Type" := TempDtldCustLedgEntry."Entry Type"::"Unrealized Gain";
                                HandleCustDebitCredit(
                                  Amount, "Amount (LCY)", Correction, TempDtldCustLedgEntry."Amount (LCY)");
                                TempDtldCustLedgEntry.Insert;
                                NewEntryNo := NewEntryNo + 1;
                                GainsAmount := AdjAmount;
                                Adjust := true;
                            end;
                        (AdjAmount < 0):
                            if -AdjAmount <= OldAdjAmount then begin
                                TempDtldCustLedgEntry."Amount (LCY)" := AdjAmount;
                                TempDtldCustLedgEntry."Entry Type" := TempDtldCustLedgEntry."Entry Type"::"Unrealized Gain";
                                HandleCustDebitCredit(
                                  Amount, "Amount (LCY)", Correction, TempDtldCustLedgEntry."Amount (LCY)");
                                TempDtldCustLedgEntry.Insert;
                                NewEntryNo := NewEntryNo + 1;
                                GainsAmount := AdjAmount;
                                Adjust := true;
                            end else begin
                                AdjAmount := AdjAmount + OldAdjAmount;
                                TempDtldCustLedgEntry."Amount (LCY)" := -OldAdjAmount;
                                TempDtldCustLedgEntry."Entry Type" := TempDtldCustLedgEntry."Entry Type"::"Unrealized Gain";
                                HandleCustDebitCredit(
                                  Amount, "Amount (LCY)", Correction, TempDtldCustLedgEntry."Amount (LCY)");
                                TempDtldCustLedgEntry.Insert;
                                NewEntryNo := NewEntryNo + 1;
                                AdjExchRateBufIndex :=
                                  AdjExchRateBufferUpdate(
                                    "Currency Code", Customer."Customer Posting Group",
                                    0, 0, -OldAdjAmount, -OldAdjAmount, 0, DimEntryNo, PostingDate2, Customer."IC Partner Code",
                                    zGetCustPostingGrAcc(CusLedgerEntry), Customer."No.");
                                TempDtldCustLedgEntry."Transaction No." := AdjExchRateBufIndex;
                                TempDtldCustLedgEntry.Modify;
                                Adjust := false;
                            end;
                    end;
                if OldAdjAmount < 0 then
                    case true of
                        (AdjAmount < 0):
                            begin
                                TempDtldCustLedgEntry."Amount (LCY)" := AdjAmount;
                                TempDtldCustLedgEntry."Entry Type" := TempDtldCustLedgEntry."Entry Type"::"Unrealized Loss";
                                HandleCustDebitCredit(
                                  Amount, "Amount (LCY)", Correction, TempDtldCustLedgEntry."Amount (LCY)");
                                TempDtldCustLedgEntry.Insert;
                                NewEntryNo := NewEntryNo + 1;
                                LossesAmount := AdjAmount;
                                Adjust := true;
                            end;
                        (AdjAmount > 0):
                            if AdjAmount <= -OldAdjAmount then begin
                                TempDtldCustLedgEntry."Amount (LCY)" := AdjAmount;
                                TempDtldCustLedgEntry."Entry Type" := TempDtldCustLedgEntry."Entry Type"::"Unrealized Loss";
                                HandleCustDebitCredit(
                                  Amount, "Amount (LCY)", Correction, TempDtldCustLedgEntry."Amount (LCY)");
                                TempDtldCustLedgEntry.Insert;
                                NewEntryNo := NewEntryNo + 1;
                                LossesAmount := AdjAmount;
                                Adjust := true;
                            end else begin
                                AdjAmount := OldAdjAmount + AdjAmount;
                                TempDtldCustLedgEntry."Amount (LCY)" := -OldAdjAmount;
                                TempDtldCustLedgEntry."Entry Type" := TempDtldCustLedgEntry."Entry Type"::"Unrealized Loss";
                                HandleCustDebitCredit(
                                  Amount, "Amount (LCY)", Correction, TempDtldCustLedgEntry."Amount (LCY)");
                                TempDtldCustLedgEntry.Insert;
                                NewEntryNo := NewEntryNo + 1;
                                AdjExchRateBufIndex :=
                                  AdjExchRateBufferUpdate(
                                    "Currency Code", Customer."Customer Posting Group",
                                    0, 0, -OldAdjAmount, 0, -OldAdjAmount, DimEntryNo, PostingDate2, Customer."IC Partner Code",
                                    zGetCustPostingGrAcc(CusLedgerEntry), Customer."No.");
                                TempDtldCustLedgEntry."Transaction No." := AdjExchRateBufIndex;
                                TempDtldCustLedgEntry.Modify;
                                Adjust := false;
                            end;
                    end;

                if not Adjust then begin
                    TempDtldCustLedgEntry."Amount (LCY)" := AdjAmount;
                    HandleCustDebitCredit(Amount, "Amount (LCY)", Correction, TempDtldCustLedgEntry."Amount (LCY)");
                    TempDtldCustLedgEntry."Entry No." := NewEntryNo;
                    if AdjAmount < 0 then begin
                        TempDtldCustLedgEntry."Entry Type" := TempDtldCustLedgEntry."Entry Type"::"Unrealized Loss";
                        GainsAmount := 0;
                        LossesAmount := AdjAmount;
                    end else
                        if AdjAmount > 0 then begin
                            TempDtldCustLedgEntry."Entry Type" := TempDtldCustLedgEntry."Entry Type"::"Unrealized Gain";
                            GainsAmount := AdjAmount;
                            LossesAmount := 0;
                        end;
                    TempDtldCustLedgEntry.Insert;
                    NewEntryNo := NewEntryNo + 1;
                end;

                TotalAdjAmount := TotalAdjAmount + AdjAmount;
                Window.Update(4, TotalAdjAmount);

                AdjExchRateBufIndex :=
                  AdjExchRateBufferUpdate(
                    "Currency Code", Customer."Customer Posting Group",
                    "Remaining Amount", "Remaining Amt. (LCY)", TempDtldCustLedgEntry."Amount (LCY)",
                    GainsAmount, LossesAmount, DimEntryNo, PostingDate2, Customer."IC Partner Code",
                    zGetCustPostingGrAcc(CusLedgerEntry), Customer."No.");

                TempDtldCustLedgEntry."Transaction No." := AdjExchRateBufIndex;
                TempDtldCustLedgEntry.Modify;
                zInsertAdjExchRates("AdjExchRates Account Type"::Customer, "Customer No.", '', "Remaining Amount", "Remaining Amt. (LCY)", TempDtldCustLedgEntry."Amount (LCY)",
                  "Currency Code", PostingDate2, "Document No.", Customer.Name);
            end;
        end;
    end;


    procedure AdjustVendorLedgerEntry(VendLedgerEntry: Record "Vendor Ledger Entry"; PostingDate2: Date)
    var
        DimSetEntry: Record "Dimension Set Entry";
        DimEntryNo: Integer;
        OldAdjAmount: Decimal;
        Adjust: Boolean;
        AdjExchRateBufIndex: Integer;
    begin
        with VendLedgerEntry do begin
            SetRange("Date Filter", 0D, PostingDate2);
            Currency2.Get("Currency Code");
            GainsAmount := 0;
            LossesAmount := 0;
            OldAdjAmount := 0;
            Adjust := false;

            TempDimBuf.Reset;
            TempDimBuf.DeleteAll;
            DimSetEntry.SetRange("Dimension Set ID", "Dimension Set ID");
            CopyDimSetEntryToDimBuf(DimSetEntry, TempDimBuf);
            DimEntryNo := GetDimCombID(TempDimBuf);

            CalcFields(
              Amount, "Amount (LCY)", "Remaining Amount", "Remaining Amt. (LCY)", "Original Amt. (LCY)",
              "Debit Amount", "Credit Amount", "Debit Amount (LCY)", "Credit Amount (LCY)");

            // Calculate Old Unrealized GainLoss
            SetUnrealizedGainLossFilterVend(DtldVendLedgEntry, "Entry No.");
            DtldVendLedgEntry.CalcSums("Amount (LCY)");

            SetUnrealizedGainLossFilterVend(TempDtldVendLedgEntry, "Entry No.");
            TempDtldVendLedgEntry.CalcSums("Amount (LCY)", "Debit Amount (LCY)", "Credit Amount (LCY)");
            OldAdjAmount := DtldVendLedgEntry."Amount (LCY)" + TempDtldVendLedgEntry."Amount (LCY)";
            "Remaining Amt. (LCY)" := "Remaining Amt. (LCY)" + TempDtldVendLedgEntry."Amount (LCY)";
            "Debit Amount (LCY)" := "Debit Amount (LCY)" + TempDtldVendLedgEntry."Amount (LCY)";
            "Credit Amount (LCY)" := "Credit Amount (LCY)" + TempDtldVendLedgEntry."Amount (LCY)";
            TempDtldVendLedgEntry.Reset;

            // Modify Currency factor on Vendor Ledger Entry
            if "Adjusted Currency Factor" <> Currency2."Currency Factor" then begin
                "Adjusted Currency Factor" := Currency2."Currency Factor";
                Modify;
            end;

            // Calculate New Unrealized GainLoss
            AdjAmount :=
              Round(
                CurrExchRate.ExchangeAmtFCYToLCYAdjmt(
                  PostingDate2, Currency2.Code, "Remaining Amount", Currency2."Currency Factor")) -
              "Remaining Amt. (LCY)";

            if AdjAmount <> 0 then begin
                InitDtldVendLedgEntry(VendLedgerEntry, TempDtldVendLedgEntry);
                TempDtldVendLedgEntry."Entry No." := NewEntryNo;
                TempDtldVendLedgEntry."Posting Date" := PostingDate2;
                TempDtldVendLedgEntry."Document No." := PostingDocNo;

                Correction :=
                  ("Debit Amount" < 0) or
                  ("Credit Amount" < 0) or
                  ("Debit Amount (LCY)" < 0) or
                  ("Credit Amount (LCY)" < 0);

                if OldAdjAmount > 0 then
                    case true of
                        (AdjAmount > 0):
                            begin
                                TempDtldVendLedgEntry."Amount (LCY)" := AdjAmount;
                                TempDtldVendLedgEntry."Entry Type" := TempDtldVendLedgEntry."Entry Type"::"Unrealized Gain";
                                HandleVendDebitCredit(Amount, "Amount (LCY)", Correction, TempDtldVendLedgEntry."Amount (LCY)");
                                TempDtldVendLedgEntry.Insert;
                                NewEntryNo := NewEntryNo + 1;
                                GainsAmount := AdjAmount;
                                Adjust := true;
                            end;
                        (AdjAmount < 0):
                            if -AdjAmount <= OldAdjAmount then begin
                                TempDtldVendLedgEntry."Amount (LCY)" := AdjAmount;
                                TempDtldVendLedgEntry."Entry Type" := TempDtldVendLedgEntry."Entry Type"::"Unrealized Gain";
                                HandleVendDebitCredit(
                                  Amount, "Amount (LCY)", Correction, TempDtldVendLedgEntry."Amount (LCY)");
                                TempDtldVendLedgEntry.Insert;
                                NewEntryNo := NewEntryNo + 1;
                                GainsAmount := AdjAmount;
                                Adjust := true;
                            end else begin
                                AdjAmount := AdjAmount + OldAdjAmount;
                                TempDtldVendLedgEntry."Amount (LCY)" := -OldAdjAmount;
                                TempDtldVendLedgEntry."Entry Type" := TempDtldVendLedgEntry."Entry Type"::"Unrealized Gain";
                                HandleVendDebitCredit(
                                  Amount, "Amount (LCY)", Correction, TempDtldVendLedgEntry."Amount (LCY)");
                                TempDtldVendLedgEntry.Insert;
                                NewEntryNo := NewEntryNo + 1;
                                AdjExchRateBufIndex :=
                                  AdjExchRateBufferUpdate(
                                    "Currency Code", Vendor."Vendor Posting Group",
                                    0, 0, -OldAdjAmount, -OldAdjAmount, 0, DimEntryNo, PostingDate2, Vendor."IC Partner Code",
                                    zGetVendPostingGrAcc(VendLedgerEntry), Vendor."No.");
                                TempDtldVendLedgEntry."Transaction No." := AdjExchRateBufIndex;
                                TempDtldVendLedgEntry.Modify;
                                Adjust := false;
                            end;
                    end;
                if OldAdjAmount < 0 then
                    case true of
                        (AdjAmount < 0):
                            begin
                                TempDtldVendLedgEntry."Amount (LCY)" := AdjAmount;
                                TempDtldVendLedgEntry."Entry Type" := TempDtldVendLedgEntry."Entry Type"::"Unrealized Loss";
                                HandleVendDebitCredit(Amount, "Amount (LCY)", Correction, TempDtldVendLedgEntry."Amount (LCY)");
                                TempDtldVendLedgEntry.Insert;
                                NewEntryNo := NewEntryNo + 1;
                                LossesAmount := AdjAmount;
                                Adjust := true;
                            end;
                        (AdjAmount > 0):
                            if AdjAmount <= -OldAdjAmount then begin
                                TempDtldVendLedgEntry."Amount (LCY)" := AdjAmount;
                                TempDtldVendLedgEntry."Entry Type" := TempDtldVendLedgEntry."Entry Type"::"Unrealized Loss";
                                HandleVendDebitCredit(
                                  Amount, "Amount (LCY)", Correction, TempDtldVendLedgEntry."Amount (LCY)");
                                TempDtldVendLedgEntry.Insert;
                                NewEntryNo := NewEntryNo + 1;
                                LossesAmount := AdjAmount;
                                Adjust := true;
                            end else begin
                                AdjAmount := OldAdjAmount + AdjAmount;
                                TempDtldVendLedgEntry."Amount (LCY)" := -OldAdjAmount;
                                TempDtldVendLedgEntry."Entry Type" := TempDtldVendLedgEntry."Entry Type"::"Unrealized Loss";
                                HandleVendDebitCredit(
                                  Amount, "Amount (LCY)", Correction, TempDtldVendLedgEntry."Amount (LCY)");
                                TempDtldVendLedgEntry.Insert;
                                NewEntryNo := NewEntryNo + 1;
                                AdjExchRateBufIndex :=
                                  AdjExchRateBufferUpdate(
                                    "Currency Code", Vendor."Vendor Posting Group",
                                    0, 0, -OldAdjAmount, 0, -OldAdjAmount, DimEntryNo, PostingDate2, Vendor."IC Partner Code",
                                    zGetVendPostingGrAcc(VendLedgerEntry), Vendor."No.");
                                TempDtldVendLedgEntry."Transaction No." := AdjExchRateBufIndex;
                                TempDtldVendLedgEntry.Modify;
                                Adjust := false;
                            end;
                    end;

                if not Adjust then begin
                    TempDtldVendLedgEntry."Amount (LCY)" := AdjAmount;
                    HandleVendDebitCredit(Amount, "Amount (LCY)", Correction, TempDtldVendLedgEntry."Amount (LCY)");
                    TempDtldVendLedgEntry."Entry No." := NewEntryNo;
                    if AdjAmount < 0 then begin
                        TempDtldVendLedgEntry."Entry Type" := TempDtldVendLedgEntry."Entry Type"::"Unrealized Loss";
                        GainsAmount := 0;
                        LossesAmount := AdjAmount;
                    end else
                        if AdjAmount > 0 then begin
                            TempDtldVendLedgEntry."Entry Type" := TempDtldVendLedgEntry."Entry Type"::"Unrealized Gain";
                            GainsAmount := AdjAmount;
                            LossesAmount := 0;
                        end;
                    TempDtldVendLedgEntry.Insert;
                    NewEntryNo := NewEntryNo + 1;
                end;

                TotalAdjAmount := TotalAdjAmount + AdjAmount;
                Window.Update(4, TotalAdjAmount);
                AdjExchRateBufIndex :=
                  AdjExchRateBufferUpdate(
                    "Currency Code", Vendor."Vendor Posting Group",
                    "Remaining Amount", "Remaining Amt. (LCY)",
                    TempDtldVendLedgEntry."Amount (LCY)", GainsAmount, LossesAmount, DimEntryNo, PostingDate2, Vendor."IC Partner Code",
                    zGetVendPostingGrAcc(VendLedgerEntry), Vendor."No.");
                TempDtldVendLedgEntry."Transaction No." := AdjExchRateBufIndex;
                TempDtldVendLedgEntry.Modify;

                zInsertAdjExchRates("AdjExchRates Account Type"::Vendor, "Vendor No.", '', "Remaining Amount", "Remaining Amt. (LCY)", TempDtldVendLedgEntry."Amount (LCY)",
                  "Currency Code", PostingDate2, "Document No.", Vendor.Name);
            end;
        end;
    end;

    local procedure InitDtldCustLedgEntry(CustLedgEntry: Record "Cust. Ledger Entry"; var DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry")
    begin
        with CustLedgEntry do begin
            DtldCustLedgEntry.Init;
            DtldCustLedgEntry."Cust. Ledger Entry No." := "Entry No.";
            DtldCustLedgEntry.Amount := 0;
            DtldCustLedgEntry."Customer No." := "Customer No.";
            DtldCustLedgEntry."Currency Code" := "Currency Code";
            DtldCustLedgEntry."User ID" := UserId;
            DtldCustLedgEntry."Source Code" := SourceCodeSetup."Exchange Rate Adjmt.";
            DtldCustLedgEntry."Journal Batch Name" := "Journal Batch Name";
            DtldCustLedgEntry."Reason Code" := "Reason Code";
            DtldCustLedgEntry."Initial Entry Due Date" := "Due Date";
            DtldCustLedgEntry."Initial Entry Global Dim. 1" := "Global Dimension 1 Code";
            DtldCustLedgEntry."Initial Entry Global Dim. 2" := "Global Dimension 2 Code";
            DtldCustLedgEntry."Initial Document Type" := "Document Type";
            DtldCustLedgEntry."PTSS Customer Posting Group" := "Customer Posting Group";
        end;
    end;

    local procedure InitDtldVendLedgEntry(VendLedgEntry: Record "Vendor Ledger Entry"; var DtldVendLedgEntry: Record "Detailed Vendor Ledg. Entry")
    begin
        with VendLedgEntry do begin
            DtldVendLedgEntry.Init;
            DtldVendLedgEntry."Vendor Ledger Entry No." := "Entry No.";
            DtldVendLedgEntry.Amount := 0;
            DtldVendLedgEntry."Vendor No." := "Vendor No.";
            DtldVendLedgEntry."Currency Code" := "Currency Code";
            DtldVendLedgEntry."User ID" := UserId;
            DtldVendLedgEntry."Source Code" := SourceCodeSetup."Exchange Rate Adjmt.";
            DtldVendLedgEntry."Journal Batch Name" := "Journal Batch Name";
            DtldVendLedgEntry."Reason Code" := "Reason Code";
            DtldVendLedgEntry."Initial Entry Due Date" := "Due Date";
            DtldVendLedgEntry."Initial Entry Global Dim. 1" := "Global Dimension 1 Code";
            DtldVendLedgEntry."Initial Entry Global Dim. 2" := "Global Dimension 2 Code";
            DtldVendLedgEntry."Initial Document Type" := "Document Type";
            DtldVendLedgEntry."PTSS Vendor Posting Group" := "Vendor Posting Group";
        end;
    end;

    local procedure SetUnrealizedGainLossFilterCust(var DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry"; EntryNo: Integer)
    begin
        with DtldCustLedgEntry do begin
            Reset;
            SetCurrentKey("Cust. Ledger Entry No.", "Entry Type");
            SetRange("Cust. Ledger Entry No.", EntryNo);
            SetRange("Entry Type", "Entry Type"::"Unrealized Loss", "Entry Type"::"Unrealized Gain");
        end;
    end;

    local procedure SetUnrealizedGainLossFilterVend(var DtldVendLedgEntry: Record "Detailed Vendor Ledg. Entry"; EntryNo: Integer)
    begin
        with DtldVendLedgEntry do begin
            Reset;
            SetCurrentKey("Vendor Ledger Entry No.", "Entry Type");
            SetRange("Vendor Ledger Entry No.", EntryNo);
            SetRange("Entry Type", "Entry Type"::"Unrealized Loss", "Entry Type"::"Unrealized Gain");
        end;
    end;

    procedure zFillBankAccountBuffer(p_BankAccountLedgerEntry: Record "Bank Account Ledger Entry")
    begin
        WITH p_BankAccountLedgerEntry DO BEGIN
            CLEAR(g_TempBankAccountBuffer[1]);
            g_TempBankAccountBuffer[1]."Account Type" := "AdjExchRates Account Type"::"Bank Account";
            g_TempBankAccountBuffer[1]."Account No." := "Bank Account No.";
            g_TempBankAccountBuffer[1]."Cash Flow Code" := "PTSS Cash-Flow Code";
            g_TempBankAccountBuffer[1]."Base Amount" := Amount;
            g_TempBankAccountBuffer[1]."Base Amount (LCY)" := "Amount (LCY)";
        END;
        zUpdateBankAccountBuffer;
    end;

    procedure zUpdateBankAccountBuffer()
    begin
        g_TempBankAccountBuffer[2] := g_TempBankAccountBuffer[1];
        if g_TempBankAccountBuffer[2].FIND then begin
            g_TempBankAccountBuffer[2]."Base Amount" :=
              g_TempBankAccountBuffer[2]."Base Amount" + g_TempBankAccountBuffer[1]."Base Amount";
            g_TempBankAccountBuffer[2]."Base Amount (LCY)" :=
              g_TempBankAccountBuffer[2]."Base Amount (LCY)" + g_TempBankAccountBuffer[1]."Base Amount (LCY)";
            g_TempBankAccountBuffer[2].MODIFY;
        end else
            g_TempBankAccountBuffer[1].INSERT;
    end;


    procedure zGetBankPostingGrAcc(p_BankAccountPostingGroupCode: Code[20]): Code[20]
    var
        l_BankAccountPostingGroup: Record "Bank Account Posting Group";
    begin
        l_BankAccountPostingGroup.Get(p_BankAccountPostingGroupCode);
        l_BankAccountPostingGroup.TestField("G/L Account No.");
        exit(l_BankAccountPostingGroup."G/L Account No.");
    end;

    procedure zGetCustPostingGrAcc(p_CustLedgEntry: Record "Cust. Ledger Entry"): Code[20]
    var
        l_CustomerPostingGroup: Record "Customer Posting Group";
    begin
        with p_CustLedgEntry do begin
            TestField("Customer Posting Group");
            l_CustomerPostingGroup.Get("Customer Posting Group");
            l_CustomerPostingGroup.TestField("Receivables Account");
            exit(l_CustomerPostingGroup."Receivables Account");
        end;
    end;

    procedure zGetVendPostingGrAcc(p_VendorLedgerEntry: Record "Vendor Ledger Entry"): Code[20]
    var
        l_VendorPostingGroup: Record "Vendor Posting Group";
    begin
        with p_VendorLedgerEntry do begin
            TestField("Vendor Posting Group");
            l_VendorPostingGroup.Get("Vendor Posting Group");

            l_VendorPostingGroup.TestField("Payables Account");
            exit(l_VendorPostingGroup."Payables Account");
        end;
    end;

    procedure zInsertAdjExchRates(p_AccountType: Enum "AdjExchRates Account Type"; p_AccountNo: Code[20]; p_CashFlowCode: Code[20]; p_BaseAmount: Decimal; p_BaseAmountLCY: Decimal; p_AdjAmountLCY: Decimal; p_CurrencyCode: Code[10]; p_PostingDate: Date; p_DocumentNo: Code[20]; p_AccountName: Text[100])
    begin
        g_TempAdjExchRatesReportBuffer.INIT;
        g_TempAdjExchRatesReportBuffer."Entry No." := g_ReportBufferEntryNo;
        g_TempAdjExchRatesReportBuffer."Account Type" := p_AccountType;
        g_TempAdjExchRatesReportBuffer."Account No." := p_AccountNo;
        g_TempAdjExchRatesReportBuffer."Cash Flow Code" := p_CashFlowCode;
        g_TempAdjExchRatesReportBuffer."Base Amount" := p_BaseAmount;
        g_TempAdjExchRatesReportBuffer."Base Amount (LCY)" := p_BaseAmountLCY;
        g_TempAdjExchRatesReportBuffer."Adjusted Amount (LCY)" := p_AdjAmountLCY;
        g_TempAdjExchRatesReportBuffer."Currency Code" := p_CurrencyCode;
        g_TempAdjExchRatesReportBuffer."Currency Factor" := CurrExchRate.ExchangeRateAdjmt(p_PostingDate, p_CurrencyCode);
        g_TempAdjExchRatesReportBuffer."Posting Date" := p_PostingDate;
        g_TempAdjExchRatesReportBuffer."Document No." := p_DocumentNo;
        g_TempAdjExchRatesReportBuffer."Account Name" := p_AccountName;
        g_TempAdjExchRatesReportBuffer.INSERT;
        g_ReportBufferEntryNo += 1;
    end;

    local procedure InsertDimensions()
    var
        lRecDimSetEntry: Record "Dimension Set Entry" temporary;
        i: Integer;
        OldDimID: Integer;
        NewDimID: Integer;
    begin
        Clear(lRecDimSetEntry);
        lRecDimSetEntry.Reset;
        OldDimID := GenJnlLine."Dimension Set ID";
        DimMgt.GetDimensionSet(lRecDimSetEntry, OldDimID);

        for i := 1 to 8 do begin
            if ShortcutDimCode[i] <> '' then begin
                case i of
                    1:
                        lRecDimSetEntry.Validate("Dimension Code", GLSetup."Shortcut Dimension 1 Code");
                    2:
                        lRecDimSetEntry.Validate("Dimension Code", GLSetup."Shortcut Dimension 2 Code");
                    3:
                        lRecDimSetEntry.Validate("Dimension Code", GLSetup."Shortcut Dimension 3 Code");
                    4:
                        lRecDimSetEntry.Validate("Dimension Code", GLSetup."Shortcut Dimension 4 Code");
                    5:
                        lRecDimSetEntry.Validate("Dimension Code", GLSetup."Shortcut Dimension 5 Code");
                    6:
                        lRecDimSetEntry.Validate("Dimension Code", GLSetup."Shortcut Dimension 6 Code");
                    7:
                        lRecDimSetEntry.Validate("Dimension Code", GLSetup."Shortcut Dimension 7 Code");
                    8:
                        lRecDimSetEntry.Validate("Dimension Code", GLSetup."Shortcut Dimension 8 Code");
                end;
                lRecDimSetEntry.Validate("Dimension Value Code", ShortcutDimCode[i]);
                if lRecDimSetEntry.Insert(true) then
                    lRecDimSetEntry.Modify(true);
            end;
        end;
        NewDimID := DimMgt.GetDimensionSetID(lRecDimSetEntry);
        if OldDimID <> NewDimID then begin
            GenJnlLine."Dimension Set ID" := NewDimID;
            DimMgt.UpdateGlobalDimFromDimSetID(GenJnlLine."Dimension Set ID", GenJnlLine."Shortcut Dimension 1 Code", GenJnlLine."Shortcut Dimension 2 Code");
        end;
    end;

    local procedure GetDimVisible()
    begin
        GLSetup.Get();
        ShortcutDimVisible1 := GLSetup."Shortcut Dimension 1 Code" <> '';
        ShortcutDimVisible2 := GLSetup."Shortcut Dimension 2 Code" <> '';
        ShortcutDimVisible3 := GLSetup."Shortcut Dimension 3 Code" <> '';
        ShortcutDimVisible4 := GLSetup."Shortcut Dimension 4 Code" <> '';
        ShortcutDimVisible5 := GLSetup."Shortcut Dimension 5 Code" <> '';
        ShortcutDimVisible6 := GLSetup."Shortcut Dimension 6 Code" <> '';
        ShortcutDimVisible7 := GLSetup."Shortcut Dimension 7 Code" <> '';
        ShortcutDimVisible8 := GLSetup."Shortcut Dimension 8 Code" <> '';
    end;
}

