tableextension 57004 ValueEntryTableExt extends "Value Entry"
{
    fields
    {
        field(50009; "Original Currency Amount"; Decimal)
        {
            Caption = 'Original Currency Amount';
        }
        field(50010; "Original Currency Code"; Code[10])
        {
            Caption = 'Original Currency Code';
        }
        field(50100; "Balancing Record"; Boolean)
        {
            Caption = 'Balancing Record';
        }
        field(67000; "Revaluation Type"; enum "Deeds Revaluation Type")
        {
            Caption = 'Revaluation Type';
        }
        field(67008; "Tax Rate"; Decimal)
        {
            Caption = 'Tax Rate';
        }
    }
}