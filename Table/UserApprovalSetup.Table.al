table 57062 "User Approval Setup"
{
    Caption = 'User Approval Setup';
    DrillDownPageID = "User Approval Setup";
    LookupPageID = "User Approval Setup";

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            NotBlank = true;
            TableRelation = User."User Name";
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
            begin
                UserSelection.ValidateUserName("User ID");
            end;

        }
        field(2; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(3; "End date"; Date)
        {
            Caption = 'End Date';
        }
        field(4; Charge; Code[20])
        {
            Caption = 'Charge';
            Editable = true;
            TableRelation = "Charge Setup";

            trigger OnValidate()
            begin
                CalcFields("Charge Description");
            end;
        }
        field(5; "Charge Description"; Text[50])
        {
            CalcFormula = Lookup("Charge Setup".Description WHERE(Code = FIELD(Charge)));
            Caption = 'Charge Description';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "User ID", Charge, "Start Date", "End date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {

    }

}

