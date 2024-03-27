table 57048 Requisition
{
    Caption = 'Requisition Header';
    DataCaptionFields = "Requisition Code", Description;

    fields
    {
        field(1; "Requisition Code"; Code[20])
        {
            Caption = 'Requisition Code';

            trigger OnValidate()
            begin
                if "Requisition Code" <> xRec."Requisition Code" then begin
                    BudgetConfig.Get;
                    NoSeriesMgt.TestManual(BudgetConfig."Requisition Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Requisition Date"; Date)
        {
            Caption = 'Requisition Date';
        }
        field(4; "Created By"; Code[50])
        {
            Caption = 'Created by';
            Editable = false;
            TableRelation = User."User Name";
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
            begin
                UserSelection.ValidateUserName("Created By");
            end;
        }
        field(5; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(8; "Department Code"; Code[20])
        {
            Caption = 'Department Code';
            Editable = false;
            TableRelation = "Departments";

            trigger OnValidate()
            begin
                CalcFields("Department Description");
            end;
        }
        field(9; "Department Description"; Text[30])
        {
            CalcFormula = Lookup(Departments.Description WHERE(Code = FIELD("Department Code")));
            Caption = 'Department Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(12; "Requisition Employee"; Code[20])
        {
            Caption = 'Requisition Employee';
            TableRelation = Employee;

            trigger OnValidate()
            begin
                ValidateEmployee();
            end;
        }
        field(13; "Employee Name"; Text[60])
        {
            Caption = 'Employee Name';
            Editable = false;
        }
        field(14; "Section Code"; Code[20])
        {
            Caption = 'Section Code';
            Editable = false;
            TableRelation = Sections.Code WHERE("Department Code" = FIELD("Department Code"));

            trigger OnValidate()
            begin
                CalcFields("Section Description");
            end;
        }
        field(15; "Section Description"; Text[30])
        {
            CalcFormula = Lookup(Sections.Description WHERE(Code = FIELD("Section Code"),
                                                                   "Department Code" = FIELD("Department Code")));
            Caption = 'Section Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Approved/Rejected by"; Code[50])
        {
            Caption = 'Aproved/Rejected by';
            Editable = false;
            TableRelation = User."User Name";
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
                BudgetPermissions: Record "Budget Permissions";
                Employee: Record Employee;
            begin
                UserSelection.ValidateUserName("Approved/Rejected by");
                BudgetPermissions.Reset();
                BudgetPermissions.SetRange("User Code", "Approved/Rejected by");
                BudgetPermissions.SetFilter("Employee Number", '<>%1', '');
                IF BudgetPermissions.FindFirst() then begin
                    Employee.Reset;
                    Employee.SETRANGE("No.", BudgetPermissions."Employee Number");
                    if Employee.FindFirst() then
                        "Approved/Rejected Name" := Employee."First Name" + ' ' + Employee."Last Name";
                end;

            end;
        }
        field(17; "Approved/Rejected Name"; Text[60])
        {
            Caption = 'Approved/Rejected Name';
            Editable = false;
        }
        field(18; Status; enum "Requisition Status")
        {
            Caption = 'Status';
            Editable = false;

            trigger OnValidate()
            begin
                if (Status <> xRec.Status) then begin
                    Validate("Approved/Rejected by", UserId);
                    Validate("Approved/Rejected Date", WorkDate);
                end;
            end;
        }
        field(20; "Approved/Rejected Date"; Date)
        {
            Caption = 'Approved/Rejected Date';
            Editable = false;
        }
        field(21; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';

            trigger OnLookup()
            begin
                ShowDimensions;
            end;
        }
        field(22; "Posting No."; Code[20])
        {
            Caption = 'Posting No.';
        }
        field(23; "Posting No. Series"; code[20])
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
        field(50011; Amount; Decimal)
        {
            CalcFormula = Sum("Requisition Lines".Amount WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Amount';
            FieldClass = FlowField;
        }
        field(50012; "Amount Including VAT"; Decimal)
        {
            CalcFormula = Sum("Requisition Lines"."Amount Including VAT" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Amount Including VAT';
            FieldClass = FlowField;
        }
        field(50014; "Cost Amount"; Decimal)
        {
            CalcFormula = Sum("Requisition Lines"."Cost Amount" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Cost Amount';
            FieldClass = FlowField;
        }
        field(50016; IsContract; Boolean)
        {
            Caption = 'Is Contract';
            Editable = false;
        }
        field(50017; "Contract No."; Code[20])
        {
            Caption = 'Contract No.';
            TableRelation = Contract."No." WHERE(Status = CONST(" "));

            trigger OnValidate()
            begin
                ValidateContractNo();
            end;
        }
        field(50035; ClosedByYear; Integer)
        {
            Caption = 'Closed By Year';
        }
        field(61013; Observations; Text[250])
        {
            Caption = 'Observations';
        }
        field(61014; DateFilter; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }

        field(61029; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            Editable = false;
            TableRelation = "Source Code".Code;
        }
        field(61040; "Budget Appropriation Method"; enum "Budget Appropriation Method")
        {
            Caption = 'Budget Appropriation Method';
            Editable = false;
        }
        field(61041; "Modified By"; Code[50])
        {
            Caption = 'Modified By';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(61042; "Modified Date"; Date)
        {
            Caption = 'Modified Date';
            Editable = false;
        }
        field(57100; "Consultations"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Consultation Lines" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Consultations';
            Editable = false;

        }
        field(57101; "Avaylable Budgets"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Avaylable Budget Line" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Avaylable Budgets';
            Editable = false;

        }
        field(57102; "Posted Avaylable Budgets"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Posted Avaylable Budget Line" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Posted Avaylable Budgets';
            Editable = false;

        }
        field(57103; "PAQs"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("PAQ Lines" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Adjudications';
            Editable = false;

        }
        field(57104; "Posted PAQs"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Posted PAQ Lines" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Posted Adjudications';
            Editable = false;
        }
        field(57105; Orders; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purchase Line" WHERE("Document Type" = CONST(Order),
                                                       "Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Orders';
            Editable = false;
        }
        field(57106; "Purch Receipts"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purch. Rcpt. Line" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Purch Receipts';
            Editable = false;
        }
        field(57107; "Invoices"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purchase Line" WHERE("Document Type" = CONST(Invoice),
                                                       "Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Invoices';
            Editable = false;
        }
        field(57108; "Posted Invoices"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purch. Inv. Line" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Posted Invoices';
            Editable = false;
        }
        field(57109; "Credit Memos"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purchase Line" WHERE("Document Type" = CONST("Credit Memo"),
                                                       "Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Credit Memos';
            Editable = false;
        }
        field(57110; "Posted Credit Memos"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purch. Cr. Memo Line" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Posted Credit Memos';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Requisition Code")
        {
            Clustered = true;
        }
        key(Key2; "Requisition Date")
        {
        }
        key(Key3; "Requisition Employee")
        {
        }
        key(Key4; "Approved/Rejected Date")
        {
        }
        key(Key5; "Created By", Status)
        {
        }
        key(Key6; Status)
        {
        }
        key(Key7; Status, "Section Code")
        {
        }
        key(Key8; Status, IsContract, "Section Code", "Department Code", "Created By")
        {
        }
        key(Key9; IsContract, Status)
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    var
        ApprovalEntry: Record "Aproval Entry";
        RequisitionLines: Record "Requisition Lines";
    begin
        CduReq.ValidatePermissions("Requisition Permissions"::Delete);
        If not (Status in [Status::Open, Status::Reopened]) then
            Error(Text003, Status::Open, Status::Reopened);

        RequisitionLines.Reset();
        RequisitionLines.SetRange("Requisition Code", "Requisition Code");
        RequisitionLines.DeleteAll(true);

        ApprovalEntry.Reset;
        ApprovalEntry.SetRange("Table ID", DATABASE::Requisition);
        ApprovalEntry.SetRange("Document Type", "Approval Entry Document Type"::Requisition);
        ApprovalEntry.SetRange("Document No.", "Requisition Code");
        ApprovalEntry.DeleteAll(true);
    end;

    trigger OnInsert()
    begin
        CduReq.ValidatePermissions("Requisition Permissions"::Create);
        InitInsert;
    end;

    trigger OnModify()
    begin
        CduReq.ValidatePermissions("Requisition Permissions"::Modify);
        "Modified By" := UserId;
        "Modified Date" := WorkDate();
    end;

    trigger OnRename()
    begin
        ERROR(Text001, TABLECAPTION);
    end;

    var
        BudgetConfig: Record "Budget Configuration";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        CduReq: Codeunit Requisition;
        RequisitionLines: Record "Requisition Lines";
        PTSSTextManagement: Codeunit "PTSS TextManagement";
        DimMgt: Codeunit DimensionManagement;
        Text001: Label 'You cannot rename %1.';
        Text003: Label 'You can only delete requisitions on status %1 or %2.';
        Text004: Label 'The requisition %1 already exists.';
        Text005: Label 'You are changing the contract. All lines will be deleted.\\Do you want to continue?';
        Text006: Label 'This contract already associated to requisition %1.';

    procedure AssistEdit(Old: Record Requisition): Boolean
    var
        Requisition: Record Requisition;
    begin
        BudgetConfig.Get();
        TestNoSeries;
        Requisition := Rec;
        if NoSeriesMgt.SelectSeries(GetNoSeriesCode(), Old."No. Series", Requisition."No. Series") then begin
            NoSeriesMgt.SetSeries(Requisition."Requisition Code");
            IF Requisition.GET(Requisition."Requisition Code") THEN
                ERROR(Text004, Requisition."Requisition Code");
            Rec := Requisition;
            exit(true);
        end;
    end;

    procedure GetTotalRequisition(): Decimal
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

    procedure ShowDimensions()
    begin
        "Dimension Set ID" := DimMgt.EditDimensionSet("Dimension Set ID", Rec.TableCaption);
    end;

    procedure ShowShortcutDimCode(var ShortcutDimCode: array[8] of Code[20])
    begin
        DimMgt.GetShortcutDimensions("Dimension Set ID", ShortcutDimCode);
    end;

    procedure ValidateShortcutDimCode(FieldNumber: Integer; var ShortcutDimCode: Code[20])
    begin
        DimMgt.ValidateShortcutDimValues(FieldNumber, ShortcutDimCode, "Dimension Set ID");
    end;

    procedure LookupShortcutDimCode(FieldNumber: Integer; var ShortcutDimCode: Code[20])
    begin
        DimMgt.LookupDimValueCode(FieldNumber, ShortcutDimCode);
        ValidateShortcutDimCode(FieldNumber, ShortcutDimCode);
    end;

    local procedure TestNoSeriesDate(No: Code[20]; NoSeriesCode: Code[20]; NoCapt: Text[1024]; NoSeriesCapt: Text[1024])
    var
        NoSeries: Record "No. Series";
    begin
        IF (No <> '') AND (NoSeriesCode <> '') THEN BEGIN
            NoSeries.GET(NoSeriesCode);
            IF NoSeries."Date Order" THEN
                ERROR(Text001, FIELDCAPTION("Requisition Date"), NoSeriesCapt, NoSeriesCode,
                      NoSeries.FIELDCAPTION("Date Order"), NoSeries."Date Order", NoCapt, No);
        END;
    end;

    local procedure TestNoSeries()
    begin
        BudgetConfig.GET;
        BudgetConfig.TestField("Requisition Nos.");
        //BudgetConfig.TestField("Posted Requisition Nos.");
    end;

    local procedure GetNoSeriesCode(): Code[20]
    begin
        BudgetConfig.GET;
        exit(BudgetConfig."Requisition Nos.");
    end;

    local procedure GetPostingNoSeriesCode() PostingNos: Code[20]
    begin
        BudgetConfig.GET;
        //PostingNos := BudgetConfig."Posted Requisition Nos.";
    end;

    local procedure InitInsert()
    var
        BudgetPermissions: Record "Budget Permissions";
        SourceCodeSetup: Record "Source Code Setup";
    begin
        BudgetConfig.Get;
        SourceCodeSetup.Get();

        BudgetConfig.TestField("Budget Appropriation Method");
        BudgetConfig.TestField("Req. Vat. Bus. Posting Group");

        SourceCodeSetup.TestField(Requisition);

        if "Requisition Code" = '' then begin
            TestNoSeries();
            NoSeriesMgt.InitSeries(GetNoSeriesCode, xRec."No. Series", "Requisition Date", "Requisition Code", "No. Series");
        end;

        //NoSeriesMgt.SetDefaultSeries("Posting No. Series",GetPostingNoSeriesCode());

        if "Requisition Date" = 0D then
            "Requisition Date" := WorkDate;

        "Creation Date" := WorkDate;
        "Created by" := UserId;
        BudgetPermissions.Get(UserId, BudgetPermissions.Type::User);
        BudgetPermissions.TestField("Employee Number");
        Validate("Requisition Employee", BudgetPermissions."Employee Number");

        Validate("Source Code", SourceCodeSetup.Requisition);
        Validate("Budget Appropriation Method", BudgetConfig."Budget Appropriation Method");
    end;

    local procedure ValidateEmployee()
    var
        Employee: Record Employee;
        Section: Record Sections;
    begin
        Employee.Get("Requisition Employee");
        Employee.TestField("Section Code");
        "Employee Name" := Employee."First Name" + ' ' + Employee."Last Name";
        Section.Reset;
        Section.SetRange(Code, Employee."Section Code");
        if Section.FindFirst() then begin
            Validate("Department Code", Section."Department Code");
            Validate("Section Code", Section.Code);
        end;
    end;

    procedure ValidateContractYear()
    var
        RequisitionLines: Record "Requisition Lines";
    begin
        TestField("Contract No.");
        RequisitionLines.SetRange("Requisition Code", "Requisition Code");
        RequisitionLines.SetFilter("No.", '<>%1', '');
        if RequisitionLines.FindSet then
            repeat
                RequisitionLines.TestField("Contract Year");
            until RequisitionLines.Next = 0;
    end;

    local procedure ValidateContractNo()
    var
        RequisitionLines: Record "Requisition Lines";
        Consultation: Record Consultation;
        Requisition: Record Requisition;
    begin
        if "Contract No." <> '' then begin
            Clear(Requisition);
            Requisition.SetRange("Contract No.", "Contract No.");
            if Requisition.FindFirst then
                Error(Text006, Requisition."Requisition Code");
        end;
        if xRec."Contract No." <> '' then
            if "Contract No." <> xRec."Contract No." then begin
                if not Confirm(Text005) then begin
                    Rec := xRec;
                    exit;
                end;
                Clear(RequisitionLines);
                RequisitionLines.SetRange("Requisition Code", "Requisition Code");
                RequisitionLines.DeleteAll;
            end;
    end;
}

