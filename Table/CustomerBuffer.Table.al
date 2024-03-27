
table 57006 "Customer Buffer"
{
    Caption = 'Customer Buffer';
    DataCaptionFields = "No.", Name;
    TableType = Temporary;
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = Customer;
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(4; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }

        field(21; "Customer Posting Group"; Code[10])
        {
            Caption = 'Customer Posting Group';
            TableRelation = "Customer Posting Group";
        }

        field(55; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "No.", "Customer Posting Group")
        {
            Clustered = true;
        }

        key(Key2; "Customer Posting Group")
        {
        }
    }

    fieldgroups
    {
    }


}