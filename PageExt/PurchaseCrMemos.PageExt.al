pageextension 57010 PurchaseCreditMemosPageExt extends "Purchase Credit Memos"
{
    Caption = 'Purchase Credit Memos With Process';

    trigger OnOpenPage()
    begin
        Rec.FilterGroup(2);
        Rec.SetRange("Not Budget Document", false);
    end;
}
