tableextension 57045 UserSettingsTableExt extends "User Settings"
{
    trigger OnModify()
    begin
        if xRec."Profile ID" <> Rec."Profile ID" then
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
