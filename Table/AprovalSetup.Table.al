table 57083 "Approval Setup"
{
    Caption = 'Approval Setup';

    fields
    {
        field(1; "Approver Type"; Enum "Approver Type")
        {
            Caption = 'Approver Type';
        }
        field(2; "Approver ID"; Code[50])
        {
            Caption = 'Approver ID';
            TableRelation = IF ("Approver Type" = CONST(Charge)) "Charge Setup".Code
            ELSE
            IF ("Approver Type" = CONST(User)) User."User Name";

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
                ChargeSetup: Record "Charge Setup";
            begin
                if "Approver Type" = "Approver Type"::User then begin
                    UserSelection.ValidateUserName("Approver ID")
                end else begin
                    ChargeSetup.Reset();
                    ChargeSetup.SetRange(Code, "Approver ID");
                    if ChargeSetup.FindFirst() then begin
                        "Approver Id Description" := ChargeSetup.Description;
                    end;
                end;
            end;
        }
        field(3; "Approver Id Description"; Text[50])
        {
            Caption = 'Approver Id Description';
        }
        field(4; "Section Code"; Code[20])
        {
            Caption = 'Section Code';
            TableRelation = Sections;
        }
        field(5; "Section Description"; Text[50])
        {
            CalcFormula = Lookup(Sections.Description WHERE(Code = FIELD("Section Code")));
            Caption = 'Section Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(7; "End Date"; Date)
        {
            Caption = 'End Date';
        }
    }

    keys
    {
        key(Key1; "Approver Type", "Approver ID", "Section Code", "Start Date", "End Date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

