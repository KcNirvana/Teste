table 57000 "Budget Cue"
{
    Caption = 'Budget Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Requisitions - Open"; Integer)
        {
            CalcFormula = Count("Requisition" WHERE(Status = FILTER(Open | Reopened),
                                                    IsContract = CONST(false),
                                                    "Section Code" = field("Requisition Section Filter"),
                                                    "Department Code" = field("Requisition Department Filter"),
                                                    "Created By" = field("Requisition User ID Filter")));
            Caption = 'Requisitions - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Requisitions - Posted"; Integer)
        {
            CalcFormula = Count("Requisition" WHERE(Status = FILTER(Released | Rejected | Canceled | Closed),
                                                    IsContract = CONST(false),
                                                    "Section Code" = field("Requisition Section Filter"),
                                                    "Department Code" = field("Requisition Department Filter"),
                                                    "Created By" = field("Requisition User ID Filter")));
            Caption = 'Requisitions - Posted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Contract Requisitions - Open"; Integer)
        {
            CalcFormula = Count("Requisition" WHERE(Status = FILTER(Open | Reopened),
                                                    IsContract = CONST(true),
                                                    "Section Code" = field("Requisition Section Filter"),
                                                    "Department Code" = field("Requisition Department Filter"),
                                                    "Created By" = field("Requisition User ID Filter")));
            Caption = 'Contract Requisitions - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Contract Requisitions - Posted"; Integer)
        {
            CalcFormula = Count("Requisition" WHERE(Status = FILTER(Released | Rejected | Canceled | Closed),
                                                    IsContract = CONST(true),
                                                    "Section Code" = field("Requisition Section Filter"),
                                                    "Department Code" = field("Requisition Department Filter"),
                                                    "Created By" = field("Requisition User ID Filter")));
            Caption = 'Contract Requisitions - Posted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Requisitions - Pending"; Integer)
        {
            CalcFormula = Count("Requisition" WHERE(Status = FILTER("Pending Approval"),
                                                    "Section Code" = field("Requisition Section Filter"),
                                                    "Department Code" = field("Requisition Department Filter"),
                                                    "Created By" = field("Requisition User ID Filter")));
            Caption = 'Requisitions - Pending';
            Editable = false;
            FieldClass = FlowField;
        }

        field(7; "Consultations - All"; Integer)
        {
            CalcFormula = Count(Consultation WHERE(IsContract = CONST(false),
                                                    "Consultation Status" = FILTER(<> Canceled & <> Closed),
                                                    "Section Code" = field("Consultation Section Filter"),
                                                    "Department Code" = field("Consultation Department Filter"),
                                                    "Created By" = field("Consultation User ID Filter")));
            Caption = 'Consultations - All';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Contract Consultations"; Integer)
        {
            CalcFormula = Count(Consultation WHERE(IsContract = CONST(true),
                                                    "Consultation Status" = FILTER(<> Canceled & <> Closed),
                                                    "Section Code" = field("Consultation Section Filter"),
                                                    "Department Code" = field("Consultation Department Filter"),
                                                    "Created By" = field("Consultation User ID Filter")));
            Caption = 'Contract Consultations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Consultations - Posted"; Integer)
        {
            CalcFormula = Count(Consultation WHERE("Consultation Status" = FILTER(Canceled | Closed),
                                                    "Section Code" = field("Consultation Section Filter"),
                                                    "Department Code" = field("Consultation Department Filter"),
                                                    "Created By" = field("Consultation User ID Filter")));
            Caption = 'Consultations - Posted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Avaylable Posted"; Integer)
        {
            CalcFormula = Count("Posted Avaylable Budget" WHERE(
                                                    "Section Code" = field("Avaylable Section Filter"),
                                                    "Department Code" = field("Avaylable Department Filter"),
                                                    "Created By" = field("Avaylable User ID Filter")));
            Caption = 'Posted Avaylable Budgets';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "PAQ Posted"; Integer)
        {
            CalcFormula = Count("Posted PAQ" WHERE(
                                                    "Section Code" = field("PAQ Section Filter"),
                                                    "Department Code" = field("PAQ Department Filter"),
                                                    "Created By" = field("PAQ User ID Filter")));
            Caption = 'Posted Adjudications';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Purchase Quotes"; Integer)
        {
            CalcFormula = Count("Purchase Header" where("Document Type" = const(Quote)));
            Caption = 'Purchase Quotes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Purchase Orders"; Integer)
        {
            CalcFormula = Count("Purchase Header" where("Document Type" = const(Order),
                                                    "Section Code" = field("Orders Section Filter"),
                                                    "Department Code" = field("Orders Department Filter"),
                                                    "Created By" = field("Orders User ID Filter")));
            Caption = 'Purchase Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Purch. Inv. Without Budget"; Integer)
        {
            CalcFormula = Count("Purchase Header" where("Document Type" = const(Invoice), "Not Budget Document" = const(true)));
            Caption = 'Purch. Inv. Without Budget';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Purch. Inv. With Budget"; Integer)
        {
            CalcFormula = Count("Purchase Header" where("Document Type" = const(Invoice), "Not Budget Document" = const(false)));
            Caption = 'Purch. Inv. With Budget';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Purch. CrMemo Without Budget"; Integer)
        {
            CalcFormula = Count("Purchase Header" where("Document Type" = const("Credit Memo"), "Not Budget Document" = const(true)));
            Caption = 'Purch. CrMemo Without Budget';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Purch. CrMemo With Budget"; Integer)
        {
            CalcFormula = Count("Purchase Header" where("Document Type" = const("Credit Memo"), "Not Budget Document" = const(false)));
            Caption = 'Purch. CrMemo With Budget';
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "Posted Purchase Invoices"; Integer)
        {
            CalcFormula = Count("Purch. Inv. Header");
            Caption = 'Posted Purchase Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Posted Purchase CrMemos"; Integer)
        {
            CalcFormula = Count("Purch. Cr. Memo Hdr.");
            Caption = 'Posted Purchase CrMemos';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Posted Purchase Receipts"; Integer)
        {
            CalcFormula = Count("Purch. Rcpt. Header");
            Caption = 'Posted Purchase Receipts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Sales Quotes"; Integer)
        {
            CalcFormula = Count("Sales Header" where("Document Type" = const(Quote)));
            Caption = 'Sales Quotes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Sales Orders"; Integer)
        {
            CalcFormula = Count("Sales Header" where("Document Type" = const(Order)));
            Caption = 'Sales Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Sales Invoices"; Integer)
        {
            CalcFormula = Count("Sales Header" where("Document Type" = const(Invoice)));
            Caption = 'Sales Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "Sales CrMemos"; Integer)
        {
            CalcFormula = Count("Sales Header" where("Document Type" = const("Credit Memo")));
            Caption = 'Sales CrMemos';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Posted Sales Invoices"; Integer)
        {
            CalcFormula = Count("Sales Invoice Header");
            Caption = 'Posted Sales Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Posted Sales CrMemos"; Integer)
        {
            CalcFormula = Count("Sales Cr.Memo Header");
            Caption = 'Posted Sales CrMemos';
            Editable = false;
            FieldClass = FlowField;
        }
        field(100; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(101; "Date Filter2"; Date)
        {
            Caption = 'Date Filter 2';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(102; "Requisition User ID Filter"; Code[50])
        {
            Caption = 'Requisition User ID Filter';
            FieldClass = FlowFilter;
        }
        field(103; "Requisition Section Filter"; Code[20])
        {
            Caption = 'Requisition Section Filter';
            FieldClass = FlowFilter;
        }
        field(104; "Requisition Department Filter"; Code[20])
        {
            Caption = 'Requisition Department Filter';
            FieldClass = FlowFilter;
        }
        field(105; "Consultation User ID Filter"; Code[50])
        {
            Caption = 'Consultation User ID Filter';
            FieldClass = FlowFilter;
        }
        field(106; "Consultation Section Filter"; Code[20])
        {
            Caption = 'Consultation Section Filter';
            FieldClass = FlowFilter;
        }
        field(107; "Consultation Department Filter"; Code[20])
        {
            Caption = 'Consultation Department Filter';
            FieldClass = FlowFilter;
        }
        field(108; "Avaylable User ID Filter"; Code[50])
        {
            Caption = 'Avaylable User ID Filter';
            FieldClass = FlowFilter;
        }
        field(109; "Avaylable Section Filter"; Code[20])
        {
            Caption = 'Avaylable Section Filter';
            FieldClass = FlowFilter;
        }
        field(110; "Avaylable Department Filter"; Code[20])
        {
            Caption = 'Avaylable Department Filter';
            FieldClass = FlowFilter;
        }
        field(111; "PAQ User ID Filter"; Code[50])
        {
            Caption = 'PAQ User ID Filter';
            FieldClass = FlowFilter;
        }
        field(112; "PAQ Section Filter"; Code[20])
        {
            Caption = 'PAQ Section Filter';
            FieldClass = FlowFilter;
        }
        field(113; "PAQ Department Filter"; Code[20])
        {
            Caption = 'PAQ Department Filter';
            FieldClass = FlowFilter;
        }
        field(114; "Orders User ID Filter"; Code[50])
        {
            Caption = 'Orders User ID Filter';
            FieldClass = FlowFilter;
        }
        field(115; "Orders Section Filter"; Code[20])
        {
            Caption = 'Orders Section Filter';
            FieldClass = FlowFilter;
        }
        field(116; "Orders Department Filter"; Code[20])
        {
            Caption = 'Orders Department Filter';
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
    var
        CduConsultation: Codeunit Consultation;

    procedure ConsultationWithoutAvaylables(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]): Integer
    begin
        exit(CduConsultation.CountConsultationWithoutAvaylables(UserIDFilter, SectionFilter, DepartmentFilter));
    end;

    procedure ConsultationWithAvayOpen(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]): Integer
    begin
        exit(CduConsultation.CountConsultationWithAvayOpen(UserIDFilter, SectionFilter, DepartmentFilter));
    end;

    procedure ConsultationWithPAQOpen(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]): Integer
    begin
        exit(CduConsultation.CountConsultationWithPAQOpen(UserIDFilter, SectionFilter, DepartmentFilter));
    end;

    procedure ConsultationWithOrderOpen(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]): Integer
    begin
        exit(CduConsultation.CountConsultationWithOrderOpen(UserIDFilter, SectionFilter, DepartmentFilter));
    end;

    procedure ConsultationWithInvoiceOpen(UserIDFilter: Code[50]; SectionFilter: Code[20]; DepartmentFilter: Code[20]): Integer
    begin
        exit(CduConsultation.CountConsultationWithInvoiceOpen(UserIDFilter, SectionFilter, DepartmentFilter));
    end;
}

