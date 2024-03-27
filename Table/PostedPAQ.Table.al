table 57064 "Posted PAQ"
{
    Caption = 'Posted PAQ';
    DrillDownPageID = "Posted PAQ List";
    LookupPageID = "Posted PAQ List";

    fields
    {
        field(1; "PAQ Code"; Code[20])
        {
            Caption = 'Ajudication Code';
        }
        field(2; "PAQ Description"; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "PAQ Date"; Date)
        {
            Caption = 'Ajudication Date';
        }
        field(4; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            TableRelation = Consultation;
        }
        field(5; Status; Enum "PAQ Status")
        {
            Caption = 'Status';
        }
        field(7; "Approved By"; Code[50])
        {
            Caption = 'Approved/Rejected By';
        }
        field(8; "Approved Date"; Date)
        {
            Caption = 'Approved/Rejected Date';
        }
        field(9; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
        }
        field(10; "PAQ Code Original"; Code[20])
        {
            Caption = 'Adjudication Code Original';
        }
        field(11; "Created By"; Code[50])
        {
            Caption = 'Created by';
        }
        field(12; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(17; Type; Enum "PAQ Type")
        {
            Caption = 'Type';
        }
        field(50021; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
        }
        field(60000; ConfClass0; Code[10])
        {
            Caption = 'Conf Class0 Code';
            TableRelation = "Class 0 Setup";
        }
        field(61001; Comment; Boolean)
        {
            CalcFormula = Exist("Requisition Comments" WHERE("Table ID" = CONST(1),
                                                                  Code = FIELD("PAQ Code")));
            Caption = 'Comments';
            FieldClass = FlowField;
            Editable = false;
        }
        field(61002; Amount; Decimal)
        {
            CalcFormula = Sum("Posted PAQ Lines".Amount WHERE("PAQ Code" = FIELD("PAQ Code")));
            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61003; "Amount Including VAT"; Decimal)
        {
            CalcFormula = Sum("Posted PAQ Lines"."Amount Including VAT" WHERE("PAQ Code" = FIELD("PAQ Code")));
            Caption = 'Amount Including VAT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61004; "Cost Amount"; Decimal)
        {
            CalcFormula = Sum("Posted PAQ Lines"."Cost Amount" WHERE("PAQ Code" = FIELD("PAQ Code")));
            Caption = 'Cost Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61014; "Section Code"; Code[20])
        {
            Caption = 'Section Code';
            TableRelation = Sections;
        }
        field(61015; ClosedByYear; Integer)
        {
            Caption = 'Closed By Year';
        }
        field(61020; "Budget Appropriation Method"; Enum "Budget Appropriation Method")
        {
            Caption = 'Budget Appropriation Method';
        }
        field(61025; Reversed; Boolean)
        {
            Caption = 'Reversed';
            Editable = false;
        }
        field(61026; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            Editable = false;
            TableRelation = Vendor;
        }
        field(61027; "Req Employee"; Code[20])
        {
            Caption = 'Req Employee';
            Editable = false;
            TableRelation = Employee;
        }
        field(61028; "Employee Name"; Text[60])
        {
            Caption = 'Employee Name';
            Editable = false;
        }
        field(61029; "Section Description"; Text[30])
        {
            Caption = 'Section Description';
            Editable = false;
        }
        field(61030; "Department Code"; Code[20])
        {
            Caption = 'Department Code';
            Editable = false;
            TableRelation = "Departments";
        }
        field(61031; "Vendor Name"; Text[100])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor.Name where("No." = field("Vendor No.")));
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "PAQ Code")
        {
            Clustered = true;
        }
        key(Key2; "Creation Date")
        {
        }
        key(Key3; "Section Code", "Department Code", "Created By")
        {
        }
        key(Key4; "Consultation Code", Status)
        {
        }
        key(Key5; "Consultation Code", "PAQ Code", Status)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "PAQ Code", "PAQ Description", "PAQ Date", "Consultation Code")
        {
        }
    }

    trigger OnDelete()
    var
        PostedPAQlines: Record "Posted PAQ Lines";
    begin
        PostedPAQlines.Reset;
        PostedPAQlines.SetRange("PAQ Code", "PAQ Code");
        PostedPAQlines.DeleteAll(true);
    end;

    trigger OnRename()
    begin
        Error(Text001, TableCaption);
    end;

    var
        Text001: Label 'You cannot rename %1.';

    procedure GetPAQAmount(): Decimal
    var
        lAmount: Decimal;
    begin
        CalcFields(Amount);
        CalcFields("Amount Including VAT");
        CalcFields("Cost Amount");
        case "Budget Appropriation Method" of
            "Budget Appropriation Method"::"Amount Without VAT":
                lAmount := Amount;
            "Budget Appropriation Method"::"Amount With VAT":
                lAmount := "Amount Including VAT";
            "Budget Appropriation Method"::"Cost Amount":
                lAmount := "Cost Amount";
        end;
        exit(lAmount);
    end;

    procedure ShowDimensions()
    var
        DimMgt: Codeunit DimensionManagement;
        PostedPaqLines: Record "Posted PAQ Lines";
        DimSetID: Integer;
    begin
        PostedPaqLines.Reset();
        PostedPaqLines.SetRange("PAQ Code", "PAQ Code");
        If PostedPaqLines.FindFirst() then
            DimSetID := PostedPaqLines."Dimension Set ID";
        DimMgt.ShowDimensionSet(DimSetID, STRSUBSTNO('%1 %2', TABLECAPTION, "PAQ Code"));
    end;

    procedure ShowNavigate()
    var
        Navigate: Page Navigate;
    begin
        Navigate.SetDoc(Rec."PAQ Date", Rec."PAQ Code");
        Navigate.Run();
    end;

    procedure PrintPAQ()
    var
        PostedPAQ: Record "Posted PAQ";
    begin
        PostedPAQ.SetRange("PAQ Code", "PAQ Code");
        REPORT.RUNMODAL(Report::"Posted PAQ", TRUE, TRUE, PostedPAQ);
    end;
}

