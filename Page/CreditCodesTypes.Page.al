page 57089 "Credit Codes Types"
{
    Caption = 'Credit Codes Types';
    PageType = List;
    SourceTable = "Credit Codes Type";
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Type; Rec.Type)
                {
                }
                field("Code"; Rec.Code)
                {
                }
                field(Description; Rec.Description)
                {
                }
            }
        }
    }
    actions
    {
    }

    trigger OnOpenPage()
    var
        CompanyInfo: Record "Company Information";
    begin
        CompanyInfo.Get;
        CompanyInfo.TestField("Credits Company");
    end;


}

