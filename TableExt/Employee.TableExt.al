tableextension 57006 EmployeeTableExt extends Employee
{
    fields
    {
        field(61000; "Section Code"; Code[20])
        {
            Caption = 'Section Code';
            TableRelation = Sections;
        }
    }
    keys
    {
        key(Key1; "Section code")
        {
        }
        key(Key8; "First Name")
        {
        }
    }
}
