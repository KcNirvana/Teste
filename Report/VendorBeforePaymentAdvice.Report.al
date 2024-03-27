report 57020 "Vendor - Before Payment Advice"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/VendorBeforePaymentAdvice.rdl';
    ApplicationArea = All;
    Caption = 'Vendor - Payment Advise';

    dataset
    {
        dataitem("G/L Register"; "G/L Register")
        {
            DataItemTableView = SORTING("No.");
            column(G_L_Register_Transaction_No_; "No.")
            {
            }
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
                    column(STRSUBSTNO_Text005_FORMAT_CurrReport_PAGENO__; STRSUBSTNO(Text005, FORMAT(Number)))
                    {
                    }
                    column(txtViaDoc; txtViaDoc)
                    {
                    }
                    column(Vendor__VAT_Registration_No__; Vendor."VAT Registration No.")
                    {
                    }
                    column(CustAddr_5_; CustAddr[5])
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
                        column(TotalCaption; TOTAISCaptionLbl)
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
                CLEAR(gRecCreditTransferEntry);
                gRecCreditTransferEntry.SETRANGE("Transaction ID", gCDocumentNo);
                gRecCreditTransferEntry.SETRANGE(Canceled, FALSE);
                IF gRecCreditTransferEntry.FINDLAST THEN
                    gRecCreditTransferRegister.GET(gRecCreditTransferEntry."Credit Transfer Register No.");

                GetJournalLines;
            end;

            trigger OnPreDataItem()
            var
                CreditTransferRegister: Record "Credit Transfer Register";
            begin
                IF "G/L Register".GETFILTERS = '' THEN BEGIN
                    "G/L Register".FINDFIRST;
                    "G/L Register".SETRANGE("No.", "G/L Register"."No.");
                END;

            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(gCJnlTempName; gCJnlTempName)
                {
                    Caption = 'Journal';
                    Editable = false;
                }
                field(gCJnlBatchName; gCJnlBatchName)
                {
                    Caption = 'Section';
                    Editable = false;
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
        LinesLastPage: Integer;
        BankAccount: Record "Bank Account";
        PmtDiscInvCurrTotal: Decimal;
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
        fromCaptionLbl: Label 'from';
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
        gCJnlTempName: Code[10];
        gCJnlBatchName: Code[10];
        gCDocumentNo: Code[20];
        gRecCreditTransferRegister: Record "Credit Transfer Register";
        gRecCreditTransferEntry: Record "Credit Transfer Entry";

    local procedure CurrencyCode(SrcCurrCode: Code[10]): Code[10]
    begin
        IF SrcCurrCode = '' THEN
            EXIT(GLSetup."LCY Code")
        ELSE
            EXIT(SrcCurrCode);
    end;

    procedure GetDocumentNo(pCJnlTempName: Code[10]; pCJnlBatchName: Code[10]; pCAppliesToId: Code[20])
    begin
        gCJnlTempName := pCJnlTempName;
        gCJnlBatchName := pCJnlBatchName;
        gCDocumentNo := pCAppliesToId;
    end;

    local procedure GetJournalLines()
    var
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalLine2: Record "Gen. Journal Line";
        VendorLedgerEntry: Record 25;
        PTSSWithTaxLedgerEntry: Record "PTSS With. Tax Ledger Entry";
        lDRetAmount: Decimal;
    begin
        GenJournalLine2.SETRANGE("Journal Template Name", gCJnlTempName);
        GenJournalLine2.SETRANGE("Journal Batch Name", gCJnlBatchName);
        GenJournalLine2.SETRANGE("Document Type", GenJournalLine2."Document Type"::Payment);
        GenJournalLine2.SETRANGE("Account Type", GenJournalLine2."Account Type"::Vendor);
        GenJournalLine2.SetRange("PTSS Withholding Line", false);
        IF GenJournalLine2.FINDSET THEN
            REPEAT
                BankAccount.GET(GenJournalLine2."Bal. Account No.");
                IF GenJournalLine2."Applies-to ID" <> '' THEN BEGIN
                    VendorLedgerEntry.SETRANGE("Applies-to ID", GenJournalLine2."Applies-to ID");
                    IF VendorLedgerEntry.FINDFIRST THEN BEGIN
                        gRecTmpVendorLedgerEntry.RESET;
                        gRecTmpVendorLedgerEntry.SETRANGE("Entry No.", VendorLedgerEntry."Entry No.");
                        IF gRecTmpVendorLedgerEntry.FINDFIRST THEN BEGIN
                            gRecTmpVendorLedgerEntry."Recipient Bank Account" := GenJournalLine2."Recipient Bank Account";
                            gRecTmpVendorLedgerEntry."Original Currency Factor" += GenJournalLine2."Amount (LCY)";
                            //Retencao
                            CLEAR(lDRetAmount);
                            CLEAR(PTSSWithTaxLedgerEntry);
                            PTSSWithTaxLedgerEntry.SetRange("Document No.", VendorLedgerEntry."Document No.");
                            PTSSWithTaxLedgerEntry.SETRANGE(Type, "PTSS With. Tax Ledger Entry Enum"::Vendor);
                            PTSSWithTaxLedgerEntry.SetRange("Document Type", "Sales Document Type"::Invoice);
                            IF PTSSWithTaxLedgerEntry.FINDSET THEN
                                REPEAT
                                    gRecTmpVendorLedgerEntry."Adjusted Currency Factor" += PTSSWithTaxLedgerEntry."Withholding Original Amount 1";
                                    gRecTmpVendorLedgerEntry."Original Currency Factor" -= ABS(PTSSWithTaxLedgerEntry."Withholding Original Amount 1");
                                UNTIL PTSSWithTaxLedgerEntry.NEXT = 0;
                            gRecTmpVendorLedgerEntry.MODIFY;
                        END ELSE BEGIN
                            VendorLedgerEntry.CALCFIELDS("Remaining Amount");
                            gRecTmpVendorLedgerEntry.INIT;
                            CLEAR(gRecTmpVendorLedgerEntry);
                            gRecTmpVendorLedgerEntry.INIT;
                            gRecTmpVendorLedgerEntry."Entry No." := VendorLedgerEntry."Entry No.";
                            gRecTmpVendorLedgerEntry."Vendor No." := VendorLedgerEntry."Vendor No.";
                            gRecTmpVendorLedgerEntry."Document Type" := VendorLedgerEntry."Document Type";
                            gRecTmpVendorLedgerEntry."Document No." := VendorLedgerEntry."Document No.";
                            gRecTmpVendorLedgerEntry."Document Date" := VendorLedgerEntry."Document Date";
                            gRecTmpVendorLedgerEntry."External Document No." := VendorLedgerEntry."External Document No.";
                            gRecTmpVendorLedgerEntry.Description := VendorLedgerEntry.Description;
                            gRecTmpVendorLedgerEntry."Currency Code" := VendorLedgerEntry."Currency Code";
                            gRecTmpVendorLedgerEntry."Recipient Bank Account" := GenJournalLine2."Recipient Bank Account";
                            gRecTmpVendorLedgerEntry."Closed by Currency Amount" := VendorLedgerEntry."Remaining Amount";
                            gRecTmpVendorLedgerEntry."Original Currency Factor" := GenJournalLine2."Amount (LCY)";
                            gRecTmpVendorLedgerEntry."Posting Date" := GenJournalLine2."Posting Date";
                            gRecTmpVendorLedgerEntry.Open := FALSE;
                            //Retencao
                            CLEAR(lDRetAmount);
                            CLEAR(PTSSWithTaxLedgerEntry);
                            PTSSWithTaxLedgerEntry.SetRange("Document No.", VendorLedgerEntry."Document No.");
                            PTSSWithTaxLedgerEntry.SETRANGE(Type, "PTSS With. Tax Ledger Entry Enum"::Vendor);
                            PTSSWithTaxLedgerEntry.SetRange("Document Type", "Sales Document Type"::Invoice);
                            IF PTSSWithTaxLedgerEntry.FINDSET THEN
                                REPEAT
                                    gRecTmpVendorLedgerEntry."Adjusted Currency Factor" += PTSSWithTaxLedgerEntry."Withholding Original Amount 1";
                                    gRecTmpVendorLedgerEntry."Original Currency Factor" -= ABS(PTSSWithTaxLedgerEntry."Withholding Original Amount 1");
                                UNTIL PTSSWithTaxLedgerEntry.NEXT = 0;
                            gRecTmpVendorLedgerEntry.INSERT;
                        END;
                    END;
                END ELSE BEGIN
                    CLEAR(gRecTmpVendorLedgerEntry);
                    gRecTmpVendorLedgerEntry.INIT;
                    gRecTmpVendorLedgerEntry."Entry No." := GenJournalLine2."Line No.";
                    gRecTmpVendorLedgerEntry."Vendor No." := GenJournalLine2."Account No.";
                    gRecTmpVendorLedgerEntry."Document Type" := GenJournalLine2."Document Type";
                    gRecTmpVendorLedgerEntry."Document No." := GenJournalLine2."Document No.";
                    gRecTmpVendorLedgerEntry."Document Date" := GenJournalLine2."Document Date";
                    gRecTmpVendorLedgerEntry."External Document No." := GenJournalLine2."External Document No.";
                    gRecTmpVendorLedgerEntry.Description := GenJournalLine2.Description;
                    gRecTmpVendorLedgerEntry."Currency Code" := GenJournalLine2."Currency Code";
                    gRecTmpVendorLedgerEntry."Recipient Bank Account" := GenJournalLine2."Recipient Bank Account";
                    gRecTmpVendorLedgerEntry."Original Currency Factor" := GenJournalLine2."Amount (LCY)";
                    gRecTmpVendorLedgerEntry."Posting Date" := GenJournalLine2."Posting Date";
                    gRecTmpVendorLedgerEntry."Recipient Bank Account" := GenJournalLine2."Recipient Bank Account";
                    gRecTmpVendorLedgerEntry.Open := TRUE;
                    IF NOT gRecTmpVendorLedgerEntry.INSERT THEN;
                END;
            UNTIL GenJournalLine2.NEXT = 0;
    end;
}

