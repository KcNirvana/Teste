pageextension 57026 CompanyInfoPageExt extends "Company Information"
{
    layout
    {
        addafter(IBAN)
        {
            field("IGCP Company Code"; Rec."IGCP Company Code")
            {
                ApplicationArea = All;
            }
        }
        addafter("PTSS Share Capital")
        {
            field("Own Capital"; Rec."Own Capital")
            {
                ApplicationArea = All;
            }
        }
        addlast(General)
        {
            field("Credits Company"; Rec."Credits Company")
            {
                Caption = 'Credits Company';
                ApplicationArea = All;
            }
        }
    }

}
