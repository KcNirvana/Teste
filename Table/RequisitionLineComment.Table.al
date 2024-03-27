table 57061 "Requisition Comments"
{
    Caption = 'Requisition Comments';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(3; Comments; Text[80])
        {
            Caption = 'Comments';

        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; Date; Date)
        {
            Caption = 'Date';
        }
        field(6; OriginCode; Code[20])
        {
            Caption = 'Original Code';
        }
        field(7; "Origin Line"; Integer)
        {
            Caption = 'Original Line';
        }
    }

    keys
    {
        key(Key1; "Table ID", "Code", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Origin Line", OriginCode)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Code, Comments)
        {
        }
    }

    trigger OnInsert()
    begin
        Date := WorkDate();
        RequisitionComments.Reset();
        RequisitionComments.SetCurrentKey("Line No.");
        if RequisitionComments.FindLast then
            "Line No." := RequisitionComments."Line No." + 10000
        else
            "Line No." := 10000;
    end;

    var
        RequisitionComments: Record "Requisition Comments";

}

