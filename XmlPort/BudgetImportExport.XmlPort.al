xmlport 57000 "Budget Import Export"
{
    FieldDelimiter = '<None>';
    FieldSeparator = ';';
    Format = VariableText;

    schema
    {
        textelement(Root)
        {
            tableelement("G/L Budget Entry"; "G/L Budget Entry")
            {
                AutoSave = false;
                RequestFilterFields = "Budget Name", "Budget Mov Type", Date;
                XmlName = 'GLBudgetEntry';
                fieldelement(BudgetName; "G/L Budget Entry"."Budget Name")
                {
                }
                fieldelement(Date; "G/L Budget Entry".Date)
                {
                }
                fieldelement(GLAccountNo; "G/L Budget Entry"."G/L Account No.")
                {
                }
                fieldelement(Description; "G/L Budget Entry".Description)
                {
                }
                fieldelement(GlobalDimension1Code; "G/L Budget Entry"."Global Dimension 1 Code")
                {
                }
                fieldelement(GlobalDimension2Code; "G/L Budget Entry"."Global Dimension 2 Code")
                {
                }
                fieldelement(BudgetDimension3Code; "G/L Budget Entry"."Budget Dimension 3 Code")
                {
                }
                fieldelement(Amount; "G/L Budget Entry".Amount)
                {
                }
                fieldelement(BudgetMovType; "G/L Budget Entry"."Budget Mov Type")
                {
                }
                fieldelement(BudgetType; "G/L Budget Entry"."Budget Dim Type")
                {
                }
                fieldelement(MovType; "G/L Budget Entry"."Mov Type")
                {
                }
                fieldelement(Rubrica; "G/L Budget Entry"."Rubric Code")
                {
                }

                trigger OnAfterInsertRecord()
                begin
                    Clear(gRecGLBudgetEntry);
                    gRecGLBudgetEntry.Init;
                    gRecGLBudgetEntry.Validate("Budget Name", "G/L Budget Entry"."Budget Name");
                    gRecGLBudgetEntry.Date := "G/L Budget Entry".Date;
                    gRecGLBudgetEntry.Validate("G/L Account No.", "G/L Budget Entry"."G/L Account No.");
                    gRecGLBudgetEntry.Validate(Description, "G/L Budget Entry".Description);
                    gRecGLBudgetEntry.Validate("Global Dimension 1 Code", "G/L Budget Entry"."Global Dimension 1 Code");
                    gRecGLBudgetEntry.Validate("Global Dimension 2 Code", "G/L Budget Entry"."Global Dimension 2 Code");
                    gRecGLBudgetEntry.Validate("Budget Dimension 3 Code", "G/L Budget Entry"."Budget Dimension 3 Code");
                    gRecGLBudgetEntry.Validate(Amount, "G/L Budget Entry".Amount);
                    gRecGLBudgetEntry.Validate("Budget Mov Type", "G/L Budget Entry"."Budget Mov Type");
                    gRecGLBudgetEntry.Validate("Budget Dim Type", "G/L Budget Entry"."Budget Dim Type");
                    gRecGLBudgetEntry.Validate("Mov Type", "G/L Budget Entry"."Mov Type");
                    gRecGLBudgetEntry.Validate("Rubric Code", "G/L Budget Entry"."Rubric Code");
                    gRecGLBudgetEntry.Insert(true);
                end;
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    var
        gRecGLBudgetEntry: Record "G/L Budget Entry";
}

