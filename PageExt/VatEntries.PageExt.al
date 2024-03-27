pageextension 57038 VatEntriesPageExt extends "VAT Entries"
{
    layout
    {
        modify("Gen. Bus. Posting Group")
        {
            ApplicationArea = All;
            Visible = true;
        }
		modify("Gen. Prod. Posting Group")
        {
            ApplicationArea = All;
            Visible = true;
        }
        addafter("VAT Prod. Posting Group")
        {
            field("External Document No."; Rec."External Document No.")
            {
                ApplicationArea = All;
            }
        }
    }

}
