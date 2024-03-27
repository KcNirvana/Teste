pageextension 57054 SalesSetupPageExt extends "Sales & Receivables Setup"
{
    layout
    {
        modify("Posted Credit Memo Nos.")
        {
            Editable = PostedNCSalesEditable;
            ApplicationArea = All;
        }
    }
    var
        PostedNCSalesEditable: Boolean;

    trigger OnAfterGetRecord()
    begin
        PostedNCSalesEditable := GetNCSalesEditable;
    end;

    local procedure GetNCSalesEditable(): Boolean
    var
        UserSetup: Record "User Setup";
    begin
        IF UserSetup.GET(USERID) THEN BEGIN
            IF NOT UserSetup.ChangePostedNCSeries THEN
                exit(false);
        END ELSE
            exit(false);

        exit(true);
    end;
}
