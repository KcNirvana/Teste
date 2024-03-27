page 57090 "Credits by Customer"
{
    Caption = 'Credits by Customer';
    Editable = false;
    PageType = List;
    SourceTable = Customer;
    SourceTableView = SORTING("No.")
                      ORDER(Ascending)
                      WHERE("Credit Customer" = CONST(true));
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                }
                field(Name; Rec.Name)
                {
                }
                field("Balance (LCY)"; Rec."Balance (LCY)")
                {
                    Caption = 'Balance (LCY)';
                }
                field(CapitalAmount; CapitalAmount)
                {
                    Caption = 'Capital';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec."No.", 1);
                    end;
                }
                field(RateAmount; RateAmount)
                {
                    Caption = 'Rate Amount';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec."No.", 2);
                    end;
                }
                field(ExpenseAmount; ExpenseAmount)
                {
                    Caption = 'Expenses';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec."No.", 3);
                    end;
                }
                field(StampTaxAmount; StampTaxAmount)
                {
                    Caption = 'Stamp tax';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec."No.", 4);
                    end;
                }
                field(ImparityAmount; ImparityAmount)
                {
                    Caption = 'Imparities';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        DrillDownAmounts(Rec."No.", 5);
                    end;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        Rec.CalcFields("Balance (LCY)");
        CapitalAmount := FillAmounts(Rec."No.", 1);
        RateAmount := FillAmounts(Rec."No.", 2);
        ExpenseAmount := FillAmounts(Rec."No.", 3);
        StampTaxAmount := FillAmounts(Rec."No.", 4);
        ImparityAmount := FillAmounts(Rec."No.", 5);
    end;

    var
        CapitalAmount: Decimal;
        RateAmount: Decimal;
        ExpenseAmount: Decimal;
        StampTaxAmount: Decimal;
        ImparityAmount: Decimal;

    local procedure ClearAmounts()
    begin
        Clear(CapitalAmount);
        Clear(RateAmount);
        Clear(ExpenseAmount);
        Clear(StampTaxAmount);
        Clear(ImparityAmount);
    end;

    local procedure FillAmounts(CustNo: Code[20]; CustType: Option " ",Capital,Juros,Despesas,"I.Selo",Imparidades): Decimal
    var
        DetailedCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
    begin
        DetailedCustLedgEntry.Reset;
        DetailedCustLedgEntry.SetRange("Ledger Entry Amount", true);
        DetailedCustLedgEntry.SetRange("Customer No.", CustNo);
        DetailedCustLedgEntry.SetRange("Cust. Type Entry", CustType);
        DetailedCustLedgEntry.CalcSums("Amount (LCY)");
        exit(DetailedCustLedgEntry."Amount (LCY)");
    end;

    local procedure DrillDownAmounts(CustNo: Code[20]; CustType: Option " ",Capital,Juros,Despesas,"I.Selo",Imparidades)
    var
        CustLedgerEntry: Record "Cust. Ledger Entry";
        CustomerLedgerEntries: Page "Customer Ledger Entries";
    begin
        CustLedgerEntry.Reset;
        CustLedgerEntry.FilterGroup(2);
        CustLedgerEntry.SetRange("Customer No.", CustNo);
        CustLedgerEntry.SetRange("Cust. Type Entry", CustType);
        CustLedgerEntry.FilterGroup(0);
        Clear(CustomerLedgerEntries);
        CustomerLedgerEntries.Editable(false);
        CustomerLedgerEntries.SetTableView(CustLedgerEntry);
        CustomerLedgerEntries.RunModal;
    end;
}

