page 57230 "UNILEO BA Balances"
{
    Caption = 'BA Balances';
    DataCaptionExpression = gTextPageCaption;
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = ListPlus;
    SourceTable = "UNILEO BA Balances";
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(Balance)
            {
                Caption = 'Balance';
                field(BalanceYear; BalanceYear)
                {
                    Caption = 'Year to calculate';
                }
            }
            repeater(Group)
            {
                field(Year; Rec.Year)
                {
                }
                field(GLNoPCC; Rec.GLNoPCC)
                {
                }
                field(GLNo; Rec.GLNo)
                {
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 3 Code"; Rec."Shortcut Dimension 3 Code")
                {
                }
                field(AmountOpen; Rec.AmountOpen)
                {
                }
                field(Date; Rec.Date)
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group(Functions)
            {
                action("Calculate Balance")
                {
                    Caption = 'Calculate Balance';
                    Image = UpdateDescription;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    var
                        UNILEOMgt: Codeunit "UNILEO Management";
                    begin
                        UNILEOMgt.CalculateBABalance(BalanceYear);
                        CurrPage.UPDATE;
                    end;
                }
            }
        }

    }

    var
        BalanceYear: Integer;
        Text50000: Label 'BA Balances';
        gTextPageCaption: Text[100];

    trigger OnOpenPage()
    begin
        gTextPageCaption := Text50000;
    end;
}

