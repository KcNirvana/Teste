pageextension 57004 SalesPostedCrMemoPageExt extends "Posted Sales Credit Memo"
{
    layout
    {
        addfirst(General)
        {
            field(ConfClass0; Rec.ConfClass0)
            {
                applicationarea = all;
            }
            field("No Budget"; Rec."No Budget")
            {
                applicationarea = all;
                Enabled = false;
            }
        }
    }

}
