pageextension 50119 GLAccountCardPageExt extends "G/L Account Card"
{

    layout
    {
        addlast(General)
        {
            field(Deferement; Rec.Deferement)
            {
                ApplicationArea = All;
            }
        }
    }

}
