page 50001 "Bank Layouts Setup"
{
    Caption = 'Bank Layouts Setup';
    PageType = List;
    SourceTable = "Bank Layout Setup";
    UsageCategory = Lists;
    ApplicationArea = All;
    CardPageId = "Bank Layout Setup";
    AdditionalSearchTerms = 'bank';

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {

                }
                field("Bank Name"; Rec."Bank Name")
                {

                }
                field("Excel Header End"; Rec."Excel Header End")
                {

                }

            }
        }
    }
}
