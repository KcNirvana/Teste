pageextension 57037 InventoryPostingSetupPageExt extends "Inventory Posting Setup"
{
    layout
    {
        addafter("Inventory Account (Interim)")
        {
            field("Reservations Account"; Rec."Reservations Account")
            {
                ApplicationArea = all;
            }
            field("Credit Reservations Account"; Rec."Credit Reservations Account")
            {
                ApplicationArea = all;
            }
            field("Impairements Account"; Rec."Impairements Account")
            {
                ApplicationArea = all;
            }
            field("Credit Impairements Account"; Rec."Credit Impairements Account")
            {
                ApplicationArea = all;
            }
            field("Elapsed Interests Account"; Rec."Elapsed Interests Account")
            {
                ApplicationArea = all;
            }
            field("Credit Elapsed Int. Account"; Rec."Credit Elapsed Int. Account")
            {
                ApplicationArea = all;
            }
            field("Receipts of Interest Account"; Rec."Receipts of Interest Account")
            {
                ApplicationArea = all;
            }
            field("Credit Receipts Int. Account"; Rec."Credit Receipts Int. Account")
            {
                ApplicationArea = all;
            }
            field("Amortization Account"; Rec."Amortization Account")
            {
                ApplicationArea = all;
            }
            field("Credit Amortization Account"; Rec."Credit Amortization Account")
            {
                ApplicationArea = all;
            }
            field("Dividends Account"; Rec."Dividends Account")
            {
                ApplicationArea = all;
            }
            field("Credit Dividends Account"; Rec."Credit Dividends Account")
            {
                ApplicationArea = all;
            }
            field("Interests Adjustments Account"; Rec."Interests Adjustments Account")
            {
                ApplicationArea = all;
            }
            field("Credit Inter. Adjust. Account"; Rec."Credit Inter. Adjust. Account")
            {
                ApplicationArea = all;
            }
            field("Amortizations Adjust. Account"; Rec."Amortizations Adjust. Account")
            {
                ApplicationArea = all;
            }
            field("Credit Amort. Adjust. Account"; Rec."Credit Amort. Adjust. Account")
            {
                ApplicationArea = all;
            }
            field("ANL Account"; Rec."ANL Account")
            {
                ApplicationArea = all;
            }
            field("Credit ANL Account"; Rec."Credit ANL Account")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
    }
}
