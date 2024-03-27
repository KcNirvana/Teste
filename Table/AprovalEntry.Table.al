table 57045 "Aproval Entry"
{
    Caption = 'Approval Entry';
    DrillDownPageID = "Approval Entry";
    LookupPageID = "Approval Entry";
    Permissions = TableData "Vendor Ledger Entry" = rimd,
                  TableData "Purch. Inv. Header" = rimd;

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
        field(2; "Document Type"; enum "Approval Entry Document Type")
        {
            Caption = 'Document Type';
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = IF ("Table ID" = CONST(Database::Requisition),
                                "Document Type" = CONST(Requisition)) Requisition WHERE("Requisition Code" = FIELD("Document No."))
            ELSE
            IF ("Table ID" = CONST(Database::"Avaylable Budget"),
                                "Document Type" = CONST("Avaylable Budget")) "Avaylable Budget" WHERE("Avay Code" = FIELD("Document No."))
            ELSE
            IF ("Table ID" = CONST(Database::PAQ),
                                "Document Type" = CONST(Adjudication)) PAQ WHERE("PAQ Code" = FIELD("Document No."))
            ELSE
            IF ("Table ID" = CONST(Database::Consultation),
                                "Document Type" = CONST(Consultation)) Consultation WHERE("Consultation code" = FIELD("Document No."))
            ELSE
            IF ("Document Type" = CONST(Invoice)) "Purchase Header"."No." WHERE("Document Type" = CONST(Invoice),
                                "No." = FIELD("Document No."))
            ELSE
            IF ("Table ID" = CONST(Database::"Posted Avaylable Budget"),
                                "Document Type" = CONST("Avaylable Budget")) "Posted Avaylable Budget" WHERE("Avay Code" = FIELD("Document No."))
            ELSE
            IF ("Table ID" = CONST(Database::"Posted PAQ"),
                                "Document Type" = CONST(Adjudication)) "Posted PAQ" WHERE("PAQ Code" = FIELD("Document No."));
        }
        field(4; "Sequence No."; Integer)
        {
            Caption = 'Sequence No.';
        }
        field(5; "Approval Code"; Code[20])
        {
            Caption = 'Approval Code';
        }
        field(6; "Sender ID"; Code[50])
        {
            Caption = 'Sender ID';
        }
        field(7; "Approver ID"; Code[50])
        {
            Caption = 'Approver ID';

            NotBlank = true;
            TableRelation = User."User Name";
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
            begin
                UserSelection.ValidateUserName("Approver ID");
            end;
        }
        field(8; Status; Enum "Approval Entry Status")
        {
            Caption = 'Status';

            trigger OnValidate()
            begin
                if Status = Status::Approved then begin
                    "Approved By" := UserId;
                    "Approved Date" := WorkDate();
                end;
            end;
        }
        field(9; "Date-Time Sent for Approval"; DateTime)
        {
            Caption = 'Date-Time Sent for Approval';
        }
        field(10; "Last Date-Time Modified"; DateTime)
        {
            Caption = 'Last Date-Time Modified';
        }
        field(11; "Last Modified By User ID"; Code[50])
        {
            Caption = 'Last Modified By User ID';
        }
        field(12; Comment; Boolean)
        {
            CalcFormula = Exist("Approval Comment Line" WHERE("Table ID" = FIELD("Table ID"),
                                                               "Document Type" = FIELD("Document Type"),
                                                               "Document No." = FIELD("Document No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(14; Amount; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(15; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
        }
        field(16; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(17; "Approval Type"; Enum "Approval Type")
        {
            Caption = 'Approval Type';
        }
        field(18; "Limit Type"; enum "Approval Entry Limits")
        {
            Caption = 'Limit Type';
        }
        field(19; "Available Credit Limit (LCY)"; Decimal)
        {
            Caption = 'Available Credit Limit (LCY)';
        }
        field(20; Closed; Boolean)
        {
            Caption = 'Closed';
        }
        field(21; "Status Description"; Text[30])
        {
            Caption = 'Status Description';
            Editable = false;
        }
        field(22; "Section Code"; Code[20])
        {
            Caption = 'Section Code';
            TableRelation = Sections;
        }
        field(23; "Approved By"; Code[50])
        {
            Caption = 'Approved By:';
            Editable = false;
        }
        field(24; "Approved Date"; Date)
        {
            Caption = 'Approved Date:';
            Editable = false;
        }
        field(25; "Approver Type"; Enum "Approver Type")
        {
            Caption = 'Approver Type';
            Editable = false;
        }
        field(26; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            Editable = false;
            TableRelation = "Source Code";
        }
        field(27; "System-Approved Entry"; Boolean)
        {
            Caption = 'System-Approved Entry';
            Editable = false;
        }
        field(28; "Record ID to Approve"; RecordID)
        {
            Caption = 'Record ID to Approve';
        }
        field(50000; "Req. Employee"; Code[20])
        {
            Caption = 'Req. Employee';
        }
        field(50001; "Req. Name"; Text[100])
        {
            Caption = 'Req. Name';
        }
        field(50002; "Original Doc. Code"; Code[20])
        {
            Caption = 'Original Doc. Code';
        }
        field(50005; "Amount With Vat"; Decimal)
        {
            Caption = 'Amount With Vat';
        }
        field(50006; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
    }

    keys
    {
        key(Key1; "Table ID", "Document Type", "Document No.", "Sequence No.", "Approver ID", "Source Code")
        {
            Clustered = true;
        }
        key(Key2; "Table ID", "Document Type", Status)
        {
        }
        key(Key3; "Table ID", "Document Type", Status, "Approver ID", "Source Code")
        {
        }
        key(Key4; "Table ID", "Document Type", "Document No.", "Sequence No.")
        {
        }
        key(Key5; "Table ID", "Record ID to Approve", Status, "Sequence No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Document Type", "Document No.", status, "Approver ID")
        {
        }
    }
    trigger OnModify()
    begin
        "Last Modified By User ID" := UserId;
        "Last Date-Time Modified" := CreateDateTime(Today, Time);
    end;

}

