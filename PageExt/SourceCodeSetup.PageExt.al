pageextension 57001 SourceCodeSetupPageExt extends "Source Code Setup"
{
    layout
    {
        addafter("Cost Accounting")
        {
            group(BudgetGroup)
            {
                Caption = 'Budget';
                field(Budget; Rec.Budget)
                {
                    ApplicationArea = All;
                }
                field("Requisitions"; Rec.Requisition)
                {
                    ApplicationArea = All;
                }
                field("Avaylable Budget"; Rec."Avaylabel Budget")
                {
                    ApplicationArea = All;
                }
                field(PAQ; Rec.PAQ)
                {
                    ApplicationArea = All;
                }
                field(Invoice; Rec.Invoice)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
