table 50012 "CM Sales Deferments Entry"
{

    Caption = 'Sales Deferments Entry';
    DataCaptionFields = "Document No.", "Deferment Date";
    //DrillDownPageID = "Purchase Deferements";
    //LookupPageID = "Purchase Deferements";

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Sales Invoice Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Deferment Date"; Date)
        {
            Caption = 'Deferment Date';
        }

        field(5; "Origin Account No."; Code[20])
        {
            Caption = 'Origin Account No.';
            TableRelation = "G/L Account";
        }
        field(6; "Destin Account No."; Code[20])
        {
            Caption = 'Destin Account No.';
            TableRelation = "G/L Account";
        }
        field(7; Posted; Boolean)
        {
            Caption = 'Posted';
        }
        field(101; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
        }
        field(102; "Customer Name"; Text[100])
        {
            CalcFormula = Lookup(Customer.Name WHERE("No." = FIELD("Customer No.")));
            Caption = 'Customer Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(201; "Invoice Text"; Text[250])
        {
            Caption = 'Invoice Text';
        }
        field(301; Period; Text[50])
        {
            Caption = 'Period';
        }
        field(302; "Period Amount"; Decimal)
        {
            Caption = 'Period Amount';
        }
        field(303; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            Editable = false;
        }
        field(304; "Number Of Months"; Integer)
        {
            Caption = 'Number Of Months';
        }
        field(305; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
        }
        field(401; "Creation User ID"; Code[20])
        {
            Caption = 'Creation User ID';
        }
        field(402; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(403; "Creation Time"; Time)
        {
            Caption = 'Creation Time';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";

            trigger OnLookup()
            begin
                ShowDimensions;
            end;
        }
        field(501; "Modification User ID"; Code[20])
        {
            Caption = 'Modification User ID';
        }
        field(502; "Modification Date"; Date)
        {
            Caption = 'Modification Date';
        }
        field(503; "Modification Time"; Time)
        {
            Caption = 'Modification Time';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.", "Deferment Date")
        {
            Clustered = true;
        }
        key(Key2; "Posting Date", "Document No.")
        {
        }
        key(Key3; "Customer No.", "Document No.", "Deferment Date")
        {
        }
        key(Key4; "Document No.", "Posting Date")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        "Creation User ID" := UserId;
        "Creation Date" := Today;
        "Creation Time" := Time;
    end;

    trigger OnModify()
    begin
        "Modification User ID" := UserId;
        "Modification Date" := Today;
        "Modification Time" := Time;
    end;

    var
        DimMgt: Codeunit DimensionManagement;

    procedure ShowDimensions()
    begin
        DimMgt.ShowDimensionSet("Dimension Set ID", StrSubstNo('%1 %2 %3 %4', TableCaption, "Document No.", "Line No.", Format("Deferment Date")));
    end;
}

