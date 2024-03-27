report 57016 "Bank - Payment Advice Advance"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/BankPaymentAdviceAdv.rdl';
    Caption = 'Bank - Payment Advise';
    ApplicationArea = All;

    dataset
    {
        dataitem(Header; "Credit Transfer Register")
        {
            DataItemTableView = SORTING("No.");
            column(SEPAIdentifier; Header.Identifier)
            {
            }
            column(CreateDate; Header."Created Date-Time")
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
                column(DocumentNo_gRecTmpVendorLedgerEntry; "Vendor Ledger Entry"."Document No.")
                {
                }
                column(ExternalDocumentNo_gRecTmpVendorLedgerEntry; "Vendor Ledger Entry"."External Document No.")
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
                column(VendorName_gRecTmpVendorLedgerEntry; Vendor.Name)
                {
                }
                column(OriginalCurrencyFactor_gRecTmpVendorLedgerEntry; "Vendor Ledger Entry".Amount)
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
                        column(gTNIF; Vendor."VAT Registration No.")
                        {
                        }
                        column(gTNIB; gTNIB)
                        {
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
                var
                    lRecVendorBankAcc: Record "Vendor Bank Account";
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

                    CLEAR(BankAccount);
                    BankLedgerEntry.RESET;
                    BankLedgerEntry.SETCURRENTKEY("Document No.", "Posting Date");
                    BankLedgerEntry.SETRANGE("Document Type", "Document Type");
                    BankLedgerEntry.SETRANGE("Document No.", "Document No.");
                    IF BankLedgerEntry.FINDFIRST THEN
                        BankAccount.GET(BankLedgerEntry."Bank Account No.");

                    CLEAR(gTNIF);
                    CLEAR(gTNIB);

                    gTNIF := Vendor."VAT Registration No.";

                    IF lRecVendorBankAcc.GET("Vendor No.", "Recipient Bank Account") THEN
                        gTNIB := lRecVendorBankAcc.IBAN;
                end;

                trigger OnPreDataItem()
                begin
                    "Vendor Ledger Entry".SETRANGE("Entry No.", Header."From Entry No.", Header."To Entry No.");
                end;
            }

            trigger OnPreDataItem()
            begin
                Header.SETRANGE(Identifier, gCSEPAIdentifier);
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
                    field(gCSEPAIdentifier; gCSEPAIdentifier)
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
        txtViaDoc: Text[30];
        CompanyAddr: array[8] of Text[50];
        CustAddr: array[8] of Text[50];
        RemainingAmount: Decimal;
        Text005: Label 'Page %1';
        Text50000: Label 'ORIGINAL';
        Text50001: Label 'DUPLICATE';
        VarDescriptionText: array[2] of Text[57];
        Valor: Decimal;
        Comments: Text[30];
        FPagam: Code[10];
        txtFPagam: Text[60];
        recFpagam: Record "Payment Method";
        LinesPerPage: Integer;
        booLast: Boolean;
        IntCPage: Integer;
        TotalLines: Integer;
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
        TOTAISCaptionLbl: Label 'TOTALS';
        gRecTmpVendorLedgerEntry: Record "Vendor Ledger Entry" temporary;
        OutputNo: Integer;
        ReportPageNo: Integer;
        gTNIF: Text[20];
        gTNIB: Text[25];
        gCSEPAIdentifier: Code[20];
        TotalDocumentsCount: Label 'Documents: %1';
        Payment_Amount_Not_AllocatedCaptionLbl: Label 'Payment';

    local procedure CurrencyCode(SrcCurrCode: Code[10]): Code[10]
    begin
        IF SrcCurrCode = '' THEN
            EXIT(GLSetup."LCY Code")
        ELSE
            EXIT(SrcCurrCode);
    end;

    procedure SetSEPAIdentifier(pCSEPAIdentifier: Code[20])
    begin
        gCSEPAIdentifier := pCSEPAIdentifier;
    end;
}

