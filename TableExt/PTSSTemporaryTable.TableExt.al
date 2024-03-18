tableextension 50102 PTSSTemporaryTableTableExt extends "PTSS Temporary Table"
{
    fields
    {
        field(50100; "Purch Sales Type"; enum "Purch Sales Type")
        {
        }
        field(50101; "Purch Sales Line Type"; enum "Sales Line Type")
        {
        }
        field(50110; Code6; Code[80])
        {
            Caption = 'Code6';
        }
        field(50111; Code7; Code[80])
        {
            Caption = 'Code7';
        }
        field(50112; Code8; Code[80])
        {
            Caption = 'Code8';
        }
        field(50113; Code9; Code[80])
        {
            Caption = 'Code9';
        }
        field(50114; Code10; Code[80])
        {
            Caption = 'Code10';
        }
    }
    keys
    {
        key(NewKey1; Code1, Code2)
        {
        }

    }
}
