pageextension 57040 GLEntriesPageExt extends "General Ledger Entries"
{
    Editable = false;
    layout
    {
        addfirst(Control1)
        {
            field("Transaction No."; Rec."Transaction No.")
            {
                ApplicationArea = all;
            }
            field("Journal Batch Name"; Rec."Journal Batch Name")
            {
                ApplicationArea = all;
            }
            field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
            {
                ApplicationArea = all;
            }
            field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
            {
                ApplicationArea = all;
            }
            field("Budget Appropriation Method"; Rec."Budget Appropriation Method")
            {
                ApplicationArea = all;
            }
            field("Document Date"; Rec."Document Date")
            {
                ApplicationArea = all;
            }
            field("Rubric Code"; Rec."Rubric Code")
            {
                ApplicationArea = all;
            }
            field(ClosedByCloseYear; Rec.ClosedByCloseYear)
            {
                ApplicationArea = all;
            }
            field("Creation Date"; Rec."Creation Date")
            {
                ApplicationArea = all;
            }
            field("Creation User"; Rec."Creation User")
            {
                ApplicationArea = all;
            }
            field("Vendor Posting Group"; Rec."Vendor Posting Group")
            {
                ApplicationArea = all;
            }
        }
        addlast(Control1)
        {
            field("Retention Code"; RetentionCode)
            {
                ApplicationArea = all;
                Editable = false;
                Caption = 'Retention Code';
                TableRelation = "PTSS Withholding Tax Codes".Code;
            }
            field("Retention Base"; RetentionBase)
            {
                ApplicationArea = all;
                Editable = false;
                Caption = 'Retention Base';
            }
            field("Retention Amount"; RetentionAmount)
            {
                ApplicationArea = all;
                Editable = false;
                Caption = 'Retention Amount';
            }
            field("Retention Tax"; RetentionTax)
            {
                ApplicationArea = all;
                Editable = false;
                Caption = 'Retention Tax';
            }
        }
    }

    var
        RetentionCode: Code[20];
        RetentionBase: Decimal;
        RetentionAmount: Decimal;
        RetentionTax: Decimal;

    trigger OnAfterGetRecord()
    begin
        Rec.GetRetentionFields(Rec, RetentionCode, RetentionBase, RetentionAmount, RetentionTax);
    end;
}
