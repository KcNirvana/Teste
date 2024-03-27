page 57070 "Preferred Vendor"
{
    Caption = 'Preferred Vendor';
    PageType = List;
    SourceTable = "Preferred Vendor";
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("Contact No."; Rec."Contact No.")
                {
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                    Editable = false;
                }
                field("VAT Registration No."; Rec."VAT Registration No.")
                {
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }

}

