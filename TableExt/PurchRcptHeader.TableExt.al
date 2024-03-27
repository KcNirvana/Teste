tableextension 57027 PurchRcptHeaderTableExt extends "Purch. Rcpt. Header"
{
    fields
    {
        field(50000; "Vendor Invoice No."; Code[20])
        {
            Caption = 'Vendor Invoice No.';
            Editable = false;
        }
        field(61000; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            TableRelation = Consultation;
            Editable = false;
        }

        field(61003; "Invoiced Lines"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("Purch. Rcpt. Line"."Quantity Invoiced" WHERE("Document No." = FIELD("No."),
                                                                             "Buy-from Vendor No." = FIELD("Buy-from Vendor No.")));
            Caption = 'Invoiced Lines';

            Editable = false;
        }

    }
    trigger OnBeforeDelete()
    begin
        IsDocumentDeletionAllowed();
    end;

    local procedure IsDocumentDeletionAllowed()
    var
        PurchaseLines: Record "Purchase Line";
        PurchInvLine: Record "Purch. Inv. Line";
        ItemLedgerEntry: Record "Item Ledger Entry";
        ValueEntry: Record "Value Entry";
        OrderLines: Record "Purchase Line";
        PurchRcptLines: Record "Purch. Rcpt. Line";
        Currency: Record Currency;
        Text003: Label 'You cannot delete document because it has invoices associated.';
        Text004: Label 'You cannot delete document because it has posted invoices associated.';
    begin
        PurchaseLines.Reset();
        PurchaseLines.SetRange("Document Type", PurchaseLines."Document Type"::Invoice);
        PurchaseLines.SetRange("Receipt No.", "No.");
        if PurchaseLines.FindFirst() then
            Error(Text003);

        PurchInvLine.RESET;
        PurchInvLine.SetRange("Receipt No.", "No.");
        if PurchInvLine.FindFirst() then
            Error(Text004);

        PurchRcptLines.Reset();
        PurchRcptLines.SetRange("Document No.", "No.");
        if PurchRcptLines.FindSet() then
            repeat
                OrderLines.GET(OrderLines."Document Type"::Order, PurchRcptLines."Order No.", PurchRcptLines."Order Line No.");
                OrderLines."Quantity Received" -= PurchRcptLines.Quantity;
                OrderLines."Qty. Received (Base)" -= PurchRcptLines."Quantity (Base)";
                OrderLines."Qty. to Receive" += PurchRcptLines.Quantity;
                OrderLines."Qty. to Receive (Base)" += PurchRcptLines."Quantity (Base)";
                OrderLines."Qty. Rcd. Not Invoiced" -= PurchRcptLines.Quantity;
                OrderLines."Qty. Rcd. Not Invoiced (Base)" -= PurchRcptLines."Quantity (Base)";
                OrderLines."Outstanding Quantity" += PurchRcptLines.Quantity;
                OrderLines."Outstanding Qty. (Base)" += PurchRcptLines.Quantity;
                OrderLines.Validate("Amt. Rcd. Not Invoiced", OrderLines."Amt. Rcd. Not Invoiced" - ROUND(OrderLines."Amount Including VAT" * PurchRcptLines.Quantity / OrderLines.Quantity, Currency."Amount Rounding Precision"));
                OrderLines.Modify()
            UNTIL PurchRcptLines.NEXT = 0;

        OnAfterValidateDelete(Rec);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterValidateDelete(PurchRcptHeader: Record "Purch. Rcpt. Header")
    begin
    end;
}