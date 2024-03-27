tableextension 57015 PTSSIncStmtClosBufferTableExt extends "PTSS Inc. Stmt. Clos. Buffer"
{
    fields
    {
        field(57000; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
    }
}
