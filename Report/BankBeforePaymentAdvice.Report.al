report 57019 "Bank - Before Payment Advice"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/BankBeforePaymentAdvice.rdl';

    Caption = 'Bank - Payment Advise';
    UseRequestPage = true;

    dataset
    {
        dataitem("G/L Register"; "G/L Register")
        {
            DataItemTableView = SORTING("No.");
            column(G_L_Register_Transaction_No_; "No.")
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
                    column(PageLoop_Number; Number)
                    {
                    }
                    column(CompanyInfo_Picture; CompanyInfo.Picture)
                    {
                    }
                    column(VendorLedgEntry2__Document_No__Caption; VendorLedgEntry2__Document_No__CaptionLbl)
                    {
                    }
                    column(Valor_LiquidoCaption; Valor_LiquidoCaptionLbl)
                    {
                    }
                    column(TOTAISCaption; TOTAISCaptionLbl)
                    {
                    }
                    column(BankAccountNIB; BankAccount.IBAN)
                    {
                    }
                    column(SEPAIdentifier; gRecCreditTransferRegister.Identifier)
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
                    dataitem(Lines; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(EntryNo_gRecTmpVendorLedgerEntry; gRecTmpVendorLedgerEntry."Entry No.")
                        {
                        }
                        column(Posting_Date__gRecTmpVendorLedgerEntry; FORMAT(gRecTmpVendorLedgerEntry."Posting Date", 0, 9))
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
                        column(Vendor_Ledger_Entry___Vendor_No__; gRecTmpVendorLedgerEntry."Vendor No.")
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

                        trigger OnPostDataItem()
                        begin
                            TotalDocuments := gRecTmpVendorLedgerEntry.COUNT;
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
                        column(TotalDocuments; STRSUBSTNO(TotalDocumentsCount, TotalDocuments))
                        {
                        }
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
                GlEntry.RESET;
                GlEntry.SETRANGE("Entry No.", "G/L Register"."From Entry No.", "G/L Register"."To Entry No.");
                GlEntry.SETRANGE("Document Type", GlEntry."Document Type"::Payment);
                IF GlEntry.FINDFIRST THEN;

                CLEAR(gRecCreditTransferEntry);
                gRecCreditTransferEntry.SETRANGE("Transaction ID", gCAppliesToId);
                gRecCreditTransferEntry.SETRANGE(Canceled, FALSE);
                IF gRecCreditTransferEntry.FINDLAST THEN
                    gRecCreditTransferRegister.GET(gRecCreditTransferEntry."Credit Transfer Register No.");

                GetJournalLines;
            end;

            trigger OnPreDataItem()
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

    trigger OnPreReport()
    begin
        SalesSetup.GET;
        CompanyInfo.GET;
        CompanyInfo.CALCFIELDS(Picture);

        FormatAddr.Company(CompanyAddr, CompanyInfo);
        GLSetup.GET;
    end;

    var
        PageLbl: Label 'Page';
        CompanyInfo: Record "Company Information";
        GLSetup: Record "General Ledger Setup";
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
        txtCheckNum: Text[30];
        LinesPerPage: Integer;
        booLast: Boolean;
        IntCPage: Integer;
        TotalLines: Integer;
        SalesSetup: Record "Sales & Receivables Setup";
        LinesLastPage: Integer;
        BankAccount: Record "Bank Account";
        GlEntry: Record "G/L Entry";
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
        gCAppliesToId: Code[20];
        gRecGenJnlLine: Record "Gen. Journal Line";
        gRecCreditTransferRegister: Record "Credit Transfer Register";
        gRecCreditTransferEntry: Record "Credit Transfer Entry";
        gCJnlTempName: Code[10];
        gCJnlBatchName: Code[10];
        TotalDocumentsCount: Label 'Documents: %1';
        TotalDocuments: Integer;

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
        gCAppliesToId := pCAppliesToId;
    end;

    local procedure GetJournalLines()
    var
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalLine2: Record "Gen. Journal Line";
        VendorLedgerEntry: Record "Vendor Ledger Entry";
        PTSSWithTaxLedgerEntry: Record "PTSS With. Tax Ledger Entry";
        Vendor: Record Vendor;
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
                    VendorLedgerEntry.Reset();
                    VendorLedgerEntry.SETRANGE("Applies-to ID", GenJournalLine2."Document No.");
                    IF VendorLedgerEntry.FINDFIRST THEN BEGIN
                        gRecTmpVendorLedgerEntry.RESET;
                        gRecTmpVendorLedgerEntry.SETRANGE("Entry No.", VendorLedgerEntry."Entry No.");
                        IF gRecTmpVendorLedgerEntry.FINDFIRST THEN BEGIN
                            BEGIN
                                gRecTmpVendorLedgerEntry."Recipient Bank Account" := GenJournalLine2."Recipient Bank Account";
                                gRecTmpVendorLedgerEntry."Posting Date" := GenJournalLine2."Posting Date";
                                gRecTmpVendorLedgerEntry."Original Currency Factor" += GenJournalLine2."Amount (LCY)";
                                gRecTmpVendorLedgerEntry.MODIFY;
                            END;
                        END ELSE BEGIN
                            gRecTmpVendorLedgerEntry."Original Currency Factor" := GenJournalLine2."Amount (LCY)";
                            gRecTmpVendorLedgerEntry.INIT;
                            gRecTmpVendorLedgerEntry."Entry No." := VendorLedgerEntry."Entry No.";
                            gRecTmpVendorLedgerEntry."Vendor No." := VendorLedgerEntry."Vendor No.";
                            If Vendor.Get(VendorLedgerEntry."Vendor No.") then
                                gRecTmpVendorLedgerEntry."Vendor Name" := Vendor.Name;
                            gRecTmpVendorLedgerEntry."Document Type" := VendorLedgerEntry."Document Type";
                            gRecTmpVendorLedgerEntry."Document No." := VendorLedgerEntry."Document No.";
                            gRecTmpVendorLedgerEntry."Document Date" := VendorLedgerEntry."Document Date";
                            gRecTmpVendorLedgerEntry."External Document No." := VendorLedgerEntry."External Document No.";
                            gRecTmpVendorLedgerEntry.Description := VendorLedgerEntry.Description;
                            gRecTmpVendorLedgerEntry."Currency Code" := VendorLedgerEntry."Currency Code";
                            gRecTmpVendorLedgerEntry."Recipient Bank Account" := GenJournalLine2."Recipient Bank Account";
                            gRecTmpVendorLedgerEntry."Posting Date" := GenJournalLine2."Posting Date";
                            gRecTmpVendorLedgerEntry."Original Currency Factor" := GenJournalLine2."Amount (LCY)";
                            gRecTmpVendorLedgerEntry.INSERT;

                        END;
                    END;
                END ELSE BEGIN
                    CLEAR(gRecTmpVendorLedgerEntry);
                    gRecTmpVendorLedgerEntry.INIT;
                    gRecTmpVendorLedgerEntry."Entry No." := GenJournalLine2."Line No.";
                    gRecTmpVendorLedgerEntry."Vendor No." := GenJournalLine2."Account No.";
                    If Vendor.Get(GenJournalLine2."Account No.") then
                        gRecTmpVendorLedgerEntry."Vendor Name" := Vendor.Name;
                    gRecTmpVendorLedgerEntry."Vendor Name" := GenJournalLine2.Description;
                    gRecTmpVendorLedgerEntry."Document Type" := GenJournalLine2."Document Type";
                    gRecTmpVendorLedgerEntry."Document No." := GenJournalLine2."Document No.";
                    gRecTmpVendorLedgerEntry."Document Date" := GenJournalLine2."Document Date";
                    gRecTmpVendorLedgerEntry."External Document No." := GenJournalLine2."External Document No.";
                    gRecTmpVendorLedgerEntry.Description := GenJournalLine2.Description;
                    gRecTmpVendorLedgerEntry."Currency Code" := GenJournalLine2."Currency Code";
                    gRecTmpVendorLedgerEntry."Recipient Bank Account" := GenJournalLine2."Recipient Bank Account";
                    gRecTmpVendorLedgerEntry."Original Currency Factor" := GenJournalLine2."Amount (LCY)";
                    gRecTmpVendorLedgerEntry."Posting Date" := GenJournalLine2."Posting Date";
                    IF NOT gRecTmpVendorLedgerEntry.INSERT THEN;
                END;
            UNTIL GenJournalLine2.NEXT = 0;
    end;
}

