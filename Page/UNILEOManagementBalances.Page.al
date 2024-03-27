page 57229 "UNILEO Management Balances"
{
    Caption = 'Management Balances';
    PageType = List;
    SourceTable = "UNILEO Management Balances";
    SourceTableView = SORTING(Year, "Rubric Code");
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Year; Rec.Year)
                {
                }
                field("Rubric Code"; Rec."Rubric Code")
                {
                }
                field(AmountOpen; Rec.AmountOpen)
                {
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                }
            }
        }
    }

    actions
    {
    }

    var
        BalanceYear: Integer;
}

