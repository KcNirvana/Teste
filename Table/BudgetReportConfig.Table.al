table 57091 "Budget Report Configuration"
{

    Caption = 'Budget Report Configuration';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(70006; "Rubric Dimension"; Code[20])
        {
            Caption = 'Rubric Dimension';
            TableRelation = Dimension;
        }
        field(70007; "Economic Dimension"; Code[20])
        {
            Caption = 'Economic Dimension';
            TableRelation = Dimension;
        }
        field(70009; "Department Dimension"; Code[20])
        {
            Caption = 'Department Dimension';
            TableRelation = Dimension;
        }
        field(70010; "Financing Dimension"; Code[20])
        {
            Caption = 'Financing Dimension';
            TableRelation = Dimension;
        }
        field(70012; "Corrected Forecasts"; Text[30])
        {
            Caption = 'Corrected Forecasts';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70013; "Receiv from prev per"; Text[30])
        {
            Caption = 'Receivables from previous periods';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70014; "Cleared Revenues"; Text[30])
        {
            Caption = 'Cleared Revenues';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70015; "Canceled Settlements"; Text[30])
        {
            Caption = 'Canceled Settlements';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70016; "Gross Receipts Collected"; Text[30])
        {
            Caption = 'Gross Receipts Collected';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70017; "Refund - Issued"; Text[30])
        {
            Caption = 'Refund - Issued';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70018; "Refund - Payed"; Text[30])
        {
            Caption = 'Refund - Payed';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70019; "Net Rev. Collect. - Prev. Per."; Text[30])
        {
            Caption = 'Net Revenue Collected - Previous Period';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70020; "Net Rev. Collect. - Curr. Per."; Text[30])
        {
            Caption = 'Net Revenue Collected - Current Period';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70021; "Receiv. Rev. End of Period"; Text[30])
        {
            Caption = 'Receivable Revenues at End of Period';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70023; "Payable Exp. from Prev. Period"; Text[30])
        {
            Caption = 'Payable Expenses from Previous Periods';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70024; "Corrected Endowments 3"; Text[30])
        {
            Caption = 'Corrected Endowments';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70026; Commitments; Text[30])
        {
            Caption = 'Commitments';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70027; Obligations; Text[30])
        {
            Caption = 'Obligations';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70028; "Net Paid Exp. Ref. - Prev. Per"; Text[30])
        {
            Caption = 'Net Paid Expenses Refund - Previous Period';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70029; "Net Paid Exp. Ref. - Curr. Per"; Text[30])
        {
            Caption = 'Net Paid Expenses Refund - Current Period';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70034; Captives; Text[30])
        {
            Caption = 'Captives';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70035; "Made Commitments"; Text[30])
        {
            Caption = 'Made Commitments';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70036; "Paid Expenses of the year"; Text[30])
        {
            Caption = 'Paid Expenses of the year';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70037; "Paid Expenses frm prev. years"; Text[30])
        {
            Caption = 'Paid Expenses from previous years';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70041; "Corrected Endowments"; Text[30])
        {
            Caption = 'Corrected Endowments';
            TableRelation = "G/L Account";
            ValidateTableRelation = false;
        }
        field(70042; "Correct. Forecasts"; Text[30])
        {
            Caption = 'Corrected Forecasts';
            TableRelation = "G/L Account";
            ValidateTableRelation = false;
        }
        field(70043; "Rev. per Charge Start of Year"; Text[30])
        {
            Caption = 'Rev. per Charge Start of Year';
            TableRelation = "G/L Account";
            ValidateTableRelation = false;
        }
        field(70044; "Settled Receipts"; Text[30])
        {
            Caption = 'Settled Receipts';
            TableRelation = "G/L Account";
            ValidateTableRelation = false;
        }
        field(70045; "Reverse Settlements"; Text[30])
        {
            Caption = 'Reverse Settlements';
            TableRelation = "G/L Account";
            ValidateTableRelation = false;
        }
        field(70046; "Refund - Issued 2"; Text[30])
        {
            Caption = 'Refund - Issued';
            TableRelation = "G/L Account";
            ValidateTableRelation = false;
        }
        field(70047; "Refund - Payed 2"; Text[30])
        {
            Caption = 'Refund - Payed';
            TableRelation = "G/L Account";
            ValidateTableRelation = false;
        }
        field(70048; "Gross Receipts of the year"; Text[30])
        {
            Caption = 'Gross Receipts of the year';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70049; "Gross Receipts frm prev. years"; Text[30])
        {
            Caption = 'Paid Expenses from previous years';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70050; "Flow Dimension"; Code[20])
        {
            Caption = 'Flow';
            TableRelation = Dimension.Code;
        }
        field(70051; "Flow Filter Account"; Text[250])
        {
            Caption = 'Flow Filter Account';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70052; "Economic Filter Account"; Text[250])
        {
            Caption = 'Economic Filter Account';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70055; "Available Endowments"; Text[30])
        {
            Caption = 'Available Endowments';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70056; "Avaylable Budgets"; Text[30])
        {
            Caption = 'Avaylable Budgets';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70057; "Gross Payed Expenses"; Text[30])
        {
            Caption = 'Gross Payed Expenses';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70058; "Issued Pmt Disp. Repositions"; Text[30])
        {
            Caption = 'Issued Payment Disposal Repositions';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70059; "Received Pmd Dips. Repositions"; Text[30])
        {
            Caption = 'Received Payment Disposal Repositions';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70060; "Made Commitments Future Per N1"; Text[30])
        {
            Caption = 'Made Commitments Future Period N+1';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70061; "Made Commitments Future Per N2"; Text[30])
        {
            Caption = 'Made Commitments Future Period N+2';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70062; "Made Commitments Future Per N3"; Text[30])
        {
            Caption = 'Made Commitments Future Period N+3';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70063; "Made Commitments Future Per N4"; Text[30])
        {
            Caption = 'Made Commitments Future Period N+4';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70064; "Made Commitments Future Per NN"; Text[30])
        {
            Caption = 'Made Commitments Future Period N+N';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70065; "Obligations Future Period N1"; Text[30])
        {
            Caption = 'Obligations Future Period N+1';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70066; "Obligations Future Period N2"; Text[30])
        {
            Caption = 'Obligations Future Period N+2';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70067; "Obligations Future Period N3"; Text[30])
        {
            Caption = 'Obligations Future Period N+3';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70068; "Obligations Future Period N4"; Text[30])
        {
            Caption = 'Obligations Future Period N+4';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70069; "Obligations Future Period NN"; Text[30])
        {
            Caption = 'Obligations Future Period N+N';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70070; Captive; Text[30])
        {
            Caption = 'Captive';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70071; "Not Captive"; Text[30])
        {
            Caption = 'Not Captive';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70072; "Forecasts to Apply"; Text[30])
        {
            Caption = 'Forecasts to Apply';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70073; "Deferred Receipts"; Text[30])
        {
            Caption = 'Deferred Receipts';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70074; "Settlement Future Periods N1"; Text[30])
        {
            Caption = 'Settlement of Future Periods N+1';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70075; "Settlement Future Periods N2"; Text[30])
        {
            Caption = 'Settlement of Future Periods N+2';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70076; "Settlement Future Periods N3"; Text[30])
        {
            Caption = 'Settlement of Future Periods N+3';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70077; "Settlement Future Periods N4"; Text[30])
        {
            Caption = 'Settlement of Future Periods N+3';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70078; "Settlement Future Periods NN"; Text[30])
        {
            Caption = 'Settlement of Future Periods N+N';
            TableRelation = "G/L Account"."No.";
            ValidateTableRelation = false;
        }
        field(70088; "WebService EndPoint"; Text[250])
        {
            Caption = 'WebService EndPoint';
        }
        field(70090; "WebService User ID"; Text[100])
        {
            Caption = 'WebService User ID';
        }
        field(70091; "WebService Password"; Text[50])
        {
            Caption = 'WebService Password';
            ExtendedDatatype = Masked;
        }
        field(70092; "WebService Active"; Boolean)
        {
            Caption = 'WebService Active';
        }
        field(70093; "Check Chart Of Accounts"; Boolean)
        {
            Caption = 'Check PCC/UNILEO Chart Of Accounts';
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

