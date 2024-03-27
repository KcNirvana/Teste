table 57071 PAQ
{
    Caption = 'PAQ';
    DrillDownPageID = "PAQ List";
    LookupPageID = "PAQ List";

    fields
    {
        field(1; "PAQ Code"; Code[20])
        {
            Caption = 'Adjudication Code';
            trigger OnValidate()
            begin
                IF "PAQ Code" <> xRec."PAQ Code" THEN BEGIN
                    BudgetConfig.GET;
                    NoSeriesMgt.TestManual(GetNoSeriesCode);
                    "No. Series" := '';
                END;
            end;
        }
        field(2; "PAQ Description"; Text[240])
        {
            Caption = 'Adjudication Description';
        }
        field(3; "PAQ Date"; Date)
        {
            Caption = 'Adjudication Date';
            trigger OnValidate()
            begin
                TestField("PAQ Date");
                TestNoSeriesDate("Posting No.", "Posting No. Series", FIELDCAPTION("Posting No."), FIELDCAPTION("Posting No. Series"));
                if "PAQ Date" <> xRec."PAQ Date" then begin
                    PAQLines.Reset();
                    PAQLines.SetRange("PAQ Code", "PAQ Code");
                    PAQLines.ModifyAll("PAQ Date", "PAQ Date");
                end;
            end;
        }
        field(4; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            Editable = false;
            TableRelation = Consultation;
        }
        field(5; Status; enum "PAQ Status")
        {
            Caption = 'Status';
            Editable = false;
            trigger OnValidate()
            begin
                if (Status <> xRec.Status) then begin
                    Validate("Approved Date", WorkDate);
                    Validate("Approved By", USERID);
                end;
            end;
        }
        field(7; "Approved By"; Code[50])
        {
            Caption = 'Approved/Rejected By';
            Editable = false;
        }
        field(8; "Approved Date"; Date)
        {
            Caption = 'Approved/Rejected Date';
            Editable = false;
        }
        field(9; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
        }
        field(11; "Created By"; Code[50])
        {
            Caption = 'Created by';
            Editable = false;
        }
        field(12; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(13; "Posting No."; Code[20])
        {
            Caption = 'Posting No.';
        }
        field(17; Type; enum "PAQ Type")
        {
            Caption = 'Type';

            trigger OnValidate()
            begin
                ValidateType();
            end;
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
        }
        field(61001; Comment; Boolean)
        {
            CalcFormula = Exist("Requisition Comments" WHERE("Table ID" = CONST(1),
                                                                  Code = FIELD("PAQ Code")));
            Caption = 'Comments';
            FieldClass = FlowField;
        }
        field(61002; Amount; Decimal)
        {
            CalcFormula = Sum("PAQ Lines".Amount WHERE("PAQ Code" = FIELD("PAQ Code")));
            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61003; "Amount Including VAT"; Decimal)
        {
            CalcFormula = Sum("PAQ Lines"."Amount Including VAT" WHERE("PAQ Code" = FIELD("PAQ Code")));
            Caption = 'Amount Including VAT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61004; "Cost Amount"; Decimal)
        {
            CalcFormula = Sum("PAQ Lines"."Cost Amount" WHERE("PAQ Code" = FIELD("PAQ Code")));
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
        field(61020; "Budget Appropriation Method"; enum "Budget Appropriation Method")
        {
            Caption = 'Budget Appropriation Method';
            Editable = false;
        }
        field(50021; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
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
        key(Key2; Status)
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
        ApprovalEntry: Record "Aproval Entry";
    begin
        CduPAQ.ValidatePermissions("PAQ Permissions"::Delete);
        PAQlines.Reset;
        PAQlines.SetRange("PAQ Code", "PAQ Code");
        PAQlines.DeleteAll();

        ApprovalEntry.Reset;
        ApprovalEntry.SetRange("Table ID", DATABASE::PAQ);
        ApprovalEntry.SetRange("Document Type", ApprovalEntry."Document Type"::Adjudication);
        ApprovalEntry.SetRange("Document No.", "PAQ Code");
        ApprovalEntry.DeleteAll();
    end;

    trigger OnModify()
    begin
        CduPAQ.ValidatePermissions("PAQ Permissions"::Modify);
    end;

    trigger OnInsert()
    begin
        CduPAQ.ValidatePermissions("PAQ Permissions"::Create);
        InitInsert;
    end;

    trigger OnRename()
    begin
        Error(Text001, TableCaption);
    end;

    procedure SetHideDialog()
    begin
        CduPAQ.SetHideDialog();
    end;

    var
        BudgetConfig: Record "Budget Configuration";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        DimMgt: Codeunit DimensionManagement;
        CduPAQ: Codeunit PAQ;
        ApprovalMgt: Codeunit "Approval Management";
        PAQ: Record PAQ;
        PAQlines: Record "PAQ Lines";
        Text001: Label 'You cannot rename %1.';
        Text002: Label 'The adjudication %1 already exists.';

    procedure AssistEdit(Old: Record PAQ): Boolean
    var
        PAQ: Record PAQ;
        PAQ2: Record PAQ;
    begin
        BudgetConfig.Get();
        TestNoSeries;
        PAQ := Rec;
        if NoSeriesMgt.SelectSeries(GetNoSeriesCode(), Old."No. Series", PAQ."No. Series") then begin
            NoSeriesMgt.SetSeries(PAQ."PAQ Code");
            IF PAQ2.GET(PAQ."PAQ Code") THEN
                ERROR(Text002, PAQ."PAQ Code");
            Rec := PAQ;
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
                ERROR(Text001, FIELDCAPTION("PAQ Date"), NoSeriesCapt, NoSeriesCode,
                      NoSeries.FIELDCAPTION("Date Order"), NoSeries."Date Order", NoCapt, No);
        END;
    end;

    local procedure TestNoSeries()
    begin
        BudgetConfig.GET;
        BudgetConfig.TestField("PAQ Nos.");
        BudgetConfig.TestField("Posted PAQ Nos.");
        BudgetConfig.TestField("Original PAQ");
        BudgetConfig.TestField("PAQ Increase");
        BudgetConfig.TestField("PAQ Decrease");
    end;

    local procedure GetNoSeriesCode(): Code[20]
    begin
        BudgetConfig.GET;
        exit(BudgetConfig."PAQ Nos.");
    end;

    local procedure GetPostingNoSeriesCode() PostingNos: Code[20]
    begin
        BudgetConfig.GET;
        PostingNos := BudgetConfig."Posted PAQ Nos.";
    end;

    local procedure InitInsert()
    var
        BudgetPermissions: Record "Budget Permissions";
        SourceCodeSetup: Record "Source Code Setup";
    begin
        BudgetConfig.Get;
        SourceCodeSetup.Get();

        BudgetConfig.TestField("Budget Appropriation Method");
        SourceCodeSetup.TestField(PAQ);

        if "PAQ Code" = '' then begin
            TestNoSeries();
            BudgetConfig.Get;
            NoSeriesMgt.InitSeries(GetNoSeriesCode, xRec."No. Series", "PAQ Date", "PAQ Code", "No. Series");
        end;

        NoSeriesMgt.SetDefaultSeries("Posting No. Series", GetPostingNoSeriesCode());

        if "PAQ Date" = 0D then
            "PAQ Date" := WorkDate;

        "Creation Date" := WorkDate;
        "Created by" := UserId;

        Validate("Source Code", SourceCodeSetup.PAQ);
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
            ConfClass0 := BudgetConfig."PAQ Increase";
            PAQlines.Reset;
            PAQlines.SetRange("PAQ Code", "PAQ Code");
            if PAQlines.FindSet() then begin
                repeat
                    PAQlines."Original Direct Unit Cost" := PAQlines."Unit Cost";
                    PAQlines."Original Amount" := PAQlines.Amount;
                    PAQlines."Original Amount Including VAT" := PAQlines."Amount Including VAT";
                    PAQlines."Original Cost Amount" := PAQlines."Cost Amount";
                    PAQlines."Cost Amount" := 0;
                    PAQlines.Amount := 0;
                    PAQlines."Amount Including VAT" := 0;
                    PAQlines."Unit Cost" := 0;
                    PAQlines.Modify(true);
                until PAQlines.Next = 0;
            end;
        end;

        if Type = Type::Decrease then begin
            ConfClass0 := BudgetConfig."PAQ Decrease";
            PAQlines.Reset;
            PAQlines.SetRange("PAQ Code", "PAQ Code");
            if PAQlines.FindSet() then begin
                repeat
                    PAQlines."Original Direct Unit Cost" := PAQlines."Unit Cost";
                    PAQlines."Original Amount" := PAQlines.Amount;
                    PAQlines."Original Amount Including VAT" := PAQlines."Amount Including VAT";
                    PAQlines."Original Cost Amount" := PAQlines."Cost Amount";
                    PAQlines."Cost Amount" := 0;
                    PAQlines.Amount := 0;
                    PAQlines."Amount Including VAT" := 0;
                    PAQlines."Unit Cost" := 0;
                    PAQlines.Modify(true);
                until PAQlines.Next = 0;
            end;
        end;

        if Type = Type::Original then begin
            ConfClass0 := BudgetConfig."Original PAQ";
            PAQlines.Reset;
            PAQlines.SetRange("PAQ Code", "PAQ Code");
            if PAQlines.FindSet() then begin
                repeat
                    PAQlines.Amount := PAQlines."Original Amount";
                    PAQlines."Amount Including VAT" := PAQlines."Original Amount Including VAT";
                    PAQlines."Unit Cost" := PAQlines."Original Direct Unit Cost";
                    PAQlines."Cost Amount" := PAQlines."Original Cost Amount";
                    PAQlines."Original Cost Amount" := 0;
                    PAQlines."Original Direct Unit Cost" := 0;
                    PAQlines."Original Amount" := 0;
                    PAQlines."Original Amount Including VAT" := 0;
                    PAQlines.Modify(true);
                until PAQlines.Next = 0;
            end;
        end;
    end;

    procedure GetPAQAmount(): Decimal
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

