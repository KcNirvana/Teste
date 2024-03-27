report 57017 "Vendor - Payment Advice"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/VendorPaymentAdvice.rdl';

    Caption = 'Vendor - Payment Advise';
    ApplicationArea = All;

    dataset
    {
        dataitem(Integer; Integer)
        {
            DataItemTableView = SORTING(Number)
                                ORDER(Ascending)
                                WHERE(Number = CONST(1));
            column(CompanyInfo_Picture; CompanyInfo.Picture)
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
                    column(Text50006; Text50006)
                    {
                    }
                    column(Text50007; Text50007)
                    {
                    }
                    column(Text50008; Text50008)
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
                        column(Reversed; Reversed)
                        {
                        }

                        trigger OnAfterGetRecord()
                        var
                            lRecVendorLedgerEntryAux: Record "Vendor Ledger Entry";
                            PTSSWithTaxLedgerEntry: Record "PTSS With. Tax Ledger Entry";
                        begin
                            lRecVendorLedgerEntryAux := "Vendor Ledger Entry";
                            FindAppliedVendorEntries(lRecVendorLedgerEntryAux);
                            IF NOT lRecVendorLedgerEntryAux.FINDFIRST THEN
                                IsPaymentAdvance := TRUE;

                            Vendor.GET("Vendor No.");
                            CLEAR(BankAccount);
                            BankLedgerEntry.RESET;
                            BankLedgerEntry.SETCURRENTKEY("Document No.", "Posting Date");
                            BankLedgerEntry.SETRANGE("Document Type", "Document Type");
                            BankLedgerEntry.SETRANGE("Document No.", "Document No.");
                            IF BankLedgerEntry.FINDFIRST THEN
                                BankAccount.GET(BankLedgerEntry."Bank Account No.");

                            IF IsPaymentAdvance THEN BEGIN
                                CALCFIELDS("Original Amount", Amount, "Remaining Amount");
                                gRecTmpVendorLedgerEntry.INIT;
                                gRecTmpVendorLedgerEntry."Entry No." := "Entry No.";
                                gRecTmpVendorLedgerEntry."Vendor No." := "Vendor No.";
                                gRecTmpVendorLedgerEntry."Document Type" := "Document Type";
                                gRecTmpVendorLedgerEntry."Document No." := "Document No.";
                                gRecTmpVendorLedgerEntry."Document Date" := "Document Date";
                                gRecTmpVendorLedgerEntry."External Document No." := "External Document No.";
                                gRecTmpVendorLedgerEntry.Description := Description;
                                gRecTmpVendorLedgerEntry."Currency Code" := "Currency Code";
                                gRecTmpVendorLedgerEntry."Closed by Currency Amount" := ABS(Amount);
                                gRecTmpVendorLedgerEntry."Original Currency Factor" := Amount;
                                gRecTmpVendorLedgerEntry."Posting Date" := "Posting Date";
                                gRecTmpVendorLedgerEntry."Recipient Bank Account" := "Recipient Bank Account";
                                gRecTmpVendorLedgerEntry.Open := IsPaymentAdvance;
                                gRecTmpVendorLedgerEntry.INSERT;
                            END ELSE BEGIN
                                lRecVendorLedgerEntryAux.CALCFIELDS("Original Amount", Amount, "Remaining Amount");
                                gRecTmpVendorLedgerEntry.INIT;
                                gRecTmpVendorLedgerEntry."Entry No." := lRecVendorLedgerEntryAux."Entry No.";
                                gRecTmpVendorLedgerEntry."Vendor No." := lRecVendorLedgerEntryAux."Vendor No.";
                                gRecTmpVendorLedgerEntry."Document Type" := lRecVendorLedgerEntryAux."Document Type";
                                gRecTmpVendorLedgerEntry."Document No." := lRecVendorLedgerEntryAux."Document No.";
                                gRecTmpVendorLedgerEntry."Document Date" := lRecVendorLedgerEntryAux."Document Date";
                                gRecTmpVendorLedgerEntry."External Document No." := lRecVendorLedgerEntryAux."External Document No.";
                                gRecTmpVendorLedgerEntry.Description := lRecVendorLedgerEntryAux.Description;
                                gRecTmpVendorLedgerEntry."Currency Code" := lRecVendorLedgerEntryAux."Currency Code";
                                gRecTmpVendorLedgerEntry."Closed by Currency Amount" := -lRecVendorLedgerEntryAux."Remaining Amount";
                                gRecTmpVendorLedgerEntry."Original Currency Factor" := -lRecVendorLedgerEntryAux.Amount;
                                gRecTmpVendorLedgerEntry."Posting Date" := "Posting Date";
                                gRecTmpVendorLedgerEntry."Recipient Bank Account" := "Recipient Bank Account";
                                gRecTmpVendorLedgerEntry.Open := IsPaymentAdvance;
                                //Retencao
                                CLEAR(PTSSWithTaxLedgerEntry);
                                PTSSWithTaxLedgerEntry.SetRange("Document No.", lRecVendorLedgerEntryAux."Document No.");
                                PTSSWithTaxLedgerEntry.SETRANGE(Type, "PTSS With. Tax Ledger Entry Enum"::Vendor);
                                PTSSWithTaxLedgerEntry.SetRange("Document Type", "Sales Document Type"::Invoice);
                                IF PTSSWithTaxLedgerEntry.FINDSET THEN
                                    REPEAT
                                        gRecTmpVendorLedgerEntry."Adjusted Currency Factor" += PTSSWithTaxLedgerEntry."Withholding Original Amount 1";
                                        gRecTmpVendorLedgerEntry."Original Currency Factor" -= ABS(PTSSWithTaxLedgerEntry."Withholding Original Amount 1");
                                    UNTIL PTSSWithTaxLedgerEntry.NEXT = 0;
                                gRecTmpVendorLedgerEntry.INSERT;
                            END;
                        end;

                        trigger OnPreDataItem()
                        var
                            lVendorLedgerEntry: Record "Vendor Ledger Entry";
                            CreditTransferRegister: Record "Credit Transfer Register";
                        begin
                            CLEAR(IsPaymentAdvance);
                            IF NOT VendorFilter THEN BEGIN
                                IF SepaIdentifier = '' THEN
                                    ERROR('');
                                CLEAR(FromEntryNo);
                                CLEAR(ToEntryNo);
                                CreditTransferRegister.SETRANGE(Identifier, SepaIdentifier);
                                IF CreditTransferRegister.FINDFIRST THEN BEGIN
                                    FromEntryNo := CreditTransferRegister."From Entry No.";
                                    ToEntryNo := CreditTransferRegister."To Entry No.";
                                END;
                            END;
                            "Vendor Ledger Entry".SETRANGE("Entry No.", FromEntryNo, ToEntryNo);
                        end;
                    }
                    dataitem(Lines; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(NibText; NibText)
                        {
                        }
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
                        column(IsPaymentAdvance; IsPaymentAdvance)
                        {
                        }
                        column(VendorNo; gRecTmpVendorLedgerEntry."Vendor No.")
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

                        trigger OnAfterGetRecord()
                        var
                            VendorBankAccount: Record "Vendor Bank Account";
                        begin
                            IF Number = 1 THEN
                                gRecTmpVendorLedgerEntry.FINDFIRST
                            ELSE
                                gRecTmpVendorLedgerEntry.NEXT;

                            IF NOT gRecTmpVendorLedgerEntry.Open THEN BEGIN
                                IF VendorBankAccount.GET(gRecTmpVendorLedgerEntry."Vendor No.", gRecTmpVendorLedgerEntry."Recipient Bank Account") THEN
                                    NibText := STRSUBSTNO(PaymentText, gRecTmpVendorLedgerEntry."Posting Date", VendorBankAccount."PTSS CCC No.")
                                ELSE
                                    NibText := STRSUBSTNO(PaymentText, gRecTmpVendorLedgerEntry."Posting Date", '');
                            END ELSE BEGIN
                                IF VendorBankAccount.GET(gRecTmpVendorLedgerEntry."Vendor No.", gRecTmpVendorLedgerEntry."Recipient Bank Account") THEN
                                    NibText := STRSUBSTNO(PaymentTextAdvance, gRecTmpVendorLedgerEntry."Posting Date", VendorBankAccount."PTSS CCC No.")
                                ELSE
                                    NibText := STRSUBSTNO(PaymentTextAdvance, gRecTmpVendorLedgerEntry."Posting Date", '');
                            END;
                            Vendor.GET(gRecTmpVendorLedgerEntry."Vendor No.");
                            FormatAddr.Vendor(CustAddr, Vendor);
                        end;

                        trigger OnPreDataItem()
                        begin
                            gRecTmpVendorLedgerEntry.RESET;
                            SETRANGE(Number, 1, gRecTmpVendorLedgerEntry.COUNT);
                        end;
                    }

                    trigger OnAfterGetRecord()
                    begin
                        ReportPageNo += 1;
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

                    FormatAddr.Company(CompanyAddr, CompanyInfo);
                    gRecTmpVendorLedgerEntry.DELETEALL;
                    CLEAR(ReportPageNo);
                end;

                trigger OnPreDataItem()
                begin
                    //Para imprimir ORIGINAL e DUPLICADO
                    SETRANGE(Number, 1, 2);
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
                group(SEPA)
                {
                    Caption = 'SEPA';
                    field(SepaIdentifier; SepaIdentifier)
                    {
                        Caption = 'SEPA Identifier';

                        trigger OnLookup(var Text: Text): Boolean
                        var
                            CreditTransferRegisterPage: Page "Credit Transfer Registers";
                            CreditTransferRegister: Record "Credit Transfer Register";
                        begin
                            CLEAR(CreditTransferRegisterPage);
                            CreditTransferRegister.FILTERGROUP(2);
                            IF Text <> '' THEN
                                CreditTransferRegister.SETRANGE(Identifier, Text);
                            CreditTransferRegister.SETFILTER(Status, '<>%1', CreditTransferRegister.Status::Canceled);
                            CreditTransferRegister.FILTERGROUP(0);
                            CreditTransferRegisterPage.SETTABLEVIEW(CreditTransferRegister);
                            CreditTransferRegisterPage.SETRECORD(CreditTransferRegister);
                            CreditTransferRegisterPage.LOOKUPMODE(TRUE);
                            IF CreditTransferRegisterPage.RUNMODAL = ACTION::LookupOK THEN BEGIN
                                CreditTransferRegisterPage.GETRECORD(CreditTransferRegister);
                            END;
                            IF NOT ((CreditTransferRegister."From Entry No." <> 0) OR (CreditTransferRegister."To Entry No." <> 0)) THEN
                                ERROR(Text50009);
                            SepaIdentifier := CreditTransferRegister.Identifier;
                        end;
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
        CompanyInfo.CALCFIELDS(Picture);
        GLSetup.GET;
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
        SalesSetup: Record "Sales & Receivables Setup";
        BankLedgerEntry: Record "Bank Account Ledger Entry";
        BankAccount: Record "Bank Account";
        Text50006: Label 'Subject: Payment Advise';
        Text50007: Label 'Department of Administrative and Financial Services';
        Text50008: Label 'Financial Management Division';
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
        Valor_PagoCaptionLbl: Label 'Remaining Amount';
        Valor_LiquidoCaptionLbl: Label 'Payment Amount';
        Desc__P__Pag_CaptionLbl: Label 'Retention Amount';
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
        VendorFilter: Boolean;
        VendorDocumentNo: Code[20];
        NibText: Text;
        PaymentText: Label 'It is communicated that, in %1, the payment of the invoice(s) listed below was made by bank transfer to y/account no. %2:';
        PaymentTextAdvance: Label 'It is communicated that, in %1, the following payment was made by bank transfer to account no. %2:';
        CreateVendLedgEntry: Record "Vendor Ledger Entry";
        IsPaymentAdvance: Boolean;
        SepaIdentifier: Code[20];
        FromEntryNo: Integer;
        ToEntryNo: Integer;
        Text50009: Label 'The payment still not posted.';

    local procedure CurrencyCode(SrcCurrCode: Code[10]): Code[10]
    begin
        IF SrcCurrCode = '' THEN
            EXIT(GLSetup."LCY Code")
        ELSE
            EXIT(SrcCurrCode);
    end;

    procedure SetVendorFilter(pFromEntryNo: Integer; pToEntryNo: Integer)
    begin
        VendorFilter := TRUE;
        FromEntryNo := pFromEntryNo;
        ToEntryNo := pToEntryNo;
    end;

    local procedure FindAppliedVendorEntries(var pRecVendorLedgerEntry: Record "Vendor Ledger Entry")
    begin
        pRecVendorLedgerEntry.RESET;

        IF pRecVendorLedgerEntry."Entry No." <> 0 THEN BEGIN
            CreateVendLedgEntry := pRecVendorLedgerEntry;

            FindApplnVendEntriesDtldtLedgEntry(pRecVendorLedgerEntry);
            pRecVendorLedgerEntry.SETCURRENTKEY("Entry No.");
            pRecVendorLedgerEntry.SETRANGE("Entry No.");

            IF (CreateVendLedgEntry."Closed by Entry No." <> 0) AND
              ((pRecVendorLedgerEntry."Posting Date" < CreateVendLedgEntry."Posting Date") OR (pRecVendorLedgerEntry."Posting Date" = CreateVendLedgEntry."Posting Date")) THEN BEGIN
                pRecVendorLedgerEntry."Entry No." := CreateVendLedgEntry."Closed by Entry No.";
                pRecVendorLedgerEntry.MARK(TRUE);
            END;

            pRecVendorLedgerEntry.SETCURRENTKEY("Closed by Entry No.");
            pRecVendorLedgerEntry.SETRANGE("Closed by Entry No.", CreateVendLedgEntry."Entry No.");
            pRecVendorLedgerEntry.SETFILTER("Posting Date", '<=%1', CreateVendLedgEntry."Posting Date");
            IF pRecVendorLedgerEntry.FIND('-') THEN
                REPEAT
                    pRecVendorLedgerEntry.MARK(TRUE);
                UNTIL pRecVendorLedgerEntry.NEXT = 0;

            pRecVendorLedgerEntry.SETCURRENTKEY("Entry No.");
            pRecVendorLedgerEntry.SETRANGE("Closed by Entry No.");
        END;

        pRecVendorLedgerEntry.MARKEDONLY(TRUE);
    end;

    local procedure FindApplnVendEntriesDtldtLedgEntry(var pRecVendorLedgerEntry: Record "Vendor Ledger Entry")
    var
        DtldVendLedgEntry1: Record "Detailed Vendor Ledg. Entry";
        DtldVendLedgEntry2: Record "Detailed Vendor Ledg. Entry";
    begin
        DtldVendLedgEntry1.SETCURRENTKEY("Vendor Ledger Entry No.");
        DtldVendLedgEntry1.SETRANGE("Vendor Ledger Entry No.", CreateVendLedgEntry."Entry No.");
        DtldVendLedgEntry1.SETRANGE(Unapplied, FALSE);
        IF DtldVendLedgEntry1.FIND('-') THEN
            REPEAT
                IF DtldVendLedgEntry1."Vendor Ledger Entry No." =
                   DtldVendLedgEntry1."Applied Vend. Ledger Entry No."
                THEN BEGIN
                    DtldVendLedgEntry2.INIT;
                    DtldVendLedgEntry2.SETCURRENTKEY("Applied Vend. Ledger Entry No.", "Entry Type");
                    DtldVendLedgEntry2.SETRANGE(
                      "Applied Vend. Ledger Entry No.", DtldVendLedgEntry1."Applied Vend. Ledger Entry No.");
                    DtldVendLedgEntry2.SETRANGE("Entry Type", DtldVendLedgEntry2."Entry Type"::Application);
                    DtldVendLedgEntry2.SETRANGE(Unapplied, FALSE);
                    IF DtldVendLedgEntry2.FIND('-') THEN
                        REPEAT
                            IF DtldVendLedgEntry2."Vendor Ledger Entry No." <>
                               DtldVendLedgEntry2."Applied Vend. Ledger Entry No."
                            THEN BEGIN
                                pRecVendorLedgerEntry.SETCURRENTKEY("Entry No.");
                                pRecVendorLedgerEntry.SETRANGE("Entry No.", DtldVendLedgEntry2."Vendor Ledger Entry No.");
                                IF pRecVendorLedgerEntry.FIND('-') THEN
                                    pRecVendorLedgerEntry.MARK(TRUE);
                            END;
                        UNTIL DtldVendLedgEntry2.NEXT = 0;
                END ELSE BEGIN
                    pRecVendorLedgerEntry.SETCURRENTKEY("Entry No.");
                    pRecVendorLedgerEntry.SETRANGE("Entry No.", DtldVendLedgEntry1."Applied Vend. Ledger Entry No.");
                    IF pRecVendorLedgerEntry.FIND('-') THEN
                        pRecVendorLedgerEntry.MARK(TRUE);
                END;
            UNTIL DtldVendLedgEntry1.NEXT = 0;
    end;
}

