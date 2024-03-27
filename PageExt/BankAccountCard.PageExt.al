pageextension 57019 BankAccountCardPageExt extends "Bank Account Card"
{
    layout
    {
        addafter("Last Date Modified")
        {
            field("Application Type"; Rec."Application Type")
            {
                ApplicationArea = All;
                trigger OnValidate()
                begin
                    CurrPage.UPDATE(TRUE);
                end;
            }
        }
        addafter(Transfer)
        {
            group("Current Accounts")
            {
                Caption = 'Current Accounts';
                Visible = Rec."Application Type" = Rec."Application Type"::CO;
                field(FinancialInst1; Rec.FinancialInst)
                {
                    ApplicationArea = All;
                }
            }
            group("Time Deposits")
            {
                Caption = 'Time Deposits';
                Visible = Rec."Application Type" = Rec."Application Type"::DP;
                field(FinancialInst2; Rec.FinancialInst)
                {
                    ApplicationArea = All;
                }
                field(InitDate; Rec."Start Date")
                {
                    ApplicationArea = All;
                }
                field(EndDate; Rec."End Date")
                {
                    ApplicationArea = All;
                }
                field(Deadline; Rec.Deadline)
                {
                    ApplicationArea = All;
                }
                field(TANB; Rec.TANB)
                {
                    ApplicationArea = All;
                }
                field(TANL; Rec.TANL)
                {
                    ApplicationArea = All;
                }
                field("Gross interest"; Rec."Gross interest")
                {
                    ApplicationArea = All;
                }
                field(Retention; Rec.Retention)
                {
                    ApplicationArea = All;
                }
                field("Net interest"; Rec."Net interest")
                {
                    ApplicationArea = All;
                }
                field("Expected value"; Rec."Expected value")
                {
                    ApplicationArea = All;
                }
                field("Early withdrawals"; Rec."Early withdrawals")
                {
                    ApplicationArea = All;
                }
            }
            group(CEDICS)
            {
                Caption = 'CEDICS';
                Visible = Rec."Application Type" = Rec."Application Type"::CEDICS;
                field(FinancialInst3; Rec.FinancialInst)
                {
                    ApplicationArea = All;
                }
                field("Start Date2"; Rec."Start Date")
                {
                    ApplicationArea = All;
                }
                field("End Date2"; Rec."End Date")
                {
                    ApplicationArea = All;
                }
                field("Deadline2"; Rec.Deadline)
                {
                    ApplicationArea = All;
                }
                field("TANB2"; Rec.TANB)
                {
                    ApplicationArea = All;
                }
                field("TANL2"; Rec.TANL)
                {
                    ApplicationArea = All;
                }
                field("Gross interest2"; Rec."Gross interest")
                {
                    ApplicationArea = All;
                }
                field("Retention2"; Rec.Retention)
                {
                    ApplicationArea = All;
                }
                field("Net interest2"; Rec."Net interest")
                {
                    ApplicationArea = All;
                }
                field("Expected value2"; Rec."Expected value")
                {
                    ApplicationArea = All;
                }
                field("Early withdrawals2"; Rec."Early withdrawals")
                {
                }
            }
            group("Bank Loans (Mutual)")
            {
                Caption = 'Bank Loans (Mutual)';
                Visible = Rec."Application Type" = Rec."Application Type"::EBM;
                field(FinancialInst4; Rec.FinancialInst)
                {
                    ApplicationArea = All;
                }
                field("State Guarantee"; Rec."State Guarantee")
                {
                    ApplicationArea = All;
                }
                field("Deadline3"; Rec.Deadline)
                {
                    ApplicationArea = All;
                }
                field(Finalty; Rec.Finalty)
                {
                    ApplicationArea = All;
                }
                field("Monthly payment"; Rec."Monthly payment")
                {
                    ApplicationArea = All;
                }
                field(TAEN; Rec.TAEN)
                {
                    ApplicationArea = All;
                }
                field(Spread; Rec.Spread)
                {
                    ApplicationArea = All;
                }
                field(Indexer; Rec.Indexer)
                {
                    ApplicationArea = All;
                }
                field("Process expenses"; Rec."Process expenses")
                {
                    ApplicationArea = All;
                }
                field("Entry comission"; Rec."Entry comission")
                {
                    ApplicationArea = All;
                }
                field(Avaliation; Rec.Avaliation)
                {
                    ApplicationArea = All;
                }
                field("Other costs"; Rec."Other costs")
                {
                    ApplicationArea = All;
                }
                field("Early Redemption Penalty"; Rec."Early Redemption Penalty")
                {
                    ApplicationArea = All;
                }
                field("Interest arrears"; Rec."Interest arrears")
                {
                    ApplicationArea = All;
                }
                field("EuroNext Comission"; Rec."EuroNext Comission")
                {
                    ApplicationArea = All;
                }
                field("Intercompany commission"; Rec."Intercompany commission")
                {
                    ApplicationArea = All;
                }
                field("Com of adminission"; Rec."Com of adminission")
                {
                    ApplicationArea = All;
                }
            }
            group("Bond Loans")
            {
                Caption = 'Bond Loans';
                Visible = Rec."Application Type" = Rec."Application Type"::EO;
                field(FinancialInst5; Rec.FinancialInst)
                {
                    ApplicationArea = All;
                }
                field("Start Date3"; Rec."Start Date")
                {
                    ApplicationArea = All;
                }
                field("End Date3"; Rec."End Date")
                {
                    ApplicationArea = All;
                }
                field("Number of Bonds"; Rec."Number of Bonds")
                {
                    ApplicationArea = All;
                }
                field(Cupon; Rec.Cupon)
                {
                    ApplicationArea = All;
                }
                field("Expected reimbursement"; Rec."Expected reimbursement")
                {
                    ApplicationArea = All;
                }
                field("Early repayment"; Rec."Early repayment")
                {
                    ApplicationArea = All;
                }
                field("Payable interests"; Rec."Payable interests")
                {
                    ApplicationArea = All;
                }
                field("Refund guarantee commission"; Rec."Refund guarantee commission")
                {
                    ApplicationArea = All;
                }
                field("Org and agent comission"; Rec."Org and agent comission")
                {
                    ApplicationArea = All;
                }
                field("EuroNext Comission2"; Rec."EuroNext Comission")
                {
                    ApplicationArea = All;
                }
                field("Intercompany commission2"; Rec."Intercompany commission")
                {
                    ApplicationArea = All;
                }
                field("CMVM Comission2"; Rec."CMVM Comission")
                {
                    ApplicationArea = All;
                }
                field("Cupon tax"; Rec."Cupon tax")
                {
                    ApplicationArea = All;
                }
            }
            group("Commercial Paper")
            {
                Caption = 'Commercial Paper';
                Visible = Rec."Application Type" = Rec."Application Type"::PC;
                field(FinancialInst6; Rec.FinancialInst)
                {
                    ApplicationArea = All;
                }
                field("Start Date4"; Rec."Start Date")
                {
                    ApplicationArea = All;
                }
                field("End Date4"; Rec."End Date")
                {
                    ApplicationArea = All;
                }
                field("Outstanding capital"; Rec."Outstanding capital")
                {
                    ApplicationArea = All;
                }
                field("Payable interests3"; Rec."Payable interests")
                {
                    ApplicationArea = All;
                }
                field("Interest tax"; Rec."Interest tax")
                {
                    ApplicationArea = All;
                }
                field("Refund guarantee commission4"; Rec."Refund guarantee commission")
                {
                    ApplicationArea = All;
                }
                field("Org and agent comission3"; Rec."Org and agent comission")
                {
                    ApplicationArea = All;
                }
                field("EuroNext Comission3"; Rec."EuroNext Comission")
                {
                    ApplicationArea = All;
                }
                field("Intercompany commission4"; Rec."Intercompany commission")
                {
                    ApplicationArea = All;
                }
            }
            group("Other Loans (Government)")
            {
                Caption = 'Other Loans (Government)';
                Visible = Rec."Application Type" = Rec."Application Type"::OEE;
                field(FinancialInst7; Rec.FinancialInst)
                {
                    ApplicationArea = All;
                }
                field("State Guarantee2"; Rec."State Guarantee")
                {
                    ApplicationArea = All;
                }
                field("Deadline4"; Rec.Deadline)
                {
                    ApplicationArea = All;
                }
                field("Finalty2"; Rec.Finalty)
                {
                    ApplicationArea = All;
                }
                field("Monthly payment2"; Rec."Monthly payment")
                {
                    ApplicationArea = All;
                }
                field("Dispatch No."; Rec."Dispatch No.")
                {
                    ApplicationArea = All;
                }
                field("Mode and term"; Rec."Mode and term")
                {
                    ApplicationArea = All;
                }
                field(Refund; Rec.Refund)
                {
                    ApplicationArea = All;
                }
                field(Compromise; Rec.Compromise)
                {
                    ApplicationArea = All;
                }
                field("Early repayment2"; Rec."Early repayment")
                {
                    ApplicationArea = All;
                }
                field("Interest arrears22"; Rec."Interest arrears")
                {
                    ApplicationArea = All;
                }
                field(Comunications; Rec.Comunications)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
