tableextension 57038 ItemTableExt extends Item
{
    fields
    {
        field(50020; "Invoice Description Code"; Code[10])
        {
            Caption = 'Invoice Description Code';
            TableRelation = "Invoice Descriptions";
        }
        field(60000; Deed; Boolean)
        {
            Caption = 'Deed';
            trigger OnValidate()
            begin
                If not Deed then
                    Clear("Currency Code");
            end;
        }
        field(60002; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;

            trigger OnValidate()
            begin
                If ("Currency Code" <> '') and (xRec."Currency Code" <> "Currency Code") then
                    CreateBankAccount();
            end;
        }
        field(60003; "Deed Balance"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            FieldClass = FlowField;
            CalcFormula = Sum("Bank Account Ledger Entry".Amount WHERE("Bank Account No." = FIELD("No."),
                                                                        "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                        "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter")));
            Caption = 'Balance';
            Editable = false;

        }
        field(60004; "Deed Balance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Bank Account Ledger Entry"."Amount (LCY)" WHERE("Bank Account No." = FIELD("No."),
                                                                        "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                        "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter")));
            Caption = 'Balance (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    local procedure CreateBankAccount()
    var
        BankAccount: Record "Bank Account";
    begin
        if BankAccount.Get("No.") then begin
            BankAccount.Validate("Currency Code", "Currency Code");
            BankAccount.Modify(true);
        end else begin
            BankAccount.Init();
            BankAccount."No." := "No.";
            BankAccount.Name := Description;
            BankAccount.Validate("Currency Code", "Currency Code");
            BankAccount.Insert(true);
        end;
    end;

}

