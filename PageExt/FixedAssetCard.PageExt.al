pageextension 57024 FixedAssetCardPageExt extends "Fixed Asset Card"
{
    layout
    {
        addafter("FA Subclass Code")
        {
            field("UNILEO Rubric"; Rec."UNILEO Rubric")
            {
                ApplicationArea = All;
            }
        }
    }
}
