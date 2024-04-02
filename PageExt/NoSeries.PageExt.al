pageextension 50121 NoSeriesPageExt extends "No. Series"
{
    layout
    {
        addafter("Date Order")
        {
            field("Automatic Creation"; Rec."Automatic Creation")
            {
                ApplicationArea = all;
            }
            field("Auto Series No."; Rec."Auto Series No.")
            {
                ApplicationArea = all;
            }
            field("Auto Series Prefix"; Rec."Auto Series Prefix")
            {
                ApplicationArea = all;
            }
            field("Auto Series Sufix"; Rec."Auto Series Sufix")
            {
                ApplicationArea = all;
            }
            field("Auto Series Type"; Rec."Auto Series Type")
            {
                ApplicationArea = all;
            }
            field("Auto Number"; Rec."Auto Number")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        addafter(Relationships)
        {

            action("Automatic Series Creation")
            {
                ApplicationArea = All;
                Caption = 'Automatic Series Creation';
                Image = CreateSerialNo;
                Promoted = true;
                PromotedCategory = Category4;
                RunObject = Report "Auto Series Creation";
            }
        }
    }
}
