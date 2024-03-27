codeunit 57008 BudgetCloseYear
{

    var
        DimMgt: Codeunit DimensionManagement;
        NoSeriesMgt: Codeunit NoSeriesManagement;
        Text001: Label 'Diary %1 Section %2 cant have default series';
        Text002: Label 'Closing Consultations...\\';
        CloseYearDesc: Label 'Canceled by close year %1';
        CloseYearHeader: Label 'By Close Year';
        CloseYearGenLine: Label 'Close Year Process';
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";

    procedure CloseConsultations(CloseYear: Integer)
    var
        Consultation: Record Consultation;
        PurchaseLine: Record "Purchase Line";
        PostedInvoiceAmount: Decimal;
        PostedCrMemoAmount: Decimal;
        PostedInvoices: Integer;
        PostedCrMemos: Integer;
        OrderAmount: Decimal;
        PostedPAQAmount: Decimal;
        PostedAvayAmount: Decimal;
        AvaylableBudgets: Integer;
        Window: Dialog;
        TotalRecNo: Integer;
        RecNo: Integer;
        DialogLabel: Label 'Consultations @1@@@@@@@@@@@@@@@@@@@@@@@@@\';
    begin
        CLEAR(Window);
        Window.OPEN(
          Text002 +
          DialogLabel);

        Consultation.RESET;
        Consultation.SETRANGE("Start Date", 0D, CALCDATE('<CY>', DMY2DATE(1, 1, CloseYear)));
        Consultation.SETRANGE(IsContract, FALSE);
        Consultation.SETFILTER("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Closed, Consultation."Consultation Status"::Canceled);
        IF Consultation.FINDSET THEN BEGIN
            Window.UPDATE(1, 0);
            TotalRecNo := Consultation.COUNT;
            RecNo := 0;
            REPEAT
                RecNo := RecNo + 1;
                Window.UPDATE(1, ROUND(RecNo / TotalRecNo * 10000, 1));
                CLEAR(PostedInvoiceAmount);
                CLEAR(PostedCrMemoAmount);
                CLEAR(OrderAmount);
                CLEAR(PostedPAQAmount);
                CLEAR(PostedAvayAmount);
                CLEAR(AvaylableBudgets);
                CLEAR(PostedInvoices);
                CLEAR(PostedCrMemos);

                Consultation.CalcFields("Associated Invoices", "Associated Cr. Memos", "Pending Avaylable Budgets");
                PostedInvoices := Consultation."Associated Invoices";
                PostedInvoiceAmount := Consultation.GetInvoicedAmount();
                PostedCrMemos := Consultation."Associated Cr. Memos";
                PostedCrMemoAmount := Consultation.GetCreditedAmount;
                PostedPAQAmount := Consultation.GetPostedPAQAmount();
                IF (PostedInvoiceAmount - PostedCrMemoAmount) <> PostedPAQAmount THEN BEGIN
                    IF PostedInvoices > 0 THEN BEGIN
                        IF PostedCrMemos > 0 THEN BEGIN
                            IF PostedInvoiceAmount = PostedCrMemoAmount THEN BEGIN
                                CancelPAQs(Consultation."Consultation code", CloseYear);
                                CancelAvays(Consultation."Consultation code", CloseYear);
                                CancelRequisitions(Consultation."Consultation code", CloseYear);
                            END;
                            IF PostedInvoiceAmount > PostedCrMemoAmount THEN BEGIN
                                AdjustPAQs(Consultation."Consultation code", CloseYear);
                                AdjustAvays(Consultation."Consultation code", CloseYear);
                            END;
                        END ELSE BEGIN
                            IF HasCrMemos(Consultation."Consultation code") THEN
                                CancelCrMemos(Consultation."Consultation code");
                        END;
                    END ELSE BEGIN
                        IF HasInvoices(Consultation."Consultation code") THEN
                            CancelInvoices(Consultation."Consultation code");
                        IF HasOrders(Consultation."Consultation code") THEN
                            CancelOrders(Consultation."Consultation code");
                        CancelPAQs(Consultation."Consultation code", CloseYear);
                        CancelAvays(Consultation."Consultation code", CloseYear);
                        CancelRequisitions(Consultation."Consultation code", CloseYear);
                    END;
                    Consultation."Consultation Status" := Consultation."Consultation Status"::Canceled;
                END;

                OrderAmount := Consultation.GetOrderedAmount();
                PostedPAQAmount := Consultation.GetPostedPAQAmount();
                IF (OrderAmount <> PostedPAQAmount) AND (PostedInvoices = 0) THEN BEGIN
                    IF HasOrders(Consultation."Consultation code") THEN
                        CancelOrders(Consultation."Consultation code");
                    CancelPAQs(Consultation."Consultation code", CloseYear);
                    CancelAvays(Consultation."Consultation code", CloseYear);
                    CancelRequisitions(Consultation."Consultation code", CloseYear);
                    Consultation."Consultation Status" := Consultation."Consultation Status"::Canceled;
                END;

                PostedPAQAmount := Consultation.GetPostedPAQAmount();
                PostedAvayAmount := Consultation.GetPostedAvaylableAmount();
                IF PostedPAQAmount <> PostedAvayAmount THEN BEGIN
                    CancelPAQs(Consultation."Consultation code", CloseYear);
                    CancelAvays(Consultation."Consultation code", CloseYear);
                    CancelRequisitions(Consultation."Consultation code", CloseYear);
                    Consultation."Consultation Status" := Consultation."Consultation Status"::Canceled;
                END;

                AvaylableBudgets := Consultation."Pending Avaylable Budgets";
                IF AvaylableBudgets <> 0 THEN BEGIN
                    CancelAvays(Consultation."Consultation code", CloseYear);
                    CancelRequisitions(Consultation."Consultation code", CloseYear);
                    Consultation."Consultation Status" := Consultation."Consultation Status"::Canceled;
                END;

                IF HasRequisitons(Consultation."Consultation code") AND NOT IsClosed(Consultation."Consultation code") THEN BEGIN
                    CancelRequisitions(Consultation."Consultation code", CloseYear);
                    Consultation."Consultation Status" := Consultation."Consultation Status"::Canceled;
                END;

                IF IsClosed(Consultation."Consultation code") THEN BEGIN
                    Consultation."Consultation Status" := Consultation."Consultation Status"::Closed;
                    CloseRequisitions(Consultation."Consultation code", CloseYear);
                END ELSE
                    Consultation."Consultation Status" := Consultation."Consultation Status"::Canceled;

                Consultation.ClosedByYear := CloseYear;
                Consultation.MODIFY;
            UNTIL Consultation.NEXT = 0;
        END;
        //CancelRequisitions('',CloseYear);
        CancelReqNoConsultation(CloseYear);
        Window.UPDATE(1, 10000);
        Window.CLOSE;
    end;

    local procedure HasInvoices(ConsultationCode: Code[20]): Boolean
    var
        PurchaseLine: Record "Purchase Line";
    begin
        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchaseLine.SETRANGE("Document Type", PurchaseLine."Document Type"::Invoice);
        EXIT(PurchaseLine.FINDFIRST);
    end;

    local procedure HasCrMemos(ConsultationCode: Code[20]): Boolean
    var
        PurchaseLine: Record "Purchase Line";
    begin
        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchaseLine.SETRANGE("Document Type", PurchaseLine."Document Type"::"Credit Memo");
        EXIT(PurchaseLine.FINDFIRST);
    end;

    local procedure HasOrders(ConsultationCode: Code[20]): Boolean
    var
        PurchaseLine: Record "Purchase Line";
    begin
        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchaseLine.SETRANGE("Document Type", PurchaseLine."Document Type"::Order);
        EXIT(PurchaseLine.FINDFIRST);
    end;

    local procedure HasRequisitons(ConsultationCode: Code[20]): Boolean
    var
        RequisitionLines: Record "Requisition Lines";
    begin
        RequisitionLines.RESET;
        RequisitionLines.SETRANGE("Consultation Code", ConsultationCode);
        RequisitionLines.SETRANGE(Status, RequisitionLines.Status::Released);
        EXIT(RequisitionLines.FINDFIRST);
    end;

    local procedure IsClosed(ConsultationCode: Code[20]): Boolean
    var
        Consultation: Record Consultation;
        InvoiceAmount: Decimal;
        CreditAmount: Decimal;
        PostedAvayAmount: Decimal;
    begin
        Consultation.GET(ConsultationCode);
        InvoiceAmount := Consultation.GetInvoicedAmount;
        CreditAmount := Consultation.GetCreditedAmount;
        PostedAvayAmount := Consultation.GetPostedAvaylableAmount();
        EXIT((InvoiceAmount <> 0) AND ((InvoiceAmount - CreditAmount) = PostedAvayAmount));
    end;

    local procedure CancelInvoices(ConsultationCode: Code[20])
    var
        PurchHeader: Record "Purchase Header";
        PurchRcptHeader: Record "Purch. Rcpt. Header";
        PurchaseLine: Record "Purchase Line";
        OrderHeader: Record "Purchase Header";
        TempPurchHeader: Record "Purchase Header" temporary;
        TempPurchRcptHeader: Record "Purch. Rcpt. Header" temporary;
        TempOrderHeader: Record "Purchase Header" temporary;
    begin
        CLEAR(TempOrderHeader);
        CLEAR(TempPurchHeader);
        CLEAR(TempPurchRcptHeader);

        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchaseLine.SETRANGE("Document Type", PurchaseLine."Document Type"::Invoice);
        IF PurchaseLine.FINDSET THEN
            REPEAT
                IF PurchHeader.GET(PurchaseLine."Document Type"::Invoice, PurchaseLine."Document No.") THEN BEGIN
                    TempPurchHeader.INIT;
                    TempPurchHeader."No." := PurchaseLine."Document No.";
                    TempPurchHeader."Document Type" := PurchaseLine."Document Type"::Invoice;
                    IF TempPurchHeader.INSERT THEN;
                END;
                IF PurchRcptHeader.GET(PurchaseLine."Receipt No.") THEN BEGIN
                    TempPurchRcptHeader.INIT;
                    TempPurchRcptHeader."No." := PurchaseLine."Receipt No.";
                    IF TempPurchRcptHeader.INSERT THEN;
                END;
                IF OrderHeader.GET(OrderHeader."Document Type"::Order, PurchRcptHeader."Order No.") THEN BEGIN
                    TempOrderHeader.INIT;
                    TempOrderHeader."No." := PurchRcptHeader."Order No.";
                    TempOrderHeader."Document Type" := OrderHeader."Document Type"::Order;
                    IF TempOrderHeader.INSERT THEN;
                END;
            UNTIL PurchaseLine.NEXT = 0;

        TempPurchHeader.RESET;
        IF TempPurchHeader.FINDSET THEN
            REPEAT
                IF PurchHeader.GET(PurchaseLine."Document Type"::Invoice, PurchaseLine."Document No.") THEN BEGIN
                    PurchHeader.SetHideValidationDialog(TRUE);
                    PurchHeader.DELETE(TRUE);
                END;
            UNTIL TempPurchHeader.NEXT = 0;

        TempPurchRcptHeader.RESET;
        IF TempPurchRcptHeader.FINDSET THEN
            REPEAT
                IF PurchRcptHeader.GET(TempPurchRcptHeader."No.") THEN
                    PurchRcptHeader.DELETE(TRUE);
            UNTIL TempPurchRcptHeader.NEXT = 0;

        TempOrderHeader.RESET;
        IF TempOrderHeader.FINDSET THEN
            REPEAT
                IF OrderHeader.GET(TempOrderHeader."Document Type"::Order, TempOrderHeader."No.") THEN BEGIN
                    OrderHeader.SetHideValidationDialog(TRUE);
                    OrderHeader.DELETE(TRUE);
                END;
            UNTIL TempOrderHeader.NEXT = 0;
    end;

    local procedure CancelCrMemos(ConsultationCode: Code[20])
    var
        PurchHeader: Record "Purchase Header";
        PurchaseLine: Record "Purchase Line";
        TempPurchHeader: Record "Purchase Header" temporary;
    begin
        CLEAR(TempPurchHeader);

        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchaseLine.SETRANGE("Document Type", PurchaseLine."Document Type"::"Credit Memo");
        IF PurchaseLine.FINDSET THEN
            REPEAT
                IF PurchHeader.GET(PurchaseLine."Document Type"::"Credit Memo", PurchaseLine."Document No.") THEN BEGIN
                    TempPurchHeader.INIT;
                    TempPurchHeader."No." := PurchaseLine."Document No.";
                    TempPurchHeader."Document Type" := PurchaseLine."Document Type"::"Credit Memo";
                    IF TempPurchHeader.INSERT THEN;
                END;
            UNTIL PurchaseLine.NEXT = 0;

        TempPurchHeader.RESET;
        IF TempPurchHeader.FINDSET THEN
            REPEAT
                IF PurchHeader.GET(PurchaseLine."Document Type"::"Credit Memo", PurchaseLine."Document No.") THEN BEGIN
                    PurchHeader.SetHideValidationDialog(TRUE);
                    PurchHeader.DELETE(TRUE);
                END;
            UNTIL TempPurchHeader.NEXT = 0;
    end;

    local procedure CancelOrders(ConsultationCode: Code[20])
    var
        PurchRcptHeader: Record "Purch. Rcpt. Header";
        PurchaseLine: Record "Purchase Line";
        OrderHeader: Record "Purchase Header";
        TempPurchRcptHeader: Record "Purch. Rcpt. Header" temporary;
        TempOrderHeader: Record "Purchase Header" temporary;
    begin
        CLEAR(TempOrderHeader);
        CLEAR(TempPurchRcptHeader);

        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchaseLine.SETRANGE("Document Type", PurchaseLine."Document Type"::Order);
        IF PurchaseLine.FINDSET THEN
            REPEAT
                PurchRcptHeader.RESET;
                PurchRcptHeader.SETRANGE("Order No.", PurchaseLine."Document No.");
                IF PurchRcptHeader.FINDSET THEN
                    REPEAT
                        TempPurchRcptHeader.INIT;
                        TempPurchRcptHeader."No." := PurchRcptHeader."No.";
                        IF TempPurchRcptHeader.INSERT THEN;
                    UNTIL PurchRcptHeader.NEXT = 0;

                IF OrderHeader.GET(OrderHeader."Document Type"::Order, PurchaseLine."Document No.") THEN BEGIN
                    TempOrderHeader.INIT;
                    TempOrderHeader."No." := PurchaseLine."Document No.";
                    TempOrderHeader."Document Type" := OrderHeader."Document Type"::Order;
                    IF TempOrderHeader.INSERT THEN;
                END;
            UNTIL PurchaseLine.NEXT = 0;

        TempPurchRcptHeader.RESET;
        IF TempPurchRcptHeader.FINDSET THEN
            REPEAT
                IF PurchRcptHeader.GET(TempPurchRcptHeader."No.") THEN
                    PurchRcptHeader.DELETE(TRUE);
            UNTIL TempPurchRcptHeader.NEXT = 0;

        TempOrderHeader.RESET;
        IF TempOrderHeader.FINDSET THEN
            REPEAT
                IF OrderHeader.GET(TempOrderHeader."Document Type"::Order, TempOrderHeader."No.") THEN BEGIN
                    OrderHeader.SetHideValidationDialog(TRUE);
                    OrderHeader.DELETE(TRUE);
                END;
            UNTIL TempOrderHeader.NEXT = 0;
    end;

    local procedure CancelPAQs(ConsultationCode: Code[20]; CloseYear: Integer)
    var
        BudgetConfig: Record "Budget Configuration";
        PAQ: Record PAQ;
        PAQLines: Record "PAQ Lines";
        PostedPAQ: Record "Posted PAQ";
        PostedPAQLines: Record "Posted PAQ Lines";
        ReversedPAQ: Record "Posted PAQ";
        ReversedPAQLines: Record "Posted PAQ Lines";
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalBatch: Record "Gen. Journal Batch";
        Class0Setup: Record "Class 0 Setup";
        ApprovalMgt: Codeunit "Approval Management";
        LineNo: Integer;
    begin
        CLEAR(LineNo);
        LineNo := 10000;

        BudgetConfig.GET;
        BudgetConfig.TESTFIELD("Budget Appropriation Method");
        BudgetConfig.TESTFIELD("Posted PAQ Nos.");
        BudgetConfig.TESTFIELD("Original PAQ");
        BudgetConfig.TESTFIELD("PAQ Decrease");
        BudgetConfig.TESTFIELD("PAQ Template Diary");
        BudgetConfig.TESTFIELD("PAQ Batch Diary");

        PAQ.RESET;
        PAQ.SETRANGE("Consultation Code", ConsultationCode);
        PAQ.DELETEALL(TRUE);

        PostedPAQ.RESET;
        PostedPAQ.SETRANGE("Consultation Code", ConsultationCode);
        PostedPAQ.SETRANGE(Reversed, FALSE);
        PostedPAQ.SETFILTER(Status, '<>%1', PostedPAQ.Status::Canceled);
        IF PostedPAQ.FINDSET THEN BEGIN
            Clear(PAQ);
            PAQ.Init;
            PAQ.TransferFields(PostedPAQ);
            PAQ."PAQ Date" := DMY2DATE(31, 12, CloseYear);
            PAQ.Insert(true);
            PAQ.ClosedByYear := CloseYear;
            PAQ.Validate(Type, "PAQ Type"::Decrease);
            PAQ.Status := "PAQ Status"::Released;
            PAQ.Reversed := true;
            PAQ."PAQ Description" := STRSUBSTNO(CloseYearDesc, CloseYear);
            PAQ.Modify();
            REPEAT
                PostedPAQLines.RESET;
                PostedPAQLines.SETRANGE("PAQ Code", PostedPAQ."PAQ Code");
                IF PostedPAQLines.FINDSET THEN
                    REPEAT
                        PAQLines.RESET;
                        PAQLines.SETRANGE("Quote No.", PostedPAQLines."Quote No.");
                        PAQLines.SETRANGE("Quote Line No.", PostedPAQLines."Quote Line No.");
                        IF PAQLines.FINDFIRST THEN BEGIN
                            PAQLines.Amount += PostedPAQLines.Amount * -1;
                            PAQLines."Amount Including VAT" += PostedPAQLines."Amount Including VAT" * -1;
                            PAQLines."Cost Amount" += PostedPAQLines."Cost Amount" * -1;
                            PAQLines.MODIFY;
                        END ELSE BEGIN
                            Clear(PAQLines);
                            PAQLines.Init();
                            PAQLines.TransferFields(PostedPAQLines, false);
                            PAQLines."PAQ Code" := PAQ."PAQ Code";
                            PAQLines."Line No." := LineNo;
                            PAQLines."PAQ Date" := PAQ."PAQ Date";
                            PAQLines.Amount := PostedPAQLines.Amount * -1;
                            PAQLines."Amount Including VAT" := PostedPAQLines."Amount Including VAT" * -1;
                            PAQLines."Cost Amount" := PostedPAQLines."Cost Amount" * -1;
                            PAQLines.VALIDATE("Dimension Set ID", PostedPAQLines."Dimension Set ID");
                            DimMgt.UpdateGlobalDimFromDimSetID(PAQLines."Dimension Set ID", PAQLines."Shortcut Dimension 1 Code", PAQLines."Shortcut Dimension 2 Code");
                            PAQLines.INSERT(TRUE);
                            LineNo += 10000;
                        END;
                    UNTIL PostedPAQLines.NEXT = 0;
                PostedPAQ.Reversed := TRUE;
                PostedPAQ.Status := PostedPAQ.Status::Canceled;
                PostedPAQ.ClosedByYear := CloseYear;
                PostedPAQ.MODIFY;
            UNTIL PostedPAQ.NEXT = 0;
        END;

        PAQ.RESET;
        PAQ.SETRANGE("Consultation Code", ConsultationCode);
        IF PAQ.FINDSET THEN
            REPEAT
                ReversedPAQ.INIT;
                ReversedPAQ.TRANSFERFIELDS(PAQ);
                ReversedPAQ."PAQ Code Original" := PAQ."PAQ Code";
                ReversedPAQ."PAQ Code" := NoSeriesMgt.GetNextNo(Paq."Posting No. Series", DMY2DATE(31, 12, CloseYear), true);
                ReversedPAQ.Status := ReversedPAQ.Status::Canceled;
                ReversedPAQ."Approved By" := USERID;
                ReversedPAQ."Approved Date" := DMY2DATE(31, 12, CloseYear);
                ReversedPAQ."No. Series" := BudgetConfig."Posted PAQ Nos.";
                ReversedPAQ.INSERT(true);

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Document No.", ReversedPAQ."PAQ Code");
                GenJournalLine.DELETEALL;
                GenJournalBatch.RESET;
                GenJournalBatch.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalBatch.SETRANGE(Name, BudgetConfig."PAQ Batch Diary");
                IF GenJournalBatch.FINDFIRST THEN
                    IF (GenJournalBatch."No. Series" <> '') OR (GenJournalBatch."Posting No. Series" <> '') THEN
                        ERROR(STRSUBSTNO(Text001, GenJournalBatch."Journal Template Name", GenJournalBatch.Name));

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalLine.SETRANGE("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                IF GenJournalLine.FINDLAST THEN
                    LineNo := GenJournalLine."Line No." + 10000
                ELSE
                    LineNo := 10000;
                PAQLines.RESET;
                PAQLines.SETRANGE("PAQ Code", PAQ."PAQ Code");
                IF PAQLines.FINDSET THEN
                    REPEAT
                        ReversedPAQLines.INIT;
                        ReversedPAQLines.TRANSFERFIELDS(PAQLines);
                        ReversedPAQLines."PAQ Code" := ReversedPAQ."PAQ Code";
                        ReversedPAQLines.Status := ReversedPAQ.Status;
                        ReversedPAQLines."PAQ Date" := ReversedPAQ."PAQ Date";
                        ReversedPAQLines.VALIDATE("Dimension Set ID", PAQLines."Dimension Set ID");
                        ReversedPAQLines.INSERT;

                        Class0Setup.RESET;
                        Class0Setup.SETRANGE("Regist type", BudgetConfig."PAQ Decrease");
                        IF Class0Setup.FINDSET THEN
                            REPEAT
                                GenJournalLine.INIT;
                                GenJournalLine."Line No." := LineNo;
                                GenJournalLine.VALIDATE(ClosedByCloseYear, TRUE);
                                GenJournalLine.VALIDATE(YearClosed, CloseYear);
                                GenJournalLine.VALIDATE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                                GenJournalLine.VALIDATE("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                                GenJournalLine.VALIDATE("Posting Date", ReversedPAQ."PAQ Date");
                                GenJournalLine.VALIDATE("Account Type", GenJournalLine."Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Account No.", Class0Setup."Debt count");
                                GenJournalLine.VALIDATE("Document Type", GenJournalLine."Document Type"::" ");
                                GenJournalLine.VALIDATE("Document No.", ReversedPAQ."PAQ Code");
                                GenJournalLine.VALIDATE("Budget Appropriation Method", ReversedPAQ."Budget Appropriation Method");
                                GenJournalLine.VALIDATE(Amount, ABS(ReversedPAQLines.GetPAQLineAmount));
                                GenJournalLine.VALIDATE("Bal. Account Type", GenJournalLine."Bal. Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Bal. Account No.", Class0Setup."Credit count");
                                GenJournalLine.VALIDATE("System-Created Entry", TRUE);
                                GenJournalLine.Validate("Source Code", ReversedPAQ."Source Code");
                                GenJournalLine.VALIDATE("Dimension Set ID", ReversedPAQLines."Dimension Set ID");
                                GenJournalLine.VALIDATE(Description, CloseYearGenLine);
                                DimMgt.UpdateGlobalDimFromDimSetID(GenJournalLine."Dimension Set ID", GenJournalLine."Shortcut Dimension 1 Code", GenJournalLine."Shortcut Dimension 2 Code");
                                GenJournalLine.INSERT(TRUE);
                                GenJnlPostLine.RunWithCheck(GenJournalLine);
                                GenJournalLine.Delete();
                                LineNo += 10000;
                            UNTIL Class0Setup.NEXT = 0;
                    UNTIL PAQLines.NEXT = 0;
                ApprovalMgt.CopyApprovalEntry(DATABASE::PAQ, "Approval Entry Document Type"::Adjudication, PAQ."PAQ Code", Database::"Posted PAQ", ReversedPAQ."PAQ Code");
                PAQ.DELETE(TRUE);
            UNTIL PAQ.NEXT = 0;
    end;

    local procedure CancelAvays(ConsultationCode: Code[20]; CloseYear: Integer)
    var
        BudgetConfig: Record "Budget Configuration";
        PostedAvaylableBudget: Record "Posted Avaylable Budget";
        PostedAvayBudgetLines: Record "Posted Avaylable Budget Line";
        AvaylableBudget: Record "Avaylable Budget";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        ReversedAvayBudget: Record "Posted Avaylable Budget";
        ReversedAvayBudgetLines: Record "Posted Avaylable Budget Line";
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalBatch: Record "Gen. Journal Batch";
        Class0Setup: Record "Class 0 Setup";
        ApprovalMgt: Codeunit "Approval Management";
        LineNo: Integer;
        ApprovalEntry: Record "Aproval Entry";
        Requisition: Record Requisition;
        CURequisition: Codeunit Requisition;
    begin
        CLEAR(LineNo);
        LineNo := 10000;

        BudgetConfig.GET;
        BudgetConfig.TESTFIELD("Avaylable Budget Nos.");
        BudgetConfig.TESTFIELD("Budget Appropriation Method");
        BudgetConfig.TESTFIELD("Posted Avaylable Budget Nos.");
        BudgetConfig.TESTFIELD("Avaylable Budget Diary");
        BudgetConfig.TESTFIELD("Avaylable Budget Batch");
        BudgetConfig.TESTFIELD("Avaylable Budget Decrease");

        AvaylableBudget.RESET;
        AvaylableBudget.SETRANGE("Consultation Code", ConsultationCode);
        AvaylableBudget.DELETEALL(TRUE);

        PostedAvaylableBudget.RESET;
        PostedAvaylableBudget.SETRANGE("Consultation Code", ConsultationCode);
        PostedAvaylableBudget.SETRANGE(Reversed, FALSE);
        IF PostedAvaylableBudget.FINDSET THEN BEGIN
            AvaylableBudget.Init();
            AvaylableBudget.TransferFields(PostedAvaylableBudget);
            AvaylableBudget."Avay Date" := DMY2DATE(31, 12, CloseYear);
            AvaylableBudget.ClosedByYear := CloseYear;
            AvaylableBudget.Validate(Type, "Avaylable Budget Type"::Decrease);
            AvaylableBudget.Status := AvaylableBudget.Status::Canceled;
            AvaylableBudget.Reversed := TRUE;
            AvaylableBudget."Requisition Description" := CloseYearHeader;
            AvaylableBudget.Insert(true);
            REPEAT
                PostedAvayBudgetLines.RESET;
                PostedAvayBudgetLines.SETRANGE("Avay Code", PostedAvaylableBudget."Avay Code");
                IF PostedAvayBudgetLines.FINDSET THEN
                    REPEAT
                        AvaylableBudgetLines.RESET;
                        AvaylableBudgetLines.SETRANGE("Quote No.", PostedAvayBudgetLines."Quote No.");
                        AvaylableBudgetLines.SETRANGE("Quote Line No.", PostedAvayBudgetLines."Quote Line No.");
                        IF AvaylableBudgetLines.FINDFIRST THEN BEGIN
                            AvaylableBudgetLines.Amount += PostedAvayBudgetLines.Amount * -1;
                            AvaylableBudgetLines."Amount Including VAT" += PostedAvayBudgetLines."Amount Including VAT" * -1;
                            AvaylableBudgetLines."Cost Amount" += PostedAvayBudgetLines."Cost Amount" * -1;
                            AvaylableBudgetLines.MODIFY;
                        END ELSE BEGIN
                            AvaylableBudgetLines.Init();
                            AvaylableBudgetLines.TransferFields(PostedAvayBudgetLines, false);
                            AvaylableBudgetLines."Line No." := LineNo;
                            AvaylableBudgetLines."Avay Code" := AvaylableBudget."Avay Code";
                            AvaylableBudgetLines."Unit Cost" := PostedAvayBudgetLines."Unit Cost" * -1;
                            AvaylableBudgetLines."Avay Date" := AvaylableBudget."Avay Date";
                            AvaylableBudgetLines.Amount := PostedAvayBudgetLines.Amount * -1;
                            AvaylableBudgetLines."Amount Including VAT" := PostedAvayBudgetLines."Amount Including VAT" * -1;
                            AvaylableBudgetLines."Cost Amount" := PostedAvayBudgetLines."Cost Amount" * -1;
                            AvaylableBudgetLines.Validate("Dimension Set ID", PostedAvayBudgetLines."Dimension Set ID");
                            DimMgt.UpdateGlobalDimFromDimSetID(PostedAvayBudgetLines."Dimension Set ID", AvaylableBudgetLines."Shortcut Dimension 1 Code", AvaylableBudgetLines."Shortcut Dimension 2 Code");
                            AvaylableBudgetLines.Insert();
                            LineNo += 10000;
                        END;
                    UNTIL PostedAvayBudgetLines.NEXT = 0;
                PostedAvaylableBudget.Reversed := TRUE;
                PostedAvaylableBudget.Status := PostedAvaylableBudget.Status::Canceled;
                PostedAvaylableBudget.ClosedByYear := CloseYear;
                PostedAvaylableBudget."Requisition Description" := CloseYearHeader;
                PostedAvaylableBudget.MODIFY;
            UNTIL PostedAvaylableBudget.NEXT = 0;
        END;

        AvaylableBudget.RESET;
        AvaylableBudget.SETRANGE("Consultation Code", ConsultationCode);
        IF AvaylableBudget.FINDSET THEN
            REPEAT
                ReversedAvayBudget.INIT;
                ReversedAvayBudget.TRANSFERFIELDS(AvaylableBudget);
                ReversedAvayBudget."Avay Code Original" := AvaylableBudget."Avay Code";
                ReversedAvayBudget."Avay Code" := NoSeriesMgt.GetNextNo(BudgetConfig."Posted Avaylable Budget Nos.", DMY2DATE(31, 12, CloseYear), TRUE);
                ReversedAvayBudget.Status := ReversedAvayBudget.Status::Canceled;
                ReversedAvayBudget."Approved Date" := WorkDate();
                ReversedAvayBudget."Approved By" := UserId;
                ReversedAvayBudget.Insert(true);
                ReversedAvayBudget.COPYLINKS(AvaylableBudget);

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Document No.", ReversedAvayBudget."Avay Code");
                GenJournalLine.DELETEALL;
                GenJournalBatch.RESET;
                GenJournalBatch.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalBatch.SETRANGE(Name, BudgetConfig."PAQ Batch Diary");
                IF GenJournalBatch.FINDFIRST THEN
                    IF (GenJournalBatch."No. Series" <> '') OR (GenJournalBatch."Posting No. Series" <> '') THEN
                        ERROR(STRSUBSTNO(Text001, GenJournalBatch."Journal Template Name", GenJournalBatch.Name));

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalLine.SETRANGE("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                IF GenJournalLine.FINDLAST THEN
                    LineNo := GenJournalLine."Line No." + 10000
                ELSE
                    LineNo := 10000;
                AvaylableBudgetLines.RESET;
                AvaylableBudgetLines.SETRANGE("Avay Code", AvaylableBudget."Avay Code");
                IF AvaylableBudgetLines.FINDSET THEN
                    REPEAT
                        ReversedAvayBudgetLines.INIT;
                        ReversedAvayBudgetLines.TRANSFERFIELDS(AvaylableBudgetLines);
                        ReversedAvayBudgetLines."Avay Code" := ReversedAvayBudget."Avay Code";
                        ReversedAvayBudgetLines.Status := ReversedAvayBudget.Status;
                        ReversedAvayBudgetLines."Avay Date" := ReversedAvayBudget."Avay Date";
                        ReversedAvayBudgetLines.VALIDATE("Dimension Set ID", AvaylableBudgetLines."Dimension Set ID");
                        DimMgt.UpdateGlobalDimFromDimSetID(ReversedAvayBudgetLines."Dimension Set ID", ReversedAvayBudgetLines."Shortcut Dimension 1 Code", ReversedAvayBudgetLines."Shortcut Dimension 2 Code");
                        ReversedAvayBudgetLines.INSERT;

                        Class0Setup.RESET;
                        Class0Setup.SETRANGE("Regist type", BudgetConfig."Avaylable Budget Decrease");
                        IF Class0Setup.FINDSET THEN
                            REPEAT
                                GenJournalLine.INIT;
                                GenJournalLine."Line No." := LineNo;
                                GenJournalLine.VALIDATE(ClosedByCloseYear, TRUE);
                                GenJournalLine.VALIDATE(YearClosed, CloseYear);
                                GenJournalLine.VALIDATE("Journal Template Name", BudgetConfig."Avaylable Budget Diary");
                                GenJournalLine.VALIDATE("Journal Batch Name", BudgetConfig."Avaylable Budget Batch");
                                GenJournalLine.VALIDATE("Posting Date", ReversedAvayBudget."Avay Date");
                                GenJournalLine.VALIDATE("Account Type", GenJournalLine."Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Account No.", Class0Setup."Debt count");
                                GenJournalLine.VALIDATE("Document Type", GenJournalLine."Document Type"::" ");
                                GenJournalLine.VALIDATE("Document No.", ReversedAvayBudget."Avay Code");
                                GenJournalLine.VALIDATE("Budget Appropriation Method", ReversedAvayBudget."Budget Appropriation Method");
                                GenJournalLine.VALIDATE(Amount, ABS(ReversedAvayBudgetLines.GetAvayLineAmount()));
                                GenJournalLine.VALIDATE("Bal. Account Type", GenJournalLine."Bal. Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Bal. Account No.", Class0Setup."Credit count");
                                GenJournalLine.VALIDATE("System-Created Entry", TRUE);
                                GenJournalLine."Source Code" := ReversedAvayBudget."Source Code";
                                GenJournalLine.VALIDATE("Dimension Set ID", ReversedAvayBudgetLines."Dimension Set ID");
                                DimMgt.UpdateGlobalDimFromDimSetID(GenJournalLine."Dimension Set ID", GenJournalLine."Shortcut Dimension 1 Code", GenJournalLine."Shortcut Dimension 2 Code");
                                GenJournalLine.VALIDATE(Description, CloseYearGenLine);
                                GenJournalLine.INSERT(TRUE);
                                GenJnlPostLine.RunWithCheck(GenJournalLine);
                                GenJournalLine.Delete();
                                LineNo += 10000;
                            UNTIL Class0Setup.NEXT = 0;
                    UNTIL AvaylableBudgetLines.NEXT = 0;
                ApprovalMgt.CopyApprovalEntry(DATABASE::"Avaylable Budget", "Approval Entry Document Type"::"Avaylable Budget", AvaylableBudget."Avay Code", Database::"Posted Avaylable Budget", ReversedAvayBudget."Avay Code");
                AvaylableBudget.DELETE(TRUE);
            UNTIL AvaylableBudget.NEXT = 0;
    end;

    local procedure CancelRequisitions(ConsultationCode: Code[20]; CloseYear: Integer)
    var
        Requisition: Record Requisition;
        TempRequisition: Record Requisition temporary;
        RequisitionLines: Record "Requisition Lines";
    begin
        CLEAR(TempRequisition);

        RequisitionLines.RESET;
        RequisitionLines.SETRANGE("Consultation Code", ConsultationCode);
        RequisitionLines.SETFILTER(Status, '%1..%2|%3', RequisitionLines.Status::Open, RequisitionLines.Status::"Pending Approval", RequisitionLines.Status::Reopened);
        IF RequisitionLines.FINDSET THEN
            REPEAT
                Requisition.GET(RequisitionLines."Requisition Code");
                IF NOT Requisition.IsContract THEN BEGIN
                    TempRequisition.INIT;
                    TempRequisition."Requisition Code" := RequisitionLines."Requisition Code";
                    IF TempRequisition.INSERT THEN;
                END;
            UNTIL RequisitionLines.NEXT = 0;

        TempRequisition.RESET;
        IF TempRequisition.FINDSET THEN
            REPEAT
                Requisition.GET(TempRequisition."Requisition Code");
                IF NOT Requisition.IsContract THEN BEGIN
                    Requisition.VALIDATE(Status, Requisition.Status::Canceled);
                    Requisition.VALIDATE(ClosedByYear, CloseYear);
                    Requisition.MODIFY;
                END;
            UNTIL TempRequisition.NEXT = 0;
    end;

    local procedure CancelReqNoConsultation(CloseYear: Integer)
    var
        Requisition: Record Requisition;
        TempRequisition: Record Requisition temporary;
        RequisitionLines: Record "Requisition Lines";
    begin
        CLEAR(TempRequisition);

        RequisitionLines.RESET;
        RequisitionLines.SETFILTER(Status, '%1..%2|%3', RequisitionLines.Status::Open, RequisitionLines.Status::"Pending Approval", RequisitionLines.Status::Reopened);
        RequisitionLines.SETFILTER("Requisition Date", '<=%1', DMY2DATE(31, 12, CloseYear));
        IF RequisitionLines.FINDSET THEN
            REPEAT
                If Requisition.GET(RequisitionLines."Requisition Code") then begin
                    IF NOT Requisition.IsContract THEN BEGIN
                        TempRequisition.INIT;
                        TempRequisition."Requisition Code" := RequisitionLines."Requisition Code";
                        IF TempRequisition.INSERT THEN;
                    END;
                end;
            UNTIL RequisitionLines.NEXT = 0;

        TempRequisition.RESET;
        IF TempRequisition.FINDSET THEN
            REPEAT
                Requisition.GET(TempRequisition."Requisition Code");
                IF NOT Requisition.IsContract THEN BEGIN
                    Requisition.VALIDATE(Status, Requisition.Status::Canceled);
                    Requisition.VALIDATE(ClosedByYear, CloseYear);
                    Requisition.MODIFY;
                END;
            UNTIL TempRequisition.NEXT = 0;
    end;

    local procedure CloseRequisitions(ConsultationCode: Code[20]; CloseYear: Integer)
    var
        Requisition: Record Requisition;
        TempRequisition: Record Requisition temporary;
        RequisitionLines: Record "Requisition Lines";
    begin
        CLEAR(TempRequisition);

        RequisitionLines.RESET;
        RequisitionLines.SETRANGE("Consultation Code", ConsultationCode);
        RequisitionLines.SETFILTER(Status, '%1..%2|%3', RequisitionLines.Status::Open, RequisitionLines.Status::Rejected, RequisitionLines.Status::Reopened);
        IF RequisitionLines.FINDSET THEN
            REPEAT
                Requisition.GET(RequisitionLines."Requisition Code");
                IF NOT Requisition.IsContract THEN BEGIN
                    TempRequisition.INIT;
                    TempRequisition."Requisition Code" := RequisitionLines."Requisition Code";
                    IF TempRequisition.INSERT THEN;
                END;
            UNTIL RequisitionLines.NEXT = 0;

        TempRequisition.RESET;
        IF TempRequisition.FINDSET THEN
            REPEAT
                Requisition.GET(RequisitionLines."Requisition Code");
                Requisition.VALIDATE(Status, Requisition.Status::Closed);
                Requisition.ClosedByYear := CloseYear;
                Requisition.MODIFY;
            UNTIL TempRequisition.NEXT = 0;
    end;

    local procedure AdjustPAQs(ConsultationCode: Code[20]; CloseYear: Integer)
    var
        BudgetConfig: Record "Budget Configuration";
        PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.";
        PurchCrMemoLine: Record "Purch. Cr. Memo Line";
        PAQ: Record PAQ;
        PAQLines: Record "PAQ Lines";
        ReversedPAQ: Record "Posted PAQ";
        ReversedPAQLines: Record "Posted PAQ Lines";
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalBatch: Record "Gen. Journal Batch";
        Class0Setup: Record "Class 0 Setup";
        ApprovalMgt: Codeunit "Approval Management";
        LineNo: Integer;
    begin
        CLEAR(LineNo);
        LineNo := 10000;

        BudgetConfig.GET;
        BudgetConfig.TESTFIELD("Budget Appropriation Method");
        BudgetConfig.TESTFIELD("Posted PAQ Nos.");
        BudgetConfig.TESTFIELD("Original PAQ");
        BudgetConfig.TESTFIELD("PAQ Decrease");
        BudgetConfig.TESTFIELD("PAQ Template Diary");
        BudgetConfig.TESTFIELD("PAQ Batch Diary");

        PurchCrMemoLine.RESET;
        PurchCrMemoLine.SETRANGE("Consultation Code", ConsultationCode);
        IF PurchCrMemoLine.FINDSET THEN BEGIN
            PurchCrMemoHdr.GET(PurchCrMemoLine."Document No.");
            Clear(PAQ);
            PAQ.Init();
            PAQ.Validate("Consultation Code", ConsultationCode);
            PAQ.Validate(Type, "PAQ Type"::Decrease);
            PAQ."PAQ Date" := DMY2DATE(31, 12, CloseYear);
            PAQ.Reversed := TRUE;
            PAQ."Vendor No." := PurchCrMemoLine."Buy-from Vendor No.";
            PAQ.ClosedByYear := CloseYear;
            PAQ."PAQ Description" := STRSUBSTNO(CloseYearDesc, CloseYear);
            PAQ.Insert(true);

            REPEAT
                PAQLines.RESET;
                PAQLines.SETRANGE("Quote No.", PurchCrMemoLine."Quote No.");
                PAQLines.SETRANGE("Quote Line No.", PurchCrMemoLine."Quote Line No.");
                IF PAQLines.FINDFIRST THEN BEGIN
                    PAQLines.Amount += PurchCrMemoLine.Amount * -1;
                    PAQLines."Amount Including VAT" += PurchCrMemoLine."Amount Including VAT" * -1;
                    PAQLines."Cost Amount" += PurchCrMemoLine."Cost Amount" * -1;
                    PAQLines.MODIFY;
                END ELSE BEGIN
                    PAQLines.Init;
                    PAQLines.Validate("PAQ Code", PAQ."PAQ Code");
                    PAQLines.Validate("Line No.", LineNo);
                    PAQLines.Validate("Requisition Code", PurchCrMemoLine."Requisition Code");
                    PAQLines.Validate("Requisition Line", PurchCrMemoLine."Requisition Line");
                    PAQLines.Validate("Line Type", PurchCrMemoLine.Type.AsInteger());
                    PAQLines.Validate("No.", PurchCrMemoLine."No.");
                    PAQLines.Validate(Description, PurchCrMemoLine.Description);
                    PAQLines.Validate("Location Code", PurchCrMemoLine."Location Code");
                    PAQLines.Validate("Consultation Code", PurchCrMemoLine."Consultation Code");
                    PAQLines.Validate("Currency Code", PurchCrMemoHdr."Currency Code");
                    PAQLines."Quote No." := PurchCrMemoLine."Quote No.";
                    PAQLines."Quote Line No." := PurchCrMemoLine."Quote Line No.";
                    PAQLines.Validate(Quantity, PurchCrMemoLine.Quantity);
                    PAQLines.Validate("VAT %", PurchCrMemoLine."VAT %");
                    PAQLines.Validate("ND %", PurchCrMemoLine."PTSS ND %");
                    PAQLines.Validate("Unit Cost", PurchCrMemoLine."Direct Unit Cost");
                    PAQLines.Validate("Amount", PurchCrMemoLine.Amount);
                    PAQLines.Validate("Amount Including Vat", PurchCrMemoLine."Amount Including VAT");
                    PAQLines.Validate("Cost Amount", PurchCrMemoLine."Cost Amount");
                    PAQLines.VALIDATE("Dimension Set ID", PurchCrMemoLine."Dimension Set ID");
                    DimMgt.UpdateGlobalDimFromDimSetID(PAQLines."Dimension Set ID", PAQLines."Shortcut Dimension 1 Code", PAQLines."Shortcut Dimension 2 Code");
                    PAQLines.INSERT(TRUE);
                    LineNo += 10000;
                END;
            UNTIL PurchCrMemoLine.NEXT = 0;
        END;

        PAQ.RESET;
        PAQ.SETRANGE("Consultation Code", ConsultationCode);
        IF PAQ.FINDSET THEN
            REPEAT
                ReversedPAQ.INIT;
                ReversedPAQ.TRANSFERFIELDS(PAQ);
                ReversedPAQ."PAQ Code Original" := PAQ."PAQ Code";
                ReversedPAQ."PAQ Code" := NoSeriesMgt.GetNextNo(BudgetConfig."Posted PAQ Nos.", DMY2DATE(31, 12, CloseYear), TRUE);
                ReversedPAQ.Status := ReversedPAQ.Status::Canceled;
                ReversedPAQ."Approved By" := USERID;
                ReversedPAQ."Approved Date" := DMY2DATE(31, 12, CloseYear);
                ReversedPAQ."No. Series" := BudgetConfig."Posted PAQ Nos.";
                ReversedPAQ.Insert(true);

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Document No.", ReversedPAQ."PAQ Code");
                GenJournalLine.DELETEALL;
                GenJournalBatch.RESET;
                GenJournalBatch.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalBatch.SETRANGE(Name, BudgetConfig."PAQ Batch Diary");
                IF GenJournalBatch.FINDFIRST THEN
                    IF (GenJournalBatch."No. Series" <> '') OR (GenJournalBatch."Posting No. Series" <> '') THEN
                        ERROR(STRSUBSTNO(Text001, GenJournalBatch."Journal Template Name", GenJournalBatch.Name));

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalLine.SETRANGE("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                IF GenJournalLine.FINDLAST THEN
                    LineNo := GenJournalLine."Line No." + 10000
                ELSE
                    LineNo := 10000;
                PAQLines.RESET;
                PAQLines.SETRANGE("PAQ Code", PAQ."PAQ Code");
                IF PAQLines.FINDSET THEN
                    REPEAT
                        ReversedPAQLines.INIT;
                        ReversedPAQLines.TRANSFERFIELDS(PAQLines);
                        ReversedPAQLines."PAQ Code" := ReversedPAQ."PAQ Code";
                        ReversedPAQLines.Status := ReversedPAQ.Status;
                        ReversedPAQLines."PAQ Date" := ReversedPAQ."PAQ Date";
                        ReversedPAQLines.VALIDATE("Dimension Set ID", PAQLines."Dimension Set ID");
                        ReversedPAQLines.INSERT;

                        Class0Setup.RESET;
                        Class0Setup.SETRANGE("Regist type", BudgetConfig."PAQ Decrease");
                        IF Class0Setup.FINDSET THEN
                            REPEAT
                                GenJournalLine.INIT;
                                GenJournalLine."Line No." := LineNo;
                                GenJournalLine.VALIDATE(ClosedByCloseYear, TRUE);
                                GenJournalLine.VALIDATE(YearClosed, CloseYear);
                                GenJournalLine.VALIDATE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                                GenJournalLine.VALIDATE("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                                GenJournalLine.VALIDATE("Posting Date", ReversedPAQ."PAQ Date");
                                GenJournalLine.VALIDATE("Account Type", GenJournalLine."Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Account No.", Class0Setup."Debt count");
                                GenJournalLine.VALIDATE("Document Type", GenJournalLine."Document Type"::" ");
                                GenJournalLine.VALIDATE("Document No.", ReversedPAQ."PAQ Code");
                                GenJournalLine.VALIDATE("Budget Appropriation Method", ReversedPAQ."Budget Appropriation Method");
                                GenJournalLine.VALIDATE(Amount, ABS(ReversedPAQLines.GetPAQLineAmount()));
                                GenJournalLine.VALIDATE("Bal. Account Type", GenJournalLine."Bal. Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Bal. Account No.", Class0Setup."Credit count");
                                GenJournalLine.VALIDATE("System-Created Entry", TRUE);
                                GenJournalLine.Validate("Source Code", ReversedPAQ."Source Code");
                                GenJournalLine.VALIDATE("Dimension Set ID", ReversedPAQLines."Dimension Set ID");
                                DimMgt.UpdateGlobalDimFromDimSetID(GenJournalLine."Dimension Set ID", GenJournalLine."Shortcut Dimension 1 Code", GenJournalLine."Shortcut Dimension 2 Code");
                                GenJournalLine.VALIDATE(Description, CloseYearGenLine);
                                GenJournalLine.INSERT(TRUE);
                                GenJnlPostLine.RunWithCheck(GenJournalLine);
                                GenJournalLine.Delete();
                                LineNo += 10000;
                            UNTIL Class0Setup.NEXT = 0;
                    UNTIL PAQLines.NEXT = 0;
                ApprovalMgt.CopyApprovalEntry(DATABASE::PAQ, "Approval Entry Document Type"::Adjudication, PAQ."PAQ Code", Database::"Posted PAQ", ReversedPAQ."PAQ Code");
                PAQ.DELETE(TRUE);
            UNTIL PAQ.NEXT = 0;
    end;

    local procedure AdjustAvays(ConsultationCode: Code[20]; CloseYear: Integer)
    var
        BudgetConfig: Record "Budget Configuration";
        SourceCodeSetup: Record "Source Code Setup";
        PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.";
        PurchCrMemoLine: Record "Purch. Cr. Memo Line";
        AvaylableBudget: Record "Avaylable Budget";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        ReversedAvayBudget: Record "Posted Avaylable Budget";
        ReversedAvayBudgetLines: Record "Posted Avaylable Budget Line";
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalBatch: Record "Gen. Journal Batch";
        Class0Setup: Record "Class 0 Setup";
        ApprovalMgt: Codeunit "Approval Management";
        LineNo: Integer;
        ApprovalEntry: Record "Aproval Entry";
    begin
        CLEAR(LineNo);
        LineNo := 10000;

        BudgetConfig.GET;
        BudgetConfig.TESTFIELD("Avaylable Budget Nos.");
        BudgetConfig.TESTFIELD("Budget Appropriation Method");
        BudgetConfig.TESTFIELD("Posted Avaylable Budget Nos.");
        BudgetConfig.TESTFIELD("Avaylable Budget Diary");
        BudgetConfig.TESTFIELD("Avaylable Budget Batch");
        BudgetConfig.TESTFIELD("Avaylable Budget Decrease");
        SourceCodeSetup.GET;
        SourceCodeSetup.TESTFIELD("Avaylabel Budget");

        PurchCrMemoLine.RESET;
        PurchCrMemoLine.SETRANGE("Consultation Code", ConsultationCode);
        IF PurchCrMemoLine.FINDSET THEN BEGIN
            PurchCrMemoHdr.GET(PurchCrMemoLine."Document No.");
            AvaylableBudget.Init();
            AvaylableBudget."Avay Date" := DMY2DATE(31, 12, CloseYear);
            AvaylableBudget.Insert(true);
            AvaylableBudget.Validate(Type, "Avaylable Budget Type"::Decrease);
            AvaylableBudget.Validate("Consultation Code", ConsultationCode);
            AvaylableBudget.Status := AvaylableBudget.Status::Canceled;
            AvaylableBudget.Reversed := TRUE;
            AvaylableBudget."Requisition Description" := CloseYearHeader;
            AvaylableBudget.ClosedByYear := CloseYear;
            AvaylableBudget."Vendor No." := PurchCrMemoLine."Buy-from Vendor No.";
            AvaylableBudget.INSERT(TRUE);
            REPEAT
                AvaylableBudgetLines.RESET;
                AvaylableBudgetLines.SETRANGE("Quote No.", PurchCrMemoLine."Quote No.");
                AvaylableBudgetLines.SETRANGE("Quote Line No.", PurchCrMemoLine."Quote Line No.");
                IF AvaylableBudgetLines.FINDFIRST THEN BEGIN
                    AvaylableBudgetLines.Amount += PurchCrMemoLine.Amount * -1;
                    AvaylableBudgetLines."Amount Including VAT" += PurchCrMemoLine."Amount Including VAT" * -1;
                    AvaylableBudgetLines."Cost Amount" += PurchCrMemoLine."Cost Amount" * -1;
                    AvaylableBudgetLines.MODIFY;
                END ELSE BEGIN
                    AvaylableBudgetLines.Init;
                    AvaylableBudgetLines.Validate("Avay Code", AvaylableBudget."Avay Code");
                    AvaylableBudgetLines.Validate("Line No.", LineNo);
                    AvaylableBudgetLines.Validate("Requisition Code", PurchCrMemoLine."Requisition Code");
                    AvaylableBudgetLines.Validate("Requisition Line", PurchCrMemoLine."Requisition Line");
                    AvaylableBudgetLines.Validate("Line Type", PurchCrMemoLine.Type.AsInteger());
                    AvaylableBudgetLines.Validate("No.", PurchCrMemoLine."No.");
                    AvaylableBudgetLines.Validate(Description, PurchCrMemoLine.Description);
                    AvaylableBudgetLines.Validate("Location Code", PurchCrMemoLine."Location Code");
                    AvaylableBudgetLines.Validate("Consultation Code", PurchCrMemoLine."Consultation Code");
                    AvaylableBudgetLines.Validate("Currency Code", PurchCrMemoHdr."Currency Code");
                    AvaylableBudgetLines."Quote No." := PurchCrMemoLine."Quote No.";
                    AvaylableBudgetLines."Quote Line No." := PurchCrMemoLine."Quote Line No.";
                    AvaylableBudgetLines.Validate(Quantity, PurchCrMemoLine.Quantity);
                    AvaylableBudgetLines.Validate("VAT %", PurchCrMemoLine."VAT %");
                    AvaylableBudgetLines.Validate("ND %", PurchCrMemoLine."PTSS ND %");
                    AvaylableBudgetLines.Validate("Unit Cost", PurchCrMemoLine."Direct Unit Cost");
                    AvaylableBudgetLines.Validate("Amount", PurchCrMemoLine.Amount);
                    AvaylableBudgetLines.Validate("Amount Including Vat", PurchCrMemoLine."Amount Including VAT");
                    AvaylableBudgetLines.Validate("Cost Amount", PurchCrMemoLine."Cost Amount");
                    AvaylableBudgetLines.Validate("Avay Date", AvaylableBudget."Avay Date");
                    AvaylableBudgetLines.validate("Dimension Set ID", PurchCrMemoLine."Dimension Set ID");
                    DimMgt.UpdateGlobalDimFromDimSetID(AvaylableBudgetLines."Dimension Set ID", AvaylableBudgetLines."Shortcut Dimension 1 Code", AvaylableBudgetLines."Shortcut Dimension 2 Code");
                    AvaylableBudgetLines.INSERT(TRUE);
                    LineNo += 10000;
                END;
            UNTIL PurchCrMemoLine.NEXT = 0;
        END;

        AvaylableBudget.RESET;
        AvaylableBudget.SETRANGE("Consultation Code", ConsultationCode);
        IF AvaylableBudget.FINDSET THEN
            REPEAT
                ReversedAvayBudget.INIT;
                ReversedAvayBudget.TRANSFERFIELDS(AvaylableBudget);
                ReversedAvayBudget."Avay Code Original" := AvaylableBudget."Avay Code";
                ReversedAvayBudget."Avay Code" := NoSeriesMgt.GetNextNo(BudgetConfig."Posted Avaylable Budget Nos.", DMY2DATE(31, 12, CloseYear), TRUE);
                ReversedAvayBudget.Status := ReversedAvayBudget.Status::Canceled;
                ReversedAvayBudget."Approved Date" := WorkDate();
                ReversedAvayBudget."Approved By" := UserId;
                ReversedAvayBudget.Insert(true);
                ReversedAvayBudget.COPYLINKS(AvaylableBudget);

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Document No.", ReversedAvayBudget."Avay Code");
                GenJournalLine.DELETEALL;
                GenJournalBatch.RESET;
                GenJournalBatch.SETRANGE("Journal Template Name", BudgetConfig."Avaylable Budget Diary");
                GenJournalBatch.SETRANGE(Name, BudgetConfig."Avaylable Budget Batch");
                IF GenJournalBatch.FINDFIRST THEN
                    IF (GenJournalBatch."No. Series" <> '') OR (GenJournalBatch."Posting No. Series" <> '') THEN
                        ERROR(STRSUBSTNO(Text001, GenJournalBatch."Journal Template Name", GenJournalBatch.Name));

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalLine.SETRANGE("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                IF GenJournalLine.FINDLAST THEN
                    LineNo := GenJournalLine."Line No." + 10000
                ELSE
                    LineNo := 10000;

                AvaylableBudgetLines.RESET;
                AvaylableBudgetLines.SETRANGE("Avay Code", AvaylableBudget."Avay Code");
                IF AvaylableBudgetLines.FINDSET THEN
                    REPEAT
                        ReversedAvayBudgetLines.INIT;
                        ReversedAvayBudgetLines.TRANSFERFIELDS(AvaylableBudgetLines);
                        ReversedAvayBudgetLines."Avay Code" := ReversedAvayBudget."Avay Code";
                        ReversedAvayBudgetLines.Status := ReversedAvayBudget.Status;
                        ReversedAvayBudgetLines."Avay Date" := ReversedAvayBudget."Avay Date";
                        ReversedAvayBudgetLines.VALIDATE("Dimension Set ID", AvaylableBudgetLines."Dimension Set ID");
                        DimMgt.UpdateGlobalDimFromDimSetID(ReversedAvayBudgetLines."Dimension Set ID", ReversedAvayBudgetLines."Shortcut Dimension 1 Code", ReversedAvayBudgetLines."Shortcut Dimension 2 Code");
                        ReversedAvayBudgetLines.INSERT;

                        Class0Setup.RESET;
                        Class0Setup.SETRANGE("Regist type", BudgetConfig."Avaylable Budget Decrease");
                        IF Class0Setup.FINDSET THEN
                            REPEAT
                                GenJournalLine.INIT;
                                GenJournalLine."Line No." := LineNo;
                                GenJournalLine.VALIDATE(ClosedByCloseYear, TRUE);
                                GenJournalLine.VALIDATE(YearClosed, CloseYear);
                                GenJournalLine.VALIDATE("Journal Template Name", BudgetConfig."Avaylable Budget Diary");
                                GenJournalLine.VALIDATE("Journal Batch Name", BudgetConfig."Avaylable Budget Batch");
                                GenJournalLine.VALIDATE("Posting Date", ReversedAvayBudget."Avay Date");
                                GenJournalLine.VALIDATE("Account Type", GenJournalLine."Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Account No.", Class0Setup."Debt count");
                                GenJournalLine.VALIDATE("Document Type", GenJournalLine."Document Type"::" ");
                                GenJournalLine.VALIDATE("Document No.", ReversedAvayBudget."Avay Code");
                                GenJournalLine.VALIDATE("Budget Appropriation Method", ReversedAvayBudget."Budget Appropriation Method");
                                GenJournalLine.VALIDATE(Amount, ABS(ReversedAvayBudgetLines.GetAvayLineAmount()));
                                GenJournalLine.VALIDATE("Bal. Account Type", GenJournalLine."Bal. Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Bal. Account No.", Class0Setup."Credit count");
                                GenJournalLine.VALIDATE("System-Created Entry", TRUE);
                                GenJournalLine.Validate("Source Code", ReversedAvayBudget."Source Code");
                                GenJournalLine.VALIDATE("Dimension Set ID", ReversedAvayBudgetLines."Dimension Set ID");
                                DimMgt.UpdateGlobalDimFromDimSetID(GenJournalLine."Dimension Set ID", GenJournalLine."Shortcut Dimension 1 Code", GenJournalLine."Shortcut Dimension 2 Code");
                                GenJournalLine.VALIDATE(Description, CloseYearGenLine);
                                GenJournalLine.INSERT(TRUE);
                                GenJnlPostLine.RunWithCheck(GenJournalLine);
                                GenJournalLine.Delete();
                                LineNo += 10000;
                            UNTIL Class0Setup.NEXT = 0;
                    UNTIL AvaylableBudgetLines.NEXT = 0;
                ApprovalMgt.CopyApprovalEntry(DATABASE::"Avaylable Budget", "Approval Entry Document Type"::"Avaylable Budget", AvaylableBudget."Avay Code", Database::"Posted Avaylable Budget", ReversedAvayBudget."Avay Code");
                AvaylableBudget.DELETE(TRUE);
            UNTIL AvaylableBudget.NEXT = 0;
    end;

    procedure CloseCtrConsultations(CloseYear: Integer)
    var
        Consultation: Record Consultation;
        PurchaseLine: Record "Purchase Line";
        PostedInvoiceAmount: Decimal;
        PostedCrMemoAmount: Decimal;
        PostedInvoices: Integer;
        PostedCrMemos: Integer;
        OrderAmount: Decimal;
        PostedPAQAmount: Decimal;
        PostedCABAmount: Decimal;
        AvaylableBudgets: Integer;
        Window: Dialog;
        TotalRecNo: Integer;
        RecNo: Integer;
        DialogLabel: Label 'Contract Consultations @1@@@@@@@@@@@@@@@@@@@@@@@@@\';
    begin
        CLEAR(Window);
        Window.OPEN(
          Text002 +
          DialogLabel);
        Consultation.RESET;
        Consultation.SETRANGE("Start Date", 0D, CALCDATE('<CY>', DMY2DATE(1, 1, CloseYear)));
        Consultation.SETRANGE(IsContract, TRUE);
        Consultation.SETFILTER("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Closed, Consultation."Consultation Status"::Canceled);
        IF Consultation.FINDSET THEN BEGIN
            Window.UPDATE(1, 0);
            TotalRecNo := Consultation.COUNT;
            RecNo := 0;
            REPEAT
                RecNo := RecNo + 1;
                Window.UPDATE(1, ROUND(RecNo / TotalRecNo * 10000, 1));
                CLEAR(PostedInvoiceAmount);
                CLEAR(PostedCrMemoAmount);
                CLEAR(OrderAmount);
                CLEAR(PostedPAQAmount);
                CLEAR(PostedCABAmount);
                CLEAR(AvaylableBudgets);
                CLEAR(PostedInvoices);
                CLEAR(PostedCrMemos);

                PostedInvoices := Consultation.CountInvoicesByYear(CloseYear);
                PostedInvoiceAmount := Consultation.GetInvoicedAmountByYear(CloseYear);
                PostedCrMemos := Consultation.CountCreditsByYear(CloseYear);
                PostedCrMemoAmount := Consultation.GetCreditedAmountByYear(CloseYear);
                PostedPAQAmount := Consultation.GetPostedPAQAmountByYear(CloseYear);
                IF (PostedInvoiceAmount - PostedCrMemoAmount) <> PostedPAQAmount THEN BEGIN
                    IF PostedInvoices > 0 THEN BEGIN
                        IF PostedCrMemos > 0 THEN BEGIN
                            IF PostedInvoiceAmount = PostedCrMemoAmount THEN BEGIN
                                CancelCtrPAQs(Consultation."Consultation code", CloseYear);
                                CancelCtrAvays(Consultation."Consultation code", CloseYear);
                            END;
                            IF PostedInvoiceAmount > PostedCrMemoAmount THEN BEGIN
                                AdjustCtrPAQs(Consultation."Consultation code", CloseYear);
                                AdjustCtrAvays(Consultation."Consultation code", CloseYear);
                            END;
                        END ELSE BEGIN
                            IF HasCtrCrMemos(Consultation."Consultation code", CloseYear) THEN
                                CancelCtrCrMemos(Consultation."Consultation code", CloseYear);
                        END;
                        IF HasCtrInvoices(Consultation."Consultation code", CloseYear) THEN
                            CancelCtrInvoices(Consultation."Consultation code", CloseYear);
                        IF HasCtrOrders(Consultation."Consultation code", CloseYear) THEN
                            CancelCtrOrders(Consultation."Consultation code", CloseYear);
                        PostedInvoiceAmount := Consultation.GetInvoicedAmountByYear(CloseYear);
                        PostedPAQAmount := Consultation.GetPostedPAQAmountByYear(CloseYear);
                        IF PostedInvoiceAmount <> PostedPAQAmount THEN BEGIN
                            CancelCtrPAQs(Consultation."Consultation code", CloseYear);
                            CancelCtrAvays(Consultation."Consultation code", CloseYear);
                        END;
                    END ELSE BEGIN
                        IF HasCtrInvoices(Consultation."Consultation code", CloseYear) THEN
                            CancelCtrInvoices(Consultation."Consultation code", CloseYear);
                        IF HasCtrOrders(Consultation."Consultation code", CloseYear) THEN
                            CancelCtrOrders(Consultation."Consultation code", CloseYear);
                        PostedInvoiceAmount := Consultation.GetInvoicedAmountByYear(CloseYear);
                        PostedPAQAmount := Consultation.GetPostedPAQAmountByYear(CloseYear);
                        IF PostedInvoiceAmount <> PostedPAQAmount THEN BEGIN
                            CancelCtrPAQs(Consultation."Consultation code", CloseYear);
                            CancelCtrAvays(Consultation."Consultation code", CloseYear);
                        END;
                    END;
                END;

                OrderAmount := Consultation.GetOrderedAmountByYear(CloseYear);
                PostedPAQAmount := Consultation.GetPostedPAQAmountByYear(CloseYear);
                IF (OrderAmount <> PostedPAQAmount) AND (PostedInvoices = 0) THEN BEGIN
                    IF HasCtrOrders(Consultation."Consultation code", CloseYear) THEN
                        CancelCtrOrders(Consultation."Consultation code", CloseYear);
                    PostedPAQAmount := Consultation.GetPostedPAQAmountByYear(CloseYear);
                    OrderAmount := Consultation.GetOrderedAmountByYear(CloseYear);
                    IF OrderAmount <> PostedPAQAmount THEN BEGIN
                        CancelCtrPAQs(Consultation."Consultation code", CloseYear);
                        CancelCtrAvays(Consultation."Consultation code", CloseYear);
                    END;
                END;

                PostedPAQAmount := Consultation.GetPostedPAQAmountByYear(CloseYear);
                PostedCABAmount := Consultation.GetPostedAvaylableAmountByYear(CloseYear);
                IF PostedPAQAmount <> PostedCABAmount THEN BEGIN
                    CancelCtrPAQs(Consultation."Consultation code", CloseYear);
                    CancelCtrAvays(Consultation."Consultation code", CloseYear);
                END;

                AvaylableBudgets := Consultation.CountAvaylablesByYear(CloseYear);
                IF AvaylableBudgets <> 0 THEN BEGIN
                    CancelCtrAvays(Consultation."Consultation code", CloseYear);
                END;

                IF IsCtrClosed(Consultation."Consultation code", CloseYear) THEN BEGIN
                    Consultation."Consultation Status" := Consultation."Consultation Status"::Closed;
                    CloseCtrRequisitions(Consultation."Consultation code", CloseYear);
                END;

                IF IsCtrCanceled(Consultation."Consultation code", CloseYear) THEN BEGIN
                    Consultation."Consultation Status" := Consultation."Consultation Status"::Canceled;
                    CancelCtrRequisitions(Consultation."Consultation code", CloseYear);
                END;
                Consultation.ClosedByYear := CloseYear;
                Consultation.MODIFY;
            UNTIL Consultation.NEXT = 0;
        END;
        Window.UPDATE(1, 10000);
        Window.CLOSE;
    end;

    local procedure HasCtrInvoices(ConsultationCode: Code[20]; YearContract: Integer): Boolean
    var
        PurchaseLine: Record "Purchase Line";
    begin
        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchaseLine.SETRANGE("Document Type", PurchaseLine."Document Type"::Invoice);
        PurchaseLine.SETRANGE("Contract Year", YearContract);
        EXIT(PurchaseLine.FINDFIRST);
    end;

    local procedure HasCtrCrMemos(ConsultationCode: Code[20]; YearContract: Integer): Boolean
    var
        PurchaseLine: Record "Purchase Line";
    begin
        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchaseLine.SETRANGE("Document Type", PurchaseLine."Document Type"::"Credit Memo");
        PurchaseLine.SETRANGE("Contract Year", YearContract);
        EXIT(PurchaseLine.FINDFIRST);
    end;

    local procedure HasCtrOrders(ConsultationCode: Code[20]; YearContract: Integer): Boolean
    var
        PurchaseLine: Record "Purchase Line";
    begin
        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchaseLine.SETRANGE("Document Type", PurchaseLine."Document Type"::Order);
        PurchaseLine.SETRANGE("Contract Year", YearContract);
        EXIT(PurchaseLine.FINDFIRST);
    end;

    local procedure HasCtrRequisitons(ConsultationCode: Code[20]; YearContract: Integer): Boolean
    var
        RequisitionLines: Record "Requisition Lines";
    begin
        RequisitionLines.RESET;
        RequisitionLines.SETRANGE("Consultation Code", ConsultationCode);
        RequisitionLines.SETRANGE(Status, RequisitionLines.Status::Released);
        RequisitionLines.SETRANGE("Contract Year", YearContract);
        EXIT(RequisitionLines.FINDFIRST);
    end;

    local procedure IsCtrClosed(ConsultationCode: Code[20]; Year: Integer): Boolean
    var
        Consultation: Record Consultation;
        ConsultationLines: Record "Consultation Lines";
        InvoiceAmount: Decimal;
        CreditAmount: Decimal;
        PostedAvaylableAmount: Decimal;
    begin
        Consultation.GET(ConsultationCode);
        ConsultationLines.RESET;
        ConsultationLines.SETRANGE("Consultation Code", ConsultationCode);
        ConsultationLines.SETFILTER("Contract Year", '>%1', Year);
        IF ConsultationLines.FINDFIRST THEN
            exit(FALSE);

        InvoiceAmount := Consultation.GetInvoicedAmountByYear(Year);
        CreditAmount := Consultation.GetCreditedAmountByYear(Year);
        PostedAvaylableAmount := Consultation.GetPostedAvaylableAmountByYear(Year);
        exit((InvoiceAmount <> 0) AND ((InvoiceAmount - CreditAmount) = PostedAvaylableAmount));
    end;

    local procedure IsCtrCanceled(ConsultationCode: Code[20]; Year: Integer): Boolean
    var
        Consultation: Record Consultation;
        ConsultationLines: Record "Consultation Lines";
        Contract: Record "Contract";
        PostedAvaylableAmount: Decimal;
    begin
        Consultation.GET(ConsultationCode);
        Contract.GET(Consultation."Contract No.");
        IF Contract.Status = Contract.Status::Canceled THEN
            EXIT(FALSE);
        ConsultationLines.RESET;
        ConsultationLines.SETRANGE("Consultation Code", ConsultationCode);
        ConsultationLines.SETFILTER("Contract Year", '>%1', Year);
        IF ConsultationLines.FINDFIRST THEN
            EXIT(FALSE);

        PostedAvaylableAmount := Consultation.GetPostedAvaylableAmountByYear(Year);
        EXIT(PostedAvaylableAmount = 0);
    end;

    local procedure CancelCtrInvoices(ConsultationCode: Code[20]; YearContract: Integer)
    var
        PurchHeader: Record "Purchase Header";
        PurchRcptHeader: Record "Purch. Rcpt. Header";
        PurchaseLine: Record "Purchase Line";
        OrderHeader: Record "Purchase Header";
        TempPurchHeader: Record "Purchase Header" temporary;
        TempPurchRcptHeader: Record "Purch. Rcpt. Header" temporary;
        TempOrderHeader: Record "Purchase Header" temporary;
    begin
        CLEAR(TempOrderHeader);
        CLEAR(TempPurchHeader);
        CLEAR(TempPurchRcptHeader);

        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchaseLine.SETRANGE("Document Type", PurchaseLine."Document Type"::Invoice);
        PurchaseLine.SETRANGE("Contract Year", YearContract);
        IF PurchaseLine.FINDSET THEN
            REPEAT
                IF PurchHeader.GET(PurchaseLine."Document Type"::Invoice, PurchaseLine."Document No.") THEN BEGIN
                    TempPurchHeader.INIT;
                    TempPurchHeader."No." := PurchaseLine."Document No.";
                    TempPurchHeader."Document Type" := PurchaseLine."Document Type"::Invoice;
                    IF TempPurchHeader.INSERT THEN;
                END;
                IF PurchRcptHeader.GET(PurchaseLine."Receipt No.") THEN BEGIN
                    TempPurchRcptHeader.INIT;
                    TempPurchRcptHeader."No." := PurchaseLine."Receipt No.";
                    IF TempPurchRcptHeader.INSERT THEN;
                END;
                IF OrderHeader.GET(OrderHeader."Document Type"::Order, PurchRcptHeader."Order No.") THEN BEGIN
                    TempOrderHeader.INIT;
                    TempOrderHeader."No." := PurchRcptHeader."Order No.";
                    TempOrderHeader."Document Type" := OrderHeader."Document Type"::Order;
                    IF TempOrderHeader.INSERT THEN;
                END;
            UNTIL PurchaseLine.NEXT = 0;

        TempPurchHeader.RESET;
        IF TempPurchHeader.FINDSET THEN
            REPEAT
                IF PurchHeader.GET(PurchaseLine."Document Type"::Invoice, PurchaseLine."Document No.") THEN BEGIN
                    PurchHeader.SetHideValidationDialog(TRUE);
                    PurchHeader.DELETE(TRUE);
                END;
            UNTIL TempPurchHeader.NEXT = 0;

        TempPurchRcptHeader.RESET;
        IF TempPurchRcptHeader.FINDSET THEN
            REPEAT
                IF PurchRcptHeader.GET(TempPurchRcptHeader."No.") THEN
                    PurchRcptHeader.DELETE(TRUE);
            UNTIL TempPurchRcptHeader.NEXT = 0;

        TempOrderHeader.RESET;
        IF TempOrderHeader.FINDSET THEN
            REPEAT
                IF OrderHeader.GET(TempOrderHeader."Document Type"::Order, TempOrderHeader."No.") THEN BEGIN
                    OrderHeader.SetHideValidationDialog(TRUE);
                    OrderHeader.DELETE(TRUE);
                END;
            UNTIL TempOrderHeader.NEXT = 0;
    end;

    local procedure CancelCtrCrMemos(ConsultationCode: Code[20]; YearContract: Integer)
    var
        PurchHeader: Record "Purchase Header";
        PurchaseLine: Record "Purchase Line";
        TempPurchHeader: Record "Purchase Header" temporary;
    begin
        CLEAR(TempPurchHeader);

        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchaseLine.SETRANGE("Document Type", PurchaseLine."Document Type"::"Credit Memo");
        PurchaseLine.SETRANGE("Contract Year", YearContract);
        IF PurchaseLine.FINDSET THEN
            REPEAT
                IF PurchHeader.GET(PurchaseLine."Document Type"::"Credit Memo", PurchaseLine."Document No.") THEN BEGIN
                    TempPurchHeader.INIT;
                    TempPurchHeader."No." := PurchaseLine."Document No.";
                    TempPurchHeader."Document Type" := PurchaseLine."Document Type"::"Credit Memo";
                    IF TempPurchHeader.INSERT THEN;
                END;
            UNTIL PurchaseLine.NEXT = 0;

        TempPurchHeader.RESET;
        IF TempPurchHeader.FINDSET THEN
            REPEAT
                IF PurchHeader.GET(PurchaseLine."Document Type"::"Credit Memo", PurchaseLine."Document No.") THEN BEGIN
                    PurchHeader.SetHideValidationDialog(TRUE);
                    PurchHeader.DELETE(TRUE);
                END;
            UNTIL TempPurchHeader.NEXT = 0;
    end;

    local procedure CancelCtrOrders(ConsultationCode: Code[20]; YearContract: Integer)
    var
        PurchRcptHeader: Record "Purch. Rcpt. Header";
        PurchaseLine: Record "Purchase Line";
        PurchInvLine: Record "Purch. Inv. Line";
        OrderHeader: Record "Purchase Header";
        TempPurchRcptHeader: Record "Purch. Rcpt. Header" temporary;
        TempOrderHeader: Record "Purchase Header" temporary;
    begin
        CLEAR(TempOrderHeader);
        CLEAR(TempPurchRcptHeader);

        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchaseLine.SETRANGE("Document Type", PurchaseLine."Document Type"::Order);
        PurchaseLine.SETRANGE("Contract Year", YearContract);
        IF PurchaseLine.FINDSET THEN
            REPEAT
                PurchInvLine.RESET;
                PurchInvLine.SETRANGE("Consultation Code", ConsultationCode);
                PurchInvLine.SETRANGE("Contract Year", YearContract);
                IF PurchInvLine.FINDSET THEN
                    REPEAT
                        IF PurchRcptHeader.GET(PurchInvLine."Receipt No.") THEN BEGIN
                            TempPurchRcptHeader.INIT;
                            TempPurchRcptHeader."No." := PurchInvLine."Receipt No.";
                            TempPurchRcptHeader."Order No." := PurchRcptHeader."Order No.";
                            IF TempPurchRcptHeader.INSERT THEN;
                        END;
                    UNTIL PurchInvLine.NEXT = 0;
                IF OrderHeader.GET(OrderHeader."Document Type"::Order, PurchaseLine."Document No.") THEN BEGIN
                    TempPurchRcptHeader.RESET;
                    TempPurchRcptHeader.SETRANGE("Order No.", PurchaseLine."Document No.");
                    IF NOT TempPurchRcptHeader.FINDFIRST THEN BEGIN
                        TempOrderHeader.INIT;
                        TempOrderHeader."No." := PurchaseLine."Document No.";
                        TempOrderHeader."Document Type" := OrderHeader."Document Type"::Order;
                        IF TempOrderHeader.INSERT THEN;
                    END;
                END;
            UNTIL PurchaseLine.NEXT = 0;

        TempOrderHeader.RESET;
        IF TempOrderHeader.FINDSET THEN
            REPEAT
                PurchRcptHeader.RESET;
                PurchRcptHeader.SETRANGE("Order No.", TempOrderHeader."No.");
                IF PurchRcptHeader.FINDSET THEN
                    REPEAT
                        PurchRcptHeader.DELETE(TRUE);
                    UNTIL PurchRcptHeader.NEXT = 0;
                IF OrderHeader.GET(TempOrderHeader."Document Type"::Order, TempOrderHeader."No.") THEN BEGIN
                    OrderHeader.SetHideValidationDialog(TRUE);
                    OrderHeader.DELETE(TRUE);
                END;
            UNTIL TempOrderHeader.NEXT = 0;
    end;

    local procedure CancelCtrPAQs(ConsultationCode: Code[20]; CloseYear: Integer)
    var
        BudgetConfig: Record "Budget Configuration";
        Consultation: Record Consultation;
        PurchInvLine: Record "Purch. Inv. Line";
        PAQ: Record PAQ;
        PAQLines: Record "PAQ Lines";
        PostedPAQ: Record "Posted PAQ";
        PostedPAQLines: Record "Posted PAQ Lines";
        ReversedPAQ: Record "Posted PAQ";
        ReversedPAQLines: Record "Posted PAQ Lines";
        QuoteLines: Record "Purchase Line";
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalBatch: Record "Gen. Journal Batch";
        Class0Setup: Record "Class 0 Setup";
        ApprovalMgt: Codeunit "Approval Management";
        LineNo: Integer;
    begin
        CLEAR(LineNo);
        LineNo := 10000;

        BudgetConfig.GET;
        BudgetConfig.TESTFIELD("Budget Appropriation Method");
        BudgetConfig.TESTFIELD("Posted PAQ Nos.");
        BudgetConfig.TESTFIELD("PAQ Nos.");
        BudgetConfig.TESTFIELD("PAQ Decrease");
        BudgetConfig.TESTFIELD("PAQ Template Diary");
        BudgetConfig.TESTFIELD("PAQ Batch Diary");

        PAQ.RESET;
        PAQ.SETRANGE("Consultation Code", ConsultationCode);
        PAQ.DELETEALL(TRUE);

        PostedPAQ.RESET;
        PostedPAQ.SETRANGE("Consultation Code", ConsultationCode);
        PostedPAQ.SETRANGE(Reversed, FALSE);
        PostedPAQ.SETFILTER("PAQ Date", '%1..%2', DMY2DATE(1, 1, CloseYear), DMY2DATE(31, 12, CloseYear));
        PostedPAQ.SETFILTER(Status, '<>%1', PostedPAQ.Status::Rejected);
        IF PostedPAQ.FINDSET THEN BEGIN
            Clear(PAQ);
            PAQ.Init;
            PAQ.TransferFields(PostedPAQ);
            PAQ."PAQ Date" := DMY2DATE(31, 12, CloseYear);
            PAQ.Insert(true);
            PAQ.ClosedByYear := CloseYear;
            PAQ.Validate(Type, "PAQ Type"::Decrease);
            PAQ.Status := "PAQ Status"::Released;
            PAQ.Reversed := true;
            PAQ."PAQ Description" := STRSUBSTNO(CloseYearDesc, CloseYear);
            PAQ.Modify();
            REPEAT
                PostedPAQLines.RESET;
                PostedPAQLines.SETRANGE("PAQ Code", PostedPAQ."PAQ Code");
                IF PostedPAQLines.FINDSET THEN
                    REPEAT
                        PAQLines.RESET;
                        PAQLines.SETRANGE("Quote No.", PostedPAQLines."Quote No.");
                        PAQLines.SETRANGE("Quote Line No.", PostedPAQLines."Quote Line No.");
                        IF PAQLines.FINDFIRST THEN BEGIN
                            PAQLines.Amount += PostedPAQLines.Amount * -1;
                            PAQLines."Amount Including VAT" += PostedPAQLines."Amount Including VAT" * -1;
                            PAQLines."Cost Amount" += PostedPAQLines."Cost Amount" * -1;
                            PAQLines.MODIFY;
                        END ELSE BEGIN
                            Clear(PAQLines);
                            PAQLines.Init();
                            PAQLines.TransferFields(PostedPAQLines, false);
                            PAQLines."PAQ Code" := PAQ."PAQ Code";
                            PAQLines."Line No." := LineNo;
                            PAQLines."PAQ Date" := PAQ."PAQ Date";
                            PAQLines.Amount := PostedPAQLines.Amount * -1;
                            PAQLines."Amount Including VAT" := PostedPAQLines."Amount Including VAT" * -1;
                            PAQLines."Cost Amount" := PostedPAQLines."Cost Amount" * -1;
                            PAQLines.VALIDATE("Dimension Set ID", PostedPAQLines."Dimension Set ID");
                            DimMgt.UpdateGlobalDimFromDimSetID(PAQLines."Dimension Set ID", PAQLines."Shortcut Dimension 1 Code", PAQLines."Shortcut Dimension 2 Code");
                            PAQLines.INSERT(TRUE);
                            LineNo += 10000;
                        END;
                    UNTIL PostedPAQLines.NEXT = 0;
            UNTIL PostedPAQ.NEXT = 0;
        END;

        PurchInvLine.RESET;
        PurchInvLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchInvLine.SETRANGE("Contract Year", CloseYear);
        IF PurchInvLine.FINDSET THEN
            REPEAT
                PAQLines.RESET;
                PAQLines.SETRANGE("Quote No.", PurchInvLine."Quote No.");
                PAQLines.SETRANGE("Quote Line No.", PurchInvLine."Quote Line No.");
                IF PAQLines.FINDFIRST THEN BEGIN
                    PAQLines.Amount -= PurchInvLine.Amount * -1;
                    PAQLines."Amount Including VAT" -= PurchInvLine."Amount Including VAT" * -1;
                    PAQLines."Cost Amount" -= PurchInvLine."Cost Amount" * -1;
                    PAQLines.MODIFY;
                END;
            UNTIL PurchInvLine.NEXT = 0;

        PAQ.RESET;
        PAQ.SETRANGE("Consultation Code", ConsultationCode);
        IF PAQ.FINDSET THEN
            REPEAT
                ReversedPAQ.INIT;
                ReversedPAQ.TRANSFERFIELDS(PAQ);
                ReversedPAQ."PAQ Code Original" := PAQ."PAQ Code";
                ReversedPAQ."PAQ Code" := NoSeriesMgt.GetNextNo(BudgetConfig."Posted PAQ Nos.", DMY2DATE(31, 12, CloseYear), TRUE);
                ReversedPAQ.Status := ReversedPAQ.Status::Canceled;
                ReversedPAQ."Approved By" := USERID;
                ReversedPAQ."Approved Date" := DMY2DATE(31, 12, CloseYear);
                ReversedPAQ."No. Series" := BudgetConfig."Posted PAQ Nos.";
                ReversedPAQ.INSERT(true);

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Document No.", ReversedPAQ."PAQ Code");
                GenJournalLine.DELETEALL;
                GenJournalBatch.RESET;
                GenJournalBatch.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalBatch.SETRANGE(Name, BudgetConfig."PAQ Batch Diary");
                IF GenJournalBatch.FINDFIRST THEN
                    IF (GenJournalBatch."No. Series" <> '') OR (GenJournalBatch."Posting No. Series" <> '') THEN
                        ERROR(STRSUBSTNO(Text001, GenJournalBatch."Journal Template Name", GenJournalBatch.Name));

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalLine.SETRANGE("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                IF GenJournalLine.FINDLAST THEN
                    LineNo := GenJournalLine."Line No." + 10000
                ELSE
                    LineNo := 10000;
                PAQLines.RESET;
                PAQLines.SETRANGE("PAQ Code", PAQ."PAQ Code");
                IF PAQLines.FINDSET THEN
                    REPEAT
                        ReversedPAQLines.INIT;
                        ReversedPAQLines.TRANSFERFIELDS(PAQLines);
                        ReversedPAQLines."PAQ Code" := ReversedPAQ."PAQ Code";
                        ReversedPAQLines.Status := ReversedPAQ.Status;
                        ReversedPAQLines."PAQ Date" := ReversedPAQ."PAQ Date";
                        ReversedPAQLines.VALIDATE("Dimension Set ID", PAQLines."Dimension Set ID");
                        ReversedPAQLines.INSERT;

                        Consultation.GET(ReversedPAQLines."Consultation Code");
                        IF Consultation.IsContract THEN BEGIN
                            IF QuoteLines.GET(QuoteLines."Document Type"::Quote, ReversedPAQLines."Quote No.", ReversedPAQLines."Quote Line No.") THEN BEGIN
                                QuoteLines."Amount Adjudicated" -= (ReversedPAQLines.GetPAQLineAmount() * -1);
                                QuoteLines.MODIFY;
                            END;
                        END;
                        Class0Setup.RESET;
                        Class0Setup.SETRANGE("Regist type", BudgetConfig."PAQ Decrease");
                        IF Class0Setup.FINDSET THEN
                            REPEAT
                                GenJournalLine.INIT;
                                GenJournalLine."Line No." := LineNo;
                                GenJournalLine.VALIDATE(ClosedByCloseYear, TRUE);
                                GenJournalLine.VALIDATE(YearClosed, CloseYear);
                                GenJournalLine.VALIDATE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                                GenJournalLine.VALIDATE("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                                GenJournalLine.VALIDATE("Posting Date", ReversedPAQ."PAQ Date");
                                GenJournalLine.VALIDATE("Account Type", GenJournalLine."Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Account No.", Class0Setup."Debt count");
                                GenJournalLine.VALIDATE("Document Type", GenJournalLine."Document Type"::" ");
                                GenJournalLine.VALIDATE("Document No.", ReversedPAQ."PAQ Code");
                                GenJournalLine.VALIDATE("Budget Appropriation Method", ReversedPAQ."Budget Appropriation Method");
                                GenJournalLine.VALIDATE(Amount, ABS(PAQLines.GetPAQLineAmount));
                                GenJournalLine.VALIDATE("Bal. Account Type", GenJournalLine."Bal. Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Bal. Account No.", Class0Setup."Credit count");
                                GenJournalLine.VALIDATE("System-Created Entry", TRUE);
                                GenJournalLine.Validate("Source Code", ReversedPAQ."Source Code");
                                GenJournalLine.VALIDATE("Dimension Set ID", ReversedPAQLines."Dimension Set ID");
                                DimMgt.UpdateGlobalDimFromDimSetID(GenJournalLine."Dimension Set ID", GenJournalLine."Shortcut Dimension 1 Code", GenJournalLine."Shortcut Dimension 2 Code");
                                GenJournalLine.VALIDATE(Description, CloseYearGenLine);
                                GenJournalLine.INSERT(TRUE);
                                GenJnlPostLine.RunWithCheck(GenJournalLine);
                                GenJournalLine.Delete();
                                LineNo += 10000;
                            UNTIL Class0Setup.NEXT = 0;
                    UNTIL PAQLines.NEXT = 0;
                ApprovalMgt.CopyApprovalEntry(DATABASE::PAQ, "Approval Entry Document Type"::Adjudication, PAQ."PAQ Code", Database::"Posted PAQ", ReversedPAQ."PAQ Code");
                PAQ.DELETE(TRUE);
            UNTIL PAQ.NEXT = 0;
    end;

    local procedure CancelCtrAvays(ConsultationCode: Code[20]; CloseYear: Integer)
    var
        BudgetConfig: Record "Budget Configuration";
        Consultation: Record Consultation;
        PurchInvLine: Record "Purch. Inv. Line";
        PostedAvaylableBudget: Record "Posted Avaylable Budget";
        PostedAvayBudgetLines: Record "Posted Avaylable Budget Line";
        AvaylableBudget: Record "Avaylable Budget";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        ReversedAvayBudget: Record "Posted Avaylable Budget";
        ReversedAvayBudgetLines: Record "Posted Avaylable Budget Line";
        QuoteLines: Record "Purchase Line";
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalBatch: Record "Gen. Journal Batch";
        Class0Setup: Record "Class 0 Setup";
        ApprovalMgt: Codeunit "Approval Management";
        LineNo: Integer;
        ApprovalEntry: Record "Aproval Entry";
        Requisition: Record Requisition;
        CURequisition: Codeunit Requisition;
    begin
        CLEAR(LineNo);
        LineNo := 10000;

        BudgetConfig.GET;
        BudgetConfig.TESTFIELD("Avaylable Budget Nos.");
        BudgetConfig.TESTFIELD("Budget Appropriation Method");
        BudgetConfig.TESTFIELD("Posted Avaylable Budget Nos.");
        BudgetConfig.TESTFIELD("Avaylable Budget Diary");
        BudgetConfig.TESTFIELD("Avaylable Budget Batch");
        BudgetConfig.TESTFIELD("Avaylable Budget Decrease");

        AvaylableBudget.RESET;
        AvaylableBudget.SETRANGE("Consultation Code", ConsultationCode);
        AvaylableBudget.DELETEALL(TRUE);

        PostedAvaylableBudget.RESET;
        PostedAvaylableBudget.SETRANGE("Consultation Code", ConsultationCode);
        IF PostedAvaylableBudget.FINDSET THEN BEGIN
            AvaylableBudget.Init();
            AvaylableBudget.TransferFields(PostedAvaylableBudget);
            AvaylableBudget."Avay Date" := DMY2DATE(31, 12, CloseYear);
            AvaylableBudget.ClosedByYear := CloseYear;
            AvaylableBudget.Validate(Type, "Avaylable Budget Type"::Decrease);
            AvaylableBudget.Status := AvaylableBudget.Status::Canceled;
            AvaylableBudget.Reversed := TRUE;
            AvaylableBudget."Requisition Description" := CloseYearHeader;
            AvaylableBudget.Insert(true);
            REPEAT
                PostedAvayBudgetLines.RESET;
                PostedAvayBudgetLines.SETRANGE("Avay Code", PostedAvaylableBudget."Avay Code");
                IF PostedAvayBudgetLines.FINDSET THEN
                    REPEAT
                        AvaylableBudgetLines.RESET;
                        AvaylableBudgetLines.SETRANGE("Quote No.", PostedAvayBudgetLines."Quote No.");
                        AvaylableBudgetLines.SETRANGE("Quote Line No.", PostedAvayBudgetLines."Quote Line No.");
                        IF AvaylableBudgetLines.FINDFIRST THEN BEGIN
                            AvaylableBudgetLines.Amount += PostedAvayBudgetLines.Amount * -1;
                            AvaylableBudgetLines."Amount Including VAT" += PostedAvayBudgetLines."Amount Including VAT" * -1;
                            AvaylableBudgetLines."Cost Amount" += PostedAvayBudgetLines."Cost Amount" * -1;
                            AvaylableBudgetLines.MODIFY;
                        END ELSE BEGIN
                            AvaylableBudgetLines.Init();
                            AvaylableBudgetLines.TransferFields(PostedAvayBudgetLines, false);
                            AvaylableBudgetLines."Line No." := LineNo;
                            AvaylableBudgetLines."Avay Code" := AvaylableBudget."Avay Code";
                            AvaylableBudgetLines."Unit Cost" := PostedAvayBudgetLines."Unit Cost" * -1;
                            AvaylableBudgetLines."Avay Date" := AvaylableBudget."Avay Date";
                            AvaylableBudgetLines.Amount := PostedAvayBudgetLines.Amount * -1;
                            AvaylableBudgetLines."Amount Including VAT" := PostedAvayBudgetLines."Amount Including VAT" * -1;
                            AvaylableBudgetLines."Cost Amount" := PostedAvayBudgetLines."Cost Amount" * -1;
                            AvaylableBudgetLines.Validate("Dimension Set ID", PostedAvayBudgetLines."Dimension Set ID");
                            DimMgt.UpdateGlobalDimFromDimSetID(PostedAvayBudgetLines."Dimension Set ID", AvaylableBudgetLines."Shortcut Dimension 1 Code", AvaylableBudgetLines."Shortcut Dimension 2 Code");
                            AvaylableBudgetLines.Insert();
                            LineNo += 10000;
                        END;
                    UNTIL PostedAvayBudgetLines.NEXT = 0;
            UNTIL PostedAvaylableBudget.NEXT = 0;
        END;

        PurchInvLine.RESET;
        PurchInvLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchInvLine.SETRANGE("Contract Year", CloseYear);
        IF PurchInvLine.FINDSET THEN
            REPEAT
                AvaylableBudgetLines.RESET;
                AvaylableBudgetLines.SETRANGE("Quote No.", PurchInvLine."Quote No.");
                AvaylableBudgetLines.SETRANGE("Quote Line No.", PurchInvLine."Quote Line No.");
                IF AvaylableBudgetLines.FINDFIRST THEN BEGIN
                    AvaylableBudgetLines.Amount -= PurchInvLine.Amount * -1;
                    AvaylableBudgetLines."Amount Including VAT" -= PurchInvLine."Amount Including VAT" * -1;
                    AvaylableBudgetLines."Cost Amount" -= PurchInvLine."Cost Amount" * -1;
                    AvaylableBudgetLines.MODIFY;
                END;
            UNTIL PurchInvLine.NEXT = 0;

        AvaylableBudget.RESET;
        AvaylableBudget.SETRANGE("Consultation Code", ConsultationCode);
        IF AvaylableBudget.FINDSET THEN
            REPEAT
                ReversedAvayBudget.INIT;
                ReversedAvayBudget.TRANSFERFIELDS(AvaylableBudget);
                ReversedAvayBudget."Avay Code Original" := AvaylableBudget."Avay Code";
                ReversedAvayBudget."Avay Code" := NoSeriesMgt.GetNextNo(BudgetConfig."Posted Avaylable Budget Nos.", DMY2DATE(31, 12, CloseYear), TRUE);
                ReversedAvayBudget.Status := ReversedAvayBudget.Status::Canceled;
                ReversedAvayBudget."Approved Date" := WorkDate();
                ReversedAvayBudget."Approved By" := UserId;
                ReversedAvayBudget.Insert(true);
                ReversedAvayBudget.COPYLINKS(AvaylableBudget);

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Document No.", ReversedAvayBudget."Avay Code");
                GenJournalLine.DELETEALL;
                GenJournalBatch.RESET;
                GenJournalBatch.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalBatch.SETRANGE(Name, BudgetConfig."PAQ Batch Diary");
                IF GenJournalBatch.FINDFIRST THEN
                    IF (GenJournalBatch."No. Series" <> '') OR (GenJournalBatch."Posting No. Series" <> '') THEN
                        ERROR(STRSUBSTNO(Text001, GenJournalBatch."Journal Template Name", GenJournalBatch.Name));

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalLine.SETRANGE("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                IF GenJournalLine.FINDLAST THEN
                    LineNo := GenJournalLine."Line No." + 10000
                ELSE
                    LineNo := 10000;
                AvaylableBudgetLines.RESET;
                AvaylableBudgetLines.SETRANGE("Avay Code", AvaylableBudget."Avay Code");
                IF AvaylableBudgetLines.FINDSET THEN
                    REPEAT
                        ReversedAvayBudgetLines.INIT;
                        ReversedAvayBudgetLines.TRANSFERFIELDS(AvaylableBudgetLines);
                        ReversedAvayBudgetLines."Avay Code" := ReversedAvayBudget."Avay Code";
                        ReversedAvayBudgetLines.Status := ReversedAvayBudget.Status;
                        ReversedAvayBudgetLines."Avay Date" := ReversedAvayBudget."Avay Date";
                        ReversedAvayBudgetLines.VALIDATE("Dimension Set ID", AvaylableBudgetLines."Dimension Set ID");
                        DimMgt.UpdateGlobalDimFromDimSetID(ReversedAvayBudgetLines."Dimension Set ID", ReversedAvayBudgetLines."Shortcut Dimension 1 Code", ReversedAvayBudgetLines."Shortcut Dimension 2 Code");
                        ReversedAvayBudgetLines.INSERT;

                        Consultation.GET(ReversedAvayBudgetLines."Consultation Code");
                        IF Consultation.IsContract THEN BEGIN
                            IF QuoteLines.GET(QuoteLines."Document Type"::Quote, ReversedAvayBudgetLines."Quote No.", ReversedAvayBudgetLines."Quote Line No.") THEN BEGIN
                                QuoteLines."Amount Avaylabled" -= (ReversedAvayBudgetLines.GetAvayLineAmount() * -1);
                                QuoteLines.MODIFY;
                            END;
                        END;
                        Class0Setup.RESET;
                        Class0Setup.SETRANGE("Regist type", BudgetConfig."Avaylable Budget Decrease");
                        IF Class0Setup.FINDSET THEN
                            REPEAT
                                GenJournalLine.INIT;
                                GenJournalLine."Line No." := LineNo;
                                GenJournalLine.VALIDATE(ClosedByCloseYear, TRUE);
                                GenJournalLine.VALIDATE(YearClosed, CloseYear);
                                GenJournalLine.VALIDATE("Journal Template Name", BudgetConfig."Avaylable Budget Diary");
                                GenJournalLine.VALIDATE("Journal Batch Name", BudgetConfig."Avaylable Budget Batch");
                                GenJournalLine.VALIDATE("Posting Date", ReversedAvayBudget."Avay Date");
                                GenJournalLine.VALIDATE("Account Type", GenJournalLine."Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Account No.", Class0Setup."Debt count");
                                GenJournalLine.VALIDATE("Document Type", GenJournalLine."Document Type"::" ");
                                GenJournalLine.VALIDATE("Document No.", ReversedAvayBudget."Avay Code");
                                GenJournalLine.VALIDATE("Budget Appropriation Method", ReversedAvayBudget."Budget Appropriation Method");
                                GenJournalLine.VALIDATE(Amount, ABS(ReversedAvayBudgetLines.GetAvayLineAmount()));
                                GenJournalLine.VALIDATE("Bal. Account Type", GenJournalLine."Bal. Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Bal. Account No.", Class0Setup."Credit count");
                                GenJournalLine.VALIDATE("System-Created Entry", TRUE);
                                GenJournalLine."Source Code" := ReversedAvayBudget."Source Code";
                                GenJournalLine.VALIDATE("Dimension Set ID", ReversedAvayBudgetLines."Dimension Set ID");
                                DimMgt.UpdateGlobalDimFromDimSetID(GenJournalLine."Dimension Set ID", GenJournalLine."Shortcut Dimension 1 Code", GenJournalLine."Shortcut Dimension 2 Code");
                                GenJournalLine.VALIDATE(Description, CloseYearGenLine);
                                GenJournalLine.INSERT(TRUE);
                                GenJnlPostLine.RunWithCheck(GenJournalLine);
                                GenJournalLine.Delete();
                                LineNo += 10000;
                            UNTIL Class0Setup.NEXT = 0;
                    UNTIL AvaylableBudgetLines.NEXT = 0;
                ApprovalMgt.CopyApprovalEntry(DATABASE::"Avaylable Budget", "Approval Entry Document Type"::"Avaylable Budget", AvaylableBudget."Avay Code", Database::"Posted Avaylable Budget", ReversedAvayBudget."Avay Code");
                AvaylableBudget.DELETE(TRUE);
            UNTIL AvaylableBudget.NEXT = 0;
    end;

    local procedure CloseCtrRequisitions(ConsultationCode: Code[20]; CloseYear: Integer)
    var
        Requisition: Record Requisition;
        TempRequisition: Record Requisition temporary;
        RequisitionLines: Record "Requisition Lines";
        RequisitionLines2: Record "Requisition Lines";
    begin
        CLEAR(TempRequisition);

        RequisitionLines.RESET;
        RequisitionLines.SETRANGE("Consultation Code", ConsultationCode);
        RequisitionLines.SETFILTER(Status, '%1..%2|%3', RequisitionLines.Status::Open, RequisitionLines.Status::Rejected, RequisitionLines.Status::Reopened);
        RequisitionLines.SETRANGE("Contract Year", CloseYear);
        IF RequisitionLines.FINDSET THEN
            REPEAT
                Requisition.GET(RequisitionLines."Requisition Code");
                IF Requisition.IsContract THEN BEGIN
                    RequisitionLines2.RESET;
                    RequisitionLines2.SETRANGE("Consultation Code", ConsultationCode);
                    RequisitionLines2.SETFILTER(Status, '%1..%2|%3', RequisitionLines2.Status::Open, RequisitionLines2.Status::Rejected, RequisitionLines2.Status::Reopened);
                    RequisitionLines2.SETFILTER("Contract Year", '>%1', CloseYear);
                    IF NOT RequisitionLines2.FINDFIRST THEN BEGIN
                        TempRequisition.INIT;
                        TempRequisition."Requisition Code" := RequisitionLines."Requisition Code";
                        IF TempRequisition.INSERT THEN;
                    END;
                END;
            UNTIL RequisitionLines.NEXT = 0;

        TempRequisition.RESET;
        IF TempRequisition.FINDSET THEN
            REPEAT
                Requisition.GET(TempRequisition."Requisition Code");
                Requisition.VALIDATE(Status, Requisition.Status::Closed);
                Requisition.ClosedByYear := CloseYear;
                Requisition.MODIFY;
            UNTIL TempRequisition.NEXT = 0;
    end;

    local procedure CancelCtrRequisitions(ConsultationCode: Code[20]; CloseYear: Integer)
    var
        Requisition: Record Requisition;
        TempRequisition: Record Requisition temporary;
        RequisitionLines: Record "Requisition Lines";
        RequisitionLines2: Record "Requisition Lines";
    begin
        CLEAR(TempRequisition);

        RequisitionLines.RESET;
        RequisitionLines.SETRANGE("Consultation Code", ConsultationCode);
        RequisitionLines.SETFILTER(Status, '%1..%2|%3', RequisitionLines.Status::Open, RequisitionLines.Status::Rejected, RequisitionLines.Status::Reopened);
        RequisitionLines.SETRANGE("Contract Year", CloseYear);
        IF RequisitionLines.FINDSET THEN
            REPEAT
                Requisition.GET(RequisitionLines."Requisition Code");
                IF Requisition.IsContract THEN BEGIN
                    RequisitionLines2.RESET;
                    RequisitionLines2.SETRANGE("Consultation Code", ConsultationCode);
                    RequisitionLines2.SETFILTER(Status, '%1..%2|%3', RequisitionLines2.Status::Open, RequisitionLines2.Status::Rejected, RequisitionLines2.Status::Reopened);
                    RequisitionLines2.SETFILTER("Contract Year", '>%1', CloseYear);
                    IF NOT RequisitionLines2.FINDFIRST THEN BEGIN
                        TempRequisition.INIT;
                        TempRequisition."Requisition Code" := RequisitionLines."Requisition Code";
                        IF TempRequisition.INSERT THEN;
                    END;
                END;
            UNTIL RequisitionLines.NEXT = 0;

        TempRequisition.RESET;
        IF TempRequisition.FINDSET THEN
            REPEAT
                Requisition.GET(TempRequisition."Requisition Code");
                Requisition.VALIDATE(Status, Requisition.Status::Canceled);
                Requisition.ClosedByYear := CloseYear;
                Requisition.MODIFY;
            UNTIL TempRequisition.NEXT = 0;
    end;

    local procedure AdjustCtrPAQs(ConsultationCode: Code[20]; CloseYear: Integer)
    var
        Consultation: Record Consultation;
        BudgetConfig: Record "Budget Configuration";
        PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.";
        PurchCrMemoLine: Record "Purch. Cr. Memo Line";
        PAQ: Record PAQ;
        PAQLines: Record "PAQ Lines";
        ReversedPAQ: Record "Posted PAQ";
        ReversedPAQLines: Record "Posted PAQ Lines";
        QuoteLines: Record "Purchase Line";
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalBatch: Record "Gen. Journal Batch";
        Class0Setup: Record "Class 0 Setup";
        ApprovalMgt: Codeunit "Approval Management";
        LineNo: Integer;
    begin
        CLEAR(LineNo);
        LineNo := 10000;

        BudgetConfig.GET;
        BudgetConfig.TESTFIELD("Budget Appropriation Method");
        BudgetConfig.TESTFIELD("Posted PAQ Nos.");
        BudgetConfig.TESTFIELD("PAQ Nos.");
        BudgetConfig.TESTFIELD("PAQ Decrease");
        BudgetConfig.TESTFIELD("PAQ Template Diary");
        BudgetConfig.TESTFIELD("PAQ Batch Diary");

        PurchCrMemoLine.RESET;
        PurchCrMemoLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchCrMemoLine.SETRANGE("Contract Year", CloseYear);
        IF PurchCrMemoLine.FINDSET THEN BEGIN
            PurchCrMemoHdr.GET(PurchCrMemoLine."Document No.");
            Clear(PAQ);
            PAQ.Init();
            PAQ.Validate("Consultation Code", ConsultationCode);
            PAQ.Validate(Type, "PAQ Type"::Decrease);
            PAQ."PAQ Date" := DMY2DATE(31, 12, CloseYear);
            PAQ.Reversed := TRUE;
            PAQ."Vendor No." := PurchCrMemoLine."Buy-from Vendor No.";
            PAQ.ClosedByYear := CloseYear;
            PAQ."PAQ Description" := STRSUBSTNO(CloseYearDesc, CloseYear);
            PAQ.Insert(true);

            REPEAT
                PAQLines.RESET;
                PAQLines.SETRANGE("Quote No.", PurchCrMemoLine."Quote No.");
                PAQLines.SETRANGE("Quote Line No.", PurchCrMemoLine."Quote Line No.");
                IF PAQLines.FINDFIRST THEN BEGIN
                    PAQLines.Amount += PurchCrMemoLine.Amount * -1;
                    PAQLines."Amount Including VAT" += PurchCrMemoLine."Amount Including VAT" * -1;
                    PAQLines."Cost Amount" += PurchCrMemoLine."Cost Amount" * -1;
                    PAQLines.MODIFY;
                END ELSE BEGIN
                    PAQLines.Init;
                    PAQLines.Validate("PAQ Code", PAQ."PAQ Code");
                    PAQLines.Validate("Line No.", LineNo);
                    PAQLines.Validate("Requisition Code", PurchCrMemoLine."Requisition Code");
                    PAQLines.Validate("Requisition Line", PurchCrMemoLine."Requisition Line");
                    PAQLines.Validate("Line Type", PurchCrMemoLine.Type.AsInteger());
                    PAQLines.Validate("No.", PurchCrMemoLine."No.");
                    PAQLines.Validate(Description, PurchCrMemoLine.Description);
                    PAQLines.Validate("Location Code", PurchCrMemoLine."Location Code");
                    PAQLines.Validate("Consultation Code", PurchCrMemoLine."Consultation Code");
                    PAQLines.Validate("Currency Code", PurchCrMemoHdr."Currency Code");
                    PAQLines."Quote No." := PurchCrMemoLine."Quote No.";
                    PAQLines."Quote Line No." := PurchCrMemoLine."Quote Line No.";
                    PAQLines.Validate(Quantity, PurchCrMemoLine.Quantity);
                    PAQLines.Validate("VAT %", PurchCrMemoLine."VAT %");
                    PAQLines.Validate("ND %", PurchCrMemoLine."PTSS ND %");
                    PAQLines.Validate("Unit Cost", PurchCrMemoLine."Direct Unit Cost");
                    PAQLines.Validate("Amount", PurchCrMemoLine.Amount);
                    PAQLines.Validate("Amount Including Vat", PurchCrMemoLine."Amount Including VAT");
                    PAQLines.Validate("Cost Amount", PurchCrMemoLine."Cost Amount");
                    PAQLines.VALIDATE("Dimension Set ID", PurchCrMemoLine."Dimension Set ID");
                    DimMgt.UpdateGlobalDimFromDimSetID(PAQLines."Dimension Set ID", PAQLines."Shortcut Dimension 1 Code", PAQLines."Shortcut Dimension 2 Code");
                    PAQLines.INSERT(TRUE);
                    LineNo += 10000;
                END;
            UNTIL PurchCrMemoLine.NEXT = 0;
        END;

        PAQ.RESET;
        PAQ.SETRANGE("Consultation Code", ConsultationCode);
        IF PAQ.FINDSET THEN
            REPEAT
                ReversedPAQ.INIT;
                ReversedPAQ.TRANSFERFIELDS(PAQ);
                ReversedPAQ."PAQ Code Original" := PAQ."PAQ Code";
                ReversedPAQ."PAQ Code" := NoSeriesMgt.GetNextNo(BudgetConfig."Posted PAQ Nos.", DMY2DATE(31, 12, CloseYear), TRUE);
                ReversedPAQ.Status := ReversedPAQ.Status::Canceled;
                ReversedPAQ."Approved By" := USERID;
                ReversedPAQ."Approved Date" := DMY2DATE(31, 12, CloseYear);
                ReversedPAQ."No. Series" := BudgetConfig."Posted PAQ Nos.";
                ReversedPAQ.INSERT(true);

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Document No.", ReversedPAQ."PAQ Code");
                GenJournalLine.DELETEALL;
                GenJournalBatch.RESET;
                GenJournalBatch.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalBatch.SETRANGE(Name, BudgetConfig."PAQ Batch Diary");
                IF GenJournalBatch.FINDFIRST THEN
                    IF (GenJournalBatch."No. Series" <> '') OR (GenJournalBatch."Posting No. Series" <> '') THEN
                        ERROR(STRSUBSTNO(Text001, GenJournalBatch."Journal Template Name", GenJournalBatch.Name));

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalLine.SETRANGE("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                IF GenJournalLine.FINDLAST THEN
                    LineNo := GenJournalLine."Line No." + 10000
                ELSE
                    LineNo := 10000;
                PAQLines.RESET;
                PAQLines.SETRANGE("PAQ Code", PAQ."PAQ Code");
                IF PAQLines.FINDSET THEN
                    REPEAT
                        ReversedPAQLines.INIT;
                        ReversedPAQLines.TRANSFERFIELDS(PAQLines);
                        ReversedPAQLines."PAQ Code" := ReversedPAQ."PAQ Code";
                        ReversedPAQLines.Status := ReversedPAQ.Status;
                        ReversedPAQLines."PAQ Date" := ReversedPAQ."PAQ Date";
                        ReversedPAQLines.VALIDATE("Dimension Set ID", PAQLines."Dimension Set ID");
                        ReversedPAQLines.INSERT;

                        Consultation.GET(ReversedPAQLines."Consultation Code");
                        IF Consultation.IsContract THEN BEGIN
                            IF QuoteLines.GET(QuoteLines."Document Type"::Quote, ReversedPAQLines."Quote No.", ReversedPAQLines."Quote Line No.") THEN BEGIN
                                QuoteLines."Amount Adjudicated" -= (ReversedPAQLines.GetPAQLineAmount() * -1);
                                QuoteLines.MODIFY;
                            END;
                        END;
                        Class0Setup.RESET;
                        Class0Setup.SETRANGE("Regist type", BudgetConfig."PAQ Decrease");
                        IF Class0Setup.FINDSET THEN
                            REPEAT
                                GenJournalLine.INIT;
                                GenJournalLine."Line No." := LineNo;
                                GenJournalLine.VALIDATE(ClosedByCloseYear, TRUE);
                                GenJournalLine.VALIDATE(YearClosed, CloseYear);
                                GenJournalLine.VALIDATE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                                GenJournalLine.VALIDATE("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                                GenJournalLine.VALIDATE("Posting Date", ReversedPAQ."PAQ Date");
                                GenJournalLine.VALIDATE("Account Type", GenJournalLine."Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Account No.", Class0Setup."Debt count");
                                GenJournalLine.VALIDATE("Document Type", GenJournalLine."Document Type"::" ");
                                GenJournalLine.VALIDATE("Document No.", ReversedPAQ."PAQ Code");
                                GenJournalLine.VALIDATE("Budget Appropriation Method", ReversedPAQ."Budget Appropriation Method");
                                GenJournalLine.VALIDATE(Amount, ABS(PAQLines.GetPAQLineAmount));
                                GenJournalLine.VALIDATE("Bal. Account Type", GenJournalLine."Bal. Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Bal. Account No.", Class0Setup."Credit count");
                                GenJournalLine.VALIDATE("System-Created Entry", TRUE);
                                GenJournalLine.Validate("Source Code", ReversedPAQ."Source Code");
                                GenJournalLine.VALIDATE("Dimension Set ID", ReversedPAQLines."Dimension Set ID");
                                DimMgt.UpdateGlobalDimFromDimSetID(GenJournalLine."Dimension Set ID", GenJournalLine."Shortcut Dimension 1 Code", GenJournalLine."Shortcut Dimension 2 Code");
                                GenJournalLine.VALIDATE(Description, CloseYearGenLine);
                                GenJournalLine.INSERT(TRUE);
                                GenJnlPostLine.RunWithCheck(GenJournalLine);
                                GenJournalLine.Delete();
                                LineNo += 10000;
                            UNTIL Class0Setup.NEXT = 0;
                    UNTIL PAQLines.NEXT = 0;
                ApprovalMgt.CopyApprovalEntry(DATABASE::PAQ, "Approval Entry Document Type"::Adjudication, PAQ."PAQ Code", Database::"Posted PAQ", ReversedPAQ."PAQ Code");
                PAQ.DELETE(TRUE);
            UNTIL PAQ.NEXT = 0;
    end;

    local procedure AdjustCtrAvays(ConsultationCode: Code[20]; CloseYear: Integer)
    var
        Consultation: Record Consultation;
        BudgetConfig: Record "Budget Configuration";
        SourceCodeSetup: Record "Source Code Setup";
        PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.";
        PurchCrMemoLine: Record "Purch. Cr. Memo Line";
        AvaylableBudget: Record "Avaylable Budget";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        ReversedAvayBudget: Record "Posted Avaylable Budget";
        ReversedAvayBudgetLines: Record "Posted Avaylable Budget Line";
        QuoteLines: Record "Purchase Line";
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalBatch: Record "Gen. Journal Batch";
        Class0Setup: Record "Class 0 Setup";
        ApprovalMgt: Codeunit "Approval Management";
        LineNo: Integer;
        ApprovalEntry: Record "Aproval Entry";
    begin
        CLEAR(LineNo);
        LineNo := 10000;

        BudgetConfig.GET;
        BudgetConfig.TESTFIELD("Avaylable Budget Nos.");
        BudgetConfig.TESTFIELD("Budget Appropriation Method");
        BudgetConfig.TESTFIELD("Posted Avaylable Budget Nos.");
        BudgetConfig.TESTFIELD("Avaylable Budget Diary");
        BudgetConfig.TESTFIELD("Avaylable Budget Batch");
        BudgetConfig.TESTFIELD("Avaylable Budget Decrease");
        SourceCodeSetup.GET;
        SourceCodeSetup.TESTFIELD("Avaylabel Budget");

        PurchCrMemoLine.RESET;
        PurchCrMemoLine.SETRANGE("Consultation Code", ConsultationCode);
        PurchCrMemoLine.SETRANGE("Contract Year", CloseYear);
        IF PurchCrMemoLine.FINDSET THEN BEGIN
            PurchCrMemoHdr.GET(PurchCrMemoLine."Document No.");
            AvaylableBudget.Init();
            AvaylableBudget."Avay Date" := DMY2DATE(31, 12, CloseYear);
            AvaylableBudget.Insert(true);
            AvaylableBudget.Validate(Type, "Avaylable Budget Type"::Decrease);
            AvaylableBudget.Validate("Consultation Code", ConsultationCode);
            AvaylableBudget.Status := AvaylableBudget.Status::Canceled;
            AvaylableBudget.Reversed := TRUE;
            AvaylableBudget."Requisition Description" := CloseYearHeader;
            AvaylableBudget.ClosedByYear := CloseYear;
            AvaylableBudget."Vendor No." := PurchCrMemoLine."Buy-from Vendor No.";
            AvaylableBudget.INSERT(TRUE);
            REPEAT
                AvaylableBudgetLines.RESET;
                AvaylableBudgetLines.SETRANGE("Quote No.", PurchCrMemoLine."Quote No.");
                AvaylableBudgetLines.SETRANGE("Quote Line No.", PurchCrMemoLine."Quote Line No.");
                IF AvaylableBudgetLines.FINDFIRST THEN BEGIN
                    AvaylableBudgetLines.Amount += PurchCrMemoLine.Amount * -1;
                    AvaylableBudgetLines."Amount Including VAT" += PurchCrMemoLine."Amount Including VAT" * -1;
                    AvaylableBudgetLines."Cost Amount" += PurchCrMemoLine."Cost Amount" * -1;
                    AvaylableBudgetLines.MODIFY;
                END ELSE BEGIN
                    AvaylableBudgetLines.Init;
                    AvaylableBudgetLines.Validate("Avay Code", AvaylableBudget."Avay Code");
                    AvaylableBudgetLines.Validate("Line No.", LineNo);
                    AvaylableBudgetLines.Validate("Requisition Code", PurchCrMemoLine."Requisition Code");
                    AvaylableBudgetLines.Validate("Requisition Line", PurchCrMemoLine."Requisition Line");
                    AvaylableBudgetLines.Validate("Line Type", PurchCrMemoLine.Type.AsInteger());
                    AvaylableBudgetLines.Validate("No.", PurchCrMemoLine."No.");
                    AvaylableBudgetLines.Validate(Description, PurchCrMemoLine.Description);
                    AvaylableBudgetLines.Validate("Location Code", PurchCrMemoLine."Location Code");
                    AvaylableBudgetLines.Validate("Consultation Code", PurchCrMemoLine."Consultation Code");
                    AvaylableBudgetLines.Validate("Currency Code", PurchCrMemoHdr."Currency Code");
                    AvaylableBudgetLines."Quote No." := PurchCrMemoLine."Quote No.";
                    AvaylableBudgetLines."Quote Line No." := PurchCrMemoLine."Quote Line No.";
                    AvaylableBudgetLines.Validate(Quantity, PurchCrMemoLine.Quantity);
                    AvaylableBudgetLines.Validate("VAT %", PurchCrMemoLine."VAT %");
                    AvaylableBudgetLines.Validate("ND %", PurchCrMemoLine."PTSS ND %");
                    AvaylableBudgetLines.Validate("Unit Cost", PurchCrMemoLine."Direct Unit Cost");
                    AvaylableBudgetLines.Validate("Amount", PurchCrMemoLine.Amount);
                    AvaylableBudgetLines.Validate("Amount Including Vat", PurchCrMemoLine."Amount Including VAT");
                    AvaylableBudgetLines.Validate("Cost Amount", PurchCrMemoLine."Cost Amount");
                    AvaylableBudgetLines.Validate("Avay Date", AvaylableBudget."Avay Date");
                    AvaylableBudgetLines.validate("Dimension Set ID", PurchCrMemoLine."Dimension Set ID");
                    DimMgt.UpdateGlobalDimFromDimSetID(AvaylableBudgetLines."Dimension Set ID", AvaylableBudgetLines."Shortcut Dimension 1 Code", AvaylableBudgetLines."Shortcut Dimension 2 Code");
                    AvaylableBudgetLines.INSERT(TRUE);
                    LineNo += 10000;
                END;
            UNTIL PurchCrMemoLine.NEXT = 0;
        END;

        AvaylableBudget.RESET;
        AvaylableBudget.SETRANGE("Consultation Code", ConsultationCode);
        IF AvaylableBudget.FINDSET THEN
            REPEAT
                ReversedAvayBudget.INIT;
                ReversedAvayBudget.TRANSFERFIELDS(AvaylableBudget);
                ReversedAvayBudget."Avay Code Original" := AvaylableBudget."Avay Code";
                ReversedAvayBudget."Avay Code" := NoSeriesMgt.GetNextNo(BudgetConfig."Posted Avaylable Budget Nos.", DMY2DATE(31, 12, CloseYear), TRUE);
                ReversedAvayBudget.Status := ReversedAvayBudget.Status::Canceled;
                ReversedAvayBudget."Approved Date" := WorkDate();
                ReversedAvayBudget."Approved By" := UserId;
                ReversedAvayBudget.Insert(true);
                ReversedAvayBudget.COPYLINKS(AvaylableBudget);

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Document No.", ReversedAvayBudget."Avay Code");
                GenJournalLine.DELETEALL;
                GenJournalBatch.RESET;
                GenJournalBatch.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalBatch.SETRANGE(Name, BudgetConfig."PAQ Batch Diary");
                IF GenJournalBatch.FINDFIRST THEN
                    IF (GenJournalBatch."No. Series" <> '') OR (GenJournalBatch."Posting No. Series" <> '') THEN
                        ERROR(STRSUBSTNO(Text001, GenJournalBatch."Journal Template Name", GenJournalBatch.Name));

                GenJournalLine.RESET;
                GenJournalLine.SETRANGE("Journal Template Name", BudgetConfig."PAQ Template Diary");
                GenJournalLine.SETRANGE("Journal Batch Name", BudgetConfig."PAQ Batch Diary");
                IF GenJournalLine.FINDLAST THEN
                    LineNo := GenJournalLine."Line No." + 10000
                ELSE
                    LineNo := 10000;

                AvaylableBudgetLines.RESET;
                AvaylableBudgetLines.SETRANGE("Avay Code", AvaylableBudget."Avay Code");
                IF AvaylableBudgetLines.FINDSET THEN
                    REPEAT
                        ReversedAvayBudgetLines.INIT;
                        ReversedAvayBudgetLines.TRANSFERFIELDS(AvaylableBudgetLines);
                        ReversedAvayBudgetLines."Avay Code" := ReversedAvayBudget."Avay Code";
                        ReversedAvayBudgetLines.Status := ReversedAvayBudget.Status;
                        ReversedAvayBudgetLines."Avay Date" := ReversedAvayBudget."Avay Date";
                        ReversedAvayBudgetLines.VALIDATE("Dimension Set ID", AvaylableBudgetLines."Dimension Set ID");
                        DimMgt.UpdateGlobalDimFromDimSetID(ReversedAvayBudgetLines."Dimension Set ID", ReversedAvayBudgetLines."Shortcut Dimension 1 Code", ReversedAvayBudgetLines."Shortcut Dimension 2 Code");
                        ReversedAvayBudgetLines.INSERT;

                        Consultation.GET(ReversedAvayBudgetLines."Consultation Code");
                        IF Consultation.IsContract THEN BEGIN
                            IF QuoteLines.GET(QuoteLines."Document Type"::Quote, ReversedAvayBudgetLines."Quote No.", ReversedAvayBudgetLines."Quote Line No.") THEN BEGIN
                                QuoteLines."Amount Avaylabled" -= (ReversedAvayBudgetLines.GetAvayLineAmount() * -1);
                                QuoteLines.MODIFY;
                            END;
                        END;
                        Class0Setup.RESET;
                        Class0Setup.SETRANGE("Regist type", BudgetConfig."Avaylable Budget Decrease");
                        IF Class0Setup.FINDSET THEN
                            REPEAT
                                GenJournalLine.INIT;
                                GenJournalLine."Line No." := LineNo;
                                GenJournalLine.VALIDATE(ClosedByCloseYear, TRUE);
                                GenJournalLine.VALIDATE(YearClosed, CloseYear);
                                GenJournalLine.VALIDATE("Journal Template Name", BudgetConfig."Avaylable Budget Diary");
                                GenJournalLine.VALIDATE("Journal Batch Name", BudgetConfig."Avaylable Budget Batch");
                                GenJournalLine.VALIDATE("Posting Date", ReversedAvayBudget."Avay Date");
                                GenJournalLine.VALIDATE("Account Type", GenJournalLine."Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Account No.", Class0Setup."Debt count");
                                GenJournalLine.VALIDATE("Document Type", GenJournalLine."Document Type"::" ");
                                GenJournalLine.VALIDATE("Document No.", ReversedAvayBudget."Avay Code");
                                GenJournalLine.VALIDATE("Budget Appropriation Method", ReversedAvayBudget."Budget Appropriation Method");
                                GenJournalLine.VALIDATE(Amount, ABS(ReversedAvayBudgetLines.GetAvayLineAmount()));
                                GenJournalLine.VALIDATE("Bal. Account Type", GenJournalLine."Bal. Account Type"::"G/L Account");
                                GenJournalLine.VALIDATE("Bal. Account No.", Class0Setup."Credit count");
                                GenJournalLine.VALIDATE("System-Created Entry", TRUE);
                                GenJournalLine."Source Code" := ReversedAvayBudget."Source Code";
                                GenJournalLine.VALIDATE("Dimension Set ID", ReversedAvayBudgetLines."Dimension Set ID");
                                DimMgt.UpdateGlobalDimFromDimSetID(GenJournalLine."Dimension Set ID", GenJournalLine."Shortcut Dimension 1 Code", GenJournalLine."Shortcut Dimension 2 Code");
                                GenJournalLine.VALIDATE(Description, CloseYearGenLine);
                                GenJournalLine.INSERT(TRUE);
                                GenJnlPostLine.RunWithCheck(GenJournalLine);
                                GenJournalLine.Delete();
                                LineNo += 10000;
                            UNTIL Class0Setup.NEXT = 0;
                    UNTIL AvaylableBudgetLines.NEXT = 0;
                ApprovalMgt.CopyApprovalEntry(DATABASE::"Avaylable Budget", "Approval Entry Document Type"::"Avaylable Budget", AvaylableBudget."Avay Code", Database::"Posted Avaylable Budget", ReversedAvayBudget."Avay Code");
                AvaylableBudget.DELETE(TRUE);
            UNTIL AvaylableBudget.NEXT = 0;
    end;
}

