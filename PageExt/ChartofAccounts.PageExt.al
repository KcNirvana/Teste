pageextension 57034 ChartofAccountsPageExt extends "Chart of Accounts"
{
    layout
    {
        addafter(Balance)
        {
            field("From Entry No."; Rec.CalcEndowment())
            {
                Caption = 'Avaylable Endowment';
                ApplicationArea = all;
                Editable = false;
                trigger OnDrillDown()
                begin
                    Rec.DrillDownEndowment();
                end;
            }
            field("Need Budget"; Rec."Need Budget")
            {
                ApplicationArea = all;
            }
        }
        addbefore(Balance)
        {
            field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
            {
                ApplicationArea = all;
            }
            field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
            {
                ApplicationArea = all;
            }
        }
        addlast(Control1)
        {

            field("PTSS Cash-flow code assoc."; Rec."PTSS Cash-flow code assoc.")
            {
                ApplicationArea = all;
            }
            field("PTSS Cash-flow code"; Rec."PTSS Cash-flow code")
            {
                ApplicationArea = all;
            }
        }

    }
}