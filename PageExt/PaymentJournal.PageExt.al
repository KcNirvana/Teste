pageextension 57018 PaymentJournalPageExt extends "Payment Journal"
{
    layout
    {
        addbefore("Posting Date")
        {
            field("Line No."; Rec."Line No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field(ConfOpt00; Rec.ConfOpt00)
            {
                ApplicationArea = All;
            }
            field(ConfClass0; Rec.ConfClass0)
            {
                ApplicationArea = All;
            }
            field("No Budget"; Rec."No Budget")
            {
                ApplicationArea = All;
            }
        }
        addlast(Control1)
        {
            field("EasyDoc No."; Rec."EasyDoc No.")
            {
                ApplicationArea = All;
            }
            field("SEPA Category"; Rec."SEPA Category")
            {
                ApplicationArea = All;
            }
            field("Entity Type"; Rec."Entity Type")
            {
                ApplicationArea = All;
            }
            field("Cust. Type Entry"; Rec."Cust. Type Entry")
            {
                Visible = IsCreditCompany;
                ApplicationArea = All;
            }
        }
        modify("Document Date")
        {
            Visible = true;
        }
        modify("External Document No.")
        {
            Visible = true;
        }
        modify("Gen. Posting Type")
        {
            Visible = true;
        }
        modify("Gen. Bus. Posting Group")
        {
            Visible = true;
        }
        modify("Gen. Prod. Posting Group")
        {
            Visible = true;
        }
        modify("VAT Bus. Posting Group")
        {
            Visible = true;
        }
        modify("VAT Prod. Posting Group")
        {
            Visible = true;
        }
        modify("PTSS Posting Group")
        {
            Editable = false;
        }
        modify("PTSS Acc: cash-flow code")
        {
            Editable = false;
        }
        /* Nova Retenção
        modify(AppliesToDocNo)
        {
            Enabled = false;
        }
        */
    }
    actions
    {
        /* Nova Retenção
        modify("PTSS Calc.Withholding Tax")
        {
            Visible = false;
        }
        */
        addfirst(processing)
        {
            action("Import Journal Lines")
            {
                Caption = 'Import Journal Lines';
                Image = Import;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    Rec.ImportJournalLines();
                end;
            }
            action("Import GL Journal Lines")
            {
                Caption = 'Import GL Journal Lines';
                Image = Import;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    Rec.ImportGLJournalLines();
                end;
            }
        }
        addlast(Reporting)
        {
            action("Bank - Payment Advise")
            {
                ApplicationArea = All;
                Caption = 'Bank - Payment Advise';
                Image = BankAccountRec;
                Promoted = true;
                PromotedCategory = Report;
                trigger OnAction()
                begin
                    ShowBankPaymentAdvise();
                end;
            }
            action("Vendor - Payment Advise")
            {
                ApplicationArea = All;
                Caption = 'Vendor - Payment Advise';
                Image = BankAccountRec;
                Promoted = true;
                PromotedCategory = Report;
                trigger OnAction()
                begin
                    ShowVendorPaymentAdvise();
                end;
            }
        }

    }

    var
        IsCreditCompany: Boolean;

    trigger OnOpenPage()
    var
        CompanyInfo: Record "Company Information";
    begin
        CompanyInfo.GET;
        IsCreditCompany := CompanyInfo."Credits Company";
    end;

    local procedure ShowBankPaymentAdvise()
    var
        GenJnlLine: Record "Gen. Journal Line";
        BankBefPaymentAdvise: Report "Bank - Before Payment Advice";
    begin
        ValidatePaymentsExported();

        GenJnlLine.Reset();
        GenJnlLine.SETCURRENTKEY("Journal Template Name", "Journal Batch Name", "Document No.", "Line No.");
        GenJnlLine.SETRANGE("Journal Template Name", Rec."Journal Template Name");
        GenJnlLine.SETRANGE("Journal Batch Name", Rec."Journal Batch Name");
        GenJnlLine.SETRANGE("Document No.", Rec."Document No.");
        IF not GenJnlLine.IsEmpty THEN BEGIN
            CLEAR(BankBefPaymentAdvise);
            BankBefPaymentAdvise.GetDocumentNo(Rec."Journal Template Name", Rec."Journal Batch Name", Rec."Document No.");
            BankBefPaymentAdvise.RUN;
        END;
    end;

    local procedure ShowVendorPaymentAdvise()
    var
        GenJnlLine: Record "Gen. Journal Line";
        VendorBefPaymentAdvise: Report "Vendor - Before Payment Advice";
    begin
        ValidatePaymentsExported();

        GenJnlLine.Reset();
        GenJnlLine.SETCURRENTKEY("Journal Template Name", "Journal Batch Name", "Document No.", "Line No.");
        GenJnlLine.SETRANGE("Journal Template Name", Rec."Journal Template Name");
        GenJnlLine.SETRANGE("Journal Batch Name", Rec."Journal Batch Name");
        GenJnlLine.SETRANGE("Document No.", Rec."Document No.");
        IF not GenJnlLine.IsEmpty THEN BEGIN
            CLEAR(VendorBefPaymentAdvise);
            VendorBefPaymentAdvise.GetDocumentNo(Rec."Journal Template Name", Rec."Journal Batch Name", Rec."Document No.");
            VendorBefPaymentAdvise.RUN;
        END;
    end;

    local procedure ValidatePaymentsExported()
    var
        GenJnlLine: Record "Gen. Journal Line";
        Text001: Label 'You must first export the file for payment.';
    begin
        GenJnlLine.Reset();
        GenJnlLine.SETCURRENTKEY("Journal Template Name", "Journal Batch Name", "Document No.", "Line No.");
        GenJnlLine.SETRANGE("Journal Template Name", Rec."Journal Template Name");
        GenJnlLine.SETRANGE("Journal Batch Name", Rec."Journal Batch Name");
        GenJnlLine.SETRANGE("Document No.", Rec."Document No.");
        GenJnlLine.SETRANGE("Exported to Payment File", TRUE);
        IF GenJnlLine.IsEmpty THEN
            Error(Text001);
    end;

}


