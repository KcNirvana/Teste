pageextension 57000 DimensionValuePageExt extends "Dimension Values"
{
    layout
    {
        addafter(Totaling)
        {
            field("Budget Dim Type"; Rec."Budget Dim Type")
            {
                ApplicationArea = All;
            }
            field("Rubric Code"; Rec."Rubric Code")
            {
                Visible = IsRubricVisible;
                ApplicationArea = All;
            }
            field("Receipt Expense Type"; Rec."Receipt Expense Type")
            {
                ApplicationArea = All;
            }
        }
    }

    var
        IsRubricVisible: boolean;

    trigger OnOpenPage()
    var
        BugetReportConfig: Record "Budget Report Configuration";
    begin
        IsRubricVisible := (BugetReportConfig.Get()) and (Rec."Dimension Code" <> '') and (BugetReportConfig."Economic Dimension" = Rec."Dimension Code");
    end;

}
