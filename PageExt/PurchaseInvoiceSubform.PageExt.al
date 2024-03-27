pageextension 57044 PurchaseInvoiceSubformPageExt extends "Purch. Invoice Subform"
{

    layout
    {
        addlast(PurchDetailLine)
        {
            field("Cost Amount"; Rec.GetPurchLineAmount())
            {
                ApplicationArea = All;
                Editable = false;
                Caption = 'Cost Amount';
                BlankZero = true;
            }
            field("Initial Avaylable Dotation"; Rec."Initial Avaylable Dotation")
            {
                Applicationarea = all;
                BlankZero = true;
            }
            field("End Avaylable Dotation"; Rec."End Avaylable Dotation")
            {
                Applicationarea = all;
                BlankZero = true;
            }
            field("Withholding Tax Amount"; Rec."Withholding Tax Amount")
            {
                Applicationarea = all;
                BlankZero = true;
            }
            field("Consultation Code"; Rec."Consultation Code")
            {
                Applicationarea = all;
            }
        }
    }

}
