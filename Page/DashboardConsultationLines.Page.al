page 57082 "Dashboard - Consultation Lines"
{
    Caption = 'Dashboard Consultation Lines Detailed';
    PageType = Worksheet;
    SourceTable = "Consultation Lines";
    SourceTableView = WHERE("Line Type" = FILTER(<> "Documents Line Type"::" "));
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
                field("Consultation Filter"; ConsultationFilter)
                {
                    Caption = 'Consultation Filter';
                    TableRelation = Consultation;
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
                field("Consultation Date Filter"; ConsultationDateFilter)
                {
                    Caption = 'Consultation Date Filter';
                    trigger OnValidate()
                    begin
                        PTSSTextManagement.MakeDateFilter(ConsultationDateFilter);
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
                field("Item No. Filter"; ItemFilter)
                {
                    Caption = 'Item No. Filter';
                    TableRelation = Item;
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
                field("Requisition Filter"; RequisitionFilter)
                {
                    Caption = 'Requisition Filter';
                    TableRelation = Requisition;
                    trigger OnValidate()
                    begin
                        ApplyFilters();
                    end;
                }
            }
            repeater(group)
            {
                Editable = false;
                field("Consultation Code"; Rec."Consultation Code")
                {
                }
                field("Requisition Code"; Rec."Requisition Code")
                {
                }
                field("No."; Rec."No.")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Consultation Date"; Rec."Consultation Date")
                {
                }
                field("Consultation Status"; Rec."Consultation Status")
                {
                }
                field("Requisition Date"; Rec."Requisition Date")
                {
                }
                field("First Purchase Quote Date"; Rec."First Purchase Quote Date")
                {
                }
                field("First Purchase Order Date"; Rec."First Purchase Order Date")
                {
                }
                field("First Purchase Receipt Date"; Rec."First Purchase Receipt Date")
                {
                }
                field("First Invoice Date"; Rec."First Invoice Date")
                {
                }
                field("First CrMemo Date"; Rec."First CrMemo Date")
                {
                }
                field("Location Code"; Rec."Location Code")
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
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Consultation)
            {
                Caption = 'Consultation';
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    ShortCutKey = 'Shift+F7';

                    trigger OnAction()
                    var
                        Consultation: Record Consultation;
                    begin
                        Consultation.Get(Rec."Consultation Code");
                        If Consultation.IsContract then begin
                            case Consultation."Consultation Status" of
                                "Consultation Status"::Open, "Consultation Status"::"Pending Approval", "Consultation Status"::Released:
                                    Page.Run(Page::"Contract Consultation", Consultation);
                                "Consultation Status"::Canceled, "Consultation Status"::Closed:
                                    Page.Run(Page::"Posted Consultation Header", Consultation);
                            end;

                        end else
                            case Consultation."Consultation Status" of
                                "Consultation Status"::Open, "Consultation Status"::"Pending Approval", "Consultation Status"::Released:
                                    Page.Run(Page::"Consultation Header", Consultation);
                                "Consultation Status"::Canceled, "Consultation Status"::Closed:
                                    Page.Run(Page::"Posted Consultation Header", Consultation);
                            end;
                    end;
                }
            }
        }
    }

    var
        PTSSTextManagement: Codeunit "PTSS TextManagement";
        ConsultationFilter: Code[20];
        ConsultationDateFilter: Text;
        RequisitionFilter: Code[20];
        ItemFilter: Code[20];
        ConsultationStatusFilter: Option " ",Open,Released,"Pending Approval",Canceled,Closed;

    trigger OnOpenPage()
    var
        CduConsultation: Codeunit Consultation;
    begin
        CduConsultation.ValidatePermissions("Consultation Permissions"::View);
    end;

    procedure ApplyFilters()
    begin
        Rec.Reset();
        Rec.CalcFields("Consultation Status", "Requisition Date", "First CrMemo Date", "First Invoice Date", "First Purchase Order Date", "First Purchase Quote Date", "First Purchase Receipt Date");
        Rec.FilterGroup(2);
        if ConsultationFilter <> '' then
            Rec.SetFilter("Consultation Code", ConsultationFilter);
        if ConsultationDateFilter <> '' then
            Rec.SetFilter("Consultation Date", ConsultationDateFilter);
        if RequisitionFilter <> '' then
            Rec.SetFilter("Requisition Code", RequisitionFilter);
        if ItemFilter <> '' then
            Rec.SetRange("No.", ItemFilter);
        if ConsultationStatusFilter <> ConsultationStatusFilter::" " then begin
            case ConsultationStatusFilter of
                ConsultationStatusFilter::Open:
                    Rec.SetRange("Consultation Status", "Consultation Status"::Open);
                ConsultationStatusFilter::Released:
                    Rec.SetRange("Consultation Status", "Consultation Status"::Released);
                ConsultationStatusFilter::"Pending Approval":
                    Rec.SetRange("Consultation Status", "Consultation Status"::"Pending Approval");
                ConsultationStatusFilter::Canceled:
                    Rec.SetRange("Consultation Status", "Consultation Status"::Canceled);
                ConsultationStatusFilter::Closed:
                    Rec.SetRange("Consultation Status", "Consultation Status"::Closed);
            end;
        end;
        CurrPage.Update(false);
    end;
}

