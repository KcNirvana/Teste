codeunit 50001 Developments
{
    Permissions =
                    tabledata "G/L Entry" = RIMD,
                    tabledata "Purch. Inv. Line" = RIMD;

    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        DimMgt: Codeunit DimensionManagement;

    procedure MarkUnmarkGLEntry(pEntryNo: integer; pMark: boolean)
    var
        GlEntry: Record "G/L Entry";
    begin
        GlEntry.Get(pEntryNo);
        GLEntry.Reconciled := pMark;
        GLEntry."User ID Recon" := USERID;
        GLEntry.MODIFY;
    end;

    procedure CorrectPurchInvoiceDeferments(PurchInvHeader: Record "Purch. Inv. Header")
    var
        CorrecDeferementsPage: Page "Correct Defer. Purch Inv Lines";
        PurchInvLines: Record "Purch. Inv. Line";
        PurchDeferements: Record "Purch. Deferments Entry";
        Text001: Label 'The invoice %1 dont have deferements.';
        Text002: Label 'The invoice %1 already have posted deferements.';
    begin
        PurchInvLines.Reset();
        PurchInvLines.SetRange("Document No.", PurchInvHeader."No.");
        PurchInvLines.SetRange(Deferement, true);
        if PurchInvLines.IsEmpty then
            Error(Text001, PurchInvHeader."No.");

        PurchDeferements.Reset();
        PurchDeferements.SetRange("Document No.", PurchInvHeader."No.");
        PurchDeferements.SetRange(Posted, true);
        if not PurchDeferements.IsEmpty then
            Error(Text002, PurchInvHeader."No.");

        Clear(CorrecDeferementsPage);
        CorrecDeferementsPage.SetRec(PurchInvHeader);
        CorrecDeferementsPage.LookupMode := true;
        if CorrecDeferementsPage.RunModal() in [Action::LookupOK, Action::OK] then begin
            PurchInvLines.Reset();
            PurchInvLines.SetRange("Document No.", PurchInvHeader."No.");
            PurchInvLines.SetRange(Deferement, true);
            if PurchInvLines.FindSet() then
                repeat
                    PurchDeferements.LockTable();
                    PurchDeferements.Reset();
                    PurchDeferements.SetRange("Document No.", PurchInvLines."Document No.");
                    PurchDeferements.SetRange("Document Line No.", PurchInvLines."Line No.");
                    PurchDeferements.DeleteAll();
                    CreatePurchInvoiceLineDeferment(PurchInvLines);
                until PurchInvLines.Next() = 0;
        end;
        Clear(CorrecDeferementsPage);
    end;

    procedure CreatePurchInvoiceLineDeferment(PurchInvLine: Record "Purch. Inv. Line")
    var
        lIntNumberMonths: Integer;
        lIntPos: Integer;
        lDatFirstPeriod: Date;
        lDatLastPeriod: Date;
        lDatCurrPeriod: Date;
        lIntMonth: Integer;
        lIntYear: Integer;
        lDecAmountPerMonth: Decimal;
        lDecAmountCorrectedFirstMonth: Decimal;
        lDecAmountTimesMonths: Decimal;
        lDecPeriodAmount: Decimal;
        lDatTestPeriod: Date;
        lDecTotalPercent: Decimal;
        lDecNewAmount: Decimal;
        lPeriodText: Text;
        PurchInvHeader: Record "Purch. Inv. Header";
    begin
        if not PurchInvLine.Deferement then
            exit;

        PurchInvHeader.Get(PurchInvLine."Document No.");
        lIntNumberMonths := GetNumberMonths(Format(PurchInvLine."Deferement Periodicity"));
        if lIntNumberMonths = 0 then
            exit;

        lIntYear := Date2DMY(PurchInvLine."Deferement Start Date", 3);
        lIntMonth := Date2DMY(PurchInvLine."Deferement Start Date", 2);

        lDatFirstPeriod := GetPeriodReferenceDate(PurchInvLine."Deferement Start Date");
        lDatLastPeriod := lDatFirstPeriod;
        //if lDatFirstPeriod = CalcDate('<-CM>', PurchInvHeader."Posting Date") then
        //    exit;

        lIntPos := lIntNumberMonths - 1;

        while (lIntPos > 0) do begin
            lDatLastPeriod := GetPeriodReferenceDate(CalcDate('<1M>', lDatLastPeriod));
            lIntPos -= 1;
        end;
        lPeriodText := Format(lDatFirstPeriod) + '..' + Format(CalcDate('<CM>', lDatLastPeriod));
        lDecAmountPerMonth := Round(PurchInvLine.Amount / lIntNumberMonths, 0.01, '<');
        lDecAmountTimesMonths := lDecAmountPerMonth * lIntNumberMonths;

        if lDecAmountTimesMonths = PurchInvLine.Amount then begin
            lDecAmountCorrectedFirstMonth := lDecAmountPerMonth;
        end else begin
            lDecAmountCorrectedFirstMonth := lDecAmountPerMonth + PurchInvLine.Amount - lDecAmountTimesMonths;
        end;

        lDecPeriodAmount := 0;
        lDatCurrPeriod := DMY2Date(1, lIntMonth, lIntYear);

        lDatTestPeriod := lDatFirstPeriod;
        while (lDatTestPeriod <= lDatCurrPeriod) do begin
            if lDecAmountCorrectedFirstMonth <> 0 then begin
                lDecPeriodAmount += lDecAmountCorrectedFirstMonth;
                lDecAmountCorrectedFirstMonth := 0;
            end else begin
                lDecPeriodAmount += lDecAmountPerMonth;
            end;
            lDatTestPeriod := GetPeriodReferenceDate(CalcDate('<1M>', lDatTestPeriod));
        end;
        CreateDefermentLine(PurchInvLine, lDatCurrPeriod, lDecPeriodAmount, lIntNumberMonths, PurchInvLine.Amount, lPeriodText);

        lDatCurrPeriod := GetPeriodReferenceDate(CalcDate('<1M>', lDatCurrPeriod));
        while (lDatCurrPeriod <= lDatLastPeriod) do begin
            if lDecAmountCorrectedFirstMonth <> 0 then begin
                CreateDefermentLine(PurchInvLine, lDatCurrPeriod, lDecAmountCorrectedFirstMonth, lIntNumberMonths, PurchInvLine.Amount, lPeriodText);
                lDecAmountCorrectedFirstMonth := 0;
            end else
                CreateDefermentLine(PurchInvLine, lDatCurrPeriod, lDecAmountPerMonth, lIntNumberMonths, PurchInvLine.Amount, lPeriodText);
            lDatCurrPeriod := GetPeriodReferenceDate(CalcDate('<1M>', lDatCurrPeriod));
        end;
    end;

    procedure InsertPurchInvLineDeferements(PurchInvLine: Record "Purch. Inv. Line"; PurchLine: Record "Purchase Line")
    var
        PurchaseDeferments: Record "Purch. Deferments Entry";
        PurchaseInvDeferments: Record "Purch. Deferments Entry";
    begin
        if PurchLine.Deferement and (PurchLine."Document No." <> PurchInvLine."Document No.") then begin
            PurchaseDeferments.LockTable();
            PurchaseDeferments.Reset();
            PurchaseDeferments.SetRange("Document No.", PurchLine."Document No.");
            PurchaseDeferments.SetRange("Document Line No.", PurchLine."Line No.");
            if PurchaseDeferments.FindSet() then
                repeat
                    PurchaseInvDeferments.Init();
                    PurchaseInvDeferments.TransferFields(PurchaseDeferments);
                    PurchaseInvDeferments."Document No." := PurchInvLine."Document No.";
                    PurchaseInvDeferments.Insert(true);
                until PurchaseDeferments.Next() = 0;

            PurchaseDeferments.Reset();
            PurchaseDeferments.SetRange("Document No.", PurchLine."Document No.");
            PurchaseDeferments.SetRange("Document Line No.", PurchLine."Line No.");
            PurchaseDeferments.DeleteAll();
        end;
    end;

    procedure PostPurchDeferments(var pPurchDeferements: Record "Purch. Deferments Entry" temporary; pPostingDate: Date)
    var
        PurchDeferements: Record "Purch. Deferments Entry";
        GenJournalLine: Record "Gen. Journal Line";
        GenJnlTemplate: Record "Gen. Journal Template";
        GenJnlBatch: Record "Gen. Journal Batch";
        GLSetup: Record "General Ledger Setup";
        LineNo: Integer;
        DocumentNo: Code[20];
    begin
        GLSetup.Get;
        GLSetup.TestField("Deferements Journal");
        GLSetup.TestField("Deferements Batch");

        GenJournalLine.Reset;
        GenJournalLine.SetRange("Journal Template Name", GLSetup."Deferements Journal");
        GenJournalLine.SetRange("Journal Batch Name", GLSetup."Deferements Batch");
        GenJournalLine.DeleteAll(true);

        GenJnlTemplate.Get(GLSetup."Deferements Journal");
        GenJnlBatch.Get(GLSetup."Deferements Journal", GLSetup."Deferements Batch");
        GenJnlBatch.TestField("Posting No. Series");
        GenJnlBatch.TestField("Copy VAT Setup to Jnl. Lines", false);
        if GenJnlBatch."Posting No. Series" <> '' then begin
            Clear(NoSeriesMgt);
            DocumentNo := NoSeriesMgt.GetNextNo(GenJnlBatch."Posting No. Series", WorkDate, false);
        end;

        LineNo := 10000;
        pPurchDeferements.Reset;
        if pPurchDeferements.FindSet then
            repeat
                GenJournalLine.Init;
                GenJournalLine.SetHideValidation(true);
                GenJournalLine.Validate("Journal Template Name", GLSetup."Deferements Journal");
                GenJournalLine.Validate("Journal Batch Name", GLSetup."Deferements Batch");
                GenJournalLine.Validate("Line No.", LineNo);
                GenJournalLine.Validate("Posting Date", pPostingDate);
                GenJournalLine.Validate("Document No.", DocumentNo);
                GenJournalLine.Validate("Reason Code", GenJnlBatch."Reason Code");
                GenJournalLine.Validate("Source Code", GenJnlTemplate."Source Code");
                GenJournalLine.Validate("Posting No. Series", GenJnlBatch."Posting No. Series");
                GenJournalLine.Validate("Account Type", GenJournalLine."Account Type"::"G/L Account");
                GenJournalLine.Validate("Account No.", pPurchDeferements."Origin Account No.");
                GenJournalLine.Validate("Credit Amount", pPurchDeferements."Period Amount");
                GenJournalLine.Validate("Bal. Account Type", GenJournalLine."Bal. Account Type"::"G/L Account");
                GenJournalLine.Validate("Bal. Account No.", pPurchDeferements."Destin Account No.");
                GenJournalLine.Validate("Contract No.", pPurchDeferements."Contract No.");
                GenJournalLine.Validate("Entry Type Contract", pPurchDeferements."Entry Type Contract");
                GenJournalLine.Validate("Dimension Set ID", pPurchDeferements."Dimension Set ID");
                DimMgt.UpdateGenJnlLineDim(GenJournalLine, GenJournalLine."Dimension Set ID");
                GenJournalLine.Validate(Description, pPurchDeferements."Invoice Text");
                GenJournalLine.Insert(true);
                LineNo += 10000;
                PurchDeferements.Get(
                  pPurchDeferements."Document No.",
                    pPurchDeferements."Document Line No.",
                      pPurchDeferements."Deferment Date",
                        pPurchDeferements."Line No.");
                PurchDeferements.Posted := true;
                PurchDeferements.Modify(true);
            until pPurchDeferements.Next = 0;

        CODEUNIT.Run(CODEUNIT::"Gen. Jnl.-Post", GenJournalLine);
    end;

    local procedure GetNumberMonths(pTxtPeriodicity: Text[10]) lIntNumMonths: Integer
    var
        lIntMultiplier: Integer;
    begin
        if pTxtPeriodicity = '' then
            exit(1);

        if StrPos(pTxtPeriodicity, 'A') <> 0 then begin
            lIntMultiplier := 12;
            pTxtPeriodicity := CopyStr(pTxtPeriodicity, 1, StrLen(pTxtPeriodicity) - 1);
            Evaluate(lIntNumMonths, pTxtPeriodicity);
        end;

        if StrPos(pTxtPeriodicity, 'M') <> 0 then begin
            lIntMultiplier := 1;
            pTxtPeriodicity := CopyStr(pTxtPeriodicity, 1, StrLen(pTxtPeriodicity) - 1);
            Evaluate(lIntNumMonths, pTxtPeriodicity);
        end;

        if StrPos(pTxtPeriodicity, 'D') <> 0 then begin
            lIntMultiplier := 1;
            pTxtPeriodicity := CopyStr(pTxtPeriodicity, 1, StrLen(pTxtPeriodicity) - 1);
            Evaluate(lIntNumMonths, pTxtPeriodicity);
            lIntNumMonths := Round(lIntNumMonths / 30, 1, '>');
        end;

        exit(lIntNumMonths * lIntMultiplier);
    end;

    local procedure GetPeriodReferenceDate(pDatStartDate: Date) outDatReferencePeriodDate: Date
    begin
        exit(DMY2Date(1, Date2DMY(pDatStartDate, 2), Date2DMY(pDatStartDate, 3)));
    end;

    local procedure CreateDefermentLine(PurchInvLine: Record "Purch. Inv. Line"; pDatReferenceDate: Date; pDecPeriodAmount: Decimal; pIntNumberOfMonths: Integer; pDecTotalAmount: Decimal;
                                        pPeriodText: Text[50])
    var
        PurchaseDeferments: Record "Purch. Deferments Entry";
        GenPostingSetup: Record "General Posting Setup";
        PurchInvHeader: Record "Purch. Inv. Header";
        lDatEndDate: Date;
        lDateFormula: DateFormula;
        LineNo: Integer;
        OriginAccount: Code[20];
        DestinAccount: Code[20];
    begin
        Clear(LineNo);
        Clear(lDateFormula);
        PurchaseDeferments.LockTable();
        PurchaseDeferments.Reset();
        PurchaseDeferments.SetRange("Document No.", PurchInvLine."Document No.");
        PurchaseDeferments.SetRange("Document Line No.", PurchInvLine."Line No.");
        PurchaseDeferments.SetRange("Deferment Date", pDatReferenceDate);
        if PurchaseDeferments.FindLast then
            LineNo := PurchaseDeferments."Line No." + 10000
        else
            LineNo := 10000;

        Clear(GenPostingSetup);
        Clear(OriginAccount);
        Clear(DestinAccount);
        GenPostingSetup.Get(PurchInvLine."Gen. Bus. Posting Group", PurchInvLine."Gen. Prod. Posting Group");
        if (PurchInvLine.Type = PurchInvLine.Type::"G/L Account") then
            OriginAccount := PurchInvLine."No."
        else
            OriginAccount := GenPostingSetup.GetPurchAccount;
        DestinAccount := PurchInvLine."Deferement Account";

        PurchInvHeader.Get(PurchInvLine."Document No.");
        Clear(PurchaseDeferments);
        PurchaseDeferments."Document No." := PurchInvLine."Document No.";
        PurchaseDeferments."Document Line No." := PurchInvLine."Line No.";
        PurchaseDeferments."Deferment Date" := pDatReferenceDate;
        PurchaseDeferments."Line No." := LineNo;
        PurchaseDeferments."Origin Account No." := OriginAccount;
        PurchaseDeferments."Destin Account No." := DestinAccount;
        PurchaseDeferments."Vendor No." := PurchInvLine."Buy-from Vendor No.";
        PurchaseDeferments."Invoice Text" := PurchInvLine.Description;
        PurchaseDeferments.Period := pPeriodText;
        PurchaseDeferments."Number Of Months" := pIntNumberOfMonths;
        PurchaseDeferments."Posting Date" := PurchInvLine."Posting Date";
        PurchaseDeferments."Period Amount" := pDecPeriodAmount;
        PurchaseDeferments."Total Amount" := pDecTotalAmount;
        PurchaseDeferments."Dimension Set ID" := PurchInvLine."Dimension Set ID";
        PurchaseDeferments."Entry Type Contract" := PurchInvLine."Entry Type Contract";
        PurchaseDeferments."Contract No." := PurchInvLine."Contract No.";
        PurchaseDeferments.Insert(true);
        Clear(PurchaseDeferments);
    end;
}