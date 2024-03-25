table 50001 "Bank Layout Line Setup"
{
    Caption = 'BankLayoutLineSetup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Layout No."; Code[20])
        {
            Caption = 'Layout No.';
            Editable = false;
        }
        field(2; "Column"; Code[20])
        {
            Caption = 'Column';
            CharAllowed = 'AZ';
        }
        field(3; "Bank Name"; Text[250])
        {
            Caption = 'Bank Name';
            Editable = false;
        }
        field(4; "Field No."; Integer)
        {
            Caption = 'Field No.';
            TableRelation = "Field Selection"."Field No." where("Table No." = const(81));
        }
        field(5; "Field Name"; Text[250])
        {
            Caption = 'Field Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Field."Field Caption" where("No." = field("Field No."), TableNo = const(81)));
        }
    }
    keys
    {
        key(PK; "Layout No.", Column)
        {
            Clustered = true;
        }
    }
}
