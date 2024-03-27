pageextension 57005 SalesCrMemoPageExt extends "Sales Credit Memo"
{
    layout
    {
        addfirst(General)
        {
            field(PeriodOption; Rec.PeriodOption)
            {
                ApplicationArea = All;
            }
            field(ConfClass0; Rec.ConfClass0)
            {
                ApplicationArea = All;
            }
            field("No Budget"; Rec."No Budget")
            {
                ApplicationArea = All;
            }
        }
        addafter("No.")
        {
            field("Posting No. Series"; Rec."Posting No. Series")
            {
                ApplicationArea = All;
                Enabled = false;
            }
        }

    }

}
