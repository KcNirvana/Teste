page 57107 "Expense Bud. Exec. Demo Report"
{
    Caption = 'Expenses Budget Execution Demonstration Report';
    Editable = false;
    PageType = List;
    SourceTable = "PTSS Temporary Table";
    SourceTableTemporary = true;

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
                field("Payable Exp. from Prev. Period"; Rec.Decimal1)
                {
                    Caption = 'Payable Exp. from Prev. Period';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[1]);
                    end;
                }
                field("Corrected Endowments"; Rec.Decimal2)
                {
                    Caption = 'Corrected Endowments';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[2]);
                    end;
                }
                field(Captive; Rec.Decimal3)
                {
                    Caption = 'Captive';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[20]);
                    end;
                }
                field("Not Captive"; Rec.Decimal4)
                {
                    Caption = 'Not Captive';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[21]);
                    end;
                }

                field("Available Endowments"; Rec.Decimal5)
                {
                    Caption = 'Available Endowments';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[5]);
                    end;
                }
                field("Avaylable Budgets"; Rec.Decimal6)
                {
                    Caption = 'Avaylable Budgets';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[6]);
                    end;
                }

                field(Commitments; Rec.Decimal7)
                {
                    Caption = 'Commitments';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[3]);
                    end;
                }
                field(Obligations; Rec.Decimal8)
                {
                    Caption = 'Obligations';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[4]);
                    end;
                }

                field("Gross Payed Expenses"; Rec.Decimal9)
                {
                    Caption = 'Gross Payed Expenses';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[7]);
                    end;
                }
                field("Issued Pmt Disp. Repositions"; Rec.Decimal10)
                {
                    Caption = 'Issued Pmt Disp. Repositions';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[8]);
                    end;
                }
                field("Received Pmd Dips. Repositions"; Rec.Decimal11)
                {
                    Caption = 'Received Pmd Dips. Repositions';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[9]);
                    end;
                }

                field("Net Paid Exp. Ref. - Prev. Per"; Rec.Decimal12)
                {
                    Caption = 'Net Paid Exp. Ref. - Prev. Per';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[22]);
                    end;
                }
                field("Net Paid Exp. Ref. - Curr. Per"; Rec.Decimal13)
                {
                    Caption = 'Net Paid Exp. Ref. - Curr. Per';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[23]);
                    end;
                }

                field(Total; Rec.Decimal13 - Rec.Decimal12)
                {
                    Caption = 'Total';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }
                field("Commitments to Move"; Rec.Decimal7 - Rec.Decimal8)
                {
                    Caption = 'Commitments to Move';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }

                field("Unpaid Obligations"; Rec.Decimal8 - (Rec.Decimal13 - Rec.Decimal12))
                {
                    Caption = 'Unpaid Obligations';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                }

                field("Made Commitments Future Per N1"; Rec.Decimal14)
                {
                    Caption = 'Made Commitments Future Per N+1';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[10]);
                    end;
                }
                field("Made Commitments Future Per N2"; Rec.Decimal15)
                {
                    Caption = 'Made Commitments Future Per N+2';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[11]);
                    end;
                }
                field("Made Commitments Future Per N3"; Rec.Decimal16)
                {
                    Caption = 'Made Commitments Future Per N+3';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[12]);
                    end;
                }
                field("Made Commitments Future Per N4"; Rec.Decimal17)
                {
                    Caption = 'Made Commitments Future Per N+4';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[13]);
                    end;
                }
                field("Made Commitments Future Per NN"; Rec.Decimal18)
                {
                    Caption = 'Made Commitments Future Per N+N';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[14]);
                    end;
                }

                field("Obligations Future Period N1"; Rec.Decimal19)
                {
                    Caption = 'Obligations Future Period N+1';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[15]);
                    end;
                }
                field("Obligations Future Period N2"; Rec.Decimal20)
                {
                    Caption = 'Obligations Future Period N+2';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[16]);
                    end;
                }
                field("Obligations Future Period N3"; Rec.Decimal21)
                {
                    Caption = 'Obligations Future Period N+3';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[17]);
                    end;
                }
                field("Obligations Future Period N4"; Rec.Decimal22)
                {
                    Caption = 'Obligations Future Period N+4';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[18]);
                    end;
                }
                field("Obligations Future Period NN"; Rec.Decimal23)
                {
                    Caption = 'Obligations Future Period N+N';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec.Text3, DateFilter, FilterAccounts[19]);
                    end;
                }

                field("Budget Execution Level - Prev. Per"; Rec.Decimal24)
                {
                    Caption = 'Budget Execution Level - Prev. Per';
                    Style = Strong;
                    StyleExpr = Rec.Boolean1;

                }
                field("Budget Execution Level - Curr. Per"; Rec.Decimal25)
                {
                    Caption = 'Budget Execution Level - Curr. Per';
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
        DateFilter: Text[30];
        DimensionCode: Code[20];
        FilterAccounts: array[23] of text;

    trigger OnOpenPage()
    begin
        Clear(GLSetupShortcutDimCode);
        DimMgt.GetGLSetup(GLSetupShortcutDimCode);
        FillTempTable();
    end;

    procedure SetParam(pDimensionCode: Code[20]; pDateFilter: Text[30]; pFilterAccounts: array[23] of text);
    begin
        DimensionCode := pDimensionCode;
        DateFilter := pDateFilter;
        COPYARRAY(FilterAccounts, pFilterAccounts, 1);
    end;

    local procedure FillTempTable()
    var
        DimensionValue: Record "Dimension Value";
        RubricFilter: Text;
        EntryNo: Integer;
        Window: Dialog;
        TotalRecNo: Integer;
        RecNo: Integer;
        Text001: Label 'Analyzing Data % #1###';
    begin
        Clear(Rec);
        Clear(Window);
        Rec.DeleteAll();
        EntryNo := 1;

        GetDates();

        DimensionValue.Reset();
        DimensionValue.SetRange("Dimension Code", DimensionCode);
        DimensionValue.SetRange("Budget Dim Type", "Budget Dim Type"::Expenditure);
        if DimensionValue.FindSet() then begin
            Window.Open(Text001);
            Window.Update(1, 0);
            TotalRecNo := DimensionValue.Count();
            RecNo := 0;
            repeat
                RecNo := RecNo + 1;
                Window.Update(1, 100 * RecNo div TotalRecNo);

                Clear(RubricFilter);
                If DimensionValue.Totaling <> '' then
                    RubricFilter := DimensionValue.Totaling
                else
                    RubricFilter := DimensionValue.Code;
                Rec.Init();
                Rec."Entry No." := EntryNo;
                Rec.Code1 := DimensionValue.Code;
                Rec.Text1 := DimensionValue.Name;
                Rec.Decimal1 := -GetAmounts(RubricFilter, DateFilter, FilterAccounts[1]);
                Rec.Decimal2 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[2]);
                Rec.Decimal3 := -GetAmounts(RubricFilter, DateFilter, FilterAccounts[20]);
                Rec.Decimal4 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[21]);
                Rec.Decimal5 := -GetAmounts(RubricFilter, DateFilter, FilterAccounts[5]);
                Rec.Decimal6 := -GetAmounts(RubricFilter, DateFilter, FilterAccounts[6]);
                Rec.Decimal7 := -GetAmounts(RubricFilter, DateFilter, FilterAccounts[3]);
                Rec.Decimal8 := -GetAmounts(RubricFilter, DateFilter, FilterAccounts[4]);
                Rec.Decimal9 := -GetAmounts(RubricFilter, DateFilter, FilterAccounts[7]);
                Rec.Decimal10 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[8]);
                Rec.Decimal11 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[9]);
                Rec.Decimal12 := -GetAmounts(RubricFilter, DateFilter, FilterAccounts[22]);
                Rec.Decimal13 := -GetAmounts(RubricFilter, DateFilter, FilterAccounts[23]);
                Rec.Decimal14 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[10]);
                Rec.Decimal15 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[11]);
                Rec.Decimal16 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[12]);
                Rec.Decimal17 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[13]);
                Rec.Decimal18 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[14]);
                Rec.Decimal19 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[15]);
                Rec.Decimal20 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[16]);
                Rec.Decimal21 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[17]);
                Rec.Decimal22 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[18]);
                Rec.Decimal23 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[19]);
                if Rec.Decimal2 > 0 then begin
                    Rec.Decimal24 := (Rec.Decimal12 / Rec.Decimal2) * 100;
                    Rec.Decimal25 := (Rec.Decimal13 / Rec.Decimal2) * 100;
                end;
                Rec.Decimal24 := GetAmounts(RubricFilter, DateFilter, FilterAccounts[19]);
                Rec.Boolean1 := DimensionValue.Totaling <> '';
                Rec.Text3 := RubricFilter;
                Rec.Insert();
                EntryNo += 1;
            until DimensionValue.Next() = 0;
            Window.Close();
        end;
        Rec.Reset();
        if Rec.FindFirst() then;
    end;

    local procedure GetAmounts(RubricFilter: text; DateFilter: text; AccountFilter: text): Decimal
    var
        GLEntryByRubric: Query "GLEntry By Rubric";
        ReturnAmount: Decimal;
    begin
        Clear(ReturnAmount);
        Clear(GLEntryByRubric);
        GLEntryByRubric.SetFilter(G_L_Account, AccountFilter);
        GLEntryByRubric.SetFilter(Posting_Date, DateFilter);
        GLEntryByRubric.SetFilter(Rubric_Code, RubricFilter);
        GLEntryByRubric.Open();
        while GLEntryByRubric.Read() do
            ReturnAmount += GLEntryByRubric.Sum_Amount;

        GLEntryByRubric.Close();
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
}

