pageextension 50116 PurchaseInvoiceSubformPageExt extends "Purch. Invoice Subform"
{

    layout
    {
        addlast(PurchDetailLine)
        {
            field(Deferement; Rec.Deferement)
            {
                ApplicationArea = All;
            }
            field("Deferement Start Date"; Rec."Deferement Start Date")
            {
                Applicationarea = all;
            }
            field("Deferement Periodicity"; Rec."Deferement Periodicity")
            {
                Applicationarea = all;
            }
            field("Deferement Account"; Rec."Deferement Account")
            {
                Applicationarea = all;
            }
        }
    }

}
