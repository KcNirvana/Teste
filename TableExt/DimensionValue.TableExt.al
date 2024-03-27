tableextension 57013 DimensionValueTableExt extends "Dimension Value"
{
    fields
    {
        field(50002; "Rubric Code"; Code[20])
        {
            Caption = 'Rubric Code';

            trigger OnLookup()
            begin
                OnLookupRubricCode();
            end;

            trigger OnValidate()
            begin
                ValidateRubricCode();
            end;
        }
        field(61002; "Budget Dim Type"; Enum "Budget Dim Type")
        {
            Caption = 'Budget Dim Type';
        }
        field(61107; "Receipt Expense Type"; Enum "Dim Value Receipt Expense Type")
        {
            Caption = 'Receipt Expense Type';
        }
    }

    local procedure OnLookupRubricCode()
    var
        DimensionValue: Record "Dimension Value";
        BugetReportConfig: Record "Budget Report Configuration";
    begin
        BugetReportConfig.Get();
        BugetReportConfig.TestField("Rubric Dimension");
        Clear(DimensionValue);
        DimensionValue.FilterGroup(0);
        DimensionValue.SetRange("Dimension Code", BugetReportConfig."Rubric Dimension");
        DimensionValue.SetRange("Budget Dim Type", "Budget Dim Type");
        IF PAGE.RUNMODAL(Page::"Dimension Values", DimensionValue) = ACTION::LookupOK THEN
            Validate("Rubric Code", DimensionValue.Code);

    end;

    local procedure ValidateRubricCode()
    var
        DimensionValue: Record "Dimension Value";
        BugetReportConfig: Record "Budget Report Configuration";
    begin
        BugetReportConfig.Get();
        BugetReportConfig.TestField("Rubric Dimension");
        If ("Rubric Code" <> '') and ("Rubric Code" <> xRec."Rubric Code") then begin
            DimensionValue.Get(BugetReportConfig."Rubric Dimension", "Rubric Code");
            DimensionValue.TestField("Dimension Value Type", "Dimension Value Type"::Standard);
            DimensionValue.TestField(Blocked, false);
            DimensionValue.TestField("Budget Dim Type", "Budget Dim Type");
        end;
    end;
}
