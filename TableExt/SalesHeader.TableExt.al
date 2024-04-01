tableextension 52001 SalesHeaderTableExt extends "Sales Header"
{
    fields
    {
        field(52000; CMDocument; Boolean)
        {
            Caption = 'CM Document';
            Editable = false;
        }
        field(52001; "CM Document UID"; Integer)
        {
            Caption = 'CM Document UID';
            Editable = false;
        }
        field(52002; "CM Contract ID"; Code[30])
        {
            Caption = 'CM Contract ID';
            Editable = false;
        }
        field(52003; "CM Number Plate"; Code[30])
        {
            Caption = 'CM Number Plate';
            Editable = false;
        }
        field(52004; "CM VIN"; Code[20])
        {
            Caption = 'CM VIN';
            Editable = false;
        }
        field(52005; "CM Pickup Date"; Date)
        {
            Caption = 'CM Pickup Date';
            Editable = false;
        }
        field(52006; "CM Drop Off Date"; Date)
        {
            Caption = 'CM Drop Off Date';
            Editable = false;
        }
        field(52007; Deferement; Boolean)
        {
            Caption = 'Deferement';
            Editable = false;
        }
    }
    keys
    {
        key(NewKey1; CMDocument, "CM Document UID")
        {
        }
        key(NewKey2; "CM Document UID")
        {
        }
        key(NewKey3; "CM Number Plate")
        {
        }
        key(NewKey4; "CM Contract ID")
        {
        }
    }
}