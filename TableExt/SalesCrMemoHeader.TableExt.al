tableextension 57024 SalesCrMemoHeaderTableExt extends "Sales Cr.Memo Header"
{
    fields
    {
        field(60000; ConfClass0; Code[10])
        {
            Caption = 'Conf Class0 Code';
            TableRelation = "Class 0 Setup";
        }
        field(60002; "No Budget"; Boolean)
        {
            Caption = 'No Budget';
        }

    }
    keys
    {

    }

}