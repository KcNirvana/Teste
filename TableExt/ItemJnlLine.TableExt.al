tableextension 57040 ItemJnlLineTableExt extends "Item Journal Line"
{
    fields
    {
        field(50000; "Revaluation Type"; Enum "Deeds Revaluation Type")
        {
            Caption = 'Revaluation Type';
            trigger OnValidate()
            var
                Text001: Label 'The amount must be positive for Elapsed Interests.';
            begin
                IF ("Revaluation Type" = "Revaluation Type"::"Elapsed Interests") AND (Amount < 0) THEN
                    ERROR(Text001);
            end;
        }
        field(50001; "Tax Rate"; Decimal)
        {
            Caption = 'Tax Rate';
            DecimalPlaces = 2 : 8;
        }
        field(50003; "Original Currency Amount"; Decimal)
        {
        }
        field(50002; "Original Currency"; Code[10])
        {
        }
        field(57000; "No Budget"; Boolean)
        {
            Caption = 'No Budget';

            trigger OnValidate()
            var
                Text001: Label 'You dont go post budget entries.\\Do you want to continue?';
            begin
                IF "No Budget" THEN
                    IF NOT CONFIRM(Text001) THEN
                        "No Budget" := FALSE;
            end;
        }
        field(57001; ConfClass0; Code[10])
        {
            Caption = 'Conf Class0 Code';
            TableRelation = "Class 0 Setup";
        }
        modify("Source Currency Code")
        {
            trigger OnAfterValidate()
            var
                CurrExchangeRate: Record "Currency Exchange Rate";
                Item: Record Item;
                BankAccount: Record "Bank Account";
                BankAccPostingGroup: Record "Bank Account Posting Group";
                Text001: Label 'The currency code in deed is %1. You cant post with another currency.';
            begin
                Item.Get("Item No.");
                Item.TestField(Deed);
                if ("Source Currency Code" <> '') and (xRec."Source Currency Code" <> "Source Currency Code") then begin
                    If Item."Currency Code" <> "Source Currency Code" then
                        Error(Text001, Item."Currency Code");
                    BankAccount.Get(Item."No.");
                    BankAccount.TestField("Bank Acc. Posting Group");
                    BankAccPostingGroup.Get(BankAccount."No.");
                    BankAccPostingGroup.TestField("G/L Account No.");
                    CurrExchangeRate.Reset();
                    CurrExchangeRate.SetRange("Currency Code", "Source Currency Code");
                    if CurrExchangeRate.FindLast() then
                        Validate("Tax Rate", CurrExchangeRate."Exchange Rate Amount");
                end;
            end;
        }
    }
}

