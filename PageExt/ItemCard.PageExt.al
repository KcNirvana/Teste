pageextension 57028 ItemCardPageExt extends "Item Card"
{
    layout
    {
        addbefore("Costing Method")
        {
            field("Invoice Description Code"; Rec."Invoice Description Code")
            {
                ApplicationArea = all;
            }
        }
        addafter(Warehouse)
        {
            group(Deeds2)
            {
                Caption = 'Deed';
                field(Deeds; Rec.Deed)
                {
                    ApplicationArea = all;
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = all;
                    Editable = Rec.Deed;
                }
                field("Deed Balance"; Rec."Deed Balance")
                {
                    ApplicationArea = all;
                }
                field("Deed Balance (LCY)"; Rec."Deed Balance (LCY)")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
    actions
    {
    }
}
