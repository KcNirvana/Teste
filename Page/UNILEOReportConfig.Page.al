page 57200 "UNILEO Report Configuration"
{
    Caption = 'UNILEO Report Configuration';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Card;
    PromotedActionCategories = '1,2,3,Configuration';
    SourceTable = "Budget Report Configuration";
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Check Chart Of Accounts"; Rec."Check Chart Of Accounts")
                {
                }
            }
            group(Webservices)
            {
                Caption = 'Webservices';
                field("WebService Active"; Rec."WebService Active")
                {
                }
                field("WebService EndPoint"; Rec."WebService EndPoint")
                {
                }
                field("WebService User ID"; Rec."WebService User ID")
                {
                }
                field("WebService Password"; Rec."WebService Password")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Configuration)
            {
                Caption = 'Configuration';
                action(DAPL)
                {
                    Caption = 'DAPL';
                    Image = Administration;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    RunObject = Page "UNILEO DAPL Configuration";
                }
                action(DACP)
                {
                    Caption = 'DACP';
                    Image = Administration;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    RunObject = Page "UNILEO DACP Configuration";
                }
                action(BLC)
                {
                    Caption = 'BLC';
                    Image = Administration;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    RunObject = Page "UNILEO BLC Configuration";
                }
                action(DR)
                {
                    Caption = 'DR';
                    Image = Administration;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    RunObject = Page "UNILEO DR Configuration";
                }
                action(DDORC)
                {
                    Caption = 'DDORC';
                    Image = Administration;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    RunObject = Page "UNILEO DDORC Configuration";
                }
                action(DDORC2)
                {
                    Caption = 'DDORC2';
                    Image = Administration;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    RunObject = Page "UNILEO DDORC2 Configuration";
                }
                action(DFC)
                {
                    Caption = 'DFC';
                    Image = Administration;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    RunObject = Page "UNILEO DFC Configuration";
                }
                action(DTAS)
                {
                    Caption = 'DTAS';
                    Image = Administration;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    RunObject = Page "UNILEO DTAS Configuration";
                }
                action(DODES)
                {
                    Caption = 'DODES';
                    Image = Administration;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    RunObject = Page "UNILEO DODES Configuration";
                }
                action(DOREC)
                {
                    Caption = 'DOREC';
                    Image = Administration;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    RunObject = Page "UNILEO DOREC Configuration";
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.RESET;
        IF NOT Rec.GET THEN BEGIN
            Rec.INIT;
            Rec.INSERT;
        END;
    end;
}

