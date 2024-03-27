page 57100 "Budget Report Configuration"
{

    Caption = 'Budget Report Configuration';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Card;
    SourceTable = "Budget Report Configuration";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(Dimensions)
            {
                Caption = 'Dimensions';
                field(RubricaDim; Rec."Rubric Dimension")
                {
                }
                field(EconomicaDim; Rec."Economic Dimension")
                {
                }
                field(Department; Rec."Department Dimension")
                {
                }
                field(Financing; Rec."Financing Dimension")
                {
                }
                field("Flow Dimension"; Rec."Flow Dimension")
                {
                }
            }
            group("Demonstration of Budgetary Revenue Execution Report")
            {
                Caption = 'Demonstration of Budgetary Revenue Execution Report';

                field("Corrected Forecasts"; Rec."Corrected Forecasts")
                {
                }
                field("Receiv from prev per"; Rec."Receiv from prev per")
                {
                }
                field("Cleared Revenues"; Rec."Cleared Revenues")
                {
                }
                field("Canceled Settlements"; Rec."Canceled Settlements")
                {
                }
                field("Gross Receipts Collected"; Rec."Gross Receipts Collected")
                {
                }
                field("Refund - Issued"; Rec."Refund - Issued")
                {
                }
                field("Refund - Payed"; Rec."Refund - Payed")
                {
                }
                field("Receiv. Rev. End of Period"; Rec."Receiv. Rev. End of Period")
                {
                }
                field("Forecasts to Apply"; Rec."Forecasts to Apply")
                {
                }
                field("Deferred Receipts"; Rec."Deferred Receipts")
                {
                }
                field("Settlement Future Periods N1"; Rec."Settlement Future Periods N1")
                {
                }
                field("Settlement Future Periods N2"; Rec."Settlement Future Periods N2")
                {
                }
                field("Settlement Future Periods N3"; Rec."Settlement Future Periods N3")
                {
                }
                field("Settlement Future Periods N4"; Rec."Settlement Future Periods N4")
                {
                }
                field("Settlement Future Periods NN"; Rec."Settlement Future Periods NN")
                {
                }
                field("Net Rev. Collect. - Prev. Per."; Rec."Net Rev. Collect. - Prev. Per.")
                {
                }
                field("Net Rev. Collect. - Curr. Per."; Rec."Net Rev. Collect. - Curr. Per.")
                {
                }
            }
            group("Demonstration of Budgetary Expenditure Execution Report")
            {
                Caption = 'Demonstration of Budgetary Expenditure Execution Report';
                field("Payable Exp. from Prev. Period"; Rec."Payable Exp. from Prev. Period")
                {
                }
                field("Corrected Appropriations"; Rec."Corrected Endowments 3")
                {
                }
                field(Commitments; Rec.Commitments)
                {
                }
                field(Obligations; Rec.Obligations)
                {
                }
                field("Available Appropriations"; Rec."Available Endowments")
                {
                }
                field(Budget; Rec."Avaylable Budgets")
                {
                }
                field("Gross Payed Expenses"; Rec."Gross Payed Expenses")
                {
                }
                field("Issued Pmt Disp. Repositions"; Rec."Issued Pmt Disp. Repositions")
                {
                }
                field("Received Pmd Dips. Repositions"; Rec."Received Pmd Dips. Repositions")
                {
                }
                field("Made Commitments Future Per N1"; Rec."Made Commitments Future Per N1")
                {
                }
                field("Made Commitments Future Per N2"; Rec."Made Commitments Future Per N2")
                {
                }
                field("Made Commitments Future Per N3"; Rec."Made Commitments Future Per N3")
                {
                }
                field("Made Commitments Future Per N4"; Rec."Made Commitments Future Per N4")
                {
                }
                field("Made Commitments Future Per NN"; Rec."Made Commitments Future Per NN")
                {
                }
                field("Obligations Future Period N1"; Rec."Obligations Future Period N1")
                {
                }
                field("Obligations Future Period N2"; Rec."Obligations Future Period N2")
                {
                }
                field("Obligations Future Period N3"; Rec."Obligations Future Period N3")
                {
                }
                field("Obligations Future Period N4"; Rec."Obligations Future Period N4")
                {
                }
                field("Obligations Future Period NN"; Rec."Obligations Future Period NN")
                {
                }
                field(Captive; Rec.Captive)
                {
                }
                field("Not Captive"; Rec."Not Captive")
                {
                }
                field("Net Paid Exp. Ref. - Prev. Per"; Rec."Net Paid Exp. Ref. - Prev. Per")
                {
                }
                field("Net Paid Exp. Ref. - Curr. Per"; Rec."Net Paid Exp. Ref. - Curr. Per")
                {
                }
            }
            group("Expense by Financing and Economic Sources")
            {
                Caption = 'Expense by Financing and Economic Sources';
                field("Corrected Endowments"; Rec."Corrected Endowments")
                {
                }
                field(Captives; Rec.Captives)
                {
                }
                field("Made Commitments"; Rec."Made Commitments")
                {
                }
                field("Paid Expenses of the year"; Rec."Paid Expenses of the year")
                {
                }
                field("Paid Expenses frm prev. years"; Rec."Paid Expenses frm prev. years")
                {
                }
            }
            group("Revenue by Financing and Economic Sources")
            {
                Caption = 'Revenue by Financing and Economic Sources';
                field("Correct. Forecasts"; Rec."Correct. Forecasts")
                {
                }
                field("Rev. per Charge Start of Year"; Rec."Rev. per Charge Start of Year")
                {
                }
                field("Settled Receipts"; Rec."Settled Receipts")
                {
                }
                field("Reverse Settlements"; Rec."Reverse Settlements")
                {
                }
                field("Gross Receipts of the year"; Rec."Gross Receipts of the year")
                {
                }
                field("Gross Receipts frm prev. years"; Rec."Gross Receipts frm prev. years")
                {
                }
                field("Refund - Issued 2"; Rec."Refund - Issued 2")
                {
                }
                field("Refund - Payed 2"; Rec."Refund - Payed 2")
                {
                }
            }
            group("Flow Budget Report")
            {
                Caption = 'Flow Budget Report';
                field("Flow Filter Account"; Rec."Flow Filter Account")
                {
                }
            }
            group("Economic Budget Report")
            {
                Caption = 'Economic Budget Report';
                field("Economic Filter Account"; Rec."Economic Filter Account")
                {
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

