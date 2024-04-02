page 50008 "Analytical Trial Balance"
{

    Caption = 'Analytical Trial Balance';
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = Worksheet;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    SourceTable = "PTSS Temporary Table";
    SourceTableTemporary = true;
    SourceTableView = SORTING("Entry No.");

    layout
    {
        area(content)
        {
            group(Filters)
            {
                Caption = 'Filters';
                field(GLAccountsFilter; GLAccountsFilter)
                {
                    Caption = 'Accounts Filter';
                    trigger OnValidate()
                    begin
                        ClearAmounts;
                    end;
                }
                field(Dimension1Filter; Dimension1Filter)
                {
                    CaptionClass = '1,2,1';
                    TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));

                    trigger OnValidate()
                    begin
                        ClearAmounts;
                    end;
                }
                field(StartDate; StartDate)
                {
                    Caption = 'Start Date';

                    trigger OnValidate()
                    begin
                        ClearAmounts;
                    end;
                }
                field(NoPeriods; NoPeriods)
                {
                    Caption = 'No. Periods';
                    MinValue = 1;
                    MaxValue = 12;
                    trigger OnValidate()
                    begin
                        ClearAmounts;
                    end;
                }
            }
            repeater(Group)
            {
                Editable = false;
                FreezeColumn = "Dimension Name";
                field("G/L Account No."; Rec.Code1)
                {
                    Caption = 'G/L Account No.';
                }
                field("G/L Account Name"; Rec.Text1)
                {
                    Caption = 'G/L Account Name';
                }
                field("Global Dimension 2 Code"; Rec.Code2)
                {
                    CaptionClass = '1,2,2';
                }
                field("Dimension Name"; Rec.Text2)
                {
                    Caption = 'Dimension Name';
                }
                field(Month1; Rec.Decimal1)
                {
                    CaptionClass = PeriodsCaption[1];
                    Visible = Period1Visible;
                }
                field(Month2; Rec.Decimal2)
                {
                    CaptionClass = PeriodsCaption[2];
                    Visible = Period2Visible;
                }
                field(Month3; Rec.Decimal3)
                {
                    CaptionClass = PeriodsCaption[3];
                    Visible = Period3Visible;
                }
                field(Month4; Rec.Decimal4)
                {
                    CaptionClass = PeriodsCaption[4];
                    Visible = Period4Visible;
                }
                field(Month5; Rec.Decimal5)
                {
                    CaptionClass = PeriodsCaption[5];
                    Visible = Period5Visible;
                }
                field(Month6; Rec.Decimal6)
                {
                    CaptionClass = PeriodsCaption[6];
                    Visible = Period6Visible;
                }
                field(Month7; Rec.Decimal7)
                {
                    CaptionClass = PeriodsCaption[7];
                    Visible = Period7Visible;
                }
                field(Month8; Rec.Decimal8)
                {
                    CaptionClass = PeriodsCaption[8];
                    Visible = Period8Visible;
                }
                field(Month9; Rec.Decimal9)
                {
                    CaptionClass = PeriodsCaption[9];
                    Visible = Period9Visible;
                }
                field(Month10; Rec.Decimal10)
                {
                    CaptionClass = PeriodsCaption[10];
                    Visible = Period10Visible;
                }
                field(Month11; Rec.Decimal11)
                {
                    CaptionClass = PeriodsCaption[11];
                    Visible = Period11Visible;
                }
                field(Month12; Rec.Decimal12)
                {
                    CaptionClass = PeriodsCaption[12];
                    Visible = Period12Visible;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Calculate Amounts")
            {
                Caption = 'Calculate Amounts';
                Image = UpdateDescription;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    GetData;
                end;
            }
            action("Export To Excel")
            {
                Caption = 'Export To Excel';
                Image = Excel;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    ExportToExcel;
                end;
            }
        }

    }

    trigger OnOpenPage()
    begin
        StartDate := WorkDate;
        NoPeriods := 1;
    end;

    var
        GLAccountsFilter: Text;
        Dimension1Filter: Text;
        StartDate: Date;
        NoPeriods: Integer;
        PeriodsCaption: array[12] of Text;
        Period1Visible: Boolean;
        Period2Visible: Boolean;
        Period3Visible: Boolean;
        Period4Visible: Boolean;
        Period5Visible: Boolean;
        Period6Visible: Boolean;
        Period7Visible: Boolean;
        Period8Visible: Boolean;
        Period9Visible: Boolean;
        Period10Visible: Boolean;
        Period11Visible: Boolean;
        Period12Visible: Boolean;

    local procedure GetData()
    var
        GLAccount: Record "G/L Account";
        GLAmountsByDimension: Query GLAmountsByDimension;
        EntryNo: Integer;
        FirstDate: Date;
        LastDate: Date;
        CurrDate: Date;
        PeriodsFormula: DateFormula;
        i: Integer;
        Text001: Label 'Start Date cant be empty.';
        Text002: Label 'No periods invalid.';
    begin
        if StartDate = 0D then
            Error(Text001);
        if (NoPeriods < 1) or (NoPeriods > 12) then
            Error(Text002);

        Clear(PeriodsCaption);
        PeriodsVisible(NoPeriods);
        Rec.Reset;
        Rec.DeleteAll;
        Evaluate(PeriodsFormula, '<' + Format(NoPeriods) + 'M>');
        FirstDate := CalcDate('<-CM>', StartDate);
        LastDate := CalcDate('<-CM>', CalcDate(PeriodsFormula, FirstDate));
        CurrDate := FirstDate;

        i := 1;
        EntryNo := 1;
        while (i <= NoPeriods) do begin
            PeriodsCaption[i] := Format(CurrDate, 0, '<Month,2>/<Year4>');
            GLAccount.Reset;
            GLAccount.SetRange("Account Type", "G/L Account Type"::Posting);
            GLAccount.SetFilter("No.", GLAccountsFilter);
            if GLAccount.FindSet then
                repeat
                    Clear(GLAmountsByDimension);
                    GLAmountsByDimension.SetRange(GLAccountNo, GLAccount."No.");
                    GLAmountsByDimension.SetRange(PostingDate, CurrDate, CalcDate('<CM>', CurrDate));
                    if Dimension1Filter <> '' then
                        GLAmountsByDimension.SetFilter(GlobalDimension1Code, Dimension1Filter);
                    GLAmountsByDimension.Open();
                    while GLAmountsByDimension.Read() do begin
                        Rec.Reset();
                        Rec.SetRange(Code1, GLAmountsByDimension.GLAccountNo);
                        Rec.SetRange(Code2, GLAmountsByDimension.GlobalDimension2Code);
                        if Rec.FindFirst() then begin
                            case i of
                                1:
                                    Rec.Decimal1 := GLAmountsByDimension.Amount;
                                2:
                                    Rec.Decimal2 := GLAmountsByDimension.Amount;
                                3:
                                    Rec.Decimal3 := GLAmountsByDimension.Amount;
                                4:
                                    Rec.Decimal4 := GLAmountsByDimension.Amount;
                                5:
                                    Rec.Decimal5 := GLAmountsByDimension.Amount;
                                6:
                                    Rec.Decimal6 := GLAmountsByDimension.Amount;
                                7:
                                    Rec.Decimal7 := GLAmountsByDimension.Amount;
                                8:
                                    Rec.Decimal8 := GLAmountsByDimension.Amount;
                                9:
                                    Rec.Decimal9 := GLAmountsByDimension.Amount;
                                10:
                                    Rec.Decimal10 := GLAmountsByDimension.Amount;
                                11:
                                    Rec.Decimal11 := GLAmountsByDimension.Amount;
                                12:
                                    Rec.Decimal12 := GLAmountsByDimension.Amount;
                            end;
                            Rec.Modify();
                        end else begin
                            Rec.Init;
                            Rec."Entry No." := EntryNo;
                            Rec.Code1 := GLAmountsByDimension.GLAccountNo;
                            Rec.Text1 := GLAmountsByDimension.GLAccountName;
                            Rec.Code2 := GLAmountsByDimension.GlobalDimension2Code;
                            Rec.Text2 := GLAmountsByDimension.DimensionName;
                            case i of
                                1:
                                    Rec.Decimal1 := GLAmountsByDimension.Amount;
                                2:
                                    Rec.Decimal2 := GLAmountsByDimension.Amount;
                                3:
                                    Rec.Decimal3 := GLAmountsByDimension.Amount;
                                4:
                                    Rec.Decimal4 := GLAmountsByDimension.Amount;
                                5:
                                    Rec.Decimal5 := GLAmountsByDimension.Amount;
                                6:
                                    Rec.Decimal6 := GLAmountsByDimension.Amount;
                                7:
                                    Rec.Decimal7 := GLAmountsByDimension.Amount;
                                8:
                                    Rec.Decimal8 := GLAmountsByDimension.Amount;
                                9:
                                    Rec.Decimal9 := GLAmountsByDimension.Amount;
                                10:
                                    Rec.Decimal10 := GLAmountsByDimension.Amount;
                                11:
                                    Rec.Decimal11 := GLAmountsByDimension.Amount;
                                12:
                                    Rec.Decimal12 := GLAmountsByDimension.Amount;
                            end;
                            Rec.Insert();
                            EntryNo += 1;
                        end;
                    end;
                until GLAccount.Next = 0;
            CurrDate := CalcDate('<-CM>', (CalcDate('<1M>', CurrDate)));
            i += 1;
        end;

        Rec.Reset();
        if Rec.FindFirst then;
    end;

    local procedure ExportToExcel()
    var
        ExcelBuffer: Record "Excel Buffer" temporary;
        GLentry: Record "G/L Entry";
        Text001: Label 'Analytical Trial Balance';
        Text002: Label 'No data to export.';
        Label001: Label 'Dimension Name';
        i: Integer;
    begin
        Clear(ExcelBuffer);
        Rec.Reset();
        if Rec.FindSet() then begin
            ExcelBuffer.NewRow();
            ExcelBuffer.AddColumn(GLentry.FieldCaption("G/L Account No."), false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            ExcelBuffer.AddColumn(GLentry.FieldCaption("G/L Account Name"), false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            ExcelBuffer.AddColumn(GLentry.FieldCaption("Global Dimension 2 Code"), false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            ExcelBuffer.AddColumn(Label001, false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            for i := 1 to NoPeriods do
                if PeriodsCaption[i] <> ' ' then
                    ExcelBuffer.AddColumn(PeriodsCaption[i], false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            repeat
                ExcelBuffer.NewRow;
                ExcelBuffer.AddColumn(Rec.Code1, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn(Rec.Text1, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn(Rec.Code2, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn(Rec.Text2, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Text);
                if Period1Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal1, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Period2Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal2, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Period3Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal3, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Period4Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal4, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Period5Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal5, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Period6Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal6, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Period7Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal7, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Period8Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal8, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Period9Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal9, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Period10Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal10, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Period11Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal11, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Period12Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal12, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
            until Rec.Next() = 0;

            ExcelBuffer.CreateNewBook(Text001);
            ExcelBuffer.WriteSheet(Text001, CompanyName, UserId);
            ExcelBuffer.CloseBook();
            ExcelBuffer.SetFriendlyFilename(Text001);
            ExcelBuffer.OpenExcel();

        end else
            Error(Text002);

    end;

    local procedure PeriodsVisible(NoofPeriods: Integer)
    var
        i: Integer;
    begin
        for i := 1 to NoofPeriods do
            case i of
                1:
                    Period1Visible := true;
                2:
                    Period2Visible := true;
                3:
                    Period3Visible := true;
                4:
                    Period4Visible := true;
                5:
                    Period5Visible := true;
                6:
                    Period6Visible := true;
                7:
                    Period7Visible := true;
                8:
                    Period8Visible := true;
                9:
                    Period9Visible := true;
                10:
                    Period10Visible := true;
                11:
                    Period11Visible := true;
                12:
                    Period12Visible := true;
            end;
    end;

    local procedure ClearAmounts()
    begin
        Rec.Reset;
        Rec.DeleteAll;
        Clear(Period1Visible);
        Clear(Period2Visible);
        Clear(Period3Visible);
        Clear(Period4Visible);
        Clear(Period5Visible);
        Clear(Period6Visible);
        Clear(Period7Visible);
        Clear(Period8Visible);
        Clear(Period9Visible);
        Clear(Period10Visible);
        Clear(Period11Visible);
        Clear(Period12Visible);
        CurrPage.Update();
    end;
}

