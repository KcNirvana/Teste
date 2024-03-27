pageextension 57023 FAClassesPageExt extends "FA Classes"
{
    layout
    {
        addafter(Name)
        {
            field("UNILEO Type"; Rec."UNILEO Type")
            {
                ApplicationArea = All;
            }
        }
    }
}
