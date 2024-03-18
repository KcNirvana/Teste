pageextension 50117 PstdPurchInvSubformPageExt extends "Posted Purch. Invoice Subform"
{

    layout
    {
        addlast(Control1)
        {
            field("To Defer"; Rec.Deferement)
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("Deferement Start Date"; Rec."Deferement Start Date")
            {
                Applicationarea = all;
                Editable = false;
            }
            field("Deferement Periodicity"; Rec."Deferement Periodicity")
            {
                Applicationarea = all;
                Editable = false;
            }
            field("Deferement Account"; Rec."Deferement Account")
            {
                Applicationarea = all;
                Editable = false;
            }
        }
    }

}
