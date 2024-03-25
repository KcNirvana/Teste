table 50000 "Bank Layout Setup"
{
    Caption = 'Bank Layout Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = "Bank Account"."No.";
        }
        field(2; "Bank Name"; Text[250])
        {
            Caption = 'Bank Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("Bank Account".Name where("No." = field("No.")));
        }
        field(3; "Excel Header End"; Integer)
        {
            Caption = 'Excel Header End';
            MinValue = 0;
            MaxValue = 100;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Bank Name")
        {

        }
    }
}
