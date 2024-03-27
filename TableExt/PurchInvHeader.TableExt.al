tableextension 57016 PurchInvHeaderTableExt extends "Purch. Inv. Header"
{
    fields
    {
        field(50044; "Entity Type"; Enum "Entity Type")
        {
            Caption = 'Entity Type';
            Editable = false;
        }
        field(50052; "EasyDoc No."; Code[50])
        {
            Caption = 'EasyDoc No.';
            Editable = false;
        }
        field(50002; "Not Budget Document"; Boolean)
        {
            Caption = 'Not Budget Document';
            Editable = false;
        }
        field(58000; "Cost Amount"; Decimal)
        {
            Caption = 'Cost Amount';
            Editable = false;
            CalcFormula = Sum("Purch. Inv. Line"."Cost Amount" WHERE("No." = FILTER(<> ''),
                                                          "Document No." = FIELD("No.")));
            FieldClass = FlowField;
        }
        field(61000; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            TableRelation = Consultation."Consultation code";
            Editable = false;
        }
        field(60000; ConfClass0; Code[10])
        {
            Caption = 'Conf Class0 Code';
            TableRelation = "Class 0 Setup";
            Editable = false;
        }
        field(61001; "Budget Appropriation Method"; enum "Budget Appropriation Method")
        {
            Caption = 'Budget Appropriation Method';
        }
        field(60002; "No Budget"; Boolean)
        {
            Caption = 'No Budget';
            Editable = false;
        }
        field(60003; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            Editable = false;
            TableRelation = Employee;
        }
        field(60004; "Employee Name"; Text[60])
        {
            Caption = 'Employee Name';
            Editable = false;
        }
        field(60005; "Section Code"; Code[20])
        {
            Caption = 'Section Code';
            TableRelation = Sections;
            Editable = false;
        }
        field(60006; "Department Code"; Code[20])
        {
            Caption = 'Department Code';
            Editable = false;
            TableRelation = "Departments";
        }
    }
    keys
    {
        key(NewKey1; "Not Budget Document")
        {
        }
        key(NewKey2; "Section Code", "Department Code")
        {
        }
        key(NewKey3; "Consultation Code")
        {
        }
    }
    procedure GetPurchInvHeaderAmount(): Decimal
    begin
        CalcFields(Amount, "Amount Including VAT", "Cost Amount");
        case "Budget Appropriation Method" of
            "Budget Appropriation Method"::"Amount Without VAT":
                exit(Amount);
            "Budget Appropriation Method"::"Amount With VAT":
                exit("Amount Including VAT");
            "Budget Appropriation Method"::"Cost Amount":
                exit("Cost Amount");
            else
                exit(0);
        end;
    end;
}