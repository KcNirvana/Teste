pageextension 57058 ApplyCustEntriesExt extends "Apply Customer Entries"
{
    layout
    {
        addlast(content)
        {
            field("Cust. Type Entry"; Rec."Cust. Type Entry")
            {
                Visible = IsCreditCompany;
                ApplicationArea = All;
            }
        }
    }
    var
        IsCreditCompany: Boolean;

    trigger OnOpenPage()
    var
        CompanyInfo: Record "Company Information";
    begin
        CompanyInfo.GET;
        IsCreditCompany := CompanyInfo."Credits Company";
    end;

}
