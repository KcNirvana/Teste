table 50010 "CM WebServices Log"
{
    Caption = 'CM WebServices Log';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
        }
        field(2; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
        }
        field(3; "Entry Time"; Time)
        {
            Caption = 'Entry Time';
        }
        field(4; "End Date"; Date)
        {
            Caption = 'End Date';
        }
        field(5; "End Time"; Time)
        {
            Caption = 'End Time';
        }
        field(6; "Status"; Enum "WebService Status")
        {
            Caption = 'Status';
        }
        field(7; "Error Message"; Text[250])
        {
            Caption = 'Error Message';
        }
        field(8; "Posted Document No."; Code[20])
        {
            Caption = 'Posted Document No.';
        }
        field(9; "CM UII"; Integer)
        {
            Caption = 'CM UII';
        }
        field(10; "CM Document Type"; Enum "CM Document Type")
        {
            Caption = 'CM Document Type';
        }
        field(11; "WebService Type"; Enum "WebService Type")
        {
            Caption = 'WebService Type';
        }
        field(12; "Message Received"; Blob)
        {
            Caption = 'Message Received';
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(Key1; "Entry Date", "Entry Time", Status)
        {
        }
        key(Key2; "Posted Document No.")
        {
        }
        key(Key3; "CM UII")
        {
        }
        key(Key4; "CM Document Type")
        {
        }
        key(Key5; "WebService Type")
        {
        }
    }
}
