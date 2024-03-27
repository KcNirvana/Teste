tableextension 57021 ContactTableExt extends "Contact"
{
    fields
    {
        field(57000; IsVendor; Boolean)
        {
            Caption = 'Is Vendor Contact';
            FieldClass = FlowField;
            CalcFormula = exist("Contact Business Relation" where("Contact No." = field("No."), "Link to Table" = const(Vendor)));

        }
    }
}
