table 57042 "Avaylable Budget"
{
    Caption = 'Avaylable Budget';
    DrillDownPageID = "Avaylable Budget List";
    LookupPageID = "Avaylable Budget List";

    fields
    {
        field(1; "Avay Code"; Code[20])
        {
            Caption = 'Avay Code';
            trigger OnValidate()
            begin
                IF "Avay Code" <> xRec."Avay Code" THEN BEGIN
                    BudgetConfig.GET;
                    NoSeriesMgt.TestManual(GetNoSeriesCode);
                    "No. Series" := '';
                END;
            end;
        }
        field(2; "Avay Date"; Date)
        {
            Caption = 'Avay Date';

            trigger OnValidate()
            begin
                TestField("Avay Date");
                TestNoSeriesDate("Posting No.", "Posting No. Series", FIELDCAPTION("Posting No."), FIELDCAPTION("Posting No. Series"));
                if "Avay Date" <> xRec."Avay Date" then begin
                    AvaylableBudgetLines.Reset();
                    AvaylableBudgetLines.SetRange("Avay Code", "Avay Code");
                    AvaylableBudgetLines.ModifyAll("Avay Date", "Avay Date");
                end;
            end;
        }
        field(4; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
        }
        field(10; "Posting No."; Code[20])
        {
            Caption = 'Posting No.';
        }
        field(7; Type; Enum "Avaylable Budget Type")
        {
            Caption = 'Type';
            trigger OnValidate()
            begin
                ValidateType();
            end;
        }
        field(8; "Created by"; Text[50])
        {
            Caption = 'Created by';
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
        field(9; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }

        field(100; "Posting No. Series"; code[20])
        {
            Caption = 'Posting No. Series';

            trigger OnValidate()
            begin
                IF "Posting No. Series" <> '' THEN BEGIN
                    BudgetConfig.GET;
                    TestNoSeries;
                    NoSeriesMgt.TestSeries(GetPostingNoSeriesCode, "Posting No. Series");
                END;
                TESTFIELD("Posting No.", '');
            end;

        }

        field(60000; ConfClass0; Code[10])
        {
            Caption = 'Conf Class0 Code';
            TableRelation = "Class 0 Setup";
            Editable = false;
        }
        field(61000; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            TableRelation = Consultation;
            Editable = false;
        }
        field(61001; Status; Enum "Avaylable Budget Status")
        {
            Caption = 'Status';

            trigger OnValidate()
            begin
                if (Status <> xRec.Status) then begin
                    Validate("Approved Date", WorkDate);
                    Validate("Approved By", USERID);
                end;
            end;
        }
        field(61002; "Created By Quote"; Boolean)
        {
            Caption = 'Created By Quote';
        }
        field(61003; Amount; Decimal)
        {
            CalcFormula = Sum("Avaylable Budget Line".Amount WHERE("Avay Code" = FIELD("Avay Code")));
            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61004; "Amount Including VAT"; Decimal)
        {
            CalcFormula = Sum("Avaylable Budget Line"."Amount Including VAT" WHERE("Avay Code" = FIELD("Avay Code")));
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
            CalcFormula = Sum("Avaylable Budget Line"."Cost Amount" WHERE("Avay Code" = FIELD("Avay Code")));
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
        key(Key1; "Avay Code")
        {
            Clustered = true;
        }
        key(Key2; Status)
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
    var
        ApprovalEntry: Record "Aproval Entry";
    begin
        CduAvay.ValidatePermissions("Avay Permissions"::Delete);
        AvaylableBudgetLines.Reset;
        AvaylableBudgetLines.SetRange("Avay Code", "Avay Code");
        AvaylableBudgetLines.DeleteAll();

        ApprovalEntry.Reset;
        ApprovalEntry.SetRange("Table ID", DATABASE::"Avaylable Budget");
        ApprovalEntry.SetRange("Document Type", ApprovalEntry."Document Type"::"Avaylable Budget");
        ApprovalEntry.SetRange("Document No.", "Avay Code");
        ApprovalEntry.DeleteAll();
    end;

    trigger OnModify()
    begin
        CduAvay.ValidatePermissions("Avay Permissions"::Modify);
    end;

    trigger OnInsert()
    begin
        CduAvay.ValidatePermissions("Avay Permissions"::Create);
        InitInsert;
    end;

    trigger OnRename()
    begin
        Error(Text001, TableCaption);
    end;

    procedure SetHideDialog()
    begin
        CduAvay.SetHideDialog();
    end;

    var
        BudgetConfig: Record "Budget Configuration";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        DimMgt: Codeunit DimensionManagement;
        CduAvay: Codeunit AvaylableBudget;
        ApprovalMgt: Codeunit "Approval Management";
        AvaylableBudget: Record "Avaylable Budget";
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        Text001: Label 'You cannot rename %1.';
        Text002: Label 'The avaylable budget %1 already exists.';

    procedure AssistEdit(Old: Record "Avaylable Budget"): Boolean
    var
        Avay: Record "Avaylable Budget";
        Avay2: Record "Avaylable Budget";
    begin
        BudgetConfig.Get();
        TestNoSeries;
        Avay := Rec;
        if NoSeriesMgt.SelectSeries(GetNoSeriesCode(), Old."No. Series", Avay."No. Series") then begin
            NoSeriesMgt.SetSeries(Avay."Avay Code");
            IF Avay2.GET(Avay."Avay Code") THEN
                ERROR(Text002, Avay."Avay Code");
            Rec := Avay;
            exit(true);
        end;
    end;

    local procedure TestNoSeriesDate(No: Code[20]; NoSeriesCode: Code[20]; NoCapt: Text[1024]; NoSeriesCapt: Text[1024])
    var
        NoSeries: Record "No. Series";
    begin
        IF (No <> '') AND (NoSeriesCode <> '') THEN BEGIN
            NoSeries.GET(NoSeriesCode);
            IF NoSeries."Date Order" THEN
                ERROR(Text001, FIELDCAPTION("Avay Date"), NoSeriesCapt, NoSeriesCode,
                      NoSeries.FIELDCAPTION("Date Order"), NoSeries."Date Order", NoCapt, No);
        END;
    end;

    local procedure TestNoSeries()
    begin
        BudgetConfig.GET;
        BudgetConfig.TestField("Avaylable Budget Nos.");
        BudgetConfig.TestField("Posted Avaylable Budget Nos.");
        BudgetConfig.TestField("Original Avaylable Budget");
        BudgetConfig.TestField("Avaylable Budget Increase");
        BudgetConfig.TestField("Avaylable Budget Decrease");
    end;

    local procedure GetNoSeriesCode(): Code[20]
    begin
        BudgetConfig.GET;
        exit(BudgetConfig."Avaylable Budget Nos.");
    end;

    local procedure GetPostingNoSeriesCode() PostingNos: Code[20]
    begin
        BudgetConfig.GET;
        PostingNos := BudgetConfig."Posted Avaylable Budget Nos.";
    end;

    local procedure InitInsert()
    var
        BudgetPermissions: Record "Budget Permissions";
        SourceCodeSetup: Record "Source Code Setup";
    begin
        BudgetConfig.Get;
        SourceCodeSetup.Get();

        BudgetConfig.TestField("Budget Appropriation Method");
        SourceCodeSetup.TestField("Avaylabel Budget");

        if "Avay Code" = '' then begin
            TestNoSeries();
            BudgetConfig.Get;
            NoSeriesMgt.InitSeries(GetNoSeriesCode, xRec."No. Series", "Avay Date", "Avay Code", "No. Series");
        end;

        NoSeriesMgt.SetDefaultSeries("Posting No. Series", GetPostingNoSeriesCode());

        if "Avay Date" = 0D then
            "Avay Date" := WorkDate;

        "Creation Date" := WorkDate;
        "Created by" := UserId;

        Validate("Source Code", SourceCodeSetup."Avaylabel Budget");
        Validate("Budget Appropriation Method", BudgetConfig."Budget Appropriation Method");
        if ("Section Code" = '') and ("Department Code" = '') then
            UpdateEmployee;
    end;

    local procedure UpdateEmployee()
    var
        BudgetPermissions: Record "Budget Permissions";
        Employee: Record Employee;
        SectionCode: Record Sections;
    begin
        if BudgetPermissions.Get("Created By", 0) then begin
            "Req Employee" := BudgetPermissions."Employee Number";

            Clear(Employee);
            Clear(SectionCode);
            if Employee.Get("Req Employee") then begin
                "Employee Name" := Employee."First Name" + ' ' + Employee."Last Name";
                "Section Code" := Employee."Section Code";
                SectionCode.SetRange(Code, Employee."Section Code");
                if SectionCode.FindSet then begin
                    "Section Description" := SectionCode.Description;
                    "Department Code" := SectionCode."Department Code";
                end;
            end;
        END;
    end;

    local procedure ValidateType()
    begin
        BudgetConfig.Get();
        if Type = Type::Increase then begin
            ConfClass0 := BudgetConfig."Avaylable Budget Increase";
            AvaylableBudgetLines.Reset;
            AvaylableBudgetLines.SetRange("Avay Code", "Avay Code");
            if AvaylableBudgetLines.FindSet() then begin
                repeat
                    AvaylableBudgetLines."Original Direct Unit Cost" := AvaylableBudgetLines."Unit Cost";
                    AvaylableBudgetLines."Original Amount" := AvaylableBudgetLines.Amount;
                    AvaylableBudgetLines."Original Amount Including VAT" := AvaylableBudgetLines."Amount Including Vat";
                    AvaylableBudgetLines."Original Cost Amount" := AvaylableBudgetLines."Cost Amount";
                    AvaylableBudgetLines.Amount := 0;
                    AvaylableBudgetLines."Amount Including Vat" := 0;
                    AvaylableBudgetLines."Unit Cost" := 0;
                    AvaylableBudgetLines."Cost Amount" := 0;
                    AvaylableBudgetLines.Modify(true);
                until AvaylableBudgetLines.Next = 0;
            end;
        end;
        if Type = Type::Decrease then begin
            ConfClass0 := BudgetConfig."Avaylable Budget Decrease";
            AvaylableBudgetLines.Reset;
            AvaylableBudgetLines.SetRange("Avay Code", "Avay Code");
            if AvaylableBudgetLines.FindSet() then begin
                repeat
                    AvaylableBudgetLines."Original Direct Unit Cost" := AvaylableBudgetLines."Unit Cost";
                    AvaylableBudgetLines."Original Amount" := AvaylableBudgetLines.Amount;
                    AvaylableBudgetLines."Original Amount Including VAT" := AvaylableBudgetLines."Amount Including Vat";
                    AvaylableBudgetLines."Original Cost Amount" := AvaylableBudgetLines."Cost Amount";
                    AvaylableBudgetLines.Amount := 0;
                    AvaylableBudgetLines."Amount Including Vat" := 0;
                    AvaylableBudgetLines."Unit Cost" := 0;
                    AvaylableBudgetLines."Cost Amount" := 0;
                    AvaylableBudgetLines.Modify(true);
                until AvaylableBudgetLines.Next = 0;
            end;
        end;
        if Type = Type::Original then begin
            ConfClass0 := BudgetConfig."Original Avaylable Budget";
            AvaylableBudgetLines.Reset;
            AvaylableBudgetLines.SetRange("Avay Code", "Avay Code");
            if AvaylableBudgetLines.Findset then begin
                repeat
                    AvaylableBudgetLines."Unit Cost" := AvaylableBudgetLines."Original Direct Unit Cost";
                    AvaylableBudgetLines.Amount := AvaylableBudgetLines."Original Amount";
                    AvaylableBudgetLines."Amount Including Vat" := AvaylableBudgetLines."Original Amount Including VAT";
                    AvaylableBudgetLines."Cost Amount" := AvaylableBudgetLines."Original Cost Amount";
                    AvaylableBudgetLines."Original Direct Unit Cost" := 0;
                    AvaylableBudgetLines."Original Amount" := 0;
                    AvaylableBudgetLines."Original Amount Including VAT" := 0;
                    AvaylableBudgetLines."Original Cost Amount" := 0;
                    AvaylableBudgetLines.Modify(true);
                until AvaylableBudgetLines.Next = 0;
            end;
        end;
    end;

    procedure GetAvayBudgetAmount(): Decimal
    begin
        CalcFields(Amount, "Amount Including VAT", "Cost Amount");
        case "Budget Appropriation Method" of
            "Budget Appropriation Method"::"Amount Without VAT":
                exit(Amount);
            "Budget Appropriation Method"::"Amount With VAT":
                exit("Amount Including VAT");
            "Budget Appropriation Method"::"Cost Amount":
                exit("Cost Amount");
            else
                exit(0);
        end;
    end;
}

