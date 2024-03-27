pageextension 57049 GLEntriesPreviewPageExt extends "G/L Entries Preview"
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
            field("External Document No."; Rec."External Document No.")
            {
                ApplicationArea = all;
            }
        }

    }
}
