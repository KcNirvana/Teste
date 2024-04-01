tableextension 52000 SalesSetupTableExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(52000; "Location Dimension"; Code[20])
        {
            Caption = 'Location Dimension';
            TableRelation = Dimension where(Blocked = const(false));
        }
        field(52001; "Cost Center Dimension"; Code[20])
        {
            Caption = 'Cost Center Dimension';
            TableRelation = Dimension where(Blocked = const(false));
        }
        field(52002; "PT Customer Template"; Code[20])
        {
            Caption = 'PT Customer Template';
            TableRelation = "Customer Templ.";
        }
        field(52003; "EU Customer Template"; Code[20])
        {
            Caption = 'EU Customer Template';
            TableRelation = "Customer Templ.";
        }
        field(52004; "NEU Customer Template"; Code[20])
        {
            Caption = 'NEU Customer Template';
            TableRelation = "Customer Templ.";
        }
        field(52005; "Generic Customer No."; Code[20])
        {
            Caption = 'Generic Customer No.';
            TableRelation = Customer;
        }
    }
}
