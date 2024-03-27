pageextension 57033 UserSetupPageExt extends "User Setup"
{
    layout
    {
        addafter(PhoneNo)
        {
            field(ModifyOrcAnalysis; Rec.ModifyOrcAnalysis)
            {
                ApplicationArea = all;
            }
            field(ChangePostedNCSeries; Rec.ChangePostedNCSeries)
            {
                ApplicationArea = all;
            }
            field(ChangeProfile; Rec.ChangeProfile)
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
    }
}
