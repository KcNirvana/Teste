tableextension 52004 NoSeriesTableExt extends "No. Series"
{
    fields
    {
        field(52000; "CM Series Code"; Code[20])
        {
            Caption = 'CM Series Code';

        }
        field(52001; "CM Cost Center Dimension"; Code[20])
        {
            Caption = 'CM Cost Center Dimension';
            trigger OnLookup()
            var
                SalesSetup: Record "Sales & Receivables Setup";
                DimensionValue: Record "Dimension Value";
            begin
                TestField("CM Series Code");
                SalesSetup.Get();
                SalesSetup.TestField("Cost Center Dimension");
                DimensionValue.Reset();
                DimensionValue.FilterGroup(2);
                DimensionValue.SetRange("Dimension Code", SalesSetup."Cost Center Dimension");
                DimensionValue.SetRange(Blocked, false);
                if Page.RunModal(Page::"Dimension Values", DimensionValue) = Action::LookupOK then
                    Validate("CM Cost Center Dimension", DimensionValue.Code);
            end;

            trigger OnValidate()
            var
                SalesSetup: Record "Sales & Receivables Setup";
                DimensionValue: Record "Dimension Value";
            begin
                TestField("CM Series Code");
                SalesSetup.Get();
                SalesSetup.TestField("Cost Center Dimension");
                if (xRec."CM Cost Center Dimension" <> "CM Cost Center Dimension") and ("CM Cost Center Dimension" <> '') then begin
                    DimensionValue.Get(SalesSetup."Cost Center Dimension", "CM Cost Center Dimension");
                    DimensionValue.TestField(Blocked, false);
                end;
            end;
        }
        field(52002; "CM Bill-to Customer No."; Code[20])
        {
            Caption = 'CM Bill-to Customer No.';
            TableRelation = Customer;

            trigger OnValidate()
            var
                Customer: Record Customer;
            begin
                TestField("CM Series Code");
                if (xRec."CM Bill-to Customer No." <> "CM Bill-to Customer No.") and ("CM Bill-to Customer No." <> '') then begin
                    Customer.Get("CM Bill-to Customer No.");
                    Customer.CheckBlockedCustOnDocs(Customer, "Sales Document Type"::Invoice, false, false);
                end;
            end;
        }
        field(52003; "CM Force Document Date"; Boolean)
        {
            Caption = 'CM Force Document Date';
            TableRelation = Customer;

            trigger OnValidate()
            begin
                TestField("CM Series Code");
            end;
        }
    }
}

