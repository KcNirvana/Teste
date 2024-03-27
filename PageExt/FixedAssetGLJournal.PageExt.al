pageextension 57043 FixedAssetGLJournalPageExt extends "Fixed Asset G/L Journal"
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
            field(ConfClass0; Rec.ConfClass0)
            {
                ApplicationArea = All;
            }
            field("No Budget"; Rec."No Budget")
            {
                ApplicationArea = All;
            }
        }
        modify("Document Date")
        {
            ApplicationArea = All;
            Visible = true;
        }
        modify("External Document No.")
        {
            ApplicationArea = All;
            Visible = true;
        }
    }


}
