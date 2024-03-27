report 57015 "Bank - Payment Advice"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/BankPaymentAdvice.rdl';
    Caption = 'Bank - Payment Advise';
    ApplicationArea = All;

    dataset
    {
        dataitem(Header; "Credit Transfer Register")
        {
            DataItemTableView = SORTING("No.")
                                WHERE(Status = FILTER(<> Canceled));
            column(SEPAIdentifier; Identifier)
            {
            }
            column(CreatedDate; Header."Created Date-Time")
            {
            }
            column(CompanyInfo__Home_Page_; CompanyInfo."Home Page")
            {
            }
            column(CompanyInfo__Fax_No__; CompanyInfo."Fax No.")
            {
            }
            column(CompanyInfo__E_Mail_; CompanyInfo."E-Mail")
            {
            }
            column(CompanyInfo__Phone_No__; CompanyInfo."Phone No.")
            {
            }
            column(CompanyAddr_4_; CompanyAddr[4])
            {
            }
            column(CompanyAddr_3_; CompanyAddr[3])
            {
            }
            column(CompanyAddr_2_; CompanyAddr[2])
            {
            }
            column(CompanyInfo_Picture; CompanyInfo.Picture)
            {
            }
            column(Text50006; Text50006)
            {
            }
            column(Text50007; Text50007)
            {
            }
            column(Text50008; Text50008)
            {
            }
            column(Text50009; Text50009)
            {
            }
            column(Text50010; Text50010)
            {
            }
            column(Text50011; Text50011)
            {
            }
            column(Text50012; Text50012)
            {
            }
            column(Text50013; Text50013)
            {
            }
            column(Text50014; Text50014)
            {
            }
            column(Text50015; Text50015)
            {
            }
            dataitem("Vendor Ledger Entry"; "Vendor Ledger Entry")
            {
                DataItemTableView = SORTING("Vendor No.", "Posting Date", "Currency Code")
                                    WHERE("Document Type" = FILTER(Payment | Refund | ' '));
                column(Vendor_Ledger_Entry_Entry_No_; "Entry No.")
                {
                }
                column(Vendor_Ledger_Entry_Document_Date; "Vendor Ledger Entry"."Document Date")
                {
                }
                column(Payment_Amount_Not_AllocatedCaption; Payment_Amount_Not_AllocatedCaptionLbl)
                {
                }
                column(TOTAISCaption; TOTAISCaptionLbl)
                {
                }
                column(UserID; "User ID")
                {
                }
                column(BankAccountNIB; BankAccount."PTSS CCC No.")
                {
                }
                dataitem(CopyLoop; Integer)
                {
                    DataItemTableView = SORTING(Number);
                    dataitem(PageLoop; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(ReportPageNo; ReportPageNo)
                        {
                        }
                        column(OutputNo; OutputNo)
                        {
                        }
                        column(CustAddr_4_; CustAddr[4])
                        {
                        }
                        column(CustAddr_3_; CustAddr[3])
                        {
                        }
                        column(CustAddr_1_; CustAddr[1])
                        {
                        }
                        column(CustAddr_2_; CustAddr[2])
                        {
                        }
                        column(Vendor_Ledger_Entry___Vendor_No__; "Vendor Ledger Entry"."Vendor No.")
                        {
                        }
                        column(STRSUBSTNO_Text005_FORMAT_CurrReport_PAGENO__; STRSUBSTNO(Text005, FORMAT(Number)))
                        {
                        }
                        column(txtViaDoc; txtViaDoc)
                        {
                        }
                        column(Vendor__VAT_Registration_No__; Vendor."VAT Registration No.")
                        {
                        }
                        column(Vendor_Ledger_Entry___Document_Date_; "Vendor Ledger Entry"."Document Date")
                        {
                        }
                        column(Vendor_Ledger_Entry___Document_No__; "Vendor Ledger Entry"."Document No.")
                        {
                        }
                        column(CustAddr_5_; CustAddr[5])
                        {
                        }
                        column(Vendor_Ledger_Entry__Description; "Vendor Ledger Entry".Description)
                        {
                        }
                        column(BankAccount_Name; BankAccount.Name)
                        {
                        }
                        column(CompanyInfo__Registration_Authority_; CompanyInfo."PTSS Registration Authority")
                        {
                        }
                        column(CompanyInfo__Registration_No__; CompanyInfo."Registration No.")
                        {
                        }
                        column(CompanyInfo__Capital_Stock_; CompanyInfo."PTSS Share Capital")
                        {
                        }
                        column(CompanyInfo__VAT_Registration_No__; CompanyInfo."VAT Registration No.")
                        {
                        }
                        column(Vendor_Ledger_Entry___User_ID_; "Vendor Ledger Entry"."User ID")
                        {
                        }
                        column(VarDescriptionText_1_; VarDescriptionText[1])
                        {
                        }
                        column(VarDescriptionText_2_; VarDescriptionText[2])
                        {
                        }
                        column(Vendor_Ledger_Entry___Vendor_No__Caption; Vendor_Ledger_Entry___Vendor_No__CaptionLbl)
                        {
                        }
                        column(NIF_FornecedorCaption; NIF_FornecedorCaptionLbl)
                        {
                        }
                        column(LIQ__A_FORNECEDORCaption; LIQ__A_FORNECEDORCaptionLbl)
                        {
                        }
                        column(DATACaption; DATACaptionLbl)
                        {
                        }
                        column(Exmos_s__Senhor_es_Caption; Exmos_s__Senhor_es_CaptionLbl)
                        {
                        }
                        column(Exmo_s__Senhor_es__Caption; Exmo_s__Senhor_es__CaptionLbl)
                        {
                        }
                        column("Para_liquidaç_o_dos_seguintes_documentos_Caption"; Para_liquidaç_o_dos_seguintes_documentos_CaptionLbl)
                        {
                        }
                        column(Junto_enviamos_o_Nosso_Cheque_N__Caption; Junto_enviamos_o_Nosso_Cheque_N__CaptionLbl)
                        {
                        }
                        column(fromCaption; fromCaptionLbl)
                        {
                        }
                        column(Fax_Caption; Fax_CaptionLbl)
                        {
                        }
                        column(Location_Caption; Location_CaptionLbl)
                        {
                        }
                        column(General_Caption; General_CaptionLbl)
                        {
                        }
                        column("Matrícula_N__Caption"; Matrícula_N__CaptionLbl)
                        {
                        }
                        column(CompanyInfo__Capital_Stock_Caption; CompanyInfo__Capital_Stock_CaptionLbl)
                        {
                        }
                        column(Quota_Soc__Caption; Quota_Soc__CaptionLbl)
                        {
                        }
                        column(CompanyInfo__VAT_Registration_No__Caption; CompanyInfo__VAT_Registration_No__CaptionLbl)
                        {
                        }
                        column(DescriptionCaption; DescriptionCaptionLbl)
                        {
                        }
                        column(Data_Doc_Caption; Data_Doc_CaptionLbl)
                        {
                        }
                        column(VendorLedgEntry2__Document_No__Caption; VendorLedgEntry2__Document_No__CaptionLbl)
                        {
                        }
                        column(Valor_PagoCaption; Valor_PagoCaptionLbl)
                        {
                        }
                        column(Valor_LiquidoCaption; Valor_LiquidoCaptionLbl)
                        {
                        }
                        column(Desc__P__Pag_Caption; Desc__P__Pag_CaptionLbl)
                        {
                        }
                        column(N__Doc_Forn_Caption; N__Doc_Forn_CaptionLbl)
                        {
                        }
                        column(Tipo_Doc_Caption; Tipo_Doc_CaptionLbl)
                        {
                        }
                        column(Div_Caption; Div_CaptionLbl)
                        {
                        }
                        column(Atentamente_Caption; Atentamente_CaptionLbl)
                        {
                        }
                        column(Processado_por_ComputadorCaption; Processado_por_ComputadorCaptionLbl)
                        {
                        }
                        column(Agradecemos_que_nos_seja_enviado_o_respectivo_Recibo_Caption; Agradecemos_que_nos_seja_enviado_o_respectivo_Recibo_CaptionLbl)
                        {
                        }
                        column(Pagamos_a_V___Ex___a_quantia_de_Caption; Pagamos_a_V___Ex___a_quantia_de_CaptionLbl)
                        {
                        }
                        column(PageLoop_Number; Number)
                        {
                        }
                        dataitem(DetailedVendorLedgEntry1; "Detailed Vendor Ledg. Entry")
                        {
                            DataItemLink = "Applied Vend. Ledger Entry No." = FIELD("Entry No.");
                            DataItemLinkReference = "Vendor Ledger Entry";
                            DataItemTableView = SORTING("Applied Vend. Ledger Entry No.", "Entry Type")
                                                WHERE(Unapplied = CONST(false));
                            dataitem(VendorLedgEntry2; "Vendor Ledger Entry")
                            {
                                DataItemLink = "Entry No." = FIELD("Vendor Ledger Entry No.");
                                DataItemLinkReference = DetailedVendorLedgEntry1;
                                DataItemTableView = SORTING("Entry No.");

                                trigger OnAfterGetRecord()
                                begin
                                    IF VendorLedgEntry2."Entry No." = "Vendor Ledger Entry"."Entry No." THEN
                                        CurrReport.SKIP;

                                    PmtDiscInvCurr := 0;
                                    PmtTolInvCurr := 0;
                                    PmtDiscPmtCurr := 0;
                                    PmtTolPmtCurr := 0;

                                    ShowAmount := -DetailedVendorLedgEntry1.Amount;

                                    IF "Vendor Ledger Entry"."Currency Code" <> "Currency Code" THEN BEGIN
                                        PmtDiscInvCurr := ROUND("Pmt. Disc. Rcd.(LCY)" * "Original Currency Factor");
                                    END ELSE BEGIN
                                        PmtDiscInvCurr := ROUND("Pmt. Disc. Rcd.(LCY)" * "Vendor Ledger Entry"."Original Currency Factor");
                                    END;

                                    PmtDiscPmtCurr := ROUND("Pmt. Disc. Rcd.(LCY)" * "Vendor Ledger Entry"."Original Currency Factor");

                                    AppliedAmount := -DetailedVendorLedgEntry1.Amount;

                                    RemainingAmount := (RemainingAmount - AppliedAmount) + PmtDiscPmtCurr + PmtTolPmtCurr;

                                    NumLinhas := NumLinhas + 1;

                                    PmtTolInvCurr := AppliedAmount - PmtDiscInvCurr;

                                    //VERIFICA A 25ª LINHA E ULTIMA LINHA
                                    IF ((NumLinhas MOD LinesPerPage) = 0) THEN BEGIN
                                        IF VendorLedgEntry2.NEXT = 0 THEN
                                            booLast := TRUE
                                        ELSE
                                            VendorLedgEntry2.NEXT(-1);
                                    END;

                                    PmtDiscInvCurrTotal += PmtDiscInvCurr;

                                    CLEAR(gRecTmpVendorLedgerEntry);
                                    gRecTmpVendorLedgerEntry.INIT;
                                    gRecTmpVendorLedgerEntry."Entry No." := "Entry No.";
                                    gRecTmpVendorLedgerEntry."Vendor No." := "Vendor No.";
                                    gRecTmpVendorLedgerEntry."Document Type" := "Document Type";
                                    gRecTmpVendorLedgerEntry."Document No." := "Document No.";
                                    gRecTmpVendorLedgerEntry."Document Date" := "Document Date";
                                    gRecTmpVendorLedgerEntry."External Document No." := "External Document No.";
                                    gRecTmpVendorLedgerEntry.Description := Description;
                                    gRecTmpVendorLedgerEntry."Currency Code" := "Currency Code";
                                    gRecTmpVendorLedgerEntry."Recipient Bank Account" := "Vendor Ledger Entry"."Recipient Bank Account";
                                    IF ("Document Type" = "Document Type"::"Credit Memo") OR ("Document Type" = "Document Type"::" ") THEN BEGIN
                                        gRecTmpVendorLedgerEntry."Closed by Currency Amount" := -ShowAmount;
                                        gRecTmpVendorLedgerEntry."Adjusted Currency Factor" := ABS(PmtDiscInvCurr);
                                        gRecTmpVendorLedgerEntry."Original Currency Factor" := -PmtTolInvCurr;
                                    END ELSE BEGIN
                                        gRecTmpVendorLedgerEntry."Closed by Currency Amount" := ABS(ShowAmount);
                                        gRecTmpVendorLedgerEntry."Adjusted Currency Factor" := ABS(PmtDiscInvCurr);
                                        gRecTmpVendorLedgerEntry."Original Currency Factor" := ABS(PmtTolInvCurr);
                                    END;

                                    gRecTmpVendorLedgerEntry.INSERT;

                                end;
                            }

                            trigger OnPreDataItem()
                            begin
                                NumLinhas := 0;
                            end;
                        }
                        dataitem(DetailedVendorLedgEntry2; "Detailed Vendor Ledg. Entry")
                        {
                            DataItemLink = "Vendor Ledger Entry No." = FIELD("Entry No.");
                            DataItemLinkReference = "Vendor Ledger Entry";
                            DataItemTableView = SORTING("Vendor Ledger Entry No.", "Entry Type", "Posting Date")
                                                WHERE(Unapplied = CONST(false));
                            dataitem(VendorLedgEntry3; "Vendor Ledger Entry")
                            {
                                DataItemLink = "Entry No." = FIELD("Applied Vend. Ledger Entry No.");
                                DataItemLinkReference = DetailedVendorLedgEntry2;
                                DataItemTableView = SORTING("Entry No.");

                                trigger OnAfterGetRecord()
                                var
                                    PTSSWithTaxLedgerEntry: Record "PTSS With. Tax Ledger Entry";
                                    Vendor: Record Vendor;
                                    lDRetAmount: Decimal;
                                begin
                                    IF VendorLedgEntry3."Entry No." = "Vendor Ledger Entry"."Entry No." THEN
                                        CurrReport.SKIP;

                                    PmtDiscInvCurr := 0;
                                    PmtTolInvCurr := 0;
                                    PmtDiscPmtCurr := 0;
                                    PmtTolPmtCurr := 0;

                                    ShowAmount := DetailedVendorLedgEntry2.Amount;

                                    IF "Vendor Ledger Entry"."Currency Code" <> "Currency Code" THEN BEGIN
                                        PmtDiscInvCurr := ROUND("Pmt. Disc. Rcd.(LCY)" * "Original Currency Factor");
                                        PmtTolInvCurr := ROUND("Pmt. Tolerance (LCY)" * "Original Currency Factor");
                                    END ELSE BEGIN
                                        PmtDiscInvCurr := ROUND("Pmt. Disc. Rcd.(LCY)" * "Vendor Ledger Entry"."Original Currency Factor");
                                        PmtTolInvCurr := ROUND("Pmt. Tolerance (LCY)" * "Vendor Ledger Entry"."Original Currency Factor");
                                    END;

                                    PmtDiscPmtCurr := ROUND("Pmt. Disc. Rcd.(LCY)" * "Vendor Ledger Entry"."Original Currency Factor");

                                    PmtTolPmtCurr := ROUND("Pmt. Tolerance (LCY)" * "Vendor Ledger Entry"."Original Currency Factor");

                                    AppliedAmount := DetailedVendorLedgEntry2.Amount;

                                    RemainingAmount := (RemainingAmount - AppliedAmount) + PmtDiscPmtCurr + PmtTolPmtCurr;

                                    PmtTolInvCurr := AppliedAmount - PmtDiscInvCurr;

                                    NumLinhas := NumLinhas + 1;

                                    //VERIFICA A 25ª LINHA E ULTIMA LINHA
                                    IF ((NumLinhas MOD LinesPerPage) = 0) THEN BEGIN
                                        IF VendorLedgEntry3.NEXT = 0 THEN
                                            booLast := TRUE
                                        ELSE
                                            VendorLedgEntry3.NEXT(-1);
                                    END;

                                    PmtDiscInvCurrTotal += PmtDiscInvCurr;

                                    CLEAR(gRecTmpVendorLedgerEntry);
                                    gRecTmpVendorLedgerEntry.INIT;
                                    gRecTmpVendorLedgerEntry."Entry No." := "Entry No.";
                                    gRecTmpVendorLedgerEntry."Vendor No." := "Vendor No.";
                                    If Vendor.Get(gRecTmpVendorLedgerEntry."Vendor No.") then
                                        gRecTmpVendorLedgerEntry."Vendor Name" := Vendor.Name;
                                    gRecTmpVendorLedgerEntry."Document Type" := "Document Type";
                                    gRecTmpVendorLedgerEntry."Document No." := "Document No.";
                                    gRecTmpVendorLedgerEntry."Document Date" := "Document Date";
                                    gRecTmpVendorLedgerEntry.Description := Description;
                                    gRecTmpVendorLedgerEntry."External Document No." := "External Document No.";
                                    gRecTmpVendorLedgerEntry."Currency Code" := "Currency Code";
                                    gRecTmpVendorLedgerEntry."Recipient Bank Account" := "Vendor Ledger Entry"."Recipient Bank Account";

                                    //Retencao
                                    CLEAR(lDRetAmount);
                                    CLEAR(PTSSWithTaxLedgerEntry);
                                    PTSSWithTaxLedgerEntry.SetRange("Document No.", "Vendor Ledger Entry"."Document No.");
                                    PTSSWithTaxLedgerEntry.SETRANGE(Type, "PTSS With. Tax Ledger Entry Enum"::Vendor);
                                    PTSSWithTaxLedgerEntry.SetRange("Document Type", "Sales Document Type"::Invoice);
                                    IF PTSSWithTaxLedgerEntry.FINDSET THEN
                                        REPEAT
                                            lDRetAmount += PTSSWithTaxLedgerEntry."Withholding Original Amount 1";
                                        UNTIL PTSSWithTaxLedgerEntry.NEXT = 0;

                                    IF ("Document Type" = "Document Type"::"Credit Memo") OR ("Document Type" = "Document Type"::" ") THEN BEGIN
                                        gRecTmpVendorLedgerEntry."Closed by Currency Amount" := -ShowAmount;
                                        gRecTmpVendorLedgerEntry."Adjusted Currency Factor" := ABS(PmtDiscInvCurr);
                                        gRecTmpVendorLedgerEntry."Original Currency Factor" := -PmtTolInvCurr + lDRetAmount;
                                    END ELSE BEGIN
                                        gRecTmpVendorLedgerEntry."Closed by Currency Amount" := ABS(ShowAmount);
                                        gRecTmpVendorLedgerEntry."Adjusted Currency Factor" := ABS(PmtDiscInvCurr);
                                        gRecTmpVendorLedgerEntry."Original Currency Factor" := ABS(PmtTolInvCurr + lDRetAmount);
                                    END;

                                    gRecTmpVendorLedgerEntry.INSERT;
                                end;
                            }
                        }
                        dataitem(Lines; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(EntryNo_gRecTmpVendorLedgerEntry; gRecTmpVendorLedgerEntry."Entry No.")
                            {
                            }
                            column(DocumentType_gRecTmpVendorLedgerEntry; gRecTmpVendorLedgerEntry."Document Type")
                            {
                            }
                            column(DocumentNo_gRecTmpVendorLedgerEntry; gRecTmpVendorLedgerEntry."Document No.")
                            {
                            }
                            column(DocumentDate_gRecTmpVendorLedgerEntry; gRecTmpVendorLedgerEntry."Document Date")
                            {
                            }
                            column(Description_gRecTmpVendorLedgerEntry; gRecTmpVendorLedgerEntry.Description)
                            {
                            }
                            column(ExternalDocumentNo_gRecTmpVendorLedgerEntry; gRecTmpVendorLedgerEntry."External Document No.")
                            {
                            }
                            column(CurrencyCode_gRecTmpVendorLedgerEntry; gRecTmpVendorLedgerEntry."Currency Code")
                            {
                            }
                            column(ClosedbyCurrencyAmount_gRecTmpVendorLedgerEntry; gRecTmpVendorLedgerEntry."Closed by Currency Amount")
                            {
                            }
                            column(AdjustedCurrencyFactor_gRecTmpVendorLedgerEntry; gRecTmpVendorLedgerEntry."Adjusted Currency Factor")
                            {
                            }
                            column(OriginalCurrencyFactor_gRecTmpVendorLedgerEntry; gRecTmpVendorLedgerEntry."Original Currency Factor")
                            {
                            }
                            column(VendorName_gRecTmpVendorLedgerEntry; gRecTmpVendorLedgerEntry."Vendor Name")
                            {
                            }
                            column(gTNIF; gTNIF)
                            {
                            }
                            column(gTNIB; gTNIB)
                            {
                            }

                            trigger OnAfterGetRecord()
                            var
                                lRecVendor: Record Vendor;
                                lRecVendorBankAcc: Record "Vendor Bank Account";
                            begin
                                IF Number = 1 THEN
                                    gRecTmpVendorLedgerEntry.FINDSET
                                ELSE
                                    gRecTmpVendorLedgerEntry.NEXT;


                                CLEAR(gTNIF);
                                CLEAR(gTNIB);
                                CLEAR(lRecVendor);
                                CLEAR(lRecVendorBankAcc);
                                IF lRecVendor.GET(gRecTmpVendorLedgerEntry."Vendor No.") THEN
                                    gTNIF := lRecVendor."VAT Registration No.";

                                IF lRecVendorBankAcc.GET(gRecTmpVendorLedgerEntry."Vendor No.", gRecTmpVendorLedgerEntry."Recipient Bank Account") THEN
                                    gTNIB := lRecVendorBankAcc.IBAN;
                            end;

                            trigger OnPreDataItem()
                            begin
                                gRecTmpVendorLedgerEntry.RESET;
                                SETRANGE(Number, 1, gRecTmpVendorLedgerEntry.COUNT);
                            end;
                        }
                        dataitem(Total; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = CONST(1));
                            column(ABS_RemainingAmount_; ABS(RemainingAmount))
                            {
                            }
                            column(Vendor_Ledger_Entry___Document_Date__Control1000000063; "Vendor Ledger Entry"."Document Date")
                            {
                            }
                            column(Vendor_Ledger_Entry___Currency_Code_; "Vendor Ledger Entry"."Currency Code")
                            {
                            }
                            column(Vendor_Ledger_Entry___Original_Amount_; "Vendor Ledger Entry"."Original Amount")
                            {
                            }
                            column(EmptyString; '')
                            {
                            }
                            column(EmptyString_Control67; '')
                            {
                            }
                            column(CurrencyCode__Vendor_Ledger_Entry___Currency_Code__; CurrencyCode("Vendor Ledger Entry"."Currency Code"))
                            {
                            }
                            column(Vendor_Ledger_Entry___External_Document_No__; "Vendor Ledger Entry"."External Document No.")
                            {
                            }
                            column(EmptyString_Control43; '')
                            {
                            }
                            column(EmptyString_Control46; '')
                            {
                            }
                            column(CurrencyCode__Vendor_Ledger_Entry___Currency_Code___Control73; CurrencyCode("Vendor Ledger Entry"."Currency Code"))
                            {
                            }
                            column(Vendor_Ledger_Entry___Original_Amount__Control75; "Vendor Ledger Entry"."Original Amount")
                            {
                            }
                            column(Vendor_Ledger_Entry___Original_Amount_Caption; Vendor_Ledger_Entry___Original_Amount_CaptionLbl)
                            {
                            }
                            column(External_Document_No_Caption; External_Document_No_CaptionLbl)
                            {
                            }
                            column(Vendor_Ledger_Entry___Original_Amount__Control75Caption; Vendor_Ledger_Entry___Original_Amount__Control75CaptionLbl)
                            {
                            }
                            column(Total_Number; Number)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                NumLinhas := NumLinhas + 1;

                                //VERIFICA A 25ª LINHA E ULTIMA LINHA
                                IF ((NumLinhas MOD LinesPerPage) = 0) THEN BEGIN
                                    IF Total.NEXT = 0 THEN
                                        booLast := TRUE
                                    ELSE
                                        Total.NEXT(-1);
                                END;
                            end;
                        }
                        dataitem(LinhaBranco; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(LinhaBranco_Number; Number)
                            {
                            }

                            trigger OnPreDataItem()
                            begin
                                IF (RemainingAmount <> 0) THEN NumLinhas := NumLinhas + 1;

                                TotalLines := NumLinhas;

                                IntCPage := NumLinhas DIV LinesPerPage;
                                IF NumLinhas MOD LinesPerPage <> 0 THEN
                                    IntCPage += 1;

                                IF TotalLines > LinesPerPage THEN
                                    IF (TotalLines MOD LinesPerPage) > LinesLastPage THEN
                                        SETRANGE(Number, 1, LinesPerPage * IntCPage - TotalLines - 1)
                                    ELSE
                                        SETRANGE(Number, 1, LinesPerPage * (IntCPage - 1) + LinesLastPage - TotalLines - 1)
                                ELSE
                                    IF TotalLines > LinesLastPage THEN
                                        SETRANGE(Number, 1, LinesPerPage - TotalLines)
                                    ELSE
                                        SETRANGE(Number, 1, LinesLastPage - TotalLines)
                            end;
                        }
                        dataitem(TotLine; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = CONST(1));
                            column(ABS__Vendor_Ledger_Entry___Original_Amount__; ABS("Vendor Ledger Entry"."Original Amount"))
                            {
                            }
                            column(ABS_PmtDiscInvCurrTotal_; ABS(PmtDiscInvCurrTotal))
                            {
                            }
                            column(ABS__Vendor_Ledger_Entry___Original_Amount__PmtDiscInvCurrTotal_; ABS("Vendor Ledger Entry"."Original Amount" - PmtDiscInvCurrTotal))
                            {
                            }
                            column(TotLine_Number; Number)
                            {
                            }
                            column(TotalDocCount; STRSUBSTNO(TotalDocumentsCount, gRecTmpVendorLedgerEntry.COUNT))
                            {
                            }

                            trigger OnPreDataItem()
                            begin
                                gRecTmpVendorLedgerEntry.RESET;
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            ReportPageNo += 1;
                        end;

                        trigger OnPreDataItem()
                        begin
                            LinesPerPage := 27;
                            LinesLastPage := 13;
                            booLast := FALSE;
                        end;
                    }

                    trigger OnAfterGetRecord()
                    begin
                        CASE TRUE OF
                            Number = 1:
                                BEGIN
                                    txtViaDoc := Text50000;
                                    OutputNo := 1;
                                END;
                            Number = 2:
                                BEGIN
                                    txtViaDoc := Text50001;
                                    OutputNo := 2;
                                END;
                        END;

                        CLEAR(PmtDiscInvCurrTotal);

                        gRecTmpVendorLedgerEntry.DELETEALL;
                        CLEAR(ReportPageNo);
                    end;

                    trigger OnPreDataItem()
                    begin
                        //Para imprimir ORIGINAL e DUPLICADO
                        SETRANGE(Number, 1, 2);
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    Vendor.GET("Vendor No.");

                    CLEAR(PmtDiscInvCurrTotal);

                    //Vendor Address
                    CustAddr[1] := Vendor.Name;
                    CustAddr[2] := Vendor.Address;
                    CustAddr[3] := Vendor."Address 2";
                    CustAddr[4] := Vendor."Post Code" + ' ' + Vendor.City;
                    COMPRESSARRAY(CustAddr);

                    CALCFIELDS("Original Amount");
                    RemainingAmount := -"Original Amount";

                    IF recFpagam.GET(FPagam) THEN
                        txtFPagam := recFpagam.Description
                    ELSE
                        txtFPagam := '';

                    recCheck.SETCURRENTKEY("Document No.", "Bal. Account Type", "Bal. Account No.");
                    recCheck.SETRANGE("Document No.", "Document No.");
                    recCheck.SETRANGE("Bal. Account Type", "Bal. Account Type"::Vendor);
                    recCheck.SETRANGE("Bal. Account No.", "Vendor No.");
                    IF (recCheck.FINDLAST) AND (recCheck."Entry Status" = recCheck."Entry Status"::Printed) THEN BEGIN
                        txtCheckNum := recCheck."Check No.";
                        txtFPagam := STRSUBSTNO(Text50003, recCheck."Check No.", recCheck."Bank Account No.");
                    END ELSE
                        txtCheckNum := '';

                    CLEAR(BankAccount);
                    BankLedgerEntry.RESET;
                    BankLedgerEntry.SETCURRENTKEY("Document No.", "Posting Date");
                    BankLedgerEntry.SETRANGE("Document Type", "Document Type");
                    BankLedgerEntry.SETRANGE("Document No.", "Document No.");
                    IF BankLedgerEntry.FINDFIRST THEN
                        BankAccount.GET(BankLedgerEntry."Bank Account No.");
                end;

                trigger OnPreDataItem()
                begin
                    "Vendor Ledger Entry".SETRANGE("Entry No.", Header."From Entry No.", Header."To Entry No.");
                end;
            }

            trigger OnPreDataItem()
            begin
                Header.SETRANGE(Identifier, SepaIdentifier);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(SEPA)
                {
                    Caption = 'SEPA';
                    field(SepaIdentifier; SepaIdentifier)
                    {
                        Caption = 'SEPA Identifier';
                        Editable = false;
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

    trigger OnInitReport()
    begin
        SalesSetup.GET;
        CompanyInfo.GET;
        GLSetup.GET;
        CompanyInfo.CALCFIELDS(Picture);
        FormatAddr.Company(CompanyAddr, CompanyInfo);
    end;

    var
        PageLbl: Label 'Page';
        CompanyInfo: Record "Company Information";
        GLSetup: Record "General Ledger Setup";
        Vendor: Record Vendor;
        FormatAddr: Codeunit "Format Address";
        ReportTitle: Text[30];
        txtViaDoc: Text[30];
        PaymentDiscountTitle: Text[30];
        CompanyAddr: array[8] of Text[50];
        CustAddr: array[8] of Text[50];
        RemainingAmount: Decimal;
        AppliedAmount: Decimal;
        PmtDiscInvCurr: Decimal;
        PmtTolInvCurr: Decimal;
        PmtDiscPmtCurr: Decimal;
        Text000: Label 'Salesperson';
        Text001: Label 'Reference';
        Text002: Label 'Reg. No.';
        Text003: Label 'Payment Receipt';
        Text004: Label 'Payment Voucher';
        Text005: Label 'Page %1';
        Text006: Label 'Pmt. Disc. Given';
        Text007: Label 'Pmt. Disc. Rcvd.';
        PmtTolPmtCurr: Decimal;
        ShowAmount: Decimal;
        Text50000: Label 'ORIGINAL';
        Text50001: Label 'DUPLICATE';
        MaxLinhas: Integer;
        NumLinhas: Integer;
        Text50002: Label 'TRIPLICATE';
        VarDescriptionText: array[2] of Text[57];
        Valor: Decimal;
        Comments: Text[30];
        FPagam: Code[10];
        txtFPagam: Text[60];
        recFpagam: Record "Payment Method";
        recCheck: Record "Check Ledger Entry";
        txtCheckNum: Text[30];
        Text50003: Label 'Payment by Check No. %1 on %2.';
        LinesPerPage: Integer;
        booLast: Boolean;
        IntCPage: Integer;
        TotalLines: Integer;
        Vend_Bank: Record "Vendor Bank Account";
        SalesSetup: Record "Sales & Receivables Setup";
        LinesLastPage: Integer;
        BankLedgerEntry: Record "Bank Account Ledger Entry";
        BankAccount: Record "Bank Account";
        PmtDiscInvCurrTotal: Decimal;
        Text50006: Label 'Organism identifier:';
        Text50007: Label 'Finance Ministry';
        Text50008: Label 'Parvalorem S.A.';
        Text50009: Label 'Vendor';
        Text50010: Label 'NIF';
        Text50011: Label 'IBAN';
        Text50012: Label 'Records from a file';
        Text50013: Label 'Acronym:';
        Text50014: Label 'Account Information:';
        Text50015: Label 'Date:';
        Vendor_Ledger_Entry___Vendor_No__CaptionLbl: Label 'Vendor No.';
        NIF_FornecedorCaptionLbl: Label 'Vendor NIF';
        LIQ__A_FORNECEDORCaptionLbl: Label 'VENDOR SETTLEMENT';
        DATACaptionLbl: Label 'DATE';
        Exmos_s__Senhor_es_CaptionLbl: Label 'Dear Sir';
        Exmo_s__Senhor_es__CaptionLbl: Label 'Dear Sir,';
        "Para_liquidaç_o_dos_seguintes_documentos_CaptionLbl": Label 'For settlement of the following documents:';
        Junto_enviamos_o_Nosso_Cheque_N__CaptionLbl: Label 'It is communicated that, in ';
        fromCaptionLbl: Label ', if the payment of the invoice(s) listed below was made by bank transfer:';
        Fax_CaptionLbl: Label 'Fax:';
        Location_CaptionLbl: Label 'Location:';
        General_CaptionLbl: Label 'General:';
        "Matrícula_N__CaptionLbl": Label 'Registration No.:';
        CompanyInfo__Capital_Stock_CaptionLbl: Label 'Social Fund (EUR)';
        Quota_Soc__CaptionLbl: Label 'Corporate Share-';
        CompanyInfo__VAT_Registration_No__CaptionLbl: Label 'VAT Reg. No.';
        DescriptionCaptionLbl: Label 'Description';
        Data_Doc_CaptionLbl: Label 'Doc. Date';
        VendorLedgEntry2__Document_No__CaptionLbl: Label 'Document No.';
        Valor_PagoCaptionLbl: Label 'Payment Amount';
        Valor_LiquidoCaptionLbl: Label 'Net Amount';
        Desc__P__Pag_CaptionLbl: Label 'P. P. Discount';
        N__Doc_Forn_CaptionLbl: Label 'Vendor Doc. No.';
        Tipo_Doc_CaptionLbl: Label 'Doc. Type';
        Div_CaptionLbl: Label 'Div.';
        Atentamente_CaptionLbl: Label 'The Treasurer,';
        Processado_por_ComputadorCaptionLbl: Label 'In case of doubt about the payments in question, you should contact the Treasury.';
        Agradecemos_que_nos_seja_enviado_o_respectivo_Recibo_CaptionLbl: Label 'We appreciate that you send us the respective receipt.';
        Pagamos_a_V___Ex___a_quantia_de_CaptionLbl: Label 'We pay V. Ex. the amount of:';
        ContinuedCaptionLbl: Label 'Continued';
        ContinuedCaption_Control69Lbl: Label 'Continued';
        ContinuedCaption_Control1000000146Lbl: Label 'Continued';
        ContinuedCaption_Control71Lbl: Label 'Continued';
        Payment_Amount_Not_AllocatedCaptionLbl: Label 'Payment';
        Vendor_Ledger_Entry___Original_Amount_CaptionLbl: Label 'Payment Amount';
        External_Document_No_CaptionLbl: Label 'External Document No.';
        Vendor_Ledger_Entry___Original_Amount__Control75CaptionLbl: Label 'Payment Amount';
        TOTAISCaptionLbl: Label 'TOTALS';
        gRecTmpVendorLedgerEntry: Record "Vendor Ledger Entry" temporary;
        OutputNo: Integer;
        ReportPageNo: Integer;
        gTNIF: Text[20];
        gTNIB: Text[25];
        TotalDocumentsCount: Label 'Documents: %1';
        SepaIdentifier: Code[20];

    local procedure CurrencyCode(SrcCurrCode: Code[10]): Code[10]
    begin
        IF SrcCurrCode = '' THEN
            EXIT(GLSetup."LCY Code")
        ELSE
            EXIT(SrcCurrCode);
    end;

    procedure SetSEPAIdentifier(NewSepaIdentifier: Code[20])
    begin
        SepaIdentifier := NewSepaIdentifier;
    end;
}

