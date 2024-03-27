pageextension 57060 GLAccountCardPageExt extends "G/L Account Card"
{
    layout
    {
        addafter("PTSS Cash-flow code")
        {
            field("Need Budget"; Rec."Need Budget")
            {
                ApplicationArea = all;
            }
        }
    }
}