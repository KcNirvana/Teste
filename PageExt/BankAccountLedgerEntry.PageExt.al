pageextension 57036 BankAccountLedgerEntryPageExt extends "Bank Account Ledger Entries"
{
    layout
    {
        addafter("Document No.")
        {
            field("Revaluation Type"; Rec."Revaluation Type")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
    }
}
