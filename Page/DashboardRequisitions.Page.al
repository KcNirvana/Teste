page 57083 "Dashboard - Requisitions"
{

    Caption = 'Dashboard Requisitions Detailed';
    PageType = Worksheet;
    SourceTable = Requisition;
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
                field(Description; Rec.Description)
                {
                }
                field(Status; Rec.Status)
                {
                }
                field("Requisition Date"; Rec."Requisition Date")
                {
                }
                field("Aproved Date"; Rec."Approved/Rejected Date")
                {
                }
                field("Aproved/Rejected by"; Rec."Approved/Rejected by")
                {
                }
                field("Department Code"; Rec."Department Code")
                {
                }
                field("Section Code"; Rec."Section Code")
                {
                }
                field("Req Employee"; Rec."Requisition Employee")
                {
                }
                field(Consultations; Rec.Consultations)
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
    }
    var
        PTSSTextManagement: Codeunit "PTSS TextManagement";
        RequisitionFilter: Code[20];
        RequisitionDateFilter: Text;
        DepartmentFilter: Code[20];
        SectionFilter: Code[20];
        EmployeeFilter: Code[20];
        ReqWithoutConsultations: Boolean;
        ReqWithoutAvays: Boolean;
        ReqWithoutPAQs: Boolean;

    trigger OnOpenPage()
    var
        CduReq: Codeunit Requisition;
    begin
        CduReq.ValidatePermissions("Requisition Permissions"::View);
    end;

    procedure ApplyFilters()
    begin
        Rec.Reset();
        Rec.CalcFields(Orders, "Posted PAQs", PAQs, "Posted Avaylable Budgets", "Avaylable Budgets");
        Rec.FilterGroup(2);
        if RequisitionFilter <> '' then
            Rec.SetFilter("Requisition Code", RequisitionFilter);
        if RequisitionDateFilter <> '' then
            Rec.SetFilter("Requisition Date", RequisitionDateFilter);
        if DepartmentFilter <> '' then
            Rec.SetRange("Department Code", DepartmentFilter);
        if SectionFilter <> '' then
            Rec.SetRange("Section Code", SectionFilter);
        if EmployeeFilter <> '' then
            Rec.SetRange("Requisition Employee", EmployeeFilter);
        if ReqWithoutConsultations then
            Rec.SetRange(Consultations, 0);
        if ReqWithoutAvays then
            Rec.SetRange("Posted Avaylable Budgets", 0);
        if ReqWithoutPAQs then
            Rec.SetRange("Posted PAQs", 0);
        CurrPage.Update(false);
    end;
}

