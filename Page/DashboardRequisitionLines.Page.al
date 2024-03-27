page 57084 "Dashboard - Requisition Lines"
{

    Caption = 'Dashboard Requisition Lines Detailed';
    PageType = Worksheet;
    SourceTable = "Requisition Lines";
    SourceTableView = SORTING("Requisition Code", "Line No.")
                      WHERE(Type = filter(<> ''));
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    InsertAllowed = false;
    ModifyAllowed = true;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            group(Filters)
            {
                Caption = 'Filters';
                field("Requisition Filter"; RequisitionFilter)
                {
                    TableRelation = Requisition;
                    Caption = 'Requisition Filter';

                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
                field("Requisition Date Filter"; RequisitionDateFilter)
                {
                    Caption = 'Requisition Date Filter';
                    trigger OnValidate()
                    begin
                        PTSSTextManagement.MakeDateFilter(RequisitionDateFilter);
                        ApplyFilters();
                    end;
                }

                field("Requisition Status Filter"; RequisitionStatusFilter)
                {
                    Caption = 'Requisition Status Filter';
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
                field("Item No. Filter"; ItemFilter)
                {
                    TableRelation = Item;
                    Caption = 'Item No. Filter';
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
                field("Location Filter"; LocationFilter)
                {
                    TableRelation = Location;
                    Caption = 'Location Filter';
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
                field("Department Filter"; DepartmentFilter)
                {
                    TableRelation = Departments;
                    Caption = 'Department Filter';
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
                field("Section Filter"; SectionFilter)
                {
                    TableRelation = Sections;
                    Caption = 'Section Filter';
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
                field("Employee Filter"; EmployeeFilter)
                {
                    TableRelation = Employee;
                    Caption = 'Employee Filter';
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
                field("Consultation Status Filter"; ConsultationStatusFilter)
                {
                    Caption = 'Consultation Status Filter';
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
                field("Req. Without Consultations"; ReqWithoutConsultations)
                {
                    Caption = 'Req. Without Consultations';
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
                field("Req. Without Avays"; ReqWithoutAvays)
                {
                    Caption = 'Req. Without Avays';
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
                field("Req. Without PAQs"; ReqWithoutPAQs)
                {
                    Caption = 'Req. Without PAQs';
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }

            }
            repeater(group)
            {
                Editable = false;
                field("Requisition Code"; Rec."Requisition Code")
                {
                }
                field("Requisition Date"; Rec."Requisition Date")
                {
                }
                field("Requisition Status"; Rec."Requisition Status")
                {
                }
                field("Req. Approved/Rejected Date"; Rec."Req. Approved/Rejected Date")
                {
                }
                field("Req. Approved/Rejected by"; Rec."Req. Approved/Rejected by")
                {
                }
                field("Requisition Department"; Rec."Requisition Department")
                {
                }
                field("Requisition Section"; Rec."Requisition Section")
                {
                }
                field("Requisition Employee"; Rec."Requisition Employee")
                {
                }
                field("No."; Rec."No.")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Description 2"; Rec."Description 2")
                {
                }
                field("Location Code"; Rec."Location Code")
                {
                }
                field("Stock Quantity"; Rec."Stock Quantity")
                {
                }
                field("Quote Quantity"; Rec."Quote Quantity")
                {
                }
                field("Requisition Quantity"; Rec."Requisition Quantity")
                {
                }
                field(Observations; Rec.Observations)
                {
                }
                field("Consultation Code"; Rec."Consultation Code")
                {
                }
                field("Consultation Status"; Rec."Consultation Status")
                {
                }
                field("Avaylable Budgets"; Rec."Avaylable Budgets")
                {
                }
                field("Posted Avaylable Budgets"; Rec."Posted Avaylable Budgets")
                {
                }
                field(PAQs; Rec.PAQs)
                {
                }
                field("Posted PAQs"; Rec."Posted PAQs")
                {
                }
                field(Orders; Rec.Orders)
                {
                }
                field(Quotes; Rec.Quotes)
                {
                }
                field("Purch Receipts"; Rec."Purch Receipts")
                {
                }
                field(Invoices; Rec.Invoices)
                {
                }
                field("Posted Invoices"; Rec."Posted Invoices")
                {
                }
                field("Credit Memos"; Rec."Credit Memos")
                {
                }
                field("Posted Credit Memos"; Rec."Posted Credit Memos")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Requisition)
            {
                Caption = 'Requisition';
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    ShortCutKey = 'Shift+F7';

                    trigger OnAction()
                    var
                        Requisition: Record Requisition;
                    begin
                        Requisition.Get(Rec."Requisition Code");
                        If Requisition.IsContract then begin
                            case Requisition.Status of
                                "Requisition Status"::Open, "Requisition Status"::Reopened:
                                    Page.Run(Page::"Req. Contract Open Card", Requisition);
                                "Requisition Status"::Canceled, "Requisition Status"::Closed, "Requisition Status"::Released, "Requisition Status"::Rejected:
                                    Page.Run(Page::"Req. Contract Posted Card", Requisition);
                                "Requisition Status"::"Pending Approval":
                                    Page.Run(Page::"Requisition Pending Card", Requisition);
                            end;
                        end else
                            case Requisition.Status of
                                "Requisition Status"::Open, "Requisition Status"::Reopened:
                                    Page.Run(Page::"Requisition Open Card", Requisition);
                                "Requisition Status"::Canceled, "Requisition Status"::Closed, "Requisition Status"::Released, "Requisition Status"::Rejected:
                                    Page.Run(Page::"Requisition Posted Card", Requisition);
                                "Requisition Status"::"Pending Approval":
                                    Page.Run(Page::"Requisition Pending Card", Requisition);
                            end;
                    end;
                }
            }
        }
    }
    var
        PTSSTextManagement: Codeunit "PTSS TextManagement";
        RequisitionFilter: Code[20];
        RequisitionDateFilter: Text;
        RequisitionStatusFilter: Option " ",Open,Released,"Pending Approval",Rejected,Reopened,Canceled,Closed;
        ItemFilter: Code[20];
        LocationFilter: Code[20];
        DepartmentFilter: Code[20];
        SectionFilter: Code[20];
        EmployeeFilter: Code[20];
        ConsultationStatusFilter: Enum "Req. Consultation Status";
        ReqWithoutConsultations: Boolean;
        ReqWithoutAvays: Boolean;
        ReqWithoutPAQs: Boolean;

    trigger OnOpenPage()
    var
        CduReq: Codeunit Requisition;
    begin
        CduReq.ValidatePermissions("Requisition Permissions"::View);
    end;

    trigger OnAfterGetRecord()
    begin
        Rec."Consultation Status" := GetConsultationStatus(Rec);
    end;

    trigger OnAfterGetCurrRecord()
    begin
        Rec."Consultation Status" := GetConsultationStatus(Rec);
    end;

    local procedure GetConsultationStatus(RequisitionLines: Record "Requisition Lines"): Enum "Req. Consultation Status"
    begin
        RequisitionLines.CalcFields(Orders, "Posted PAQs", PAQs, "Posted Avaylable Budgets", "Avaylable Budgets", Quotes);
        case true of
            RequisitionLines.Orders > 0:
                exit("Req. Consultation Status"::Order);
            RequisitionLines."Posted PAQs" > 0:
                exit("Req. Consultation Status"::"Posted PAQ");
            RequisitionLines.PAQs > 0:
                exit("Req. Consultation Status"::PAQ);
            RequisitionLines."Posted Avaylable Budgets" > 0:
                exit("Req. Consultation Status"::"Posted Avaylable Budget");
            RequisitionLines."Avaylable Budgets" > 0:
                exit("Req. Consultation Status"::"Avaylable Budget");
            RequisitionLines.Quotes > 0:
                exit("Req. Consultation Status"::Quote);
        End;
    end;

    procedure ApplyFilters()
    begin
        Rec.Reset();
        Rec.CalcFields(Orders, "Posted PAQs", PAQs, "Posted Avaylable Budgets", "Avaylable Budgets", Quotes);
        Rec.FilterGroup(2);
        if RequisitionFilter <> '' then
            Rec.SetFilter("Requisition Code", RequisitionFilter);
        if RequisitionDateFilter <> '' then
            Rec.SetFilter("Requisition Date", RequisitionDateFilter);
        if RequisitionStatusFilter <> RequisitionStatusFilter::" " then begin
            case RequisitionStatusFilter of
                RequisitionStatusFilter::Open:
                    Rec.SetRange("Requisition Status", "Requisition Status"::Open);
                RequisitionStatusFilter::Released:
                    Rec.SetRange("Requisition Status", "Requisition Status"::Released);
                RequisitionStatusFilter::"Pending Approval":
                    Rec.SetRange("Requisition Status", "Requisition Status"::"Pending Approval");
                RequisitionStatusFilter::Rejected:
                    Rec.SetRange("Requisition Status", "Requisition Status"::Rejected);
                RequisitionStatusFilter::Reopened:
                    Rec.SetRange("Requisition Status", "Requisition Status"::Reopened);
                RequisitionStatusFilter::Canceled:
                    Rec.SetRange("Requisition Status", "Requisition Status"::Canceled);
                RequisitionStatusFilter::Closed:
                    Rec.SetRange("Requisition Status", "Requisition Status"::Closed);
            end;
        end;
        if ItemFilter <> '' then
            Rec.SetRange("No.", ItemFilter);
        if LocationFilter <> '' then
            Rec.SetRange("Location Code", LocationFilter);
        if DepartmentFilter <> '' then
            Rec.SetRange("Requisition Department", DepartmentFilter);
        if SectionFilter <> '' then
            Rec.SetRange("Requisition Section", SectionFilter);
        if EmployeeFilter <> '' then
            Rec.SetRange("Requisition Employee", EmployeeFilter);
        If ConsultationStatusFilter <> ConsultationStatusFilter::" " then
            Rec.SetRange("Consultation Status", ConsultationStatusFilter);
        if ReqWithoutConsultations then
            Rec.SetRange("Consultation Code", '');
        if ReqWithoutAvays then
            Rec.SetRange("Posted Avaylable Budgets", 0);
        if ReqWithoutPAQs then
            Rec.SetRange("Posted PAQs", 0);
        CurrPage.Update(false);
    end;
}

