table 57076 "Selection Reason"
{
    Caption = 'Selection Reason';
    DrillDownPageID = "Selection Reason List";
    LookupPageID = "Selection Reason List";

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
                SelectionReason: Record "Selection Reason";
                Text001: Label 'There is already a default selection reason (%1).';
            begin
                SelectionReason.Reset;
                SelectionReason.SetFilter(Code, '<>%1', Code);
                SelectionReason.SetRange(Default, true);
                if SelectionReason.FindFirst() then
                    Error(StrSubstNo(Text001, SelectionReason.Code));
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
        fieldgroup(DropDown; Code, Description)
        {
        }
    }

}

