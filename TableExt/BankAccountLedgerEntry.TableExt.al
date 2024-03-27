tableextension 57041 BankAccountLedgerEntryTableExt extends "Bank Account Ledger Entry"
{
    fields
    {

        field(67000; "Revaluation Type"; Enum "Deeds Revaluation Type")
        {
            Caption = 'Revaluation Type';
            Editable = false;
        }

    }
    keys
    {
        key(NewKey1; "Revaluation Type")
        {
        }
        key(NewKey2; "Bank Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code")
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
    }
}