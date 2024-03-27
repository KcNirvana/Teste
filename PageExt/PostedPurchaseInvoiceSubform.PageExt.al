pageextension 57045 PostedPurchInvSubformPageExt extends "Posted Purch. Invoice Subform"
{

    layout
    {
        addlast(Control1)
        {
            field("Cost Amount"; Rec.GetPurchInvLineAmount())
            {
                ApplicationArea = All;
                Editable = false;
                Caption = 'Cost Amount';
                BlankZero = true;
            }
            field("Withholding Tax Amount"; Rec."Withholding Tax Amount")
            {
                Applicationarea = all;
                BlankZero = true;
            }
        }
    }

}
