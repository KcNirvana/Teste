pageextension 57006 PurchaseInvoicesPageExt extends "Purchase Invoices"
{
    Caption = 'Purchase Invoices With Process';
    trigger OnOpenPage()
    begin
        Rec.FilterGroup(2);
        Rec.SetRange("Not Budget Document", false);
    end;
}
