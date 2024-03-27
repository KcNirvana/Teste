tableextension 57025 BankAccountTableExt extends "Bank Account"
{
    fields
    {
        field(50001; "Application Type"; Enum "Bank Account Application Type")
        {
            Caption = 'Application Type';

            trigger OnValidate()
            begin
                IF xRec."Application Type" <> Rec."Application Type" THEN
                    ClearFields;
            end;
        }
        field(50002; FinancialInst; Enum "Bank Account Financial Inst")
        {
            Caption = 'Financial Institution';
        }
        field(50003; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(50004; "End Date"; Date)
        {
            Caption = 'End Date';
        }
        field(50007; TANB; Decimal)
        {
            DecimalPlaces = 2 : 5;
        }
        field(50008; TANL; Decimal)
        {
            DecimalPlaces = 2 : 5;
        }
        field(50009; "Number of Bonds"; Decimal)
        {
            Caption = 'Number of Bonds';
        }
        field(50010; "Gross interest"; Decimal)
        {
            Caption = 'Gross interest';
        }
        field(50011; Retention; Decimal)
        {
            Caption = 'Retention';
        }
        field(50012; "Net interest"; Decimal)
        {
            Caption = 'Net interest';
        }
        field(50013; "Expected value"; Decimal)
        {
            Caption = 'Expected value';
        }
        field(50014; "Early withdrawals"; Code[20])
        {
            Caption = 'Early withdrawals';
        }
        field(50015; "State Guarantee"; Enum "Bank Account State Guarantee")
        {
            Caption = 'State Guarantee';
        }
        field(50016; Deadline; DateFormula)
        {
            Caption = 'Deadline';
        }
        field(50017; Finalty; Text[50])
        {
            Caption = 'Finalty';
        }
        field(50018; "Monthly payment"; Decimal)
        {
            Caption = 'Monthly payment';
        }
        field(50019; TAEN; Decimal)
        {
            DecimalPlaces = 2 : 5;
        }
        field(50020; Spread; Decimal)
        {
            DecimalPlaces = 2 : 5;
        }
        field(50021; Indexer; Decimal)
        {
            Caption = 'Indexer';
            DecimalPlaces = 2 : 5;
        }
        field(50022; "Process expenses"; Decimal)
        {
            Caption = 'Process expenses';
        }
        field(50023; "Entry comission"; Decimal)
        {
            Caption = 'Entry comission';
        }
        field(50024; Avaliation; Decimal)
        {
            Caption = 'Avaliation';
        }
        field(50025; "Other costs"; Decimal)
        {
            Caption = 'Other costs';
        }
        field(50026; "Early Redemption Penalty"; Decimal)
        {
            Caption = 'Early Redemption Penalty';
        }
        field(50027; "Interest arrears"; Decimal)
        {
            Caption = 'Interest arrears';
        }
        field(50028; Cupon; Integer)
        {
            Caption = 'Cupon';
        }
        field(50029; "Expected reimbursement"; Decimal)
        {
            Caption = 'Expected reimbursement';
        }
        field(50030; "Early repayment"; Decimal)
        {
            Caption = 'Early repayment';
        }
        field(50031; "Payable interests"; Decimal)
        {
            Caption = 'Payable interests';
        }
        field(50032; "Refund guarantee commission"; Decimal)
        {
            Caption = 'Refund guarantee commission';
        }
        field(50033; "Org and agent comission"; Decimal)
        {
            Caption = 'Org and agent comission';
        }
        field(50034; "EuroNext Comission"; Decimal)
        {
            Caption = 'EuroNext Comission';
        }
        field(50035; "Intercompany commission"; Decimal)
        {
            Caption = 'Intercompany commission';
        }
        field(50036; "CMVM Comission"; Decimal)
        {
            Caption = 'CMVM Comission';
        }
        field(50037; "Cupon tax"; Decimal)
        {
            Caption = 'Cupon tax';
        }
        field(50038; "Outstanding capital"; Decimal)
        {
            Caption = 'Outstanding capital';
        }
        field(50039; "Interest tax"; Decimal)
        {
            Caption = 'Interest tax';
        }
        field(50040; "Com of adminission"; Decimal)
        {
            Caption = 'Com of adminission';
        }
        field(50041; "Dispatch No."; Code[20])
        {
            Caption = 'Dispatch No.';
        }
        field(50042; "Mode and term"; Code[50])
        {
            Caption = 'Mode and term';
        }
        field(50043; Refund; Decimal)
        {
            Caption = 'Refund';
        }
        field(50044; Compromise; Code[50])
        {
            Caption = 'Compromise';
        }
        field(50045; Comunications; Code[50])
        {
            Caption = 'Comunications';
        }

    }
    keys
    {
        key(NewKey1; FinancialInst)
        {
        }
    }

    local procedure ClearFields()
    begin
        Clear(FinancialInst);
        Clear("Start Date");
        Clear("End Date");
        Clear(TANB);
        Clear(TANL);
        Clear("Number of Bonds");
        Clear("Gross interest");
        Clear(Retention);
        Clear("Net interest");
        Clear("Expected value");
        Clear("Early withdrawals");
        Clear("State Guarantee");
        Clear(Deadline);
        Clear(Finalty);
        Clear("Monthly payment");
        Clear(TAEN);
        Clear(Spread);
        Clear(Indexer);
        Clear("Process expenses");
        Clear("Entry comission");
        Clear(Avaliation);
        Clear("Other costs");
        Clear("Early Redemption Penalty");
        Clear("Interest arrears");
        Clear(Cupon);
        Clear("Expected reimbursement");
        Clear("Early repayment");
        Clear("Payable interests");
        Clear("Refund guarantee commission");
        Clear("Org and agent comission");
        Clear("EuroNext Comission");
        Clear("Intercompany commission");
        Clear("CMVM Comission");
        Clear("Cupon tax");
        Clear("Outstanding capital");
        Clear("Interest tax");
        Clear("Com of adminission");
        Clear("Dispatch No.");
        Clear("Mode and term");
        Clear(Refund);
        Clear(Compromise);
        Clear(Comunications);
    end;
}