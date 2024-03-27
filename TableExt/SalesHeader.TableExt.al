tableextension 57022 SalesHeaderTableExt extends "Sales Header"
{
    fields
    {
        field(60000; ConfClass0; Code[10])
        {
            Caption = 'Conf Class0 Code';
            TableRelation = "Class 0 Setup";
            Editable = false;
        }
        field(60002; "No Budget"; Boolean)
        {
            Caption = 'No Budget';
        }
        field(67000; PeriodOption; Enum "Sales Header Period")
        {
            Caption = 'Period';

            trigger OnValidate()
            begin
                ValidateCreditMemoPeriod;
            end;
        }

    }
    keys
    {

    }
    var
        BudgetConfig: Record "Budget Configuration";

    procedure ValidateBudgetConf()
    begin
        BudgetConfig.Get();
        CASE "Document Type" OF
            "Document Type"::Invoice:
                VALIDATE(confclass0, BudgetConfig."Sales Invoice Acc");
            "Document Type"::"Credit Memo":
                VALIDATE(confclass0, BudgetConfig."Sales Cr.Memo Acc");
        END;
    end;

    local procedure ValidateCreditMemoPeriod()
    begin
        BudgetConfig.Get();
        IF "Document Type" = "Document Type"::"Credit Memo" THEN BEGIN
            CASE PeriodOption OF
                PeriodOption::"Actual Period":
                    BEGIN
                        BudgetConfig.TESTFIELD("Sales Cr.Memo Acc");
                        confclass0 := BudgetConfig."Sales Cr.Memo Acc";
                    END;
                PeriodOption::"Previous Period":
                    BEGIN
                        BudgetConfig.TESTFIELD("Sales Cr.Memo AccP");
                        confclass0 := BudgetConfig."Sales Cr.Memo AccP";
                    END;
            END;
        END;
    end;
}