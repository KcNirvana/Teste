enum 57030 "Requisition Status"
{
    Extensible = true;

    value(0; Open)
    {
        Caption = 'Open';
    }
    value(1; Released)
    {
        Caption = 'Released';
    }
    value(2; "Pending Approval")
    {
        Caption = 'Pending Approval';
    }
    value(3; Rejected)
    {
        Caption = 'Rejected';
    }
    value(4; Reopened)
    {
        Caption = 'Reopened';
    }
    value(5; Canceled)
    {
        Caption = 'Canceled';
    }
    value(6; Closed)
    {
        Caption = 'Closed';
    }
}