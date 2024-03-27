pageextension 57063 PostedPurchRcptSubformPageExt extends "Posted Purchase Rcpt. Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("Requisition Code"; Rec."Requisition Code")
            {
                ApplicationArea = All;
                Editable = false;
                DrillDown = true;
                trigger OnDrillDown()
                var
                    Requisition: Record Requisition;
                begin
                    Clear(Requisition);
                    Requisition.Get(Rec."Requisition Code");
                    if Requisition.IsContract then
                        Page.Run(Page::"Req. Contract Posted List", Requisition)
                    else
                        Page.Run(Page::"Requisitions Posted List", Requisition);
                end;
            }
            field("Requisition Line"; Rec."Requisition Line")
            {
                ApplicationArea = All;
                Editable = false;
            }

        }
    }
}
