Codeunit 57012 "GL Posting Events"
{
    [EventSubscriber(ObjectType::Table, Database::"Payment Export Data", 'OnAfterSetVendorAsRecipient', '', false, false)]
    local procedure SEPAOnAfterSetVendorAsRecipient(var PaymentExportData: Record "Payment Export Data"; var Vendor: Record Vendor; var VendorBankAccount: Record "Vendor Bank Account");
    begin
        PaymentExportData."Recipient VAT" := Vendor."VAT Registration No.";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"SEPA CT-Prepare Source", 'OnCopyJnlLinesOnBeforeTempGenJnlLineInsert', '', false, false)]
    local procedure SEPAOnCopyJnlLinesOnBeforeTempGenJnlLineInsert(var FromGenJournalLine: Record "Gen. Journal Line"; var TempGenJournalLine: Record "Gen. Journal Line" temporary; GenJournalBatch: Record "Gen. Journal Batch")
    begin
        if FromGenJournalLine."External Document No." <> '' then
            TempGenJournalLine.Description := FromGenJournalLine."External Document No.";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"SEPA CT-Fill Export Buffer", 'OnFillExportBufferOnBeforeInsertPaymentExportData', '', false, false)]
    local procedure SEPAOnFillExportBufferOnBeforeInsertPaymentExportData(var PaymentExportData: Record "Payment Export Data"; var TempGenJnlLine: Record "Gen. Journal Line" temporary)
    begin
        PaymentExportData."SEPA Category" := TempGenJnlLine."SEPA Category";
        PaymentExportData."End-to-End ID" := TempGenJnlLine."Document No.";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"SEPA CT-Fill Export Buffer", 'OnAfterCreateNewCreditTransferEntry', '', false, false)]
    local procedure SEPAOnAfterCreateNewCreditTransferEntry(var PaymentExportData: Record "Payment Export Data"; var CreditTransferEntry: Record "Credit Transfer Entry"; var TempGenJnlLine: Record "Gen. Journal Line" temporary)
    begin
        CreditTransferEntry."Transaction ID" := TempGenJnlLine."Document No.";
        CreditTransferEntry.Modify();
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"SEPA CT-Check Line", 'OnAfterCheckGenJnlLine', '', false, false)]
    local procedure SEPAOnAfterCheckGenJnlLine(var GenJournalLine: Record "Gen. Journal Line")
    var
        GenJnlLine: Record "Gen. Journal Line";
        MustHaveDimensions: Label 'The advance money must have dimensions.';
        MustHaveEqualDate: Label 'You cant export entries with different posting dates.';
        MustHaveConfClass0: Label 'The advance money must have ConfClass 0.';
        MustHaveDotation: Label 'There is no dotation for this advance money.';
        MultipleDocsToApply: Label 'There is more than one line applied to document %1.';
    begin
        if ((GenJournalLine."Account Type" = GenJournalLine."Account Type"::Vendor) and
            ((GenJournalLine."Applies-to Doc. No." = '') and (GenJournalLine."Applies-to ID" = '')) and
            (not GenJournalLine."No Budget")) then begin

            if ValidateSEPAEqualPostingDate(GenJournalLine) THEN
                GenJournalLine.InsertPaymentFileError(MustHaveEqualDate);
            if GenJournalLine.ConfClass0 = '' THEN
                GenJournalLine.InsertPaymentFileError(MustHaveConfClass0);
            if GenJournalLine."Dimension Set ID" = 0 then begin
                GenJournalLine.InsertPaymentFileError(MustHaveDimensions)
            end else
                if ValidatePaymentsDotation(GenJournalLine) then
                    GenJournalLine.InsertPaymentFileError(MustHaveDotation);
        end;
        IF GenJournalLine."Applies-to Doc. No." <> '' THEN BEGIN
            GenJnlLine.RESET;
            GenJnlLine.SETRANGE("Applies-to Doc. No.", GenJournalLine."Applies-to Doc. No.");
            IF GenJnlLine.Count > 1 then
                GenJournalLine.InsertPaymentFileError(STRSUBSTNO(MultipleDocsToApply, GenJournalLine."Applies-to Doc. No."));
        END;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnExportPaymentFileOnBeforeRunExport', '', false, false)]
    local procedure RetentionOnExportPaymentFileOnBeforeRunExport(var GenJournalLine: Record "Gen. Journal Line")
    begin
        GenJournalLine.SetRange("PTSS Withholding Line", false);
    end;

    [EventSubscriber(ObjectType::Codeunit, CodeUnit::"Gen. Jnl.-Check Line", 'OnBeforeCheckDocType', '', false, false)]
    local procedure RetentionOnBeforeCheckDocType(GenJournalLine: Record "Gen. Journal Line"; var IsHandled: Boolean)
    begin
        IsHandled := true;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCleanLine', '', false, false)]
    local procedure GenJnlLineOnAfterCleanLine(var GenJournalLine: Record "Gen. Journal Line"; var xGenJournalLine: Record "Gen. Journal Line")
    begin
        Clear(GenJournalLine."Entity Type");
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterAccountNoOnValidateGetVendorAccount', '', false, false)]
    local procedure GenJnlLineOnAfterAccountNoOnValidateGetVendorAccount(var GenJournalLine: Record "Gen. Journal Line"; var Vendor: Record Vendor; CallingFieldNo: Integer)
    begin
        GenJournalLine."Entity Type" := GenJournalLine."Entity Type"::Normal;
    end;

    [EventSubscriber(ObjectType::Table, Database::"G/L Entry", 'OnAfterCopyGLEntryFromGenJnlLine', '', false, false)]
    local procedure GLEntryOnAfterCopyGLEntryFromGenJnlLine(var GLEntry: Record "G/L Entry"; var GenJournalLine: Record "Gen. Journal Line")
    begin
        GLEntry."Budget Appropriation Method" := GenJournalLine."Budget Appropriation Method";
        GLEntry."Budget Mov Type" := GenJournalLine."Budget Mov Type";
        GLEntry.ClosedByCloseYear := GenJournalLine.ClosedByCloseYear;
        GLEntry.YearClosed := GenJournalLine.YearClosed;
        GLEntry."Rubric Code" := GLEntry.GetRubricCode();
        GLEntry.CodeDot_PCC := GLEntry.GetPCCCode(GLEntry."G/L Account No.");
        GLEntry.CodeDot_UNILEO := GLEntry.GetUNILEOCode(GLEntry."G/L Account No.");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Check Line", 'OnBeforeCheckPostingDateInFiscalYear', '', false, false)]
    local procedure CheckLineOnBeforeCheckPostingDateInFiscalYear(GenJournalLine: Record "Gen. Journal Line"; var IsHandled: Boolean)
    var
        AccountingPeriod: Record "Accounting Period";
    begin
        if AccountingPeriod.IsEmpty() then
            exit;
        AccountingPeriod.Get(NormalDate(GenJournalLine."Posting Date") + 1);
        AccountingPeriod.TestField("New Fiscal Year", true);
        If not GenJournalLine."Budget Closing Entry" then
            AccountingPeriod.TestField("Date Locked", true);

        IsHandled := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Check Line", 'OnAfterCheckGenJnlLine', '', false, false)]
    local procedure CheckLineOnAfterCheckGenJnlLine(var GenJournalLine: Record "Gen. Journal Line"; var ErrorMessageMgt: Codeunit "Error Message Management")
    begin
        ValidateConfClass(GenJournalLine);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Batch", 'OnAfterCheckDocumentNo', '', false, false)]
    local procedure PostBatchOnAfterCheckDocumentNo(var GenJournalLine: Record "Gen. Journal Line"; LastDocNo: code[20]; LastPostedDocNo: code[20])
    begin
        If LastDocNo <> LastPostedDocNo then
            GenJournalLine."Old Document No." := LastDocNo
        else
            GenJournalLine."Old Document No." := GenJournalLine."Document No.";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Batch", 'OnBeforeProcessBalanceOfLines', '', false, false)]
    local procedure PostBatchOnBeforeProcessBalanceOfLines(var GenJournalLine: Record "Gen. Journal Line"; var GenJournalBatch: Record "Gen. Journal Batch"; var GenJournalTemplate: Record "Gen. Journal Template"; var IsKeySet: Boolean)
    begin
        ValidateEqualPostingDate(GenJournalLine);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Batch", 'OnAfterProcessBalanceOfLines', '', false, false)]
    local procedure PostBatchOnAfterProcessBalanceOfLines(var GenJournalLine: Record "Gen. Journal Line")
    begin
        ValidateBudgetDotation(GenJournalLine);
        InsertBudgetLines(GenJournalLine);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post", 'OnBeforeShowPostResultMessage', '', false, false)]
    local procedure PostJnlOnBeforeShowPostResultMessage(var GenJnlLine: Record "Gen. Journal Line"; TempJnlBatchName: Code[10]; var IsHandled: Boolean)
    var
        GenJnlBatch: Record "Gen. Journal Batch";
    begin
        if GenJnlLine."Line No." = 0 then
            exit;

        GenJnlBatch.Get(GenJnlLine."Journal Template Name", GenJnlLine."Journal Batch Name");
        If not GenJnlBatch."Show Posted Doc No." then
            exit;

        ShowPostedDocuments(GenJnlLine."Line No.");
        IsHandled := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterInitGLRegister', '', false, false)]
    local procedure PostJnlLineOnAfterInitGLRegister(var GLRegister: Record "G/L Register"; var GenJournalLine: Record "Gen. Journal Line")
    begin
        GLRegister."From Document No." := GenJournalLine."Document No.";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnBeforeUpdateGLReg', '', false, false)]
    local procedure PostJnlLineOnBeforeUpdateGLReg(IsTransactionConsistent: Boolean; var IsGLRegInserted: Boolean; var GLReg: Record "G/L Register"; var IsHandled: Boolean; var GenJnlLine: Record "Gen. Journal Line"; GlobalGLEntry: Record "G/L Entry")
    var
        SEPAEntryNo: Integer;
        CreditTransferRegister: Record "Credit Transfer Register";
    begin
        GLReg."To Document No." := GlobalGLEntry."Document No.";
        IF GenJnlLine."Exported to Payment File" THEN begin
            SEPAEntryNo := GetSEPAEntryNo(GenJnlLine);
            CreditTransferRegister.LOCKTABLE;
            IF CreditTransferRegister.GET(SEPAEntryNo) then begin
                CreditTransferRegister."From Entry No." := GLReg."From Entry No.";
                CreditTransferRegister."To Entry No." := GlobalGLEntry."Entry No.";
                CreditTransferRegister.Modify();
            end;
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Batch Posting Print Mgt.", 'OnBeforePrintVendorReceiptReport', '', false, false)]
    local procedure PostBatchPrintOnBeforePrintVendorReceiptReport(GLReg: Record "G/L Register"; GenJnlTemplate: Record "Gen. Journal Template"; GeneralLedgerSetup: Record "General Ledger Setup"; var IsHandled: Boolean)
    var
        VendorPaymentAdviceRep: Report "Vendor - Payment Advice";
    begin
        if GenJnlTemplate."Vendor Receipt Report ID" = Report::"Vendor - Payment Advice" then begin
            Clear(VendorPaymentAdviceRep);
            VendorPaymentAdviceRep.SetVendorFilter(GLReg."From Entry No.", GLReg."To Entry No.");
            VendorPaymentAdviceRep.UseRequestPage(false);
            VendorPaymentAdviceRep.RunModal();
            IsHandled := true;
        end;
    end;

    local procedure GetSEPAEntryNo(GenJournalLine: Record "Gen. Journal Line"): Integer
    var
        CreditTransferEntry: Record "Credit Transfer Entry";
    begin
        CreditTransferEntry.Reset();
        CreditTransferEntry.SETRANGE("Transaction ID", GenJournalLine."Old Document No.");
        CreditTransferEntry.SETRANGE(Canceled, FALSE);
        IF CreditTransferEntry.FINDLAST THEN
            exit(CreditTransferEntry."Credit Transfer Register No.");
    end;

    local procedure ShowPostedDocuments(GLRegNo: Integer)
    var
        GLRegister: Record "G/L Register";
        Text001: Label 'It was posted the document no. %1.';
        Text002: Label 'It were posted the documents from %1 to %2.';
    begin
        GLRegister.GET(GLRegNo);
        IF GLRegister."From Document No." <> GLRegister."To Document No." THEN
            MESSAGE(Text002, GLRegister."From Document No.", GLRegister."To Document No.")
        ELSE
            MESSAGE(Text001, GLRegister."From Document No.");
    end;

    local procedure ValidateEqualPostingDate(var GenJournalLine: Record "Gen. Journal Line")
    var
        GenJournalLine2: Record "Gen. Journal Line";
        PostingDate: Date;
        Text001: Label 'You cant post entries with different posting dates.';
    begin
        GenJournalLine2.Reset();
        GenJournalLine2.CopyFilters(GenJournalLine);
        GenJournalLine2.SetRange("Journal Template Name", GenJournalLine."Journal Template Name");
        GenJournalLine2.SetRange("Journal Batch Name", GenJournalLine."Journal Batch Name");
        GenJournalLine2.SetRange("System-Created Entry", FALSE);
        if GenJournalLine2.FindFirst() then
            PostingDate := GenJournalLine2."Posting Date";

        GenJournalLine2.Reset();
        GenJournalLine2.CopyFilters(GenJournalLine);
        GenJournalLine2.SetRange("Journal Template Name", GenJournalLine."Journal Template Name");
        GenJournalLine2.SetRange("Journal Batch Name", GenJournalLine."Journal Batch Name");
        GenJournalLine2.SetRange("System-Created Entry", false);
        if GenJournalLine2.FindSet() then
            repeat
                if GenJournalLine2."Posting Date" <> PostingDate then
                    Error(Text001);
            until GenJournalLine2.Next() = 0;
    end;

    local procedure ValidateSEPAEqualPostingDate(var GenJournalLine: Record "Gen. Journal Line"): Boolean
    var
        GenJournalLine2: Record "Gen. Journal Line";
        PostingDate: Date;
    begin
        GenJournalLine2.Reset();
        GenJournalLine2.CopyFilters(GenJournalLine);
        GenJournalLine2.SetRange("Journal Template Name", GenJournalLine."Journal Template Name");
        GenJournalLine2.SetRange("Journal Batch Name", GenJournalLine."Journal Batch Name");
        GenJournalLine2.SetRange("System-Created Entry", FALSE);
        if GenJournalLine2.FindFirst() then
            PostingDate := GenJournalLine2."Posting Date";

        GenJournalLine2.Reset();
        GenJournalLine2.CopyFilters(GenJournalLine);
        GenJournalLine2.SetRange("Journal Template Name", GenJournalLine."Journal Template Name");
        GenJournalLine2.SetRange("Journal Batch Name", GenJournalLine."Journal Batch Name");
        GenJournalLine2.SetRange("System-Created Entry", false);
        if GenJournalLine2.FindSet() then
            repeat
                if GenJournalLine2."Posting Date" <> PostingDate then
                    exit(true);
            until GenJournalLine2.Next() = 0;
        exit(false);
    end;

    local procedure ValidateConfClass(GenJournalLine: Record "Gen. Journal Line")
    var
        BudgetConfig: Record "Budget Configuration";
        GenJournalLine2: Record "Gen. Journal Line";
        GLAccount: Record "G/L Account";
        Text001: Label 'Account %1 line %2 need Budget Account';
    begin
        BudgetConfig.GET;
        If not GenJournalLine."No Budget" then begin
            If not GenJournalLine."System-Created Entry" and (GenJournalLine.ConfClass0 = '') then begin
                if GenJournalLine."Account Type" = GenJournalLine."Account Type"::"G/L Account" then
                    If GLAccount.Get(GenJournalLine."Account No.") and GLAccount."Need Budget" then
                        Error(Text001, GLAccount."No.", GenJournalLine."Line No.");
                if GenJournalLine."Bal. Account Type" = GenJournalLine."Bal. Account Type"::"G/L Account" then
                    If GLAccount.Get(GenJournalLine."Bal. Account No.") and GLAccount."Need Budget" then
                        Error(Text001, GLAccount."No.", GenJournalLine."Line No.");
                IF GenJournalLine."Account Type" IN [GenJournalLine."Account Type"::"Bank Account", GenJournalLine."Account Type"::Customer, GenJournalLine."Account Type"::"Fixed Asset", GenJournalLine."Account Type"::Vendor] THEN
                    Error(Text001, GenJournalLine."Account No.", GenJournalLine."Line No.");
            end;
        end;
    END;

    local procedure ValidateBudgetDotation(var GenJournalLine: Record "Gen. Journal Line")
    var
        GLAccountDim: Record "G/L Account Dimensions" temporary;
        GLAccountDim2: Record "G/L Account Dimensions" temporary;
        GenJournalLine2: Record "Gen. Journal Line";
        Class0Setup: Record "Class 0 Setup";
        CduBudget: Codeunit Budget;
        TempPeriodInitDate: Date;
        TempPeriodEndDate: Date;
        DimFilter1: Code[20];
        DimFilter2: Code[20];
        DimFilter3: Code[20];
        DimFilter4: Code[20];
        Dotation: Decimal;
        Text001: Label 'The amount (%1) for dimensions %2, %3, %4, %5 is greater than the avaylable dotation (%6).';
    begin
        Clear(GLAccountDim);

        GLAccountDim.DeleteAll();
        GenJournalLine2.RESET;
        GenJournalLine2.COPYFILTERS(GenJournalLine);
        GenJournalLine2.SETRANGE("Journal Template Name", GenJournalLine."Journal Template Name");
        GenJournalLine2.SETRANGE("Journal Batch Name", GenJournalLine."Journal Batch Name");
        GenJournalLine2.SetRange("System-Created Entry", false);
        GenJournalLine2.SetRange("No Budget", false);
        GenJournalLine2.SETFILTER(ConfClass0, '<>%1', '');
        IF GenJournalLine2.FINDSET THEN
            REPEAT
                Class0Setup.Reset();
                Class0Setup.SetRange("Regist Type", GenJournalLine2.ConfClass0);
                Class0Setup.SetRange("Verify Avaylable Amount", true);
                if not Class0Setup.IsEmpty then begin
                    GLAccountDim2.FillDimensions(GLAccountDim2, GenJournalLine2."Dimension Set ID");
                    GLAccountDim.Reset();
                    GLAccountDim.SetRange(Dimension1, GLAccountDim2.Dimension1);
                    GLAccountDim.SetRange("Dimension Value1", GLAccountDim2."Dimension Value1");
                    GLAccountDim.SetRange(Dimension2, GLAccountDim2.Dimension2);
                    GLAccountDim.SetRange("Dimension Value2", GLAccountDim2."Dimension Value2");
                    GLAccountDim.SetRange(Dimension3, GLAccountDim2.Dimension3);
                    GLAccountDim.SetRange("Dimension Value3", GLAccountDim2."Dimension Value3");
                    GLAccountDim.SetRange(Dimension4, GLAccountDim2.Dimension4);
                    GLAccountDim.SetRange("Dimension Value4", GLAccountDim2."Dimension Value4");
                    If GLAccountDim.FindFirst() then begin
                        GLAccountDim."Cost Amount" += GenJournalLine2.GetGnlJnlLineAmount();
                        GLAccountDim.Modify();
                    end else begin
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Gen. Journal Line");
                        GLAccountDim."Document No." := GenJournalLine2."Document No.";
                        GLAccountDim."Line No." := GenJournalLine2."Line No.";
                        GLAccountDim."Cost Amount" := GenJournalLine2.GetGnlJnlLineAmount();
                        GLAccountDim."Date Posted" := GenJournalLine2."Posting Date";
                        GLAccountDim."Budget Year" := Format(Date2DMY(GenJournalLine2."Posting Date", 3));
                        GLAccountDim.FillDimensions(GLAccountDim, GenJournalLine2."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    end;
                end;
            UNTIL GenJournalLine2.NEXT = 0;

        GLAccountDim.RESET;
        IF GLAccountDim.FINDSET THEN
            REPEAT
                Clear(DimFilter1);
                Clear(DimFilter2);
                Clear(DimFilter3);
                Clear(DimFilter4);
                Clear(Dotation);

                TempPeriodInitDate := CALCDATE('<-CY>', GLAccountDim."Date Posted");
                TempPeriodEndDate := CALCDATE('<CY>', GLAccountDim."Date Posted");
                DimFilter1 := GLAccountDim."Dimension Value1";
                DimFilter2 := GLAccountDim."Dimension Value2";
                DimFilter3 := GLAccountDim."Dimension Value3";
                DimFilter4 := GLAccountDim."Dimension Value4";
                Dotation := CduBudget.GetDotation(TempPeriodInitDate, TempPeriodEndDate, DimFilter1, DimFilter2, DimFilter3, DimFilter4);
                If GLAccountDim."Cost Amount" > Dotation then
                    Error(Text001, GLAccountDim."Cost Amount", DimFilter1, DimFilter2, DimFilter3, DimFilter4, Dotation);
            until GLAccountDim.Next() = 0;
    end;

    local procedure InsertBudgetLines(var GenJournalLine: Record "Gen. Journal Line")
    var
        GenJournalLine2: Record "Gen. Journal Line";
        GenJournalLine3: Record "Gen. Journal Line";
        Class0Setup: Record "Class 0 Setup";
        BudgetConfig: Record "Budget Configuration";
        DimMgt: Codeunit DimensionManagement;
        LineNo: Integer;
    begin
        BudgetConfig.Get();
        Clear(LineNo);
        GenJournalLine2.Reset();
        GenJournalLine2.SetRange("Journal Template Name", GenJournalLine."Journal Template Name");
        GenJournalLine2.SetRange("Journal Batch Name", GenJournalLine."Journal Batch Name");
        if GenJournalLine2.FindLast() then
            LineNo := GenJournalLine2."Line No." + 10000
        else
            LineNo := 10000;

        GenJournalLine2.Reset();
        GenJournalLine2.CopyFilters(GenJournalLine);
        GenJournalLine2.SetRange("Journal Template Name", GenJournalLine."Journal Template Name");
        GenJournalLine2.SetRange("Journal Batch Name", GenJournalLine."Journal Batch Name");
        GenJournalLine2.SetRange("System-Created Entry", false);
        GenJournalLine2.SetFilter(confclass0, '<>%1', '');
        GenJournalLine2.SetRange("No Budget", false);
        if GenJournalLine2.FindSet() then
            repeat
                Class0Setup.Reset();
                Class0Setup.SetRange("Regist type", GenJournalLine2.ConfClass0);
                if Class0Setup.FindSet() then
                    repeat
                        Clear(GenJournalLine3);
                        GenJournalLine3.Init();
                        GenJournalLine3.TransferFields(GenJournalLine2);
                        GenJournalLine3.ConfClass0 := '';
                        GenJournalLine3.Validate("System-Created Entry", true);
                        GenJournalLine3."Line No." := LineNo;
                        GenJournalLine3.Insert();
                        GenJournalLine3.Validate("Account Type", GenJournalLine3."Account Type"::"G/L Account");
                        GenJournalLine3.Validate("Account No.", Class0Setup."Debt count");
                        GenJournalLine3.Validate("Bal. Account Type", GenJournalLine3."Bal. Account Type"::"G/L Account");
                        GenJournalLine3.Validate("Bal. Account No.", Class0Setup."Credit count");
                        GenJournalLine3.Validate("Currency Code", GenJournalLine2."Currency Code");
                        GenJournalLine3."Applies-to ID" := '';
                        GenJournalLine3.Validate("Applies-to Doc. No.", '');
                        GenJournalLine3.Validate(Amount, Abs(GenJournalLine2.GetGnlJnlLineAmount()));
                        GenJournalLine3.Validate("Budget Appropriation Method", BudgetConfig."Budget Appropriation Method");
                        GenJournalLine3."Dimension Set ID" := GenJournalLine2."Dimension Set ID";
                        DimMgt.UpdateGlobalDimFromDimSetID(GenJournalLine3."Dimension Set ID", GenJournalLine3."Shortcut Dimension 1 Code", GenJournalLine3."Shortcut Dimension 2 Code");
                        GenJournalLine3.Modify();
                        LineNo += 10000;
                    UNTIL Class0Setup.Next() = 0;
            UNTIL GenJournalLine2.Next() = 0;
    end;

    local procedure ValidatePaymentsDotation(var GenJournalLine: Record "Gen. Journal Line"): Boolean
    var
        GLAccountDim: Record "G/L Account Dimensions" temporary;
        GLAccountDim2: Record "G/L Account Dimensions" temporary;
        GenJournalLine2: Record "Gen. Journal Line";
        Class0Setup: Record "Class 0 Setup";
        CduBudget: Codeunit Budget;
        TempPeriodInitDate: Date;
        TempPeriodEndDate: Date;
        DimFilter1: Code[20];
        DimFilter2: Code[20];
        DimFilter3: Code[20];
        DimFilter4: Code[20];
        Dotation: Decimal;
    begin
        Clear(GLAccountDim);

        GLAccountDim.DeleteAll();
        GenJournalLine2.RESET;
        GenJournalLine2.COPYFILTERS(GenJournalLine);
        GenJournalLine2.SETRANGE("Journal Template Name", GenJournalLine."Journal Template Name");
        GenJournalLine2.SETRANGE("Journal Batch Name", GenJournalLine."Journal Batch Name");
        GenJournalLine2.SetRange("System-Created Entry", false);
        GenJournalLine2.SetRange("No Budget", false);
        GenJournalLine2.SETFILTER(ConfClass0, '<>%1', '');
        IF GenJournalLine2.FINDSET THEN
            REPEAT
                Class0Setup.Reset();
                Class0Setup.SetRange("Regist Type", GenJournalLine2.ConfClass0);
                Class0Setup.SetRange("Verify Avaylable Amount", true);
                if not Class0Setup.IsEmpty then begin
                    GLAccountDim2.FillDimensions(GLAccountDim2, GenJournalLine2."Dimension Set ID");
                    GLAccountDim.Reset();
                    GLAccountDim.SetRange(Dimension1, GLAccountDim2.Dimension1);
                    GLAccountDim.SetRange("Dimension Value1", GLAccountDim2."Dimension Value1");
                    GLAccountDim.SetRange(Dimension2, GLAccountDim2.Dimension2);
                    GLAccountDim.SetRange("Dimension Value2", GLAccountDim2."Dimension Value2");
                    GLAccountDim.SetRange(Dimension3, GLAccountDim2.Dimension3);
                    GLAccountDim.SetRange("Dimension Value3", GLAccountDim2."Dimension Value3");
                    GLAccountDim.SetRange(Dimension4, GLAccountDim2.Dimension4);
                    GLAccountDim.SetRange("Dimension Value4", GLAccountDim2."Dimension Value4");
                    If GLAccountDim.FindFirst() then begin
                        GLAccountDim."Cost Amount" += GenJournalLine2."Cost Amount";
                        GLAccountDim.Modify();
                    end else begin
                        Clear(GLAccountDim);
                        GLAccountDim.Init();
                        GLAccountDim."Tab Code" := Format(DATABASE::"Gen. Journal Line");
                        GLAccountDim."Document No." := GenJournalLine2."Document No.";
                        GLAccountDim."Line No." := GenJournalLine2."Line No.";
                        GLAccountDim."Cost Amount" := GenJournalLine2.GetGnlJnlLineAmount();
                        GLAccountDim."Date Posted" := GenJournalLine2."Posting Date";
                        GLAccountDim."Budget Year" := Format(Date2DMY(GenJournalLine2."Posting Date", 3));
                        GLAccountDim.FillDimensions(GLAccountDim, GenJournalLine2."Dimension Set ID");
                        GLAccountDim.Insert(true);
                    end;
                end;
            UNTIL GenJournalLine2.NEXT = 0;

        GLAccountDim.RESET;
        IF GLAccountDim.FINDSET THEN
            REPEAT
                Clear(DimFilter1);
                Clear(DimFilter2);
                Clear(DimFilter3);
                Clear(DimFilter4);
                Clear(Dotation);

                TempPeriodInitDate := CALCDATE('<-CY>', GLAccountDim."Date Posted");
                TempPeriodEndDate := CALCDATE('<CY>', GLAccountDim."Date Posted");
                DimFilter1 := GLAccountDim."Dimension Value1";
                DimFilter2 := GLAccountDim."Dimension Value2";
                DimFilter3 := GLAccountDim."Dimension Value3";
                DimFilter4 := GLAccountDim."Dimension Value4";
                Dotation := CduBudget.GetDotation(TempPeriodInitDate, TempPeriodEndDate, DimFilter1, DimFilter2, DimFilter3, DimFilter4);
                If GLAccountDim."Cost Amount" > Dotation then
                    exit(true);
            until GLAccountDim.Next() = 0;
    end;

}

