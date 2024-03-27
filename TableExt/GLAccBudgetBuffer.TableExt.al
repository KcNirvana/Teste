tableextension 57012 GLAccBudgetBufferTableExt extends "G/L Acc. Budget Buffer"
{
    fields
    {
        field(50000; "Budget Mov Type Filter"; Enum "Budget Mov Type")
        {
            Caption = 'Budget Mov Type Filter';
            FieldClass = FlowFilter;
        }
        field(50001; "Budget Dim Type"; Enum "Budget Dim Type")
        {
            Caption = 'Budget Dim Type';
        }
        field(50003; "Mov Type"; Enum "GLBudget Mov Type")
        {
            Caption = 'Mov Type';
        }

        field(57000; "New Budgeted Amount"; Decimal)
        {
            AutoFormatType = 1;
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("G/L Budget Entry".Amount WHERE("Budget Name" = FIELD("Budget Filter"),
                                                               "G/L Account No." = FIELD("G/L Account Filter"),
                                                               "Business Unit Code" = FIELD("Business Unit Filter"),
                                                               "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                               "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                               "Budget Dimension 1 Code" = FIELD("Budget Dimension 1 Filter"),
                                                               "Budget Dimension 2 Code" = FIELD("Budget Dimension 2 Filter"),
                                                               "Budget Dimension 3 Code" = FIELD("Budget Dimension 3 Filter"),
                                                               "Budget Dimension 4 Code" = FIELD("Budget Dimension 4 Filter"),
                                                               Date = FIELD("Date Filter"),
                                                               "Budget Mov Type" = FIELD("Budget Mov Type Filter")));
            Caption = 'Budgeted Amount';

        }

    }

}