table 57010 "Preferred Vendor"
{
    fields
    {
        field(1; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
        }
        field(2; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            TableRelation = Contact where(IsVendor = const(true));

            trigger OnValidate()
            begin
                CalcFields("Vendor Name");
                CalcFields("VAT Registration No.");
            end;
        }
        field(3; "Vendor Name"; Text[100])
        {
            CalcFormula = Lookup(Contact.Name WHERE("No." = FIELD("Contact No.")));
            Caption = 'Vendor Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "VAT Registration No."; Text[20])
        {
            CalcFormula = Lookup(Contact."VAT Registration No." WHERE("No." = FIELD("Contact No.")));
            Caption = 'VAT Registration No.';
            FieldClass = FlowField;
            Editable = false;
        }
        field(5; "User Active"; Code[50])
        {
            Caption = 'User Active';
        }
    }

    keys
    {
        key(Key1; "Consultation Code", "Contact No.", "User Active")
        {
            Clustered = true;
        }
        key(Key2; "Contact No.", "Consultation Code", "User Active")
        {
        }
        key(Key3; "Contact No.", "User Active", "Consultation Code")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        "User Active" := UserId;
    end;
}

