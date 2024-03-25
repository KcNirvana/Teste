tableextension 50103 "Sales Setup Ext" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50000; "Execute Sales Jnl Job Queue"; Boolean)
        {
            Caption = 'Execute Sales Jnl Job Queue';
        }
        field(50001; "Last Line Used"; Integer)
        {
            Caption = 'Last No.';
        }
    }
}
