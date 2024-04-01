pageextension 52000 SalesSetupPageExt extends "Sales & Receivables Setup"
{

    layout
    {
        addafter(Archiving)
        {
            group("CM NAV Integration")
            {
                Caption = 'CM NAV Integration';
                group(CMNAVDimensions)
                {
                    Caption = 'Dimensions';
                    field("Location Dimension"; Rec."Location Dimension")
                    {
                        ApplicationArea = All;
                    }
                    field("Cost Center Dimension"; Rec."Cost Center Dimension")
                    {
                        ApplicationArea = All;
                    }
                }
                group(CMNAVTemplates)
                {
                    Caption = 'Templates';
                    field("PT Customer Template"; Rec."PT Customer Template")
                    {
                        ApplicationArea = All;
                    }
                    field("EU Customer Template"; Rec."EU Customer Template")
                    {
                        ApplicationArea = All;
                    }
                    field("NEU Customer Template"; Rec."NEU Customer Template")
                    {
                        ApplicationArea = All;
                    }
                    field("Generic Customer No."; Rec."Generic Customer No.")
                    {
                        ApplicationArea = All;
                    }
                }

            }

        }
    }

}
