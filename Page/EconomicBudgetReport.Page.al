page 57111 "Economic Budget Report"
{
    Caption = 'Economic Budget Report';
    PageType = List;
    DataCaptionExpression = GetCaption();
    Editable = false;
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
                field("Economic Amount"; Rec.Decimal1)
                {
                    Caption = 'Economic Amount';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts);
                    end;
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
        FilterAccounts: Text;

    trigger OnOpenPage()
    begin
        Clear(GLSetupShortcutDimCode);
        DimMgt.GetGLSetup(GLSetupShortcutDimCode);
        FillTempTable();
    end;

    procedure SetParam(pDimensionCode: Code[20]; pDateFilter: Text[30]; pFilterAccounts: text)
    begin
        DimensionCode := pDimensionCode;
        DateFilter := pDateFilter;
        FilterAccounts := pFilterAccounts;
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

        DimensionValue.Reset();
        DimensionValue.SetRange("Dimension Code", DimensionCode);
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
                Rec.Decimal1 := GetAmounts(EconomicFilter, DateFilter, FilterAccounts);
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

    local procedure GetCaption(): Text[250]
    begin
        EXIT(STRSUBSTNO('%1 %2', Rec.Code1, Rec.Text1))
    end;

}

