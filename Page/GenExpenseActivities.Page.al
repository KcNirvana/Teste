page 57161 "General Expense Activities"
{
    Caption = 'Activities';
    PageType = CardPart;
    RefreshOnActivate = true;
    SourceTable = "Budget Cue";
    Permissions = tabledata "Budget Cue" = rm;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            cuegroup(Requisitions)
            {
                Caption = 'Requisitions';
                field("Requisitions - Open"; Rec."Requisitions - Open")
                {
                    DrillDownPageID = "Requisitions Open List";
                }
                field("Contract Requisitions - Open"; Rec."Contract Requisitions - Open")
                {
                    DrillDownPageID = "Req. Contract Open List";
                }
                field("Requisitions - Pending"; Rec."Requisitions - Pending")
                {
                    DrillDownPageID = "Requisitions Pending List";
                }
            }
            cuegroup(Consultations)
            {
                Caption = 'Consultations';
                field("Consultation - All"; Rec."Consultations - All")
                {
                    DrillDownPageID = "Consultation List";
                }
                field("Consultation - Without Avaylables"; GetConsultations(0))
                {
                    Caption = 'Consultation - Without Avaylables';

                    trigger OnDrillDown()
                    var
                        ConsulationWithoutAvayPage: Page "Consultation Without Avay";
                    begin
                        ConsulationWithoutAvayPage.Run();
                    end;
                }
                field("Consultation - With Avaylables Open"; GetConsultations(1))
                {
                    Caption = 'Consultation - With Avaylables Open';

                    trigger OnDrillDown()
                    var
                        ConsulationWithAvayOpenPage: Page "Consultation With Avay Open";
                    begin
                        ConsulationWithAvayOpenPage.Run();
                    end;
                }
                field("Consultation - With PAQ Open"; GetConsultations(2))
                {
                    Caption = 'Consultation - With PAQ Open';

                    trigger OnDrillDown()
                    var
                        ConsulationWithPAQOpenPage: Page "Consultation With PAQ Open";
                    begin
                        ConsulationWithPAQOpenPage.Run();
                    end;
                }
                field("Consultation - With Order Open"; GetConsultations(3))
                {
                    Caption = 'Consultation - With Order Open';

                    trigger OnDrillDown()
                    var
                        ConsulationWithOrderOpenPage: Page "Consultation With Order Open";
                    begin
                        ConsulationWithOrderOpenPage.Run();
                    end;
                }
                field("Consultation - With Invoice Open"; GetConsultations(4))
                {
                    Caption = 'Consultation - With Invoice Open';

                    trigger OnDrillDown()
                    var
                        ConsulationWithInvoiceOpenPage: Page "Consultation With Invoice Open";
                    begin
                        ConsulationWithInvoiceOpenPage.Run();
                    end;
                }
                field("Contract Consultations"; Rec."Contract Consultations")
                {
                    DrillDownPageID = "Contract Consultation List";
                }
            }
            cuegroup(Purchases)
            {
                Caption = 'Purchases';
                field("Purchase Quotes"; Rec."Purchase Quotes")
                {
                    DrillDownPageId = "Purchase Quotes";
                }
                field("Purchase Orders"; Rec."Purchase Orders")
                {
                    DrillDownPageId = "Purchase Order List";
                }
            }
            cuegroup(Historic)
            {
                Caption = 'Historic';
                field("Requisitions - Posted"; Rec."Requisitions - Posted")
                {
                    DrillDownPageID = "Requisitions Posted List";
                }
                field("Contract Requisitions - Posted"; Rec."Contract Requisitions - Posted")
                {
                    DrillDownPageID = "Req. Contract Posted List";
                }
                field("Consultations - Posted"; Rec."Consultations - Posted")
                {
                    DrillDownPageID = "Posted Consultation List";
                }
                field("Avaylable Posted"; Rec."Avaylable Posted")
                {
                    DrillDownPageID = "Posted Avaylable Budget List";
                }
                field("PAQ Posted"; Rec."PAQ Posted")
                {
                    DrillDownPageID = "Posted PAQ List";
                }
                field("Posted Purchase Receipts"; Rec."Posted Purchase Receipts")
                {
                    DrillDownPageId = "Posted Purchase Receipts";
                }
            }
            usercontrol(SATAsyncLoader; SatisfactionSurveyAsync)
            {
                ApplicationArea = Basic, Suite;
                trigger ResponseReceived(Status: Integer; Response: Text)
                var
                    SatisfactionSurveyMgt: Codeunit "Satisfaction Survey Mgt.";
                begin
                    SatisfactionSurveyMgt.TryShowSurvey(Status, Response);
                end;

                trigger ControlAddInReady();
                begin
                    IsAddInReady := true;
                    CheckIfSurveyEnabled();
                end;
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Set Up Cues")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Set Up Cues';
                Image = Setup;

                trigger OnAction()
                var
                    CueRecordRef: RecordRef;
                begin
                    CueRecordRef.GetTable(Rec);

                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        ApplyBudgetFilters();
    end;

    trigger OnOpenPage()
    var
        RoleCenterNotificationMgt: Codeunit "Role Center Notification Mgt.";
        ConfPersonalizationMgt: Codeunit "Conf./Personalization Mgt.";
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;

        Rec.SetRange("Date Filter", 0D, WorkDate());
        Rec.SetFilter("Date Filter2", '>=%1', WorkDate());
        ApplyBudgetFilters();

        RoleCenterNotificationMgt.ShowNotifications();
        ConfPersonalizationMgt.RaiseOnOpenRoleCenterEvent();

    end;

    trigger OnPageBackgroundTaskCompleted(TaskId: Integer; Results: Dictionary of [Text, Text])
    var
        SOActivitiesCalculate: Codeunit "SO Activities Calculate";
        PrevUpdatedOn: DateTime;
    begin
        if TaskId <> CalcTaskId then
            exit;

        CalcTaskId := 0;
        CurrPage.Update();
    end;

    var

        CalcTaskId: Integer;
        ShowDocumentsPendingDodExchService: Boolean;
        IsAddInReady: Boolean;
        IsPageReady: Boolean;

    local procedure CheckIfSurveyEnabled()
    var
        SatisfactionSurveyMgt: Codeunit "Satisfaction Survey Mgt.";
        CheckUrl: Text;
    begin
        if not IsAddInReady then
            exit;
        if not IsPageReady then
            exit;
        if not SatisfactionSurveyMgt.DeactivateSurvey() then
            exit;
        if not SatisfactionSurveyMgt.TryGetCheckUrl(CheckUrl) then
            exit;
        CurrPage.SATAsyncLoader.SendRequest(CheckUrl, SatisfactionSurveyMgt.GetRequestTimeoutAsync());
    end;

    local procedure GetConsultations(CType: option CWA,CWAO,CWPO,CWOO,CWIO): Integer
    var
        UserIDFilter: Code[50];
        SectionFilter: Code[20];
        DepartmentFilter: Code[20];
    begin
        UserIDFilter := Rec.GetFilter("Consultation User ID Filter");
        SectionFilter := Rec.GetFilter("Consultation Section Filter");
        DepartmentFilter := Rec.GetFilter("Consultation Department Filter");
        case CType of
            CType::CWA:
                exit(Rec.ConsultationWithoutAvaylables(UserIDFilter, SectionFilter, DepartmentFilter));
            CType::CWAO:
                exit(Rec.ConsultationWithAvayOpen(UserIDFilter, SectionFilter, DepartmentFilter));
            CType::CWPO:
                exit(Rec.ConsultationWithPAQOpen(UserIDFilter, SectionFilter, DepartmentFilter));
            CType::CWOO:
                exit(Rec.ConsultationWithOrderOpen(UserIDFilter, SectionFilter, DepartmentFilter));
            CType::CWIO:
                exit(Rec.ConsultationWithInvoiceOpen(UserIDFilter, SectionFilter, DepartmentFilter));
        end;
    end;

    local procedure ApplyBudgetFilters()
    begin
        Rec.FILTERGROUP(2);
        ApplyRequisitionFilters();
        ApplyConsultationFilters();
        ApplyAvaylableFilters();
        ApplyPAQFilters();
        ApplyOrdersFilters();
    end;

    local procedure ApplyRequisitionFilters()
    var
        BudgetPermissions: Record "Budget Permissions";
    begin
        IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN BEGIN
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            IF BudgetPermissions."Filter Requisition By User" THEN
                Rec.SETRANGE("Requisition User ID Filter", UPPERCASE(USERID))
            ELSE
                Rec.SETRANGE("Requisition User ID Filter");
            IF BudgetPermissions."Filter Requisition By Section" THEN BEGIN
                IF BudgetPermissions."Employee Section" <> '' THEN
                    Rec.SETRANGE("Requisition Section Filter", BudgetPermissions."Employee Section")
            END ELSE
                Rec.SETRANGE("Requisition Section Filter");
            IF BudgetPermissions."Filter Requisition By Dep." THEN BEGIN
                IF BudgetPermissions."Employee Department" <> '' THEN
                    Rec.SETRANGE("Requisition Department Filter", BudgetPermissions."Employee Department")
            END ELSE
                Rec.SETRANGE("Requisition Department Filter");
        END;
    end;

    local procedure ApplyConsultationFilters()
    var
        BudgetPermissions: Record "Budget Permissions";
    begin
        IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN BEGIN
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            IF BudgetPermissions."Filter Consultation By User" THEN
                Rec.SETRANGE("Consultation User ID Filter", UPPERCASE(USERID))
            ELSE
                Rec.SETRANGE("Consultation User ID Filter");
            IF BudgetPermissions."Filter Consultation By Section" THEN BEGIN
                IF BudgetPermissions."Employee Section" <> '' THEN
                    Rec.SETRANGE("Consultation Section Filter", BudgetPermissions."Employee Section")
            END ELSE
                Rec.SETRANGE("Consultation Section Filter");
            IF BudgetPermissions."Filter Consultation By Dep." THEN BEGIN
                IF BudgetPermissions."Employee Department" <> '' THEN
                    Rec.SETRANGE("Consultation Department Filter", BudgetPermissions."Employee Department")
            END ELSE
                Rec.SETRANGE("Consultation Department Filter");
        END;
    end;

    local procedure ApplyAvaylableFilters()
    var
        BudgetPermissions: Record "Budget Permissions";
    begin
        IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN BEGIN
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            IF BudgetPermissions."Filter Avay Budget By User" THEN
                Rec.SETRANGE("Avaylable User ID Filter", UPPERCASE(USERID))
            ELSE
                Rec.SETRANGE("Avaylable User ID Filter");
            IF BudgetPermissions."Filter Avay Budget By Section" THEN BEGIN
                IF BudgetPermissions."Employee Section" <> '' THEN
                    Rec.SETRANGE("Avaylable Section Filter", BudgetPermissions."Employee Section")
            END ELSE
                Rec.SETRANGE("Avaylable Section Filter");
            IF BudgetPermissions."Filter Avay Budget By Dep." THEN BEGIN
                IF BudgetPermissions."Employee Department" <> '' THEN
                    Rec.SETRANGE("Avaylable Department Filter", BudgetPermissions."Employee Department")
            END ELSE
                Rec.SETRANGE("Avaylable Department Filter");
        END;
    end;

    local procedure ApplyPAQFilters()
    var
        BudgetPermissions: Record "Budget Permissions";
    begin
        IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN BEGIN
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            IF BudgetPermissions."Filter PAQ By User" THEN
                Rec.SETRANGE("PAQ User ID Filter", UPPERCASE(USERID))
            ELSE
                Rec.SETRANGE("PAQ User ID Filter");
            IF BudgetPermissions."Filter PAQ By Section" THEN BEGIN
                IF BudgetPermissions."Employee Section" <> '' THEN
                    Rec.SETRANGE("PAQ Section Filter", BudgetPermissions."Employee Section")
            END ELSE
                Rec.SETRANGE("PAQ Section Filter");
            IF BudgetPermissions."Filter PAQ By Dep." THEN BEGIN
                IF BudgetPermissions."Employee Department" <> '' THEN
                    Rec.SETRANGE("PAQ Department Filter", BudgetPermissions."Employee Department")
            END ELSE
                Rec.SETRANGE("PAQ Department Filter");
        END;
    end;

    local procedure ApplyOrdersFilters()
    var
        BudgetPermissions: Record "Budget Permissions";
    begin
        IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN BEGIN
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            IF BudgetPermissions."Filter Order By User" THEN
                Rec.SETRANGE("Orders User ID Filter", UPPERCASE(USERID))
            ELSE
                Rec.SETRANGE("Orders User ID Filter");
            IF BudgetPermissions."Filter Order By Section" THEN BEGIN
                IF BudgetPermissions."Employee Section" <> '' THEN
                    Rec.SETRANGE("Orders Section Filter", BudgetPermissions."Employee Section")
            END ELSE
                Rec.SETRANGE("Orders Section Filter");
            IF BudgetPermissions."Filter Order By Dep." THEN BEGIN
                IF BudgetPermissions."Employee Department" <> '' THEN
                    Rec.SETRANGE("Orders Department Filter", BudgetPermissions."Employee Department")
            END ELSE
                Rec.SETRANGE("Orders Department Filter");
        END;
    end;
}

