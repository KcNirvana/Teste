tableextension 57035 CompanyInfoTableExt extends "Company Information"
{
    fields
    {
        field(50017; "IGCP Company Code"; Text[30])
        {
            Caption = 'IGCP Company Code';
        }
        field(50018; "Own Capital"; Text[20])
        {
            Caption = 'Own Capital';
        }
        field(51000; "Credits Company"; Boolean)
        {
            Caption = 'Credits Company';
        }
    }
}
