table 57007 "Vendor Buffer"
{
    Caption = 'Vendor Buffer';
    DataCaptionFields = "No.", Name;
    TableType = Temporary;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = Vendor;
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(4; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }

        field(21; "Vendor Posting Group"; Code[20])
        {
            Caption = 'Vendor Posting Group';
            TableRelation = "Vendor Posting Group";
        }
        field(55; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "No.", "Vendor Posting Group")
        {
            Clustered = true;
        }
        key(Key2; "No.")
        {
        }
        key(Key3; "Vendor Posting Group")
        {
        }
    }

    fieldgroups
    {
    }

}

