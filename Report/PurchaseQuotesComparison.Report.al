report 57004 "Purchase Quotes Comparison"
{

    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/PurchaseQuotesComparison.rdl';

    Caption = 'Purchase Quotes Comparison';
    PreviewMode = PrintLayout;
    ApplicationArea = All;

    dataset
    {
        dataitem(PageCount; Integer)
        {
            DataItemTableView = SORTING(Number);
            column(MoreThan4; MoreThan4)
            {
            }
            column(ShowInfo; ShowInfo)
            {
            }
            dataitem(Consultation; Consultation)
            {
                DataItemTableView = SORTING("Consultation code");
                RequestFilterFields = "Consultation code";
                column(Consultationcode_Consultation; Consultation."Consultation code")
                {
                    IncludeCaption = true;
                }
                column(Description_Consultation; Consultation.Description)
                {
                    IncludeCaption = true;
                }
                column(InitialDate_Consultation; Consultation."Start Date")
                {
                    IncludeCaption = true;
                }
                dataitem("Purchase Header"; "Purchase Header")
                {
                    DataItemLink = "Consultation Code" = FIELD("Consultation code");
                    DataItemTableView = SORTING("Comparison Position")
                                        WHERE("Document Type" = CONST(Quote),
                                              "Comparison Position" = FILTER(1 | 2 | 3 | 4));

                    trigger OnAfterGetRecord()
                    var
                        LCount: Integer;
                    begin

                        LCount := 0;

                        CASE "Comparison Position" OF
                            1:
                                BEGIN
                                    IF Quote1 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote1 := "Purchase Header"."No.";
                                    GCount := 1;
                                END;
                            2:
                                BEGIN
                                    IF Quote2 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote2 := "Purchase Header"."No.";
                                    GCount := 2;
                                END;
                            3:
                                BEGIN
                                    IF Quote3 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote3 := "Purchase Header"."No.";
                                    GCount := 3;
                                END;
                            4:
                                BEGIN
                                    IF Quote4 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote4 := "Purchase Header"."No.";
                                    GCount := 4;
                                END;
                            5:
                                BEGIN
                                    IF Quote5 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote5 := "Purchase Header"."No.";
                                    GCount := 5;
                                END;
                            6:
                                BEGIN
                                    IF Quote6 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote6 := "Purchase Header"."No.";
                                    GCount := 6;
                                END;
                            7:
                                BEGIN
                                    IF Quote7 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote7 := "Purchase Header"."No.";
                                    GCount := 7;
                                END;
                            8:
                                BEGIN
                                    IF Quote8 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote8 := "Purchase Header"."No.";
                                    GCount := 8;
                                END;


                            ELSE
                        END;

                        REPEAT
                            LCount += 1;
                            FillHeaderData(LCount);
                        UNTIL LCount = GCount;
                    end;

                    trigger OnPreDataItem()
                    begin

                        CLEAR(Quote1);
                        CLEAR(Quote2);
                        CLEAR(Quote3);
                        CLEAR(Quote4);
                        CLEAR(GCount);

                        CLEAR(QuoteText);
                        CLEAR(QuoteText);

                        CLEAR(tempLineCount);
                        TotalPage := 1;
                    end;
                }
                dataitem("Consultation Lines"; "Consultation Lines")
                {
                    DataItemLink = "Consultation Code" = FIELD("Consultation code");
                    DataItemTableView = SORTING("Consultation Code", "Line No.");
                    column(QuoteText_1; QuoteText[1])
                    {
                    }
                    column(QuoteWinner_1; QuoteWinner[1])
                    {
                    }
                    column(QuoteText_2; QuoteText[2])
                    {
                    }
                    column(QuoteWinner_2; QuoteWinner[2])
                    {
                    }
                    column(QuoteText_3; QuoteText[3])
                    {
                    }
                    column(QuoteWinner_3; QuoteWinner[3])
                    {
                    }
                    column(QuoteText_4; QuoteText[4])
                    {
                    }
                    column(QuoteWinner_4; QuoteWinner[4])
                    {
                    }
                    column(RequisitionQuantity_ConsultationLines; "Consultation Lines"."Requisition Quantity")
                    {
                    }
                    column(Description_ConsultationLines; "Consultation Lines".Description)
                    {
                    }
                    column(consumo; consumo)
                    {
                    }
                    column(stock1; stock1)
                    {
                    }
                    column(lastBuy; lastBuy)
                    {
                    }
                    column(unitAmount_1; unitAmount[1])
                    {
                    }
                    column(difVU_1; difVU[1])
                    {
                    }
                    column(Selection_RejectionDescription_1; "Selection/RejectionDescription"[1])
                    {
                    }
                    column(amountLine_1; amountLine[1])
                    {
                    }
                    column(difVT_1; difVT[1])
                    {
                    }
                    column(unitAmount_2; unitAmount[2])
                    {
                    }
                    column(difVU_2; difVU[2])
                    {
                    }
                    column(Selection_RejectionDescription_2; "Selection/RejectionDescription"[2])
                    {
                    }
                    column(amountLine_2; amountLine[2])
                    {
                    }
                    column(difVT_2; difVT[2])
                    {
                    }
                    column(unitAmount_3; unitAmount[3])
                    {
                    }
                    column(difVU_3; difVU[3])
                    {
                    }
                    column(Selection_RejectionDescription_3; "Selection/RejectionDescription"[3])
                    {
                    }
                    column(amountLine_3; amountLine[3])
                    {
                    }
                    column(difVT_3; difVT[3])
                    {
                    }
                    column(unitAmount_4; unitAmount[4])
                    {
                    }
                    column(difVU_4; difVU[4])
                    {
                    }
                    column(Selection_RejectionDescription_4; "Selection/RejectionDescription"[4])
                    {
                    }
                    column(amountLine_4; amountLine[4])
                    {
                    }
                    column(difVT_4; difVT[4])
                    {
                    }
                    column(TotalAmount_1; TotalAmount[1])
                    {
                    }
                    column(TotalDifAmount_1; TotalDifAmount[1])
                    {
                    }
                    column(AmountTotal_1; AmountTotal[1])
                    {
                    }
                    column(TotalAmount_2; TotalAmount[2])
                    {
                    }
                    column(TotalDifAmount_2; TotalDifAmount[2])
                    {
                    }
                    column(AmountTotal_2; AmountTotal[2])
                    {
                    }
                    column(TotalAmount_3; TotalAmount[3])
                    {
                    }
                    column(TotalDifAmount_3; TotalDifAmount[3])
                    {
                    }
                    column(AmountTotal_3; AmountTotal[3])
                    {
                    }
                    column(TotalAmount_4; TotalAmount[4])
                    {
                    }
                    column(TotalDifAmount_4; TotalDifAmount[4])
                    {
                    }
                    column(AmountTotal_4; AmountTotal[4])
                    {
                    }

                    trigger OnAfterGetRecord()
                    var
                        LCount: Integer;
                    begin
                        tempLineCount := tempLineCount + 1;
                        IF (tempLineCount = 16) THEN BEGIN
                            TotalPage := TotalPage + 1;
                            CLEAR(tempLineCount);
                        END;
                        IF (SeeDiference) THEN
                            tempLineCount := tempLineCount + 1;
                        IF (tempLineCount = 16) THEN BEGIN
                            TotalPage := TotalPage + 1;
                            CLEAR(tempLineCount);
                        END;

                        IF "Line Type" = "Line Type"::Item THEN BEGIN
                            recItem.RESET();
                            IF recItem.GET("No.") THEN BEGIN
                                lastBuy := recItem."Last Phys. Invt. Date";
                                recItem.CALCFIELDS(Inventory);
                                stock1 := recItem.Inventory;
                            END;
                        END;


                        CLEAR(LCount);
                        REPEAT
                            LCount += 1;
                            FillLineData(LCount, "Consultation Lines");
                        UNTIL LCount = GCount;
                        BAmountTotalOK := TRUE;
                    end;

                    trigger OnPreDataItem()
                    begin

                        IF GCount = 0 THEN ERROR(Text002);

                        IF GCount = 0 THEN BEGIN
                            RecConsultation.RESET();
                            RecConsultation.SETRANGE("Consultation code", "Consultation Lines"."Consultation Code");
                            IF RecConsultation.FIND('-') THEN BEGIN
                                aux := 0;
                                RecPurchaseHeader1.RESET();
                                RecPurchaseHeader1.SETRANGE("Document Type", RecPurchaseHeader1."Document Type"::Quote);
                                RecPurchaseHeader1.SETRANGE("Consultation Code", RecConsultation."Consultation code");
                                IF RecPurchaseHeader1.FIND('-') THEN BEGIN
                                    REPEAT
                                        aux := aux + 1;
                                        IF aux <= 4 THEN BEGIN
                                            RecPurchaseHeader1."Comparison Position" := aux;
                                            RecPurchaseHeader1.MODIFY();
                                        END;
                                    UNTIL RecPurchaseHeader1.NEXT = 0;
                                END;
                            END;
                        END;

                        CLEAR(difVT);
                        CLEAR(difVU);
                    end;
                }
                dataitem(PurchHeader2; "Purchase Header")
                {
                    DataItemLink = "Consultation Code" = FIELD("Consultation code");
                    DataItemTableView = SORTING("Comparison Position")
                                        WHERE("Document Type" = CONST(Quote),
                                              "Comparison Position" = FILTER(5 | 6 | 7 | 8));

                    trigger OnAfterGetRecord()
                    var
                        LCount: Integer;
                    begin
                        MoreThan4 := TRUE;
                        IF (NOT (ChangedPage)) THEN BEGIN
                            TotalPage := TotalPage + 1;
                            ChangedPage := TRUE;
                        END;

                        LCount := 0;
                        CASE "Comparison Position" OF
                            1:
                                BEGIN
                                    IF Quote1 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote1 := PurchHeader2."No.";
                                    GCount := 1;
                                END;
                            2:
                                BEGIN
                                    IF Quote2 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote2 := PurchHeader2."No.";
                                    GCount := 2;
                                END;
                            3:
                                BEGIN
                                    IF Quote3 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote3 := PurchHeader2."No.";
                                    GCount := 3;
                                END;
                            4:
                                BEGIN
                                    IF Quote4 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote4 := PurchHeader2."No.";
                                    GCount := 4;
                                END;
                            5:
                                BEGIN
                                    IF Quote5 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote5 := PurchHeader2."No.";
                                    GCount := 5;
                                END;
                            6:
                                BEGIN
                                    IF Quote6 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote6 := PurchHeader2."No.";
                                    GCount := 6;
                                END;
                            7:
                                BEGIN
                                    IF Quote7 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote7 := PurchHeader2."No.";
                                    GCount := 7;
                                END;
                            8:
                                BEGIN
                                    IF Quote8 <> '' THEN ERROR(TEXT001, "Comparison Position");
                                    Quote8 := PurchHeader2."No.";
                                    GCount := 8;
                                END;


                            ELSE
                        END;

                        REPEAT
                            LCount += 1;
                            FillHeaderData(LCount);
                        UNTIL LCount = GCount;
                    end;

                    trigger OnPreDataItem()
                    begin
                        IF (GCount < 4) THEN
                            CurrReport.BREAK;

                        CLEAR(Quote5);
                        CLEAR(Quote6);
                        CLEAR(Quote7);
                        CLEAR(Quote8);
                        CLEAR(GCount);
                        CLEAR(QuoteText);
                        CLEAR(QuoteText);
                        CLEAR(tempLineCount);

                    end;
                }
                dataitem(ConsultationLines2; "Consultation Lines")
                {
                    DataItemLink = "Consultation Code" = FIELD("Consultation code");
                    DataItemTableView = SORTING("Consultation Code", "Line No.");
                    column(RequisitionQuantity_ConsultationLines1; "Consultation Lines"."Requisition Quantity")
                    {
                    }
                    column(Description_ConsultationLines1; "Consultation Lines".Description)
                    {
                    }
                    column(QuoteText_5; QuoteText[5])
                    {
                    }
                    column(QuoteWinner_5; QuoteWinner[5])
                    {
                    }
                    column(QuoteText_6; QuoteText[6])
                    {
                    }
                    column(QuoteWinner_6; QuoteWinner[6])
                    {
                    }
                    column(QuoteText_7; QuoteText[7])
                    {
                    }
                    column(QuoteWinner_7; QuoteWinner[7])
                    {
                    }
                    column(QuoteText_8; QuoteText[8])
                    {
                    }
                    column(QuoteWinner_8; QuoteWinner[8])
                    {
                    }
                    column(consumo1; consumo)
                    {
                    }
                    column(stock11; stock1)
                    {
                    }
                    column(lastBuy1; lastBuy)
                    {
                    }
                    column(unitAmount_5; unitAmount[5])
                    {
                    }
                    column(difVU_5; difVU[5])
                    {
                    }
                    column(Selection_RejectionDescription_5; "Selection/RejectionDescription"[5])
                    {
                    }
                    column(amountLine_5; amountLine[5])
                    {
                    }
                    column(difVT_5; difVT[5])
                    {
                    }
                    column(unitAmount_6; unitAmount[6])
                    {
                    }
                    column(difVU_6; difVU[6])
                    {
                    }
                    column(Selection_RejectionDescription_6; "Selection/RejectionDescription"[6])
                    {
                    }
                    column(amountLine_6; amountLine[6])
                    {
                    }
                    column(difVT_6; difVT[6])
                    {
                    }
                    column(unitAmount_7; unitAmount[7])
                    {
                    }
                    column(difVU_7; difVU[7])
                    {
                    }
                    column(Selection_RejectionDescription_7; "Selection/RejectionDescription"[7])
                    {
                    }
                    column(amountLine_7; amountLine[7])
                    {
                    }
                    column(difVT_7; difVT[7])
                    {
                    }
                    column(unitAmount_8; unitAmount[8])
                    {
                    }
                    column(difVU_8; difVU[8])
                    {
                    }
                    column(Selection_RejectionDescription_8; "Selection/RejectionDescription"[8])
                    {
                    }
                    column(amountLine_8; amountLine[8])
                    {
                    }
                    column(difVT_8; difVT[8])
                    {
                    }
                    column(TotalAmount_5; TotalAmount[5])
                    {
                    }
                    column(TotalDifAmount_5; TotalDifAmount[5])
                    {
                    }
                    column(AmountTotal_5; AmountTotal[5])
                    {
                    }
                    column(TotalAmount_6; TotalAmount[6])
                    {
                    }
                    column(TotalDifAmount_6; TotalDifAmount[6])
                    {
                    }
                    column(AmountTotal_6; AmountTotal[6])
                    {
                    }
                    column(TotalAmount_7; TotalAmount[7])
                    {
                    }
                    column(TotalDifAmount_7; TotalDifAmount[7])
                    {
                    }
                    column(AmountTotal_7; AmountTotal[7])
                    {
                    }
                    column(TotalAmount_8; TotalAmount[8])
                    {
                    }
                    column(TotalDifAmount_8; TotalDifAmount[8])
                    {
                    }
                    column(AmountTotal_8; AmountTotal[8])
                    {
                    }

                    trigger OnAfterGetRecord()
                    var
                        LCount: Integer;
                    begin
                        tempLineCount := tempLineCount + 1;
                        IF (tempLineCount / 16 = 0) THEN
                            TotalPage := TotalPage + 1;

                        IF "Line Type" = "Line Type"::Item THEN BEGIN
                            recItem.RESET();
                            IF recItem.GET("No.") THEN BEGIN
                                lastBuy := recItem."Last Phys. Invt. Date";
                                recItem.CALCFIELDS(Inventory);
                                stock1 := recItem.Inventory;
                            END;
                        END;

                        CLEAR(LCount);
                        REPEAT
                            LCount += 1;
                            FillLineData(LCount, ConsultationLines2);
                        UNTIL LCount = GCount;
                    end;

                    trigger OnPreDataItem()
                    begin
                        IF (GCount < 4) THEN
                            CurrReport.BREAK;

                        tempLineCount := tempLineCount + 1;
                        IF (tempLineCount = 16) THEN BEGIN
                            TotalPage := TotalPage + 1;
                            CLEAR(tempLineCount);
                        END;

                        IF (SeeDiference) THEN
                            tempLineCount := tempLineCount + 1;
                        IF (tempLineCount = 16) THEN BEGIN
                            TotalPage := TotalPage + 1;
                            CLEAR(tempLineCount);
                        END;

                        IF GCount = 0 THEN
                            ERROR(Text002);
                        CLEAR(difVT);
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    CLEAR(TotalAmount);
                    CLEAR(TotalDifAmount);
                    MoreThan4 := FALSE;
                    ChangedPage := FALSE;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                IF (Number > 1) THEN
                    ShowInfo := TRUE;
            end;

            trigger OnPreDataItem()
            begin
                SETRANGE(Number, 1, 2);
            end;
        }
        dataitem(DataItem1000000006; "Company Information")
        {
            DataItemTableView = sorting("Primary Key");
            column(Name_CompanyInformation; Name)
            {
            }
            column(Picture_CompanyInformation; Picture)
            {
            }
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group("Options")
                {
                    Caption = 'Options';
                    field(SeeDiference; SeeDiference)
                    {
                        Caption = 'See diferences';
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
        Title = 'Purchase Quotes Comparison';
        Total = 'Total';
        Total_dif = 'Total Diference';
        Qtd = 'Qty.';
        Designation = 'Designation';
        stock = 'Stock';
        Ult_Aquisicao = 'Last Aquisition';
        V_U = 'V.U.';
        select = 'Selec.';
        v_t = 'V.T.';
        Text = 'Quote No. / Supplier Name / Winner / Selection/Rejection Reason';
    }

    var
        Text001: Label 'You have chosen more than one Purchase Quote with position %1.';
        Text002: Label 'You didnt choose a quote to comparison.';
        Text003: Label 'Page %1';
        Text004: Label ' of ';
        Quote1: Code[20];
        Quote2: Code[20];
        Quote3: Code[20];
        Quote4: Code[20];
        Quote5: Code[20];
        Quote6: Code[20];
        Quote7: Code[20];
        Quote8: Code[20];
        recPurchaseLine: Record "Purchase Line";
        GCount: Integer;
        amountLine: array[10] of Decimal;
        dateLine: array[10] of Date;
        SelecReject: array[10] of Code[20];
        unitAmount: array[10] of Decimal;
        lastBuy: Date;
        stock1: Decimal;
        difVU: array[10] of Decimal;
        difVT: array[10] of Decimal;
        QuoteText: array[10] of Text[100];
        QuoteTextOrd: array[10] of Text[100];
        recItem: Record Item;
        SeeDiference: Boolean;
        consumo: Decimal;
        TotalAmount: array[10] of Decimal;
        TotalDifAmount: array[10] of Decimal;
        RecConsultation: Record Consultation;
        RecPurchaseHeader1: Record "Purchase Header";
        aux: Integer;
        "Selection/RejectionDescription": array[10] of Text[100];
        QuoteWinner: array[10] of Option " ",Seleccionada,Rejeitada;
        RecCompanyInformation: Record "Company Information";
        TotalPage: Integer;
        TotalPageText: Text[30];
        ShowInfo: Boolean;
        MoreThan4: Boolean;
        ChangedPage: Boolean;
        tempLineCount: Integer;
        AmountTotal: array[8] of Decimal;
        BAmountTotalOK: Boolean;

    procedure FillLineData(LCount: Integer; LConsultationLine: Record "Consultation Lines")
    var
        LQuote: Code[20];
    begin
        recPurchaseLine.RESET();
        CASE LCount OF
            1:
                LQuote := Quote1;
            2:
                LQuote := Quote2;
            3:
                LQuote := Quote3;
            4:
                LQuote := Quote4;
            5:
                LQuote := Quote5;
            6:
                LQuote := Quote6;
            7:
                LQuote := Quote7;
            8:
                LQuote := Quote8;

            ELSE
        END;

        CLEAR("Selection/RejectionDescription"[LCount]);
        CLEAR(amountLine[LCount]);
        CLEAR(unitAmount[LCount]);
        CLEAR(SelecReject[LCount]);
        recPurchaseLine.SETRANGE("Requisition Code", LConsultationLine."Requisition Code");
        recPurchaseLine.SETRANGE("Requisition Line", LConsultationLine."Requisition Line");
        recPurchaseLine.SETRANGE("Document Type", recPurchaseLine."Document Type"::Quote);
        recPurchaseLine.SETRANGE("Document No.", LQuote);
        IF recPurchaseLine.FIND('-') THEN BEGIN
            recPurchaseLine.CalcFields("Selection Description");
            amountLine[LCount] := recPurchaseLine."Line Amount";
            unitAmount[LCount] := recPurchaseLine."Direct Unit Cost";
            SelecReject[LCount] := recPurchaseLine."Selection Code";
            IF recPurchaseLine."Selection Code" <> '' THEN BEGIN
                TotalAmount[LCount] := TotalAmount[LCount] + recPurchaseLine."Line Amount";
            END;
            IF ShowInfo THEN BEGIN
                AmountTotal[LCount] := AmountTotal[LCount] + recPurchaseLine."Line Amount";
            END;
            IF recPurchaseLine."Selection Code" <> '' THEN BEGIN
                "Selection/RejectionDescription"[LCount] := recPurchaseLine."Selection Description";
                QuoteWinner[LCount] := QuoteWinner::Seleccionada;
            END;
            IF recPurchaseLine."Rejection Code" <> '' THEN BEGIN
                "Selection/RejectionDescription"[LCount] := recPurchaseLine."Rejection Description";
                QuoteWinner[LCount] := QuoteWinner::Rejeitada;
            END;
            IF LCount > 1 THEN BEGIN
                difVT[LCount] := amountLine[LCount] - amountLine[1];
                difVU[LCount] := unitAmount[LCount] - unitAmount[1];
                TotalDifAmount[LCount] := TotalDifAmount[LCount] + (amountLine[LCount] - amountLine[1]);
            END;
        END;
    end;

    procedure FillHeaderData(LCount: Integer)
    var
        LPurchHeader: Record "Purchase Header";
        LQuote: Code[20];
    begin
        CASE LCount OF
            1:
                LQuote := Quote1;
            2:
                LQuote := Quote2;
            3:
                LQuote := Quote3;
            4:
                LQuote := Quote4;
            5:
                LQuote := Quote5;
            6:
                LQuote := Quote6;
            7:
                LQuote := Quote7;
            8:
                LQuote := Quote8;

            ELSE
        END;

        LPurchHeader.GET(LPurchHeader."Document Type"::Quote, LQuote);
        LPurchHeader.CALCFIELDS(Amount);
        QuoteText[LCount] := LPurchHeader."No." + ' - ';
        QuoteText[LCount] += LPurchHeader."Buy-from Vendor Name" + LPurchHeader."Buy-from Vendor Name 2";
    end;
}

