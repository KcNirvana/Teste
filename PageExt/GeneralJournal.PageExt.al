pageextension 50115 GeneralJournalPageExt extends "General Journal"
{
    layout
    {

    }
    actions
    {
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
        }
    }
}
