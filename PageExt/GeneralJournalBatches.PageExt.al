pageextension 57020 GeneralJournalBatchesPageExt extends "General Journal Batches"
{
    layout
    {
        addafter("Bank Statement Import Format")
        {
            field("Show Posted Doc No."; Rec."Show Posted Doc No.")
            {
                ApplicationArea = All;
            }
        }
    }

}
