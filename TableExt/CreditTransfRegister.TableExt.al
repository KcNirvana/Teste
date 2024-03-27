tableextension 57039 CreditTransfRegisterTableExt extends "Credit Transfer Register"
{
    fields
    {
        field(50000; "From Entry No."; Integer)
        {
            Caption = 'From Entry No.';
            TableRelation = "G/L Entry";
        }
        field(50001; "To Entry No."; Integer)
        {
            Caption = 'To Entry No.';
            TableRelation = "G/L Entry";
        }
    }
    keys
    {
    }

}

