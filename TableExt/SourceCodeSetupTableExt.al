tableextension 57005 SourceCodeSetupTableExt extends "Source Code Setup"
{
    fields
    {
        field(50000; "Avaylabel Budget"; Code[10])
        {
            Caption = 'Avaylabel Budget';
            TableRelation = "Source Code";
        }
        field(50001; Budget; Code[10])
        {
            Caption = 'Budget';
            TableRelation = "Source Code";
        }
        field(50003; PAQ; Code[10])
        {
            Caption = 'Adjudication';
            TableRelation = "Source Code";
        }
        field(50004; Invoice; Code[10])
        {
            Caption = 'Invoice';
            TableRelation = "Source Code";
        }
        field(50005; Requisition; Code[10])
        {
            Caption = 'Requisition';
            TableRelation = "Source Code";
        }
    }
}
