pageextension 57055 UserPersonalizationPageExt extends "User Personalization"
{
    trigger OnModifyRecord(): Boolean
    begin
        if xRec.Role <> Rec.Role then
            ValidateChangeProfile();
    end;

    local procedure ValidateChangeProfile()
    var
        Text001: Label 'You dont have permission to modify the profile.';
        UserSetup: Record "User Setup";
    begin
        IF UserSetup.GET(USERID) THEN BEGIN
            IF NOT UserSetup.ChangeProfile THEN
                ERROR(Text001);
        END ELSE
            ERROR(Text001);
    end;
}
