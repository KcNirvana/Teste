table 57094 "UNILEO Management Balances"
{
    Caption = 'Management Balances';

    fields
    {
        field(1; Year; Integer)
        {
            Caption = 'Year';
            NotBlank = true;
        }
        field(2; "Rubric Code"; Code[20])
        {
            Caption = 'Rubric Code';
            NotBlank = true;
        }
        field(6; AmountOpen; Decimal)
        {
            Caption = 'Balance';
        }
        field(7; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; Year, "Rubric Code")
        {
            Clustered = true;
            SumIndexFields = AmountOpen;
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        "Last Date Modified" := TODAY;
    end;

    trigger OnModify()
    begin
        "Last Date Modified" := TODAY;
    end;

    trigger OnRename()
    begin
        ERROR(Text001, TableCaption);
    end;

    var
        Text001: Label 'You cannot rename %1.';
}

