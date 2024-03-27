pageextension 57029 CreditTransfRegistersPageExt extends "Credit Transfer Registers"
{
    layout
    {
        addafter("From Bank Account Name")
        {
            field("From Entry No."; Rec."From Entry No.")
            {
                ApplicationArea = all;
                Editable = false;
            }
            field("To Entry No."; Rec."To Entry No.")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }
    }
    actions
    {
        addfirst(reporting)
        {
            action("Bank - Payment Advise")
            {
                ApplicationArea = All;
                Caption = 'Bank - Payment Advise';
                Image = BankAccountRec;
                Promoted = true;
                PromotedCategory = "Report";
                PromotedOnly = true;
                trigger OnAction()
                begin
                    ShowPaymentsAdvise(Rec);
                end;
            }
        }
    }
    local procedure ShowPaymentsAdvise(CreditTransfRegister: Record "Credit Transfer Register")
    var
        CreditTransfersEntry: Record "Credit Transfer Entry";
        BankPaymentAdvice: Report "Bank - Payment Advice";
        BankAdvPaymentAdvice: Report "Bank - Payment Advice Advance";
        Text001: Label 'The payment was canceled.';
        Text002: Label 'The payment still not posted.';
    begin
        if CreditTransfRegister.Status = CreditTransfRegister.Status::Canceled then
            Error(Text001);
        IF (CreditTransfRegister."From Entry No." <> 0) OR (CreditTransfRegister."To Entry No." <> 0) THEN BEGIN
            CreditTransfersEntry.Reset();
            CreditTransfersEntry.SETRANGE("Credit Transfer Register No.", CreditTransfRegister."No.");
            IF CreditTransfersEntry."Applies-to Entry No." = 0 THEN BEGIN
                CLEAR(BankAdvPaymentAdvice);
                BankAdvPaymentAdvice.SetSEPAIdentifier(CreditTransfRegister.Identifier);
                BankAdvPaymentAdvice.RUN;
            END ELSE BEGIN
                CLEAR(BankPaymentAdvice);
                BankPaymentAdvice.SetSEPAIdentifier(CreditTransfRegister.Identifier);
                BankPaymentAdvice.RUN;
            END;
        end else
            ERROR(Text002);
    end;
}