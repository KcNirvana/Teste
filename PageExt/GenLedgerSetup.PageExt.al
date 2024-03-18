pageextension 50102 "Gen. Ledger Setup Ext" extends "General Ledger Setup"
{
    layout
    {
        addafter(Application)
        {
            group(Deferements)
            {
                Caption = 'Deferements';

                field("Deferements Journal"; Rec."Deferements Journal")
                {
                }
                field("Deferements Batch"; Rec."Deferements Batch")
                {
                }
            }
        }
    }
}
