pageextension 50122 SalesSetupPageExt extends "Sales & Receivables Setup"
{
    layout
    {
        addafter(Archiving)
        {
            group("Customer Aging Report")
            {
                Caption = 'Customer Aging Report';
                field("Aging Column 1"; Rec."Aging Column 1")
                {
                    ApplicationArea = All;
                }
                field("Aging Column 2"; Rec."Aging Column 2")
                {
                    ApplicationArea = All;
                }
                field("Aging Column 3"; Rec."Aging Column 3")
                {
                    ApplicationArea = All;
                }
                field("Aging Column 4"; Rec."Aging Column 4")
                {
                    ApplicationArea = All;
                }
                field("Aging Column 5"; Rec."Aging Column 5")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
