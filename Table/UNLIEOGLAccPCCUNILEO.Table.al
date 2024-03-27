table 57097 "UNILEO G/L Account PCC-UNILEO"
{
    Caption = 'G/L Account PCC-UNILEO';

    fields
    {
        field(1; Type; Enum "UNILEO GLAcc PCCUNILEO Type")
        {
            Caption = 'Type';
        }
        field(2; "Account PCC"; Text[30])
        {
            Caption = 'Account PCC';
        }
        field(3; "Account UNILEO"; Text[30])
        {
            Caption = 'Account UNILEO';
        }
        field(4; ID_LocalAccount; Integer)
        {
        }
        field(5; "PCC Description"; Text[200])
        {
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("UNILEO G/L Account UNILEO-PCC".Name where("G/L Account Type" = const(PCC), "No." = field("Account PCC")));
        }
        field(6; "UNILEO Description"; Text[200])
        {
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("UNILEO G/L Account UNILEO-PCC".Name WHERE("G/L Account Type" = const(UNILEO), "No." = field("Account PCC")));
        }
    }

    keys
    {
        key(Key1; Type, "Account PCC")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

