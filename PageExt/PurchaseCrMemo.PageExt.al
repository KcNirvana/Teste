pageextension 57011 PurchaseCrMemoPageExt extends "Purchase Credit Memo"
{
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
    }

    actions
    {

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
