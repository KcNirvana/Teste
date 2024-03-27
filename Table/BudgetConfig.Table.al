table 57040 "Budget Configuration"
{
    Caption = 'Budget Configuration';
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(7; "Avaylable Budget Nos."; Code[10])
        {
            Caption = 'Avaylable Budget Nos.';
            TableRelation = "No. Series";
        }
        field(11; "Posted Avaylable Budget Nos."; Code[10])
        {
            Caption = 'Posted Avaylable Budget Nos.';
            TableRelation = "No. Series";
        }
        field(13; "Budget Nos."; Code[10])
        {
            Caption = 'Budget Nos.';
            TableRelation = "No. Series";
        }
        field(16; "Requisition Nos."; Code[10])
        {
            Caption = 'Requisition Nos.';
            TableRelation = "No. Series";
        }
        field(17; "Req. Vat. Bus. Posting Group"; Code[20])
        {
            Caption = 'Requisition Vat. Bus. Posting Group';
            TableRelation = "VAT Business Posting Group".Code;
        }
        field(27; "Original PAQ"; Code[10])
        {
            Caption = 'Original PAQ';
            TableRelation = "Class 0 Setup";
        }
        field(28; "Consultation Nos."; Code[10])
        {
            Caption = 'Consultation Nos.';
            TableRelation = "No. Series";
        }
        field(38; "Avaylable Budget Diary"; Code[10])
        {
            Caption = 'Avaylable Budget Diary';
            TableRelation = "Gen. Journal Template";
        }
        field(39; "Avaylable Budget Batch"; Code[10])
        {
            Caption = 'Avaylable Budget Batch Diary';
            TableRelation = "Gen. Journal Batch".Name WHERE("Journal Template Name" = FIELD("Avaylable Budget Diary"));
        }
        field(42; "Original Avaylable Budget"; Code[10])
        {
            Caption = 'Original Avaylable Budget';
            TableRelation = "Class 0 Setup";
        }
        field(46; "Avaylable Budget Increase"; Code[10])
        {
            Caption = 'Avaylable Budget Increase';
            TableRelation = "Class 0 Setup";
        }
        field(47; "Avaylable Budget Decrease"; Code[10])
        {
            Caption = 'Avaylable Budget Decrease';
            TableRelation = "Class 0 Setup";
        }
        field(50; "Avaylable Endowment Account"; Code[20])
        {
            Caption = 'Avaylable Endowment Account';
            TableRelation = "G/L Account";
        }
        field(51; Dim1; Code[20])
        {
            Caption = 'Dimension 1';
        }
        field(52; Dim2; Code[20])
        {
            Caption = 'Dimension 2';
        }
        field(53; Dim3; Code[20])
        {
            Caption = 'Dimension 3';
        }
        field(54; Dim4; Code[20])
        {
            Caption = 'Dimension 4';
        }
        field(55; "Analysis Code"; Code[10])
        {
            Caption = 'Analysis Code';
            TableRelation = "Analysis View";

            trigger OnValidate()
            var
                AnalisysView: Record "Analysis View";
            begin
                If "Analysis Code" <> '' then begin
                    AnalisysView.Get("Analysis Code");
                    Dim1 := AnalisysView."Dimension 1 Code";
                    Dim2 := AnalisysView."Dimension 2 Code";
                    Dim3 := AnalisysView."Dimension 3 Code";
                    Dim4 := AnalisysView."Dimension 4 Code";
                end else begin
                    Clear(Dim1);
                    Clear(Dim2);
                    Clear(Dim3);
                    Clear(Dim4);
                end;
            end;
        }
        field(56; Sd1; Boolean)
        {
            Caption = 'Dim1 Selection';
        }
        field(57; Sd2; Boolean)
        {
            Caption = 'Dim2 Selection';
        }
        field(58; Sd3; Boolean)
        {
            Caption = 'Dim3 Selection';
        }
        field(59; Sd4; Boolean)
        {
            Caption = 'Dim4 Selection';
        }
        field(60; "Equal Dimensions By Document"; Boolean)
        {
            Caption = 'Equal Dimensions By Document';
            trigger OnValidate()
            begin
                if not "Equal Dimensions By Document" then begin
                    Clear("Dim Validation 1");
                    Clear("Dim Validation 2");
                    Clear("Dim Validation 3");
                    Clear("Dim Validation 4");
                end;
            end;
        }
        field(62; "Verify Req. Dim in Approval"; Boolean)
        {
            Caption = 'Verify Required Dim in Approval';
            trigger OnValidate()
            begin
                if not "Verify Req. Dim in Approval" then
                    Clear("Dim Code Required");
            end;
        }
        field(63; "Dim Code Required"; Code[20])
        {
            Caption = 'Dim Code Required';
            TableRelation = Dimension where(Blocked = const(false));
            trigger OnValidate()
            begin
                TestField("Verify Req. Dim in Approval");
            end;
        }
        field(64; "Required Comments in Req"; Boolean)
        {
            Caption = 'Required Comments in Req';
        }
        field(65; "Quote Qt. equal Req Quant"; Boolean)
        {
            Caption = 'Quote Quantity Equal Req. Quantity';
        }
        field(50000; "Payment Diary"; Code[10])
        {
            Caption = 'Payment Diary';
            TableRelation = "Gen. Journal Template";
        }
        field(50001; "Payment Batch Diary"; Code[10])
        {
            Caption = 'Payment Batch Diary';
            TableRelation = "Gen. Journal Batch".Name WHERE("Journal Template Name" = FIELD("Payment Diary"));
        }
        field(50021; "Revenue Equal Expense"; Boolean)
        {
            Caption = 'Revenue Equal Expense';
        }
        field(50076; "Dim Validation 1"; Code[20])
        {
            Caption = 'Dimension 1';
            TableRelation = Dimension;
            trigger OnValidate()
            begin
                TestField("Equal Dimensions By Document");
            end;
        }
        field(50077; "Dim Validation 2"; Code[20])
        {
            Caption = 'Dimension 2';
            TableRelation = Dimension;
            trigger OnValidate()
            begin
                TestField("Equal Dimensions By Document");
            end;
        }
        field(50078; "Dim Validation 3"; Code[20])
        {
            Caption = 'Dimension 3';
            TableRelation = Dimension;
            trigger OnValidate()
            begin
                TestField("Equal Dimensions By Document");
            end;
        }
        field(50079; "Dim Validation 4"; Code[20])
        {
            Caption = 'Dimension 4';
            TableRelation = Dimension;
            trigger OnValidate()
            begin
                TestField("Equal Dimensions By Document");
            end;
        }
        field(60001; "General Costs Diary"; Code[10])
        {
            Caption = 'General Costs Diary';
            TableRelation = "Gen. Journal Template";
        }
        field(60002; "General Costs Batch"; Code[10])
        {
            Caption = 'General Costs Batch';
            TableRelation = "Gen. Journal Batch".Name WHERE("Journal Template Name" = FIELD("General Costs Diary"));
        }
        field(61031; "PAQ Nos."; Code[10])
        {
            Caption = 'Adjudication Nos.';
            TableRelation = "No. Series";
        }
        field(61032; "Posted PAQ Nos."; Code[10])
        {
            Caption = 'Posted Adjudication Nos.';
            TableRelation = "No. Series";
        }
        field(61033; "PAQ Template Diary"; Code[10])
        {
            Caption = 'Adjudication Template Diary';
            TableRelation = "Gen. Journal Template";
        }
        field(61034; "PAQ Batch Diary"; Code[10])
        {
            Caption = 'Adjudication Batch Diary';
            TableRelation = "Gen. Journal Batch".Name WHERE("Journal Template Name" = FIELD("PAQ Template Diary"));
        }
        field(61036; "PAQ Increase"; Code[10])
        {
            Caption = 'Increase PAQ';
            TableRelation = "Class 0 Setup";
        }
        field(61037; "PAQ Decrease"; Code[10])
        {
            Caption = 'Decrease PAQ';
            TableRelation = "Class 0 Setup";
        }
        field(61038; "Precision Round Difference"; Decimal)
        {
            Caption = 'Precision Round Difference';
        }
        field(61040; "Invoice Without Process"; Code[10])
        {
            Caption = 'Invoice Without Process';
            TableRelation = "Class 0 Setup";
        }
        field(61041; "Invoice With Process"; Code[10])
        {
            Caption = 'Invoice With Process';
            TableRelation = "Class 0 Setup";
        }
        field(65011; "ExpRev Dimension"; Code[20])
        {
            Caption = 'Expense/Revenue Dimension';
            TableRelation = Dimension.Code;
        }
        field(65017; "Budget Original Regists"; Code[20])
        {
            Caption = 'Budget Original Regists';
            TableRelation = "Class 0 Setup";
        }
        field(65018; "BudgetA Increase Regists"; Code[20])
        {
            Caption = 'Budget Increase Regists';
            TableRelation = "Class 0 Setup";
        }
        field(65019; "BudgetA Decrease Regists"; Code[20])
        {
            Caption = 'Budget Decrease Regists';
            TableRelation = "Class 0 Setup";
        }
        field(65020; "BudgetP Increase Regists"; Code[20])
        {
            Caption = 'Budget Increase Regists';
            TableRelation = "Class 0 Setup";
        }
        field(65021; "Budget Template Header"; Code[20])
        {
            Caption = 'Budget Template Header';
            TableRelation = "Gen. Journal Template";
        }
        field(65022; "Budget Batch Name"; Code[20])
        {
            Caption = 'Budget Batch Name';
            TableRelation = "Gen. Journal Batch".Name WHERE("Journal Template Name" = FIELD("Budget Template Header"));
        }
        field(65024; "Budget Original Regists Rcpt"; Code[20])
        {
            Caption = 'Budget Original Regists Rcpt';
            TableRelation = "Class 0 Setup";
        }
        field(65025; "BudgetA Increase Regists Rcpt"; Code[20])
        {
            Caption = 'Budget Increase Regists Rcpt';
            TableRelation = "Class 0 Setup";
        }
        field(65026; "BudgetA Decrease Regists Rcpt"; Code[20])
        {
            Caption = 'Budget Decrease Regists Rcpt';
            TableRelation = "Class 0 Setup";
        }
        field(65027; "BudgetP Increase Regists Rcpt"; Code[20])
        {
            Caption = 'Budget Increase Regists Rcpt';
            TableRelation = "Class 0 Setup";
        }
        field(65030; "Budget Appropriation Method"; enum "Budget Appropriation Method")
        {
            Caption = 'Budget Appropriation Method';
        }
        field(65035; "BudgetP Decrease Regists"; Code[20])
        {
            Caption = 'Budget Decrease Regists';
            TableRelation = "Class 0 Setup";
        }
        field(65036; "BudgetP Decrease Regists Rcpt"; Code[20])
        {
            Caption = 'Budget Decrease Regists Rcpt';
            TableRelation = "Class 0 Setup";
        }
        field(65043; "Purch Crdt Memo W Process Acc"; Code[10])
        {
            Caption = 'Purch Crdt Memo Without Process Regist';
            TableRelation = "Class 0 Setup";
        }
        field(65044; "Purch Crdt Memo With Proc. Acc"; Code[10])
        {
            Caption = 'Purch Crdt Memo With Process Regist';
            TableRelation = "Class 0 Setup";
        }
        field(65045; "Sales Invoice Acc"; Code[10])
        {
            Caption = 'Sales Invoice Regist';
            TableRelation = "Class 0 Setup";
        }
        field(65046; "Sales Cr.Memo Acc"; Code[10])
        {
            Caption = 'Sales Cr.Memo Regist';
            TableRelation = "Class 0 Setup";
        }
        field(65047; "Finance Charge Acc"; Code[10])
        {
            Caption = 'Finance Charge Regist';
            TableRelation = "Class 0 Setup";
        }
        field(65048; "General Incomes Diary"; Code[10])
        {
            Caption = 'General Incomes Diary';
            TableRelation = "Gen. Journal Template";
        }
        field(65049; "General Incomes Batch"; Code[10])
        {
            Caption = 'General Incomes Batch';
            TableRelation = "Gen. Journal Batch".Name WHERE("Journal Template Name" = FIELD("General Incomes Diary"));
        }
        field(65050; "BudgetC Increase Regists"; Code[10])
        {
            Caption = 'Budget Increase Regists';
            TableRelation = "Class 0 Setup";
        }
        field(65051; "BudgetC Decrease Regists"; Code[10])
        {
            Caption = 'Budget Decrease Regists';
            TableRelation = "Class 0 Setup";
        }
        field(65052; "BudgetC Increase Regists Rcpt"; Code[10])
        {
            Caption = 'Budget Increase Regists Rcpt';
            TableRelation = "Class 0 Setup";
        }
        field(65053; "BudgetC Decrease Regists Rcpt"; Code[10])
        {
            Caption = 'Budget Decrease Regists Rcpt';
            TableRelation = "Class 0 Setup";
        }
        field(65054; "Budget Original Decrease Rcpt"; Code[10])
        {
            Caption = 'Budget Original Decrease Rcpt';
            TableRelation = "Class 0 Setup";
        }
        field(65055; "Budget Original Decrease"; Code[10])
        {
            Caption = 'Budget Original Decrease';
            TableRelation = "Class 0 Setup";
        }
        field(65056; VPP; Code[10])
        {
            Caption = 'Period Payments';
            TableRelation = "Class 0 Setup";
        }
        field(65057; VPPF; Code[10])
        {
            Caption = 'Ended Period Payments';
            TableRelation = "Class 0 Setup";
        }
        field(65058; VIF; Code[10])
        {
            Caption = 'Intermediation Of Funds';
            TableRelation = "Class 0 Setup";
        }
        field(65059; VER; Code[10])
        {
            Caption = 'Delivery Revenue Collected On Behalf Of Others';
            TableRelation = "Class 0 Setup";
        }
        field(65060; VDC; Code[10])
        {
            Caption = 'Return of Deposits and Guarantees';
            TableRelation = "Class 0 Setup";
        }
        field(65061; VERP; Code[10])
        {
            Caption = 'Delivery Of Own Community Resources';
            TableRelation = "Class 0 Setup";
        }
        field(65062; VOD; Code[10])
        {
            Caption = 'Other Expenses From Treasury Operations';
            TableRelation = "Class 0 Setup";
        }
        field(65064; "Sales Cr.Memo AccP"; Code[10])
        {
            Caption = 'Sales Cr.Memo Past Regist';
            TableRelation = "Class 0 Setup";
        }
        field(65065; VRP; Code[10])
        {
            Caption = 'Receipts of the Period';
            TableRelation = "Class 0 Setup";
        }
        field(65066; VRPF; Code[10])
        {
            Caption = 'Ended Receipts of the Period';
            TableRelation = "Class 0 Setup";
        }
        field(65067; VRIF; Code[10])
        {
            Caption = 'Intermediation Of Funds';
            TableRelation = "Class 0 Setup";
        }
        field(65068; VRER; Code[10])
        {
            Caption = 'Revenue Collection Collected On Behalf Of Others';
            TableRelation = "Class 0 Setup";
        }
        field(65069; VRDC; Code[10])
        {
            Caption = 'Creation Of Collateral And Guarantees';
            TableRelation = "Class 0 Setup";
        }
        field(65070; VRERP; Code[10])
        {
            Caption = 'Collection Of Community Own Resources';
            TableRelation = "Class 0 Setup";
        }
        field(65071; VROD; Code[10])
        {
            Caption = 'Other Income From Treasury Operations';
            TableRelation = "Class 0 Setup";
        }
        field(65072; "Cative Exp"; Code[10])
        {
            Caption = 'Cative Exp';
            TableRelation = "Class 0 Setup";
        }
        field(65073; "Descative Exp"; Code[10])
        {
            Caption = 'Descative Exp';
            TableRelation = "Class 0 Setup";
        }
        field(65074; "Cative Rcpt"; Code[10])
        {
            Caption = 'Cative Rcpt';
            TableRelation = "Class 0 Setup";
        }
        field(65075; "Descative Rcpt"; Code[10])
        {
            Caption = 'Descative Rcpt';
            TableRelation = "Class 0 Setup";
        }
        field(65076; "Deeds Diary"; Code[10])
        {
            Caption = 'Deeds Diary';
            TableRelation = "Gen. Journal Template";
        }
        field(65077; "Deeds Batch Diary"; Code[10])
        {
            Caption = 'Deeds Batch Diary';
            TableRelation = "Gen. Journal Batch".Name WHERE("Journal Template Name" = FIELD("Deeds Diary"));
        }
        field(65078; "Contract Nos"; Code[10])
        {
            Caption = 'Contract Nos.';
            TableRelation = "No. Series";
        }
        field(65079; CloseYearOpeningVendor; Code[10])
        {
            Caption = 'Close Year Opening Vendor';
            TableRelation = "Class 0 Setup";
        }
        field(65080; "CloseYearTemplate Diary"; Code[10])
        {
            Caption = 'Close Year Diary';
            TableRelation = "Gen. Journal Template";
        }
        field(65081; "CloseYear Batch Diary"; Code[10])
        {
            Caption = 'Close Year Batch Diary';
            TableRelation = "Gen. Journal Batch".Name WHERE("Journal Template Name" = FIELD("CloseYearTemplate Diary"));
        }
        field(70000; "Adjustment Avay. Budget Date"; Enum "Budget Config Date")
        {
            Caption = 'Adjustment Avaylable Budget Date';
        }
        field(70001; "Auto Approve Zero Value Req"; Boolean)
        {
            Caption = 'Auto Approve Requisition Without Amount';
        }
        field(70002; "Adjustment PAQ Date"; Enum "Budget Config Date")
        {
            Caption = 'Adjustment PAQ Date';
        }
        field(70003; "Reverse Avaylable Budget Date"; Enum "Budget Config Date")
        {
            Caption = 'Reverse Avaylable Budget Date';
        }
        field(70004; "Reverse PAQ Date"; Enum "Budget Config Date")
        {
            Caption = 'Reverse PAQ Date';
        }
        field(70009; CloseYearClosingVendor; Code[10])
        {
            Caption = 'Close Year Closing Vendor';
            TableRelation = "Class 0 Setup";
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

}

