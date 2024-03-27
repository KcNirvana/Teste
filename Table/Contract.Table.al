table 57092 Contract
{

    Caption = 'Contracts';
    DataCaptionFields = "No.", Description;
    DrillDownPageID = "Contract List";
    LookupPageID = "Contract List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Contract No.';

            trigger OnValidate()
            begin
                IF "No." <> xRec."No." THEN BEGIN
                    BudgetConfiguration.GET;
                    NoSeriesMgt.TestManual(BudgetConfiguration."Contract Nos");
                    "No. Series" := '';
                END;
            end;
        }
        field(2; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(3; "Start Date"; Date)
        {
            Caption = 'Start Date';

            trigger OnValidate()
            begin
                CheckDates;
            end;
        }
        field(4; "End Date"; Date)
        {
            Caption = 'End Date';

            trigger OnValidate()
            begin
                CheckDates;
            end;
        }
        field(5; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(6; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
            ValidateTableRelation = false;
        }
        field(7; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(8; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = ' ,Blocked,Canceled';
            OptionMembers = " ",Blocked,Canceled;
        }
        field(9; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Editable = false;
        }
        field(10; "Section Code"; Code[20])
        {
            Caption = 'Section Code';
            Editable = false;
            TableRelation = Sections;
        }
        field(11; "Department Code"; Code[20])
        {
            Caption = 'Department Code';
            Editable = false;
            TableRelation = "Departments";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, "Vendor No.", "Start Date", "End Date")
        {
        }
    }

    trigger OnInsert()
    begin
        IF "No." = '' THEN BEGIN
            BudgetConfiguration.GET;
            BudgetConfiguration.TESTFIELD("Contract Nos");
            NoSeriesMgt.InitSeries(BudgetConfiguration."Contract Nos", xRec."No. Series", 0D, "No.", "No. Series");
        END;

        "Created by" := USERID;
        FillDepSection;
    end;

    var
        BudgetConfiguration: Record "Budget Configuration";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        StartDateLaterTheEndDateErr: Label 'Start date must be earlier than end date.';

    procedure AssistEdit(OldContract: Record Contract): Boolean
    var
        Contract: Record Contract;
    begin
        Contract := Rec;
        BudgetConfiguration.GET;
        BudgetConfiguration.TESTFIELD("Contract Nos");
        IF NoSeriesMgt.SelectSeries(BudgetConfiguration."Contract Nos", OldContract."No. Series", Contract."No. Series") THEN BEGIN
            NoSeriesMgt.SetSeries(Contract."No.");
            Rec := Contract;
            EXIT(TRUE);
        END;
    end;

    local procedure CheckDates()
    var
        Text001: Label 'The contract start year cant be greater than current year.';
    begin
        IF ("Start Date" <> 0D) AND ("End Date" <> 0D) THEN BEGIN
            IF DATE2DMY("Start Date", 3) < DATE2DMY(WORKDATE, 3) THEN
                ERROR(Text001);
            IF "Start Date" > "End Date" THEN
                ERROR(StartDateLaterTheEndDateErr);
        END;
    end;

    local procedure FillDepSection()
    var
        BudgetPermissions: Record "Budget Permissions";
        Employee: Record Employee;
        SectionCode: Record Sections;
    begin
        IF BudgetPermissions.GET("Created by", 0) THEN BEGIN
            Employee.GET(BudgetPermissions."Employee Number");
            "Section Code" := Employee."Section Code";
            SectionCode.SETRANGE(Code, Employee."Section Code");
            IF SectionCode.FINDFIRST THEN
                "Department Code" := SectionCode."Department Code";
        END;
    end;
}

