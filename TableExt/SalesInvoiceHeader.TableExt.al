tableextension 57023 SalesInvHeaderTableExt extends "Sales Invoice Header"
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
        field(50006; "Receipt Invoice"; Boolean)
        {
            Caption = 'Receipt Invoice';
        }

    }
    keys
    {

    }

}