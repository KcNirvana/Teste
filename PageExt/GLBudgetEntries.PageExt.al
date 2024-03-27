pageextension 57050 GLBudgetEntriesPageExt extends "G/L Budget Entries"
{
    Editable = false;
    layout
    {
        addlast(Control1)
        {
            field("Budget Mov Type"; Rec."Budget Mov Type")
            {
                ApplicationArea = all;
            }
            field("Budget Dim Type"; Rec."Budget Dim Type")
            {
                ApplicationArea = all;
            }
            field("Mov Type"; Rec."Mov Type")
            {
                ApplicationArea = all;
            }
            field("Rubric Code"; Rec."Rubric Code")
            {
                ApplicationArea = all;
            }
            field(Posted; Rec.Posted)
            {
                ApplicationArea = all;
            }
        }

    }
}
