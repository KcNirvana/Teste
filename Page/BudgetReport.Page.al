page 57101 "Budget Reports"
{
    Caption = 'Budget Reports';
    PageType = Card;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(BudgetName; BudgetName)
                {
                    Caption = 'Budget Name';
                    TableRelation = "G/L Budget Name".Name;

                    trigger OnValidate()
                    var
                        GLBudgetName: Record "G/L Budget Name";
                    begin
                        CLEAR(GLBudgetName);
                        IF GLBudgetName.GET(BudgetName) THEN
                            DateFilter := FORMAT(GLBudgetName."Budget Start Date") + '..' + FORMAT(GLBudgetName."Budget End Date")
                        ELSE
                            DateFilter := '';
                    end;
                }

                field(DateFilter; DateFilter)
                {
                    Caption = 'Date Filter';

                    trigger OnValidate()
                    begin
                        PTSSTextManagement.MakeDateFilter(DateFilter);
                    end;
                }

                field(BudgetMovType; BudgetMovType)
                {
                    Caption = 'Budget Mov Type';
                }

                field(ShowLines; ShowLines)
                {
                    Caption = 'Show in lines';
                }
                field(PrintOption; PrintOption)
                {
                    Caption = 'Print';
                }
                field(PrintGLEntry; PrintGLEntry)
                {
                    Caption = 'Only GL posted entries';
                }
            }
            group(Flow)
            {
                Caption = 'Flow';
                field("Flow Dimension"; BudgetReportConfig."Flow Dimension")
                {
                    Caption = 'Flow Dimension';
                    Editable = false;
                    TableRelation = Dimension.Code;
                }
                field("Flow Filter Account"; BudgetReportConfig."Flow Filter Account")
                {
                    Caption = 'Flow Filter Account';
                    Editable = false;
                    TableRelation = "G/L Account"."No.";
                }
                field(FlowDateFilter; FlowDateFilter)
                {
                    Caption = 'Date Filter';

                    trigger OnValidate()
                    begin
                        PTSSTextManagement.MakeDateFilter(FlowDateFilter);
                    end;
                }
            }
            group(Economic)
            {
                Caption = 'Economic';
                field("Economic Dimension"; BudgetReportConfig."Economic Dimension")
                {
                    Caption = 'Economic Dimension';
                    Editable = false;
                    TableRelation = Dimension.Code;
                }
                field("Economic Filter Account"; BudgetReportConfig."Economic Filter Account")
                {
                    Caption = 'Economic Filter Account';
                    Editable = false;
                    TableRelation = "G/L Account"."No.";
                }
                field(EconomicDateFilter; EconomicDateFilter)
                {
                    Caption = 'Date Filter';

                    trigger OnValidate()
                    begin
                        PTSSTextManagement.MakeDateFilter(EconomicDateFilter);
                    end;
                }
            }
        }
    }
    actions
    {
        area(reporting)
        {
            group(Reports)
            {
                Caption = 'Reports';
                action("Budget and Pluriannual Budget Plan")
                {
                    Caption = 'Budget and Pluriannual Budget Plan';
                    Image = "Report";
                    Promoted = true;
                    PromotedCategory = "Report";
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        ShowPluriannualBudgetReport();
                    end;

                }
                action("Detailed Monthly Budget Report")
                {
                    Caption = 'Detailed Monthly Budget Report';
                    Image = "Report";
                    Promoted = true;
                    PromotedCategory = "Report";
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        ShowDetailedMonthlyReport();
                    end;
                }
                action("Revenue Budget Changes Report")
                {
                    Caption = 'Revenue Budget Changes Report';
                    Image = "Report";
                    Promoted = true;
                    PromotedCategory = "Report";
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        ShowRevenueBudgetChangesReport();
                    end;
                }
                action("Expenses Budget Changes Report")
                {
                    Caption = 'Expenses Budget Changes Report';
                    Image = "Report";
                    Promoted = true;
                    PromotedCategory = "Report";
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        ShowExpensesBudgetChangesReport();
                    end;
                }
                action("Revenue Budget Execution Demonstration Report")
                {
                    Caption = 'Revenue Budget Execution Demonstration Report';
                    Image = "Report";
                    Promoted = true;
                    PromotedCategory = "Report";
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        ShowRevenueBudExecDemoReport();
                    end;
                }
                action("Expenses Budget Execution Demonstration Report")
                {
                    Caption = 'Expenses Budget Execution Demonstration Report';
                    Image = "Report";
                    Promoted = true;
                    PromotedCategory = "Report";
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        ShowExpensesBudExecDemoReport();
                    end;
                }
                action("Revenue by Financing Sources and Economic Classification")
                {
                    Caption = 'Revenue by Financing Sources and Economic Classification';
                    Image = "Report";
                    Promoted = true;
                    PromotedCategory = "Report";
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        ShowRevenueFinancingReport();
                    end;
                }
                action("Expenses by Financing Sources and Economic Classification")
                {
                    Caption = 'Expenses by Financing Sources and Economic Classification';
                    Image = "Report";
                    Promoted = true;
                    PromotedCategory = "Report";
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        ShowExpensesFinancingReport();
                    end;
                }
                action("Flow Budget")
                {
                    Caption = 'Flow Budget';
                    Image = "Report";
                    Promoted = true;
                    PromotedCategory = "Report";
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        ShowFlowBudgetReport();
                    end;
                }
                action("Economic Budget")
                {
                    Caption = 'Economic Budget';
                    Image = "Report";
                    Promoted = true;
                    PromotedCategory = "Report";
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        ShowEconomicBudgetReport();
                    end;
                }
            }
        }
    }

    var
        PTSSTextManagement: Codeunit "PTSS TextManagement";
        BudgetName: Code[10];
        DateFilter: Text[30];
        PrintOption: Enum "Budget Report Print Options";
        PrintGLEntry: Enum "Budget Report Print GLEntry";
        ShowLines: Enum "Budget Report Show Lines";
        BudgetMovType: Enum "Budget Mov Type";
        BudgetReportConfig: Record "Budget Report Configuration";
        FlowDateFilter: Text[30];
        EconomicDateFilter: Text[30];
        Text001: Label 'You must select a budget.';
        Text002: Label 'You must fill the date filter.';

    trigger OnOpenPage()
    begin
        BudgetReportConfig.GET;
    end;

    local procedure ShowPluriannualBudgetReport()
    var
        MultiannualBudgetPlanDim: Page "Multiannual Budget Plan Dim";
        DimensionCode: Code[20];
    begin
        IF BudgetName = '' THEN
            ERROR(Text001);

        IF DateFilter = '' THEN
            ERROR(Text002);

        CASE ShowLines OF
            ShowLines::Budget:
                begin
                    BudgetReportConfig.TestField("Rubric Dimension");
                    DimensionCode := BudgetReportConfig."Rubric Dimension";
                end;
            ShowLines::Department:
                begin
                    BudgetReportConfig.TestField("Department Dimension");
                    DimensionCode := BudgetReportConfig."Department Dimension";
                end;
            ShowLines::Economical:
                begin
                    BudgetReportConfig.TestField("Economic Dimension");
                    DimensionCode := BudgetReportConfig."Economic Dimension";
                end;
            ShowLines::Financing:
                begin
                    BudgetReportConfig.TestField("Financing Dimension");
                    DimensionCode := BudgetReportConfig."Financing Dimension";
                end;
        END;

        Clear(MultiannualBudgetPlanDim);
        MultiannualBudgetPlanDim.SetParam(BudgetName, DimensionCode, DateFilter, PrintOption, PrintGLEntry, ShowLines, BudgetMovType);
        MultiannualBudgetPlanDim.Run();
    end;

    local procedure ShowEconomicBudgetReport()
    var
        EconomicBudgetReport: Page "Economic Budget Report";
        DimensionCode: Code[20];
    begin
        BudgetReportConfig.TESTFIELD("Economic Dimension");
        BudgetReportConfig.TESTFIELD("Economic Filter Account");
        IF EconomicDateFilter = '' THEN
            ERROR(Text002);

        Clear(EconomicBudgetReport);
        EconomicBudgetReport.SetParam(BudgetReportConfig."Economic Dimension", EconomicDateFilter, BudgetReportConfig."Economic Filter Account");
        EconomicBudgetReport.Run();
    end;

    local procedure ShowFlowBudgetReport()
    var
        FlowBudgetReport: Page "Flow Budget Report";
        DimensionCode: Code[20];
    begin
        BudgetReportConfig.TESTFIELD("Flow Dimension");
        BudgetReportConfig.TESTFIELD("Flow Filter Account");

        IF FlowDateFilter = '' THEN
            ERROR(Text002);

        Clear(FlowBudgetReport);
        FlowBudgetReport.SetParam(BudgetReportConfig."Flow Dimension", FlowDateFilter, BudgetReportConfig."Flow Filter Account");
        FlowBudgetReport.Run();
    end;

    local procedure ShowDetailedMonthlyReport()
    var
        DetailedMonthlyBudgetReport: Page "Detailed Monthly Budget Report";
        DimensionCode: Code[20];
    begin
        IF BudgetName = '' THEN
            ERROR(Text001);

        IF DateFilter = '' THEN
            ERROR(Text002);

        BudgetReportConfig.TestField("Rubric Dimension");
        DimensionCode := BudgetReportConfig."Rubric Dimension";

        Clear(DetailedMonthlyBudgetReport);
        DetailedMonthlyBudgetReport.SetParam(BudgetName, DimensionCode, DateFilter, PrintOption);
        DetailedMonthlyBudgetReport.Run();
    end;

    local procedure ShowRevenueBudgetChangesReport()
    var
        RevenueBudgetChangesReport: Page "Revenue Budget Changes Report";
        DimensionCode: Code[20];
    begin
        IF BudgetName = '' THEN
            ERROR(Text001);

        IF DateFilter = '' THEN
            ERROR(Text002);

        BudgetReportConfig.TestField("Rubric Dimension");
        DimensionCode := BudgetReportConfig."Rubric Dimension";

        Clear(RevenueBudgetChangesReport);
        RevenueBudgetChangesReport.SetParam(BudgetName, DimensionCode, DateFilter);
        RevenueBudgetChangesReport.Run();
    end;

    local procedure ShowRevenueBudExecDemoReport()
    var
        RevenueBudExecDemoReport: Page "Revenue Bud. Exec. Demo Report";
        DimensionCode: Code[20];
        FilterAccounts: array[17] of text;
    begin

        IF DateFilter = '' THEN
            ERROR(Text002);

        BudgetReportConfig.TestField("Rubric Dimension");
        DimensionCode := BudgetReportConfig."Rubric Dimension";
        FilterAccounts[1] := BudgetReportConfig."Corrected Forecasts";
        FilterAccounts[2] := BudgetReportConfig."Receiv from prev per";
        FilterAccounts[3] := BudgetReportConfig."Cleared Revenues";
        FilterAccounts[4] := BudgetReportConfig."Canceled Settlements";
        FilterAccounts[5] := BudgetReportConfig."Gross Receipts Collected";
        FilterAccounts[6] := BudgetReportConfig."Refund - Issued";
        FilterAccounts[7] := BudgetReportConfig."Refund - Payed";
        FilterAccounts[8] := BudgetReportConfig."Receiv. Rev. End of Period";
        FilterAccounts[9] := BudgetReportConfig."Forecasts to Apply";
        FilterAccounts[10] := BudgetReportConfig."Deferred Receipts";
        FilterAccounts[11] := BudgetReportConfig."Settlement Future Periods N1";
        FilterAccounts[12] := BudgetReportConfig."Settlement Future Periods N2";
        FilterAccounts[13] := BudgetReportConfig."Settlement Future Periods N3";
        FilterAccounts[14] := BudgetReportConfig."Settlement Future Periods N4";
        FilterAccounts[15] := BudgetReportConfig."Settlement Future Periods NN";
        FilterAccounts[16] := BudgetReportConfig."Net Rev. Collect. - Prev. Per.";
        FilterAccounts[17] := BudgetReportConfig."Net Rev. Collect. - Curr. Per.";
        Clear(RevenueBudExecDemoReport);
        RevenueBudExecDemoReport.SetParam(DimensionCode, DateFilter, FilterAccounts);
        RevenueBudExecDemoReport.Run();
    end;

    local procedure ShowExpensesBudExecDemoReport()
    var
        ExpensesBudExecDemoReport: Page "Expense Bud. Exec. Demo Report";
        DimensionCode: Code[20];
        FilterAccounts: array[23] of text;
    begin

        IF DateFilter = '' THEN
            ERROR(Text002);

        BudgetReportConfig.TestField("Rubric Dimension");
        DimensionCode := BudgetReportConfig."Rubric Dimension";
        FilterAccounts[1] := BudgetReportConfig."Payable Exp. from Prev. Period";
        FilterAccounts[2] := BudgetReportConfig."Corrected Endowments 3";
        FilterAccounts[3] := BudgetReportConfig.Commitments;
        FilterAccounts[4] := BudgetReportConfig.Obligations;
        FilterAccounts[5] := BudgetReportConfig."Available Endowments";
        FilterAccounts[6] := BudgetReportConfig."Avaylable Budgets";
        FilterAccounts[7] := BudgetReportConfig."Gross Payed Expenses";
        FilterAccounts[8] := BudgetReportConfig."Issued Pmt Disp. Repositions";
        FilterAccounts[9] := BudgetReportConfig."Received Pmd Dips. Repositions";
        FilterAccounts[10] := BudgetReportConfig."Made Commitments Future Per N1";
        FilterAccounts[11] := BudgetReportConfig."Made Commitments Future Per N2";
        FilterAccounts[12] := BudgetReportConfig."Made Commitments Future Per N3";
        FilterAccounts[13] := BudgetReportConfig."Made Commitments Future Per N4";
        FilterAccounts[14] := BudgetReportConfig."Made Commitments Future Per NN";
        FilterAccounts[15] := BudgetReportConfig."Obligations Future Period N1";
        FilterAccounts[16] := BudgetReportConfig."Obligations Future Period N2";
        FilterAccounts[17] := BudgetReportConfig."Obligations Future Period N3";
        FilterAccounts[18] := BudgetReportConfig."Obligations Future Period N4";
        FilterAccounts[19] := BudgetReportConfig."Obligations Future Period NN";
        FilterAccounts[20] := BudgetReportConfig.Captive;
        FilterAccounts[21] := BudgetReportConfig."Not Captive";
        FilterAccounts[22] := BudgetReportConfig."Net Paid Exp. Ref. - Prev. Per";
        FilterAccounts[23] := BudgetReportConfig."Net Paid Exp. Ref. - Curr. Per";

        Clear(ExpensesBudExecDemoReport);
        ExpensesBudExecDemoReport.SetParam(DimensionCode, DateFilter, FilterAccounts);
        ExpensesBudExecDemoReport.Run();
    end;

    local procedure ShowExpensesBudgetChangesReport()
    var
        ExpensesBudgetChangesReport: Page "Expenses Budget Changes Report";
        DimensionCode: Code[20];
    begin
        IF BudgetName = '' THEN
            ERROR(Text001);

        IF DateFilter = '' THEN
            ERROR(Text002);

        BudgetReportConfig.TestField("Rubric Dimension");
        DimensionCode := BudgetReportConfig."Rubric Dimension";

        Clear(ExpensesBudgetChangesReport);
        ExpensesBudgetChangesReport.SetParam(BudgetName, DimensionCode, DateFilter);
        ExpensesBudgetChangesReport.Run();
    end;

    local procedure ShowExpensesFinancingReport()
    var
        ExpensesFinEconReport: Page "Expenses by Fin. Econ. Report";
        DimensionCode: Code[20];
    begin

        IF DateFilter = '' THEN
            ERROR(Text002);

        BudgetReportConfig.TestField("Economic Dimension");
        DimensionCode := BudgetReportConfig."Economic Dimension";

        Clear(ExpensesFinEconReport);
        ExpensesFinEconReport.SetParam(DimensionCode, DateFilter, BudgetReportConfig."Corrected Endowments",
                                        BudgetReportConfig.Captives, BudgetReportConfig."Made Commitments",
                                        BudgetReportConfig."Paid Expenses of the year", BudgetReportConfig."Paid Expenses frm prev. years");
        ExpensesFinEconReport.Run();
    end;

    local procedure ShowRevenueFinancingReport()
    var
        RevenueFinEconReport: Page "Revenue by Fin. Econ. Report";
        DimensionCode: Code[20];
    begin

        IF DateFilter = '' THEN
            ERROR(Text002);

        BudgetReportConfig.TestField("Economic Dimension");
        DimensionCode := BudgetReportConfig."Economic Dimension";

        Clear(RevenueFinEconReport);
        RevenueFinEconReport.SetParam(DimensionCode, DateFilter, BudgetReportConfig."Correct. Forecasts",
                                        BudgetReportConfig."Rev. per Charge Start of Year", BudgetReportConfig."Settled Receipts",
                                        BudgetReportConfig."Reverse Settlements", BudgetReportConfig."Refund - Issued 2",
                                        BudgetReportConfig."Refund - Payed 2", BudgetReportConfig."Gross Receipts of the year",
                                        BudgetReportConfig."Gross Receipts frm prev. years");

        RevenueFinEconReport.Run();
    end;
}

