tableextension 50106 PurchLineTExt extends "Purchase Line"
{
    fields
    {
        field(50100; Deferement; Boolean)
        {
            Caption = 'Deferement';

        }
        field(50101; "Deferement Start Date"; Date)
        {
            Caption = 'Deferement Start Date';
            trigger OnValidate()
            begin
                TestField("Deferement");
            end;
        }
        field(50102; "Deferement Periodicity"; DateFormula)
        {
            Caption = 'Deferement Periodicity';
            trigger OnValidate()
            begin
                TestField("Deferement");
            end;
        }
        field(50103; "Deferement Account"; Code[20])
        {
            Caption = 'Deferement Account';
            TableRelation = "G/L Account";
            trigger OnValidate()
            begin
                TestField("Deferement");
            end;
        }
    }
    keys
    {
    }
}