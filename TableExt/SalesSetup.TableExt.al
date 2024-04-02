tableextension 50103 "Sales Setup Ext" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; "Execute Sales Jnl Job Queue"; Boolean)
        {
            Caption = 'Execute Sales Jnl Job Queue';
        }
        field(50101; "Last Line Used"; Integer)
        {
            Caption = 'Last No.';
        }
        field(50102; "Aging Column 1"; Text[30])
        {
            Caption = 'Aging Column 1';
        }
        field(50103; "Aging Column 2"; Text[30])
        {
            Caption = 'Aging Column 2';
        }
        field(50104; "Aging Column 3"; Text[30])
        {
            Caption = 'Aging Column 3';
        }
        field(50105; "Aging Column 4"; Text[30])
        {
            Caption = 'Aging Column 4';
        }
        field(50106; "Aging Column 5"; Text[30])
        {
            Caption = 'Aging Column 5';
        }
    }
}
