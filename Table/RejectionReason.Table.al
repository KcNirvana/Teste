table 57011 "Rejection Reason"
{
    Caption = 'Rejection Reason';
    DrillDownPageID = "Rejection Reason List";
    LookupPageID = "Rejection Reason List";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(3; Default; Boolean)
        {
            Caption = 'Default';

            trigger OnValidate()
            var
                RejectionReason: Record "Rejection Reason";
                Text001: Label 'There is already a default rejection reason (%1).';
            begin
                RejectionReason.Reset;
                RejectionReason.SetFilter(Code, '<>%1', Code);
                RejectionReason.SetRange(Default, true);
                if RejectionReason.FindFirst() then
                    Error(StrSubstNo(Text001, RejectionReason.Code));
            end;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Description)
        {
        }
    }
}

