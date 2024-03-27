table 57044 "Posted Avaylable Budget"
{
    Caption = 'Posted Avaylable Budget';
    DrillDownPageID = "Posted Avaylable Budget List";
    LookupPageID = "Posted Avaylable Budget List";

    fields
    {
        field(1; "Avay Code"; Code[20])
        {
            Caption = 'Avay Code';
        }
        field(2; "Avay Date"; Date)
        {
            Caption = 'Avay Date';
        }
        field(4; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
        }
        field(6; "Avay Code Original"; Code[20])
        {
            Caption = 'Avay Code Original';
        }
        field(7; Type; Enum "Avaylable Budget Type")
        {
            Caption = 'Type';
        }
        field(8; "Created by"; Text[50])
        {
            Caption = 'Created by';
            Editable = false;
        }
        field(9; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(12; "Approved By"; Code[50])
        {
            Caption = 'Approved/Rejected By';
        }
        field(13; "Approved Date"; Date)
        {
            Caption = 'Approved/Rejected Date';
        }
        field(30; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            trigger OnLookup()
            begin
                ShowDimensions;
            end;
        }
        field(100; "Posting No. Series"; code[20])
        {
            Caption = 'Posting No. Series';
        }
        field(60000; ConfClass0; Code[10])
        {
            Caption = 'Conf Class0 Code';
            TableRelation = "Class 0 Setup";
        }
        field(61000; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            TableRelation = Consultation;
        }
        field(61001; Status; Enum "Avaylable Budget Status")
        {
            Caption = 'Status';
        }
        field(61002; "Created By Quote"; Boolean)
        {
            Caption = 'Created By Quote';
        }
        field(61003; Amount; Decimal)
        {
            CalcFormula = Sum("Posted Avaylable Budget Line".Amount WHERE("Avay Code" = FIELD("Avay Code")));
            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61004; "Amount Including Vat"; Decimal)
        {
            CalcFormula = Sum("Posted Avaylable Budget Line"."Amount Including VAT" WHERE("Avay Code" = FIELD("Avay Code")));
            Caption = 'Amount Including VAT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61006; "Section Code"; Code[20])
        {
            Caption = 'Section Code';
            Editable = false;
            TableRelation = Sections;
        }
        field(61009; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(61015; ClosedByYear; Integer)
        {
            Caption = 'Closed By Year';
        }
        field(61020; "Budget Appropriation Method"; Enum "Budget Appropriation Method")
        {
            Caption = 'Budget Appropriation Method';
            Editable = false;
        }
        field(61021; "Cost Amount"; Decimal)
        {
            CalcFormula = Sum("Posted Avaylable Budget Line"."Cost Amount" WHERE("Avay Code" = FIELD("Avay Code")));
            Caption = 'Cost Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61023; "Requisition Description"; Text[240])
        {
            Caption = 'Requisition Description';
            Editable = false;
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

    }

    keys
    {
        key(Key1; "Avay Code")
        {
            Clustered = true;
        }
        key(Key2; Status)
        {
        }
        key(Key3; "Section Code", "Department Code", "Created by")
        {
        }
        key(Key4; "Consultation Code", Status)
        {
        }
        key(Key5; "Consultation Code", "Avay Code", Status)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Avay Code", "Avay Date", "Consultation Code")
        {
        }
    }

    trigger OnDelete()
    begin
        Error(Text002, TableCaption);
    end;

    trigger OnRename()
    begin
        Error(Text001, TableCaption);
    end;

    trigger OnInsert()
    begin
        "Creation Date" := WorkDate;
        "Created by" := UserId;
    end;

    var
        DimMgt: Codeunit DimensionManagement;
        Text001: Label 'You cannot rename %1.';
        Text002: Label 'Its not possible to delete %1';

    procedure Navigate()
    var
        NavigatePage: Page Navigate;
    begin
        NavigatePage.SetDoc("Avay Date", "Avay Code");
        NavigatePage.Run;
    end;

    procedure ShowDimensions()
    var
        DimMgt: Codeunit DimensionManagement;
        PostedAvayLines: Record "Posted Avaylable Budget Line";
        DimSetID: Integer;
    begin
        PostedAvayLines.Reset();
        PostedAvayLines.SetRange("Avay Code", "Avay Code");
        If PostedAvayLines.FindFirst() then
            DimSetID := PostedAvayLines."Dimension Set ID";
        DimMgt.ShowDimensionSet(DimSetID, STRSUBSTNO('%1 %2', TABLECAPTION, "Avay Code"));
    end;

    procedure GetAvayBudgetAmount(): Decimal
    var
        lDecAmount: Decimal;
    begin
        CalcFields(Amount, "Amount Including VAT", "Cost Amount");

        case "Budget Appropriation Method" of
            "Budget Appropriation Method"::"Amount Without VAT":
                lDecAmount := Amount;
            "Budget Appropriation Method"::"Amount With VAT":
                lDecAmount := "Amount Including VAT";
            "Budget Appropriation Method"::"Cost Amount":
                lDecAmount := "Cost Amount";
        end;

        exit(lDecAmount);
    end;

    procedure ShowNavigate()
    var
        Navigate: Page Navigate;
    begin
        Navigate.SetDoc(Rec."Avay Date", Rec."Avay Code");
        Navigate.Run();
    end;

    procedure PrintAvaylableBudget()
    var
        PostedAvaylableBudget: Record "Posted Avaylable Budget";
    begin
        Clear(PostedAvaylableBudget);
        PostedAvaylableBudget.SetRange("Avay Code", Rec."Avay Code");
        Report.RunModal(Report::"Posted Avaylable Budget", true, false, PostedAvaylableBudget);
    end;
}

