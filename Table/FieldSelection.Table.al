table 50002 "Field Selection"
{
    Caption = 'Field Selection';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(2; "Field No."; Integer)
        {
            Caption = 'Field No.';
        }
        field(3; "Field Name"; Text[150])
        {
            Caption = 'Field Name';
        }
    }
    keys
    {
        key(PK; "Table No.", "Field No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Field No.", "Field Name")
        {
        }
    }
}
