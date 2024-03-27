page 57109 "Expenses by Fin. Econ. Report"
{

    Caption = 'Expenses by Financing and Economic Sources';
    Editable = false;
    PageType = List;
    DataCaptionExpression = GetCaption();
    SourceTable = "PTSS Temporary Table";
    SourceTableTemporary = true;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code1)
                {
                    Caption = 'Code';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field(Name; Rec.Text1)
                {
                    Caption = 'Name';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field("Corrected Endowments"; Rec.Decimal1)
                {
                    Caption = 'Corrected Endowments';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts1);
                    end;
                }
                field(Captives; Rec.Decimal2)
                {
                    Caption = 'Captives';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts2);
                    end;
                }
                field("Made Commitments"; Rec.Decimal3)
                {
                    Caption = 'Made Commitments';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts3);
                    end;
                }
                field("Expenses Paid - Year"; Rec.Decimal4)
                {
                    Caption = 'Expenses Paid - Year';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field("Expenses Paid - Previous Years"; Rec.Decimal5)
                {
                    Caption = 'Expenses Paid - Previous Years';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field(Total; Rec.Decimal4 + Rec.Decimal5)
                {
                    Caption = 'Total';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field("Differences - Endowment Not Committed"; Rec.Decimal1 + Rec.Decimal2 - Rec.Decimal3)
                {
                    Caption = 'Differences - Endowment Not Committed';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field("Differences - Balances"; Rec.Decimal1 + Rec.Decimal2 - (Rec.Decimal4 + Rec.Decimal5))
                {
                    Caption = 'Differences - Balances';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field("Differences - Made Commitments"; Rec.Decimal3 - (Rec.Decimal4 + Rec.Decimal5))
                {
                    Caption = 'Differences - Made Commitments';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }

                field(Degree; Rec.Decimal6)
                {
                    Caption = 'Degree %';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
            }
        }
    }

    actions
    {
    }
    var
        DimMgt: Codeunit DimensionManagement;
        GLSetupShortcutDimCode: array[8] of Code[20];
        DimensionCode: Code[20];
        DateFilter: Text[30];
        FilterAccounts1: Text;
        FilterAccounts2: Text;
        FilterAccounts3: Text;
        FilterAccounts4: Text;
        FilterAccounts5: Text;

    trigger OnOpenPage()
    begin
        Clear(GLSetupShortcutDimCode);
        DimMgt.GetGLSetup(GLSetupShortcutDimCode);
        FillTempTable();
    end;

    local procedure GetDates()
    var
        GlAccount: Record "G/L Account" temporary;
        AuxStartDate: Date;
        AuxEndDate: Date;
        AuxYear: Integer;
        Text001: Label 'The date interval must be on the same year.';
    begin
        Clear(GlAccount);
        GlAccount.Setfilter("Date Filter", DateFilter);

        AuxStartDate := GlAccount.GETRANGEMIN("Date Filter");
        AuxEndDate := GlAccount.GETRANGEMAX("Date Filter");
        IF DATE2DMY(AuxStartDate, 3) <> DATE2DMY(AuxEndDate, 3) THEN
            ERROR(Text001);

        AuxYear := DATE2DMY(AuxStartDate, 3);
    end;

    procedure SetParam(pDimensionCode: Code[20]; pDateFilter: Text[30]; pFilterAccounts1: text; pFilterAccounts2: text; pFilterAccounts3: text; pFilterAccounts4: text; pFilterAccounts5: text)
    begin
        DimensionCode := pDimensionCode;
        DateFilter := pDateFilter;
        FilterAccounts1 := pFilterAccounts1;
        FilterAccounts2 := pFilterAccounts2;
        FilterAccounts3 := pFilterAccounts3;
        FilterAccounts4 := pFilterAccounts4;
        FilterAccounts5 := pFilterAccounts5;
    end;

    local procedure FillTempTable()
    var
        DimensionValue: Record "Dimension Value";
        EconomicFilter: Text;
        EntryNo: Integer;
    begin
        Clear(Rec);
        Rec.DeleteAll();
        EntryNo := 1;

        GetDates();

        DimensionValue.Reset();
        DimensionValue.SetRange("Dimension Code", DimensionCode);
        DimensionValue.SetRange("Budget Dim Type", "Budget Dim Type"::Expenditure);
        if DimensionValue.FindSet() then
            repeat
                Clear(EconomicFilter);
                If DimensionValue.Totaling <> '' then
                    EconomicFilter := DimensionValue.Totaling
                else
                    EconomicFilter := DimensionValue.Code;
                Rec.Init();
                Rec."Entry No." := EntryNo;
                Rec.Code1 := DimensionValue.Code;
                Rec.Text1 := DimensionValue.Name;
                Rec.Decimal1 := GetAmounts(EconomicFilter, DateFilter, FilterAccounts1);
                Rec.Decimal2 := GetAmounts(EconomicFilter, DateFilter, FilterAccounts2);
                Rec.Decimal3 := -GetAmounts(EconomicFilter, DateFilter, FilterAccounts3);
                Rec.Decimal4 := GetPaidAmounts(FilterAccounts4, DimensionCode, Rec.Code1);
                Rec.Decimal5 := GetPaidAmounts(FilterAccounts5, DimensionCode, Rec.Code1);
                Rec.Decimal6 := GetDegree((Rec.Decimal4 + Rec.Decimal5), (Rec.Decimal1 - Rec.Decimal2));
                Rec.Boolean1 := DimensionValue.Totaling <> '';
                Rec.Text3 := EconomicFilter;
                Rec.Insert();
                EntryNo += 1;
            until DimensionValue.Next() = 0;
        Rec.Reset();
        if Rec.FindFirst() then;
    end;

    local procedure GetAmounts(EconomicFilter: text; DateFilter: text; AccountFilter: text): Decimal
    var
        GLEntryByDimensions: Query "GLEntry By Dimensions";
        ReturnAmount: Decimal;
    begin
        Clear(ReturnAmount);
        Clear(GLEntryByDimensions);
        GLEntryByDimensions.SetFilter(G_L_Account, AccountFilter);
        GLEntryByDimensions.SetFilter(Posting_Date, DateFilter);
        GLEntryByDimensions.SetFilter(Dimension_Code, DimensionCode);
        GLEntryByDimensions.SetFilter(Dimension_Value_Code, EconomicFilter);
        GLEntryByDimensions.Open();
        while GLEntryByDimensions.Read() do
            ReturnAmount += GLEntryByDimensions.Sum_Amount;

        GLEntryByDimensions.Close();
        exit(ReturnAmount);
    end;

    local procedure DrillDownAmounts(EconomicFilter: text; DateFilter: text; AccountFilter: text)
    var
        GLEntry: Record "G/L Entry";
        GLEntryPage: Page "General Ledger Entries";
    begin
        GLEntry.Reset();
        GLEntry.FilterGroup(2);
        GLEntry.SetFilter("G/L Account No.", AccountFilter);
        GLEntry.SetFilter("Posting Date", DateFilter);
        case DimensionCode of
            GLSetupShortcutDimCode[1]:
                GLEntry.SetFilter("Global Dimension 1 Code", EconomicFilter);
            GLSetupShortcutDimCode[2]:
                GLEntry.SetFilter("Global Dimension 2 Code", EconomicFilter);
            GLSetupShortcutDimCode[3]:
                GLEntry.SetFilter("Shortcut Dimension 3 Code", EconomicFilter);
            GLSetupShortcutDimCode[4]:
                GLEntry.SetFilter("Shortcut Dimension 4 Code", EconomicFilter);
            GLSetupShortcutDimCode[5]:
                GLEntry.SetFilter("Shortcut Dimension 5 Code", EconomicFilter);
            GLSetupShortcutDimCode[6]:
                GLEntry.SetFilter("Shortcut Dimension 6 Code", EconomicFilter);
            GLSetupShortcutDimCode[7]:
                GLEntry.SetFilter("Shortcut Dimension 7 Code", EconomicFilter);
            GLSetupShortcutDimCode[8]:
                GLEntry.SetFilter("Shortcut Dimension 8 Code", EconomicFilter);
        end;
        Clear(GLEntryPage);
        GLEntryPage.SetTableView(GLEntry);
        GLEntryPage.Editable(false);
        GLEntryPage.Run();
    end;

    local procedure GetPaidAmounts(FilterAccounts: text; DimensionCode: Code[20]; DimensionValue: Code[20]): Decimal
    var
        GLEntry: Record "G/L Entry";
        VendLedgEntry: Record "Vendor Ledger Entry";
        DetVendLedgEntry: Record "Detailed Vendor Ledg. Entry";
        PurchInvHeader: Record "Purch. Inv. Header";
        PurchInvLine: Record "Purch. Inv. Line";
        PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
        PurchCrMemoLine: Record "Purch. Cr. Memo Line";
        DimSetEntry: Record "Dimension Set Entry";
        ResultAmount: Decimal;
        blnFound: Boolean;
    begin
        Clear(ResultAmount);
        GLEntry.Reset();
        GLEntry.SETCURRENTKEY("G/L Account No.", "Posting Date");
        GLEntry.SETFILTER("G/L Account No.", FilterAccounts);
        GLEntry.SETFILTER("Posting Date", DateFilter);
        GLEntry.SetFilter("Document Type", '%1|%2|%3', GLEntry."Document Type"::Payment, GLEntry."Document Type"::" ", GLEntry."Document Type"::Refund);
        case DimensionCode of
            GLSetupShortcutDimCode[1]:
                GLEntry.SetFilter("Global Dimension 1 Code", DimensionValue);
            GLSetupShortcutDimCode[2]:
                GLEntry.SetFilter("Global Dimension 2 Code", DimensionValue);
            GLSetupShortcutDimCode[3]:
                GLEntry.SetFilter("Shortcut Dimension 3 Code", DimensionValue);
            GLSetupShortcutDimCode[4]:
                GLEntry.SetFilter("Shortcut Dimension 4 Code", DimensionValue);
            GLSetupShortcutDimCode[5]:
                GLEntry.SetFilter("Shortcut Dimension 5 Code", DimensionValue);
            GLSetupShortcutDimCode[6]:
                GLEntry.SetFilter("Shortcut Dimension 6 Code", DimensionValue);
            GLSetupShortcutDimCode[7]:
                GLEntry.SetFilter("Shortcut Dimension 7 Code", DimensionValue);
            GLSetupShortcutDimCode[8]:
                GLEntry.SetFilter("Shortcut Dimension 8 Code", DimensionValue);
        end;
        If GLEntry.FindSet() then
            repeat
                Clear(blnFound);
                VendLedgEntry.Reset();
                VendLedgEntry.SetRange("Transaction No.", GLEntry."Transaction No.");
                VendLedgEntry.SetRange("Document Type", GLEntry."Document Type");
                VendLedgEntry.SetRange("Document No.", GLEntry."Document No.");
                If VendLedgEntry.FindSet() then
                    repeat
                        DetVendLedgEntry.Reset();
                        DetVendLedgEntry.SetRange("Document No.", VendLedgEntry."Document No.");
                        DetVendLedgEntry.SetRange("Posting Date", VendLedgEntry."Posting Date");
                        DetVendLedgEntry.SetRange("Entry Type", DetVendLedgEntry."Entry Type"::Application);
                        DetVendLedgEntry.SetFilter("Vendor Ledger Entry No.", '<>%1', VendLedgEntry."Entry No.");
                        If DetVendLedgEntry.FindSet() then
                            repeat
                                PurchInvHeader.Reset();
                                PurchInvHeader.SetRange("Vendor Ledger Entry No.", DetVendLedgEntry."Vendor Ledger Entry No.");
                                If PurchInvHeader.FindSet() then
                                    repeat
                                        PurchInvLine.Reset();
                                        PurchInvLine.SETRANGE("Document No.", PurchInvHeader."No.");
                                        PurchInvLine.SetFilter(Type, '<>%1', PurchInvLine.Type::" ");
                                        IF PurchInvLine.FINDSET THEN
                                            REPEAT
                                                DimSetEntry.RESET;
                                                DimSetEntry.SETRANGE("Dimension Set ID", PurchInvLine."Dimension Set ID");
                                                DimSetEntry.SETRANGE("Dimension Code", DimensionCode);
                                                DimSetEntry.SETRANGE("Dimension Value Code", DimensionValue);
                                                IF DimSetEntry.FINDFIRST THEN BEGIN
                                                    ResultAmount += PurchInvLine.GetPurchInvLineAmount();
                                                    blnFound := true;
                                                END;
                                            UNTIL PurchInvLine.NEXT = 0;
                                    until PurchInvHeader.Next() = 0;

                                PurchCrMemoHeader.Reset();
                                PurchCrMemoHeader.SetRange("Vendor Ledger Entry No.", DetVendLedgEntry."Vendor Ledger Entry No.");
                                If PurchCrMemoHeader.FindSet() then
                                    repeat
                                        PurchCrMemoLine.Reset();
                                        PurchCrMemoLine.SETRANGE("Document No.", PurchCrMemoHeader."No.");
                                        PurchCrMemoLine.SetFilter(Type, '<>%1', PurchCrMemoLine.Type::" ");
                                        IF PurchCrMemoLine.FINDSET THEN
                                            REPEAT
                                                DimSetEntry.RESET;
                                                DimSetEntry.SETRANGE("Dimension Set ID", PurchCrMemoLine."Dimension Set ID");
                                                DimSetEntry.SETRANGE("Dimension Code", DimensionCode);
                                                DimSetEntry.SETRANGE("Dimension Value Code", DimensionValue);
                                                IF DimSetEntry.FINDFIRST THEN BEGIN
                                                    ResultAmount += PurchCrMemoLine.GetPurchCrMemoLineAmount();
                                                    blnFound := true;
                                                END;
                                            UNTIL PurchCrMemoLine.NEXT = 0;
                                    until PurchCrMemoHeader.Next() = 0;
                                If not blnFound then begin
                                    DimSetEntry.RESET;
                                    DimSetEntry.SETRANGE("Dimension Set ID", GLEntry."Dimension Set ID");
                                    DimSetEntry.SETRANGE("Dimension Code", DimensionCode);
                                    DimSetEntry.SETRANGE("Dimension Value Code", DimensionValue);
                                    IF DimSetEntry.FINDFIRST THEN BEGIN
                                        VendLedgEntry.CalcFields("Amount (LCY)");
                                        ResultAmount += VendLedgEntry."Amount (LCY)";
                                        blnFound := true;
                                    END;
                                end;
                            until DetVendLedgEntry.Next() = 0;
                    until VendLedgEntry.Next() = 0;

                If not blnFound then begin
                    DimSetEntry.RESET;
                    DimSetEntry.SETRANGE("Dimension Set ID", GLEntry."Dimension Set ID");
                    DimSetEntry.SETRANGE("Dimension Code", DimensionCode);
                    DimSetEntry.SETRANGE("Dimension Value Code", DimensionValue);
                    IF DimSetEntry.FINDFIRST THEN BEGIN
                        ResultAmount += (GLEntry.Amount * -1);
                        blnFound := true;
                    END;
                end;
            until GLEntry.Next() = 0;
        exit(ResultAmount);
    end;

    local procedure GetDegree(Amount1: Decimal; Amount2: Decimal): Decimal
    var
        ResultAmount: Decimal;
    begin
        if (Amount1 <> 0) and (Amount2 <> 0) then
            ResultAmount := Amount1 / Amount2;

        exit(ResultAmount);
    end;

    local procedure GetCaption(): Text[250]
    begin
        EXIT(STRSUBSTNO('%1 %2', Rec.Code1, Rec.Text1))
    end;
}

