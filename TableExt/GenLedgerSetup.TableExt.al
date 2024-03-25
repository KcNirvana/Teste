tableextension 50100 "Gen. Ledger Setup Ext" extends "General Ledger Setup"
{
    fields
    {
        field(50100; "Deferements Journal"; Code[20])
        {
            Caption = 'Deferements Journal';
            TableRelation = "Gen. Journal Template".Name;
        }
        field(50101; "Deferements Batch"; Code[20])
        {
            Caption = 'Deferements Batch';
            TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("Deferements Journal"));
        }
    }
}
