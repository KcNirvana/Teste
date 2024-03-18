pageextension 50120 PostedPurchInvoicePageExt extends "Posted Purchase Invoice"
{
    actions
    {
        addafter("Update Document")
        {
            action("Correct Deferements")
            {
                Caption = 'Correct Deferements';
                Image = ChangeBatch;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                var
                    Developments: Codeunit Developments;
                begin
                    Developments.CorrectPurchInvoiceDeferments(Rec);
                end;
            }
        }
    }
}
