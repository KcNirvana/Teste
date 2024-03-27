page 57003 "Budget Configuration"
{

    Caption = 'Budget Configuration';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Card;
    SourceTable = "Budget Configuration";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                group(Budget)
                {
                    Caption = 'Budget';
                    field("Revenue Equal Expense"; Rec."Revenue Equal Expense")
                    {
                    }
                    field("Budget Appropriation Method"; Rec."Budget Appropriation Method")
                    {
                    }
                    field("Precision Round Difference"; Rec."Precision Round Difference")
                    {
                    }
                }
                group(Requisitions)
                {
                    Caption = 'Requisitions';
                    field("Required Comments in Req"; Rec."Required Comments in Req")
                    {
                    }
                    field("Verify Req. Dim in Approval"; Rec."Verify Req. Dim in Approval")
                    {
                    }
                    field("Dim Code Required"; Rec."Dim Code Required")
                    {
                        Enabled = Rec."Verify Req. Dim in Approval";
                    }
                    field("Auto Approve Zero Value Req"; Rec."Auto Approve Zero Value Req")
                    {
                    }
                    field("Quote Qt. equal Req Quant"; Rec."Quote Qt. equal Req Quant")
                    {
                    }
                    field("Req. Vat. Bus. Posting Group"; Rec."Req. Vat. Bus. Posting Group")
                    {
                    }
                }
                group("Avaylable Budgets")
                {
                    Caption = 'Avaylable Budgets';
                    field("Adjustment Avay. Budget Date"; Rec."Adjustment Avay. Budget Date")
                    {
                    }
                    field("Reverse Avaylable Budget Date"; Rec."Reverse Avaylable Budget Date")
                    {
                    }
                }
                group("PAQs")
                {
                    Caption = 'Adjudications';
                    field("Adjustment Paq Date"; Rec."Adjustment Paq Date")
                    {
                    }

                    field("Reverse Paq Date"; Rec."Reverse Paq Date")
                    {
                    }
                }
            }
            group(Numeration)
            {
                Caption = 'Numeration';
                field("Budget Nos."; Rec."Budget Nos.")
                {
                }
                field("Requisition Nos."; Rec."Requisition Nos.")
                {
                }
                field("Consultation Nos."; Rec."Consultation Nos.")
                {
                }
                field("Avaylable Budget"; Rec."Avaylable Budget Nos.")
                {
                }
                field("Avaylable Budget Post"; Rec."Posted Avaylable Budget Nos.")
                {
                }
                field("PAQ Nos."; Rec."PAQ Nos.")
                {
                }
                field("Posted PAQ Nos."; Rec."Posted PAQ Nos.")
                {
                }
                field("Contract Nos"; Rec."Contract Nos")
                {
                }
            }
            group(Journals)
            {
                Caption = 'Journals';
                field("Buget Template Header"; Rec."Budget Template Header")
                {
                }
                field("Budget Batch Name"; Rec."Budget Batch Name")
                {
                }
                field("Avaylable Budget Diary"; Rec."Avaylable Budget Diary")
                {
                }
                field("Avaylable Budget Batch"; Rec."Avaylable Budget Batch")
                {
                }
                field("PAQ Template Diary"; Rec."PAQ Template Diary")
                {
                }
                field("PAQ Batch Diary"; Rec."PAQ Batch Diary")
                {
                }
                field("General Costs Diary"; Rec."General Costs Diary")
                {
                }
                field("General Costs Batch"; Rec."General Costs Batch")
                {
                }
                field("General Incomes Diary"; Rec."General Incomes Diary")
                {
                }
                field("General Incomes Batch"; Rec."General Incomes Batch")
                {
                }
                field("Payment Diary"; Rec."Payment Diary")
                {
                }
                field("Payment Batch Diary"; Rec."Payment Batch Diary")
                {
                }
                field("Deeds Diary"; Rec."Deeds Diary")
                {
                }
                field("Deeds Batch Diary"; Rec."Deeds Batch Diary")
                {
                }
            }
            group(Accounting)
            {
                Caption = 'Accounting';
                group(Budgets)
                {
                    Caption = 'Budget';
                    group("Initial Budget")
                    {
                        Caption = 'Initial Budget';
                        field("Budget Original Regists Rcpt"; Rec."Budget Original Regists Rcpt")
                        {
                        }
                        field("Budget Original Regists"; Rec."Budget Original Regists")
                        {
                        }
                        field("Budget Original Decrease Rcpt"; Rec."Budget Original Decrease Rcpt")
                        {
                        }
                        field("Budget Original Decrease"; Rec."Budget Original Decrease")
                        {
                        }
                    }
                    group("Budget Changes - Modificative")
                    {
                        Caption = 'Budget Changes - Modificative';
                        field("BudgetA Increase Regists Rcpt"; Rec."BudgetA Increase Regists Rcpt")
                        {
                        }
                        field("BudgetA Increase Regists"; Rec."BudgetA Increase Regists")
                        {
                        }
                        field("BudgetA Decrease Regists Rcpt"; Rec."BudgetA Decrease Regists Rcpt")
                        {
                        }
                        field("BudgetA Decrease Regists"; Rec."BudgetA Decrease Regists")
                        {
                        }
                    }
                    group("Budget Changes - Permutative")
                    {
                        Caption = 'Budget Changes - Permutative';
                        field("BudgetP Increase Regists Rcpt"; Rec."BudgetP Increase Regists Rcpt")
                        {
                        }
                        field("BudgetP Increase Regists"; Rec."BudgetP Increase Regists")
                        {
                        }
                        field("BudgetP Decrease Regists Rcpt"; Rec."BudgetP Decrease Regists Rcpt")
                        {
                        }
                        field("BudgetP Decrease Regists"; Rec."BudgetP Decrease Regists")
                        {
                        }

                    }
                    group("Budget Changes - With Special Credits")
                    {
                        Caption = 'Budget Changes - With Special Credits';
                        field("BudgetC Increase Regists Rcpt"; Rec."BudgetC Increase Regists Rcpt")
                        {
                        }
                        field("BudgetC Increase Regists"; Rec."BudgetC Increase Regists")
                        {
                        }
                        field("BudgetC Decrease Regists Rcpt"; Rec."BudgetC Decrease Regists Rcpt")
                        {
                        }
                        field("BudgetC Decrease Regists"; Rec."BudgetC Decrease Regists")
                        {
                        }
                    }
                    group("CativeDescative")
                    {
                        Caption = 'Cative/Descative';
                        field("Cative Rcpt"; Rec."Cative Rcpt")
                        {
                        }
                        field(Cative; Rec."Cative Exp")
                        {
                        }
                        field("Descative Rcpt"; Rec."Descative Rcpt")
                        {
                        }
                        field(Descative; Rec."Descative Exp")
                        {
                        }
                    }
                }
                group("Avaylable Budgets2")
                {
                    Caption = 'Avaylable Budgets';
                    field("Original Avaylable Budget"; Rec."Original Avaylable Budget")
                    {
                    }
                    field("Avaylable Budget Increase"; Rec."Avaylable Budget Increase")
                    {
                    }
                    field("Avaylable Budget Decrease"; Rec."Avaylable Budget Decrease")
                    {
                    }
                }
                group(PAQs2)
                {
                    Caption = 'Adjudications';
                    field("Original PAQ"; Rec."Original PAQ")
                    {
                    }
                    field(PAQIncrease; Rec."PAQ Increase")
                    {
                    }
                    field(PAQDecrease; Rec."PAQ Decrease")
                    {
                    }
                }
                group(Purchases)
                {
                    Caption = 'Purchases';
                    field("Invoice Without Process"; Rec."Invoice Without Process")
                    {
                    }
                    field("Invoice with Process"; Rec."Invoice with Process")
                    {
                    }
                    field("Purch Crdt Memo w/ Process Acc"; Rec."Purch Crdt Memo w Process Acc")
                    {
                    }
                    field("Purch Crdt Memo With Proc. Acc"; Rec."Purch Crdt Memo With Proc. Acc")
                    {
                    }
                }
                group(Sales)
                {
                    Caption = 'Sales';
                    field("Sales Invoice Acc"; Rec."Sales Invoice Acc")
                    {
                    }
                    field("Sales Cr.Memo Acc"; Rec."Sales Cr.Memo Acc")
                    {
                    }
                    field("Sales Cr.Memo AccP"; Rec."Sales Cr.Memo AccP")
                    {
                    }
                    field("Finance Charge Acc"; Rec."Finance Charge Acc")
                    {
                    }
                }
                group("Close Year")
                {
                    Caption = 'Close Year';
                    field(CloseYearOpeningVendor; Rec.CloseYearOpeningVendor)
                    {
                    }
                    field("CloseYearTemplate Diary"; Rec."CloseYearTemplate Diary")
                    {
                    }
                    field("CloseYear Batch Diary"; Rec."CloseYear Batch Diary")
                    {
                    }
                    field(CloseYearClosingVendor; Rec.CloseYearClosingVendor)
                    {
                    }
                }
            }
            group(Dimensions)
            {
                Caption = 'Dimensions';
                group("Dim Budget")
                {
                    Caption = 'Budget';
                    field("ExpRev Dimension"; Rec."ExpRev Dimension")
                    {
                    }
                    field("Avaylable Endowment Account"; Rec."Avaylable Endowment Account")
                    {
                    }
                    field("Cod Analysis"; Rec."Analysis Code")
                    {
                    }
                    field(dim1; Rec.dim1)
                    {
                        Editable = false;
                    }
                    field(Sd1; Rec.Sd1)
                    {
                    }
                    field(dim2; Rec.dim2)
                    {
                        Editable = false;
                    }
                    field(Sd2; Rec.Sd2)
                    {
                    }
                    field(dim3; Rec.dim3)
                    {
                        Editable = false;
                    }
                    field(Sd3; Rec.Sd3)
                    {
                    }
                    field(dim4; Rec.dim4)
                    {
                        Editable = false;
                    }
                    field(Sd4; Rec.Sd4)
                    {
                    }
                }
                group(Validations)
                {
                    Caption = 'Validations';
                    field("Equal Dimensions By Document"; Rec."Equal Dimensions By Document")
                    {
                    }
                    field("Dim Validation 1"; Rec."Dim Validation 1")
                    {
                        Enabled = Rec."Equal Dimensions By Document";
                    }
                    field("Dim Validation 2"; Rec."Dim Validation 2")
                    {
                        Enabled = Rec."Equal Dimensions By Document";
                    }
                    field("Dim Validation 3"; Rec."Dim Validation 3")
                    {
                        Enabled = Rec."Equal Dimensions By Document";
                    }
                    field("Dim Validation 4"; Rec."Dim Validation 4")
                    {
                        Enabled = Rec."Equal Dimensions By Document";
                    }
                }
            }

            group(Treasury)
            {
                Caption = 'Treasury';
                group(Payments)
                {
                    Caption = 'Payments';
                    field(VPP; Rec.VPP)
                    {
                    }
                    field(VPPF; Rec.VPPF)
                    {
                    }
                    field(VIF; Rec.VIF)
                    {
                    }
                    field(VER; Rec.VER)
                    {
                    }
                    field(VDC; Rec.VDC)
                    {
                    }
                    field(VERP; Rec.VERP)
                    {
                    }
                    field(VOD; Rec.VOD)
                    {
                    }
                }
                group(Incomes)
                {
                    Caption = 'Incomes';
                    field(VRP; Rec.VRP)
                    {
                    }
                    field(VRPF; Rec.VRPF)
                    {
                    }
                    field(VRIF; Rec.VRIF)
                    {
                    }
                    field(VRER; Rec.VRER)
                    {
                    }
                    field(VRDC; Rec.VRDC)
                    {
                    }
                    field(VRERP; Rec.VRERP)
                    {
                    }
                    field(VROD; Rec.VROD)
                    {
                    }
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        Rec.RESET;
        IF NOT Rec.GET THEN BEGIN
            Rec.INIT;
            Rec.INSERT;
        END;
    end;

}

