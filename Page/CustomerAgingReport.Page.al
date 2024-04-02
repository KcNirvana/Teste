page 50009 "Customer Aging Report"
{
    Caption = 'Customer Aging Report';
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
                field("Start Date"; StartDate)
                {
                    Caption = 'Start Date';
                    trigger OnValidate()
                    begin
                        ClearAmounts();
                    end;
                }
            }
            repeater(General)
            {
                Editable = false;
                field("Customer No."; Rec.Code1)
                {
                    Caption = 'Customer No.';
                    TableRelation = Customer;
                }
                field("Customer Name"; Rec.Text1)
                {
                    Caption = 'Customer Name';
                }
                field("Pending Balance"; Rec.Decimal1)
                {
                    Caption = 'Pending Balance';
                }
                field("Not Due Balance"; Rec.Decimal2)
                {
                    Caption = 'Not Due Balance';
                }
                field(Decimal3; Rec.Decimal3)
                {
                    CaptionClass = AgingCaption[1];
                    Visible = Aging1Visible;
                }
                field(Decimal4; Rec.Decimal4)
                {
                    CaptionClass = AgingCaption[2];
                    Visible = Aging2Visible;
                }
                field(Decimal5; Rec.Decimal5)
                {
                    CaptionClass = AgingCaption[3];
                    Visible = Aging3Visible;
                }
                field(Decimal6; Rec.Decimal6)
                {
                    CaptionClass = AgingCaption[4];
                    Visible = Aging4Visible;
                }
                field(Decimal7; Rec.Decimal7)
                {
                    CaptionClass = AgingCaption[5];
                    Visible = Aging5Visible;
                }
            }
        }
    }
    actions
    {
        area(Processing)
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
        StartDate := WorkDate();
    end;

    var
        StartDate: Date;
        AgingCaption: array[5] of Text;
        AgingDates: array[5] of Text;
        Aging1Visible: Boolean;
        Aging2Visible: Boolean;
        Aging3Visible: Boolean;
        Aging4Visible: Boolean;
        Aging5Visible: Boolean;

    local procedure GetData()
    var
        Customer: Record Customer;
        EntryNo: Integer;
        Window: Dialog;
        TotalRecNo: Integer;
        RecNo: Integer;
        Text001: Label 'Start Date cant be empty.';
        Text002: Label 'Analyzing Data % #1###';
    begin
        if StartDate = 0D then
            Error(Text001);

        Clear(AgingCaption);
        Clear(AgingDates);
        Rec.Reset;
        Rec.DeleteAll;
        GetAgingCaptions(AgingCaption, AgingDates);

        EntryNo := 1;
        Customer.Reset();
        Customer.SetRange("Date Filter", StartDate);
        Customer.SetAutoCalcFields("Balance (LCY)");
        if Customer.FindSet() then begin
            Window.Open(Text002);
            Window.Update(1, 0);
            TotalRecNo := Customer.Count();
            RecNo := 0;
            repeat
                RecNo := RecNo + 1;
                Window.Update(1, 100 * RecNo div TotalRecNo);
                Rec.Init();
                Rec."Entry No." := EntryNo;
                Rec.Code1 := Customer."No.";
                Rec.Text1 := Customer.Name;
                Rec.Decimal1 := Customer."Balance (LCY)";
                if Aging1Visible then
                    Rec.Decimal3 := GetAgingAmount(Rec.Code1, AgingDates[1]);
                if Aging2Visible then
                    Rec.Decimal4 := GetAgingAmount(Rec.Code1, AgingDates[2]);
                if Aging3Visible then
                    Rec.Decimal5 := GetAgingAmount(Rec.Code1, AgingDates[3]);
                if Aging4Visible then
                    Rec.Decimal6 := GetAgingAmount(Rec.Code1, AgingDates[4]);
                if Aging5Visible then
                    Rec.Decimal7 := GetAgingAmount(Rec.Code1, AgingDates[5]);
                Rec.Decimal2 := Customer."Balance (LCY)" - (Rec.Decimal3 + Rec.Decimal4 + Rec.Decimal5 + Rec.Decimal6 + Rec.Decimal7);
                Rec.Insert();
                EntryNo += 1;
            until Customer.Next() = 0;
        end;
        Rec.Reset();
        if Rec.FindFirst then;
    end;

    local procedure ExportToExcel()
    var
        ExcelBuffer: Record "Excel Buffer" temporary;
        Text001: Label 'Customer Aging Report';
        Text002: Label 'No data to export.';
        Text003: Label 'Customer No.';
        Text004: Label 'Customer Name';
        Text005: Label 'Pending Balance';
        Text006: Label 'Not Due Balance';
    begin
        Clear(ExcelBuffer);
        Rec.Reset();
        if Rec.FindSet() then begin
            ExcelBuffer.NewRow();
            ExcelBuffer.AddColumn(Text003, false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            ExcelBuffer.AddColumn(Text004, false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            ExcelBuffer.AddColumn(Text005, false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            ExcelBuffer.AddColumn(Text006, false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            if Aging1Visible then
                ExcelBuffer.AddColumn(AgingCaption[1], false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            if Aging2Visible then
                ExcelBuffer.AddColumn(AgingCaption[2], false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            if Aging3Visible then
                ExcelBuffer.AddColumn(AgingCaption[3], false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            if Aging4Visible then
                ExcelBuffer.AddColumn(AgingCaption[4], false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            if Aging5Visible then
                ExcelBuffer.AddColumn(AgingCaption[5], false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            repeat
                ExcelBuffer.NewRow;
                ExcelBuffer.AddColumn(Rec.Code1, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn(Rec.Text1, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn(Rec.Decimal1, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                ExcelBuffer.AddColumn(Rec.Decimal2, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Aging1Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal3, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Aging2Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal4, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Aging3Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal5, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Aging4Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal6, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
                if Aging5Visible then
                    ExcelBuffer.AddColumn(Rec.Decimal7, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
            until Rec.Next() = 0;

            ExcelBuffer.CreateNewBook(Text001);
            ExcelBuffer.WriteSheet(Text001, CompanyName, UserId);
            ExcelBuffer.CloseBook();
            ExcelBuffer.SetFriendlyFilename(Text001);
            ExcelBuffer.OpenExcel();

        end else
            Error(Text002);

    end;

    local procedure GetAgingAmount(CustomerNo: Code[20]; AgingCaption: Text): Decimal
    var
        CustPendingAmounts: Query "Customer Pending Amounts";
        Amount: Decimal;
    begin
        Clear(Amount);
        Clear(CustPendingAmounts);
        CustPendingAmounts.SetRange(CustomerNo, CustomerNo);
        CustPendingAmounts.SetFilter(DueDate, AgingCaption);
        CustPendingAmounts.Open();
        while CustPendingAmounts.Read() do
            Amount += CustPendingAmounts.Amount;

        exit(Amount);
    end;

    local procedure GetAgingCaptions(var AgingCaption: array[5] of Text; var AgingDates: array[5] of Text)
    var
        SalesSetup: Record "Sales & Receivables Setup";
        FieldsMaxMin: Record Integer;
        RecDate: Record Date;
        AgingInt: array[5, 2] of Integer;
        RecRef: RecordRef;
        FieldRef: FieldRef;
        FieldReference: Integer;
        FieldText: Text;
        FirstFieldDate: Date;
        LastFieldDate: Date;
        i: Integer;
        j: Integer;
        k: Integer;
        AgingText: Label '<-%1D>', Locked = true;
        MinValue: Integer;
        MaxValue: Integer;
    begin
        MinValue := -1000000000;
        MaxValue := 1000000000;
        SalesSetup.Get();
        FieldReference := 50101;
        Clear(AgingCaption);
        Clear(AgingDates);
        RecRef.Get(SalesSetup.RecordId);
        for i := 1 to ArrayLen(AgingInt, 1) do begin
            FieldRef := RecRef.Field(i + FieldReference);
            Evaluate(FieldText, Format(FieldRef.Value));
            if FieldText <> '' then begin
                Clear(FieldsMaxMin);
                FieldsMaxMin.SetFilter(Number, FieldText);
                if (FieldsMaxMin.FindFirst()) and (FieldsMaxMin.Number <> MinValue) then
                    AgingInt[i, 1] := FieldsMaxMin.Number;
                if (FieldsMaxMin.FindLast()) and (FieldsMaxMin.Number <> MaxValue) then
                    AgingInt[i, 2] := FieldsMaxMin.Number;
            end;
        end;

        for i := 1 to ArrayLen(AgingCaption) do begin
            Clear(FirstFieldDate);
            Clear(LastFieldDate);
            for j := 1 to ArrayLen(AgingInt, 2) do begin
                if AgingInt[i, j] <> 0 then
                    if j = 1 then
                        FirstFieldDate := CalcDate(StrSubstNo(AgingText, AgingInt[i, j]), StartDate)
                    else
                        LastFieldDate := CalcDate(StrSubstNo(AgingText, AgingInt[i, j]), StartDate);
            end;
            case true of
                (FirstFieldDate <> 0D) and (LastFieldDate <> 0D):
                    begin
                        AgingCaption[i] := Format(AgingInt[i, 1]) + '..' + Format(AgingInt[i, 2]);
                        AgingDates[i] := Format(LastFieldDate) + '..' + Format(FirstFieldDate);
                    end;
                (FirstFieldDate <> 0D) and (LastFieldDate = 0D):
                    begin
                        AgingCaption[i] := Format(AgingInt[i, 1]) + '..';
                        AgingDates[i] := '..' + Format(FirstFieldDate);
                    end;
                (FirstFieldDate = 0D) and (LastFieldDate <> 0D):
                    begin
                        AgingCaption[i] := '..' + Format(AgingInt[i, 2]);
                        AgingDates[i] := Format(LastFieldDate) + '..';
                    end;
            end;
        end;
        Aging1Visible := AgingCaption[1] <> '';
        Aging2Visible := AgingCaption[2] <> '';
        Aging3Visible := AgingCaption[3] <> '';
        Aging4Visible := AgingCaption[4] <> '';
        Aging5Visible := AgingCaption[5] <> '';
    end;

    local procedure ClearAmounts()
    begin
        Rec.Reset;
        Rec.DeleteAll;
        Clear(Aging1Visible);
        Clear(Aging2Visible);
        Clear(Aging3Visible);
        Clear(Aging4Visible);
        Clear(Aging5Visible);
        CurrPage.Update();
    end;

}
