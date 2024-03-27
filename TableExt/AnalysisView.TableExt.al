tableextension 57003 AnalysisViewTableExt extends "Analysis View"
{
    fields
    {
    }

    trigger OnDelete()
    begin
        ValidateOrcAnalysis;
    end;

    trigger OnRename()
    begin
        ValidateOrcAnalysis;
    end;

    trigger OnModify()
    begin
        if ("Account Source" <> xRec."Account Source") or
            ("Update on Posting" <> xRec."Update on Posting") or
            ("Account Filter" <> xRec."Account Filter") or
            ("Business Unit Filter" <> xRec."Business Unit Filter") or
            ("Starting Date" <> xRec."Starting Date") or
            ("Date Compression" <> xRec."Date Compression") or
            ("Dimension 1 Code" <> xRec."Dimension 1 Code") or
            ("Dimension 2 Code" <> xRec."Dimension 2 Code") or
            ("Dimension 3 Code" <> xRec."Dimension 3 Code") or
            ("Dimension 4 Code" <> xRec."Dimension 4 Code") or
            ("Include Budgets" <> xRec."Include Budgets") or
            ("Refresh When Unblocked" <> xRec."Refresh When Unblocked") then
            ValidateOrcAnalysis();
    end;

    local procedure ValidateOrcAnalysis()
    var
        Text001: Label 'You dont have permission to modify/delete this analysis view.';
        UserSetup: Record "User Setup";
    begin
        IF UserSetup.GET(USERID) THEN BEGIN
            IF NOT UserSetup.ModifyOrcAnalysis THEN
                ERROR(Text001);
        END ELSE
            ERROR(Text001);
    end;
}
