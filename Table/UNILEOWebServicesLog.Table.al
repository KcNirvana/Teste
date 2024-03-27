table 57098 "UNILEO WebServices Log"
{
    Caption = 'UNILEO WebServices Log';

    fields
    {
        field(1; "Entry No"; Integer)
        {
            Caption = 'Entry No';
        }
        field(2; "XmlFile Type"; Enum "UNILEO Report Type")
        {
            Caption = 'Type';
        }
        field(3; "XmlFile Name"; Text[50])
        {
            Caption = 'Name';
        }
        field(4; "XmlFile Year"; Text[10])
        {
            Caption = 'Year';
        }
        field(5; "XmlFile Period Type"; Text[10])
        {
            Caption = 'XmlFile Period Type';
        }
        field(6; "XmlFile Period Number"; Text[10])
        {
            Caption = 'Period Number';
        }
        field(7; "XmlFile ID"; Text[250])
        {
            Caption = 'ID';
        }
        field(8; "XmlFile Log Message"; Text[250])
        {
            Caption = 'Log Message';
        }
        field(9; "XmlFile Status"; Text[250])
        {
            Caption = 'Status';
        }
        field(10; "XmlFile Report"; BLOB)
        {
            Caption = 'Report';
            SubType = Memo;
        }
        field(11; "XmlFile Date Created"; Date)
        {
            Caption = 'Sent Date';
        }
        field(12; "XmlFile Hour Created"; Time)
        {
            Caption = 'Send Hour';
        }
    }

    keys
    {
        key(Key1; "Entry No")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

