tableextension 57019 PurchCrMemoLineTableExt extends "Purch. Cr. Memo Line"
{
    fields
    {
        field(58000; "Cost Amount"; Decimal)
        {
            Caption = 'Cost Amount';
        }
        field(61002; "Requisition Code"; Code[20])
        {
            TableRelation = Requisition WHERE("Requisition Code" = FIELD("Requisition Code"));
        }
        field(61003; "Requisition Line"; Integer)
        {
            Caption = 'Requisition Line';
            TableRelation = "Requisition Lines" WHERE("Requisition Code" = FIELD("Requisition Code"), "Line No." = FIELD("Requisition Line"));
        }
        field(61004; "Quote No."; Code[20])
        {
            Caption = 'Quote No.';
            TableRelation = "Purchase Header" WHERE("Document Type" = const(Quote), "No." = field("Quote No."));
        }
        field(61005; "Quote Line No."; Integer)
        {
            Caption = 'Quote Line No.';
            TableRelation = "Purchase Line" WHERE("Document Type" = const(Quote), "No." = field("Quote No."), "Line No." = field("Quote Line No."));
        }
        field(61006; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            TableRelation = "Consultation" WHERE("Consultation Code" = field("Consultation Code"));
        }
        field(61067; "Contract Year"; Integer)
        {
            Caption = 'Contract Year';
        }
    }
    keys
    {
        key(NewKey1; "Requisition Code", "Requisition Line")
        {
            SumIndexFields = "Cost Amount";
        }
        key(NewKey2; "Requisition Code")
        {
            SumIndexFields = "Cost Amount";
        }
    }
    procedure GetPurchCrMemoLineAmount(): Decimal
    var
        lBudgetAppropriationMethod: Enum "Budget Appropriation Method";
    begin
        lBudgetAppropriationMethod := GetBudgetAppropriationMethod;
        case lBudgetAppropriationMethod of
            lBudgetAppropriationMethod::"Amount Without VAT":
                exit(Amount);
            lBudgetAppropriationMethod::"Amount With VAT":
                exit("Amount Including VAT");
            lBudgetAppropriationMethod::"Cost Amount":
                exit("Cost Amount");
        end;
    end;

    local procedure GetBudgetAppropriationMethod(): Enum "Budget Appropriation Method"
    var
        BudgetConfig: Record "Budget Configuration";
    begin
        BudgetConfig.Get();
        BudgetConfig.TestField("Budget Appropriation Method");
        exit(BudgetConfig."Budget Appropriation Method");
    end;
}