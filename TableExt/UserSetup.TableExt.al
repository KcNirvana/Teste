tableextension 57000 UserSetupTableExt extends "User Setup"
{
    fields
    {
        field(50000; ModifyOrcAnalysis; Boolean)
        {
            Caption = 'Modify Orc Analysis';
        }
        field(50001; ChangePostedNCSeries; Boolean)
        {
            Caption = 'Change Posted NC Series';
        }
        field(50002; ChangeProfile; Boolean)
        {
            Caption = 'Change Profile';
        }
    }
}
