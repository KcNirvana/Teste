tableextension 50107 PurchaseInvLineTableExt extends "Purch. Inv. Line"
{
    fields
    {
        field(50100; Deferement; Boolean)
        {
            Caption = 'Deferement';
            Editable = false;
        }
        field(50101; "Deferement Start Date"; Date)
        {
            Caption = 'Deferement Start Date';
        }
        field(50102; "Deferement Periodicity"; DateFormula)
        {
            Caption = 'Deferement Periodicity';
        }
        field(50103; "Deferement Account"; Code[20])
        {
            Caption = 'Deferement Account';
            TableRelation = "G/L Account";
        }
    }
    keys
    {
    }
}