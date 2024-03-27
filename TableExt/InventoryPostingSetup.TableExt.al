tableextension 57042 InventoryPostingSetupTableExt extends "Inventory Posting Setup"
{
    fields
    {
        field(50000; "Reservations Account"; Code[20])
        {
            Caption = 'Reservations Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Reservations Account");
                Validate("Reservations Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Reservations Account", false, false)
            end;
        }
        field(50001; "Impairements Account"; Code[20])
        {
            Caption = 'Impairements Account';
            TableRelation = "G/L Account";

            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Impairements Account");
                Validate("Impairements Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Impairements Account", false, false)
            end;
        }
        field(50002; "Elapsed Interests Account"; Code[20])
        {
            Caption = 'Elapsed Interests Account';

            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Elapsed Interests Account");
                Validate("Elapsed Interests Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Elapsed Interests Account", false, false)
            end;
        }
        field(50003; "Receipts of Interest Account"; Code[20])
        {
            Caption = 'Receipts of Interest Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Receipts of Interest Account");
                Validate("Receipts of Interest Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Receipts of Interest Account", false, false)
            end;
        }
        field(50004; "Amortization Account"; Code[20])
        {
            Caption = 'Amortization Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Amortization Account");
                Validate("Amortization Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Amortization Account", false, false)
            end;
        }
        field(50005; "Dividends Account"; Code[20])
        {
            Caption = 'Dividends Account';
            TableRelation = "G/L Account";

            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Dividends Account");
                Validate("Dividends Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Dividends Account", false, false)
            end;
        }
        field(50006; "Credit Reservations Account"; Code[20])
        {
            Caption = 'Credit Reservations Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Credit Reservations Account");
                Validate("Credit Reservations Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Credit Reservations Account", false, false)
            end;
        }
        field(50007; "Credit Impairements Account"; Code[20])
        {
            Caption = 'Credit Impairements Account';

            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Credit Impairements Account");
                Validate("Credit Impairements Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Credit Impairements Account", false, false)
            end;
        }
        field(50008; "Credit Elapsed Int. Account"; Code[20])
        {
            Caption = 'Credit Elapsed Int. Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Credit Elapsed Int. Account");
                Validate("Credit Elapsed Int. Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Credit Elapsed Int. Account", false, false)
            end;
        }
        field(50009; "Credit Receipts Int. Account"; Code[20])
        {
            Caption = 'Credit Receipts of Interest Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Credit Receipts Int. Account");
                Validate("Credit Receipts Int. Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Credit Receipts Int. Account", false, false)
            end;
        }
        field(50010; "Credit Amortization Account"; Code[20])
        {
            Caption = 'Credit Amortization Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Credit Amortization Account");
                Validate("Credit Amortization Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Credit Amortization Account", false, false)
            end;
        }
        field(50011; "Credit Dividends Account"; Code[20])
        {
            Caption = 'Credit Dividends Account';
            TableRelation = "G/L Account";

            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Credit Dividends Account");
                Validate("Credit Dividends Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Credit Dividends Account", false, false)
            end;
        }
        field(50012; "Interests Adjustments Account"; Code[20])
        {
            Caption = 'Interests Adjustments Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Interests Adjustments Account");
                Validate("Interests Adjustments Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Interests Adjustments Account", false, false)
            end;
        }
        field(50013; "Credit Inter. Adjust. Account"; Code[20])
        {
            Caption = 'Credit Interests Adjustments Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Credit Inter. Adjust. Account");
                Validate("Credit Inter. Adjust. Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Credit Inter. Adjust. Account", false, false)
            end;
        }
        field(50014; "Amortizations Adjust. Account"; Code[20])
        {
            Caption = 'Amortizations Adjustments Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Amortizations Adjust. Account");
                Validate("Amortizations Adjust. Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Amortizations Adjust. Account", false, false)
            end;
        }
        field(50015; "Credit Amort. Adjust. Account"; Code[20])
        {
            Caption = 'Credit Amortizations Adjustments Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Credit Amort. Adjust. Account");
                Validate("Credit Amort. Adjust. Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Credit Amort. Adjust. Account", false, false)
            end;
        }
        field(50016; "ANL Account"; Code[20])
        {
            Caption = 'Negative Result Revaluation Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("ANL Account");
                Validate("ANL Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("ANL Account", false, false)
            end;
        }
        field(50017; "Credit ANL Account"; Code[20])
        {
            Caption = 'Credit Negative Result Revaluation Account';
            trigger OnLookup()
            begin
                GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Credit ANL Account");
                Validate("Credit ANL Account");
            end;

            trigger OnValidate()
            begin
                GLAccountCategoryMgt.CheckGLAccountWithoutCategory("Credit ANL Account", false, false)
            end;
        }

    }
    keys
    {
    }
    Var
        GLAccountCategoryMgt: Codeunit "G/L Account Category Mgt.";
}