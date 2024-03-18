tableextension 50101 MovsRecon extends "G/L Entry"
{

    fields
    {
        field(50100; Reconciled; Boolean)
        {
            Caption = 'Reconciled';
        }
        field(50101; "User ID Recon"; Code[50])
        {
            Caption = 'User ID Recon';
            DataClassification = EndUserIdentifiableInformation;
            TableRelation = User."User Name";
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
            begin
                UserSelection.ValidateUserName("User ID");
            end;
        }
    }
}

