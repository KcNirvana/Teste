pageextension 57030 GLBudgetNamesPageExt extends "G/L Budget Names"
{
    layout
    {
        addafter(Description)
        {
            field("Budget Type Dimension"; Rec."Budget Type Dimension")
            {
                ApplicationArea = All;
            }
            field("Budget Start Date"; Rec."Budget Start Date")
            {
                ApplicationArea = All;
            }
            field("Budget End Date"; Rec."Budget End Date")
            {
                ApplicationArea = All;
            }
        }
        addafter(Blocked)
        {

            field("Budget Line Option"; Rec."Budget Line Option")
            {
                ApplicationArea = All;
            }
            field("Budget Column Option"; Rec."Budget Column Option")
            {
                ApplicationArea = All;
            }
            field("Prevision N"; Rec."Prevision N")
            {
                ApplicationArea = All;
            }
            field("Future Years"; Rec."Future Years")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        modify(EditBudget)
        {
            Visible = false;
            Enabled = false;
            ShortcutKey = '';
        }
        addafter(EditBudget)
        {
            action(EditBudget2)
            {
                ApplicationArea = All;
                Caption = 'Edit Budget';
                Image = EditLines;
                ShortCutKey = 'Return';
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    Budget: Page "Budget Class 0";
                begin
                    Budget.SetBudgetName(Rec.Name);
                    Budget.Run();
                end;
            }
        }
    }
}
