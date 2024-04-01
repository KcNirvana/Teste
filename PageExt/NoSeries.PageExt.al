pageextension 52005 NoSeriesPageExt extends "No. Series"
{
    layout
    {
        addlast(Control1)
        {
            field("CM Series Code"; Rec."CM Series Code")
            {
                ApplicationArea = all;
            }
            field("CM Cost Center Dimension"; Rec."CM Cost Center Dimension")
            {
                ApplicationArea = all;
            }
            field("CM Bill-to Customer No."; Rec."CM Bill-to Customer No.")
            {
                ApplicationArea = all;
            }
            field("CM Force Document Date"; Rec."CM Force Document Date")
            {
                ApplicationArea = all;
            }
        }
    }
}
