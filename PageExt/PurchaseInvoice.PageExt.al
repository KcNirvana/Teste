pageextension 57007 PurchaseInvoicePageExt extends "Purchase Invoice"
{
    Caption = 'Purchase Invoice With Process';
    layout
    {
        addfirst(General)
        {
            field(ConfClass0; Rec.ConfClass0)
            {
                Applicationarea = all;
            }
        }
        addafter("No.")
        {
            field("Posting No. Series"; Rec."Posting No. Series")
            {
                Applicationarea = all;
                Enabled = false;
            }
        }
        addlast(General)
        {
            field("EasyDoc No."; Rec."EasyDoc No.")
            {
                ApplicationArea = All;
            }
            field("Entity Type"; Rec."Entity Type")
            {
                ApplicationArea = All;
            }
        }
        modify("PTSS Withholding Invoice")
        {
            Visible = false;
        }
        modify("PTSS Withholding Payment")
        {
            trigger OnAfterValidate()
            begin
                Rec.UpdateWithholdingTaxAmount();
            end;
        }
        modify("PTSS Withholding Tax Code 1")
        {
            trigger OnAfterValidate()
            begin
                Rec.UpdateWithholdingTaxAmount();
            end;
        }
        modify("PTSS Withholding Tax Code 2")
        {
            trigger OnAfterValidate()
            begin
                Rec.UpdateWithholdingTaxAmount();
            end;
        }
    }
    actions
    {
        addbefore(GetRecurringPurchaseLines)
        {
            action("Calculate Dotation")
            {
                ApplicationArea = All;
                Caption = 'Calculate Dotation';
                Image = Balance;

                trigger OnAction()
                var
                    CduBudget: Codeunit Budget;
                begin
                    CduBudget.CalcDocumentsDotation("Budget Dotation Document Type"::Invoice, Rec."No.");
                end;
            }
        }
        modify("PTSS Withholding Tax")
        {
            Visible = false;
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Rec."Not Budget Document" := false;
    end;
}
