pageextension 52008 GenPostingSetupPageExt extends "General Posting Setup"
{
    layout
    {
        addlast(Control1)
        {
            field("Sales Deferement Account"; Rec."Sales Deferement Account")
            {
                Applicationarea = all;
            }
        }
    }
}
