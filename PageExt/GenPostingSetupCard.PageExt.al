pageextension 52009 GenPostingSetupCardPageExt extends "General Posting Setup Card"
{
    layout
    {
        addlast(Sales)
        {
            field("Sales Deferement Account"; Rec."Sales Deferement Account")
            {
                Applicationarea = all;
            }
        }
    }
}
