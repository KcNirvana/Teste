page 57108 "Revenue by Fin. Econ. Report"
{

    Caption = 'Revenue by Financing and Economic Sources';
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
                field("Corrected Forecasts"; Rec.Decimal1)
                {
                    Caption = 'Corrected Forecasts';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts1);
                    end;
                }

                field("Rev. per Charge Start of Year"; Rec.Decimal2)
                {
                    Caption = 'Rev. per Charge Start of Year';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts2);
                    end;
                }
                field("Settled Receipts"; Rec.Decimal3)
                {
                    Caption = 'Settled Receipts';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts3);
                    end;
                }
                field("Reverse Settlements"; Rec.Decimal4)
                {
                    Caption = 'Reverse Settlements';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts4);
                    end;
                }
                field("Revenue Paid - Year"; Rec.Decimal5)
                {
                    Caption = 'Revenue Paid - Year';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field("Expenses Paid - Previous Years"; Rec.Decimal6)
                {
                    Caption = 'Revenue Paid - Previous Years';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }

                field(Total; Rec.Decimal5 + Rec.Decimal6)
                {
                    Caption = 'Total';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field("Refund - Issued"; Rec.Decimal7)
                {
                    Caption = 'Refund - Issued';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts5);
                    end;
                }
                field("Refund - Payed"; Rec.Decimal8)
                {
                    Caption = 'Refund - Payed';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts6);
                    end;
                }
                field("Net Billed Revenue"; Rec.Decimal5 + Rec.Decimal6 - Rec.Decimal8)
                {
                    Caption = 'Net Billed Revenue';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field("Income To Collect End Year"; Rec.Decimal3 - Rec.Decimal4 - Rec.Decimal8)
                {
                    Caption = 'Income To Be Collected At The End Of The Year';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field(Degree; Rec.Decimal9)
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
        FilterAccounts6: Text;
        FilterAccounts7: Text;
        FilterAccounts8: Text;

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

    procedure SetParam(pDimensionCode: Code[20]; pDateFilter: Text[30]; pFilterAccounts1: text; pFilterAccounts2: text; pFilterAccounts3: text; pFilterAccounts4: text; pFilterAccounts5: text; pFilterAccounts6: text; pFilterAccounts7: text; pFilterAccounts8: text)
    begin
        DimensionCode := pDimensionCode;
        DateFilter := pDateFilter;
        FilterAccounts1 := pFilterAccounts1;
        FilterAccounts2 := pFilterAccounts2;
        FilterAccounts3 := pFilterAccounts3;
        FilterAccounts4 := pFilterAccounts4;
        FilterAccounts5 := pFilterAccounts5;
        FilterAccounts6 := pFilterAccounts6;
        FilterAccounts7 := pFilterAccounts7;
        FilterAccounts8 := pFilterAccounts8;
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
        DimensionValue.SetRange("Budget Dim Type", "Budget Dim Type"::Revenue);
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
                Rec.Decimal1 := -GetAmounts(EconomicFilter, DateFilter, FilterAccounts1);
                Rec.Decimal2 := GetAmounts(EconomicFilter, DateFilter, FilterAccounts2);
                Rec.Decimal3 := GetAmounts(EconomicFilter, DateFilter, FilterAccounts3);
                Rec.Decimal4 := GetAmounts(EconomicFilter, DateFilter, FilterAccounts4);
                Rec.Decimal7 := GetAmounts(EconomicFilter, DateFilter, FilterAccounts5);
                Rec.Decimal8 := GetAmounts(EconomicFilter, DateFilter, FilterAccounts6);
                Rec.Decimal5 := GetReceiptAmounts(FilterAccounts7, DimensionCode, Rec.Code1);
                Rec.Decimal6 := GetReceiptAmounts(FilterAccounts8, DimensionCode, Rec.Code1);
                Rec.Decimal9 := GetDegree((Rec.Decimal5 + Rec.Decimal6 - Rec.Decimal8), Rec.Decimal1);
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

    local procedure GetReceiptAmounts(FilterAccounts: text; DimensionCode: Code[20]; DimensionValue: Code[20]): Decimal
    var
        GLEntry: Record "G/L Entry";
        CustLedgEntry: Record "Cust. Ledger Entry";
        DetCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
        SalesInvHeader: Record "Sales Invoice Header";
        SalesInvLine: Record "Sales Invoice Line";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        SalesCrMemoLine: Record "Sales Cr.Memo Line";
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
                CustLedgEntry.Reset();
                CustLedgEntry.SetRange("Transaction No.", GLEntry."Transaction No.");
                CustLedgEntry.SetRange("Document Type", GLEntry."Document Type");
                CustLedgEntry.SetRange("Document No.", GLEntry."Document No.");
                If CustLedgEntry.FindSet() then
                    repeat
                        DetCustLedgEntry.Reset();
                        DetCustLedgEntry.SetRange("Document No.", CustLedgEntry."Document No.");
                        DetCustLedgEntry.SetRange("Posting Date", CustLedgEntry."Posting Date");
                        DetCustLedgEntry.SetRange("Entry Type", DetCustLedgEntry."Entry Type"::Application);
                        DetCustLedgEntry.SetFilter("Cust. Ledger Entry No.", '<>%1', CustLedgEntry."Entry No.");
                        If DetCustLedgEntry.FindSet() then
                            repeat
                                SalesInvHeader.Reset();
                                SalesInvHeader.SetRange("Cust. Ledger Entry No.", DetCustLedgEntry."Cust. Ledger Entry No.");
                                If SalesInvHeader.FindSet() then
                                    repeat
                                        SalesInvLine.Reset();
                                        SalesInvLine.SETRANGE("Document No.", SalesInvHeader."No.");
                                        SalesInvLine.SetFilter(Type, '<>%1', SalesInvLine.Type::" ");
                                        IF SalesInvLine.FINDSET THEN
                                            REPEAT
                                                DimSetEntry.RESET;
                                                DimSetEntry.SETRANGE("Dimension Set ID", SalesInvLine."Dimension Set ID");
                                                DimSetEntry.SETRANGE("Dimension Code", DimensionCode);
                                                DimSetEntry.SETRANGE("Dimension Value Code", DimensionValue);
                                                IF DimSetEntry.FINDFIRST THEN BEGIN
                                                    ResultAmount += SalesInvLine."Amount Including VAT";
                                                    blnFound := true;
                                                END;
                                            UNTIL SalesInvLine.NEXT = 0;
                                    until SalesInvHeader.Next() = 0;

                                SalesCrMemoHeader.Reset();
                                SalesCrMemoHeader.SetRange("Cust. Ledger Entry No.", DetCustLedgEntry."Cust. Ledger Entry No.");
                                If SalesCrMemoHeader.FindSet() then
                                    repeat
                                        SalesCrMemoLine.Reset();
                                        SalesCrMemoLine.SETRANGE("Document No.", SalesCrMemoHeader."No.");
                                        SalesCrMemoLine.SetFilter(Type, '<>%1', SalesCrMemoLine.Type::" ");
                                        IF SalesCrMemoLine.FINDSET THEN
                                            REPEAT
                                                DimSetEntry.RESET;
                                                DimSetEntry.SETRANGE("Dimension Set ID", SalesCrMemoLine."Dimension Set ID");
                                                DimSetEntry.SETRANGE("Dimension Code", DimensionCode);
                                                DimSetEntry.SETRANGE("Dimension Value Code", DimensionValue);
                                                IF DimSetEntry.FINDFIRST THEN BEGIN
                                                    ResultAmount += SalesCrMemoLine."Amount Including VAT";
                                                    blnFound := true;
                                                END;
                                            UNTIL SalesCrMemoLine.NEXT = 0;
                                    until SalesCrMemoHeader.Next() = 0;
                                If not blnFound then begin
                                    DimSetEntry.RESET;
                                    DimSetEntry.SETRANGE("Dimension Set ID", GLEntry."Dimension Set ID");
                                    DimSetEntry.SETRANGE("Dimension Code", DimensionCode);
                                    DimSetEntry.SETRANGE("Dimension Value Code", DimensionValue);
                                    IF DimSetEntry.FINDFIRST THEN BEGIN
                                        CustLedgEntry.CalcFields("Amount (LCY)");
                                        ResultAmount += CustLedgEntry."Amount (LCY)";
                                        blnFound := true;
                                    END;
                                end;
                            until DetCustLedgEntry.Next() = 0;
                    until CustLedgEntry.Next() = 0;

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

