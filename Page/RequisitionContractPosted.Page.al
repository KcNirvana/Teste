page 57034 "Req. Contract Posted Card"
{
    Caption = 'Posted Contract Requisition';
    Editable = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    PageType = Document;
    RefreshOnActivate = true;
    DataCaptionFields = "Requisition Code", Description;
    SourceTable = Requisition;
    SourceTableView = SORTING("Requisition Code")
                      WHERE(IsContract = CONST(true),
                            Status = FILTER(Released | Rejected | Canceled | Closed));
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Requisition Code"; Rec."Requisition Code")
                {

                }
                field(Description; Rec.Description)
                {
                }
                field("Contract No."; Rec."Contract No.")
                {
                }
                field("Requisition Date"; Rec."Requisition Date")
                {
                    Editable = false;
                }

                field(Status; Rec.Status)
                {
                    Editable = false;
                }
                field("Requisition Employee"; Rec."Requisition Employee")
                {
                    Editable = false;
                }
                field("Employee"; Rec."Employee Name")
                {
                }
                field(Observations; Rec.Observations)
                {
                }
                field("Department Code"; Rec."Department Code")
                {
                }
                field("Department Description"; Rec."Department Description")
                {
                }
                field("Section Code"; Rec."Section Code")
                {

                }
                field("Section Description"; Rec."Section Description")
                {
                }
                field("Created By"; Rec."Created By")
                {
                    Editable = false;
                }
                field("Creation Date"; Rec."Creation Date")
                {
                }
            }
            part(Lines; "Req. Contract Posted Subform")
            {
                Editable = False;
                SubPageLink = "Requisition Code" = FIELD("Requisition Code");
                UpdatePropagation = Both;
            }
            part(Comments; "Requisition Comments")
            {
                Caption = 'Requisition Comments';
                SubPageLink = "Table ID" = CONST(Database::Requisition),
                              Code = FIELD("Requisition Code");
                UpdatePropagation = Both;
            }
        }
        area(factboxes)
        {

            part(Control1000000006; "Requisition Line Dim. FactBox")
            {
                Provider = Lines;
                SubPageLink = "Dimension Set ID" = FIELD("Dimension Set ID");
                SubPageView = SORTING("Dimension Set ID", "Dimension Code");
                UpdatePropagation = Both;
            }
            systempart(Control1102629019; Notes)
            {
                Visible = true;
            }
        }
    }

    actions
    {
        area(navigation)
        {
        }
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";

                group(Approval)
                {
                    Caption = 'Approvals';
                    action(Approvals)
                    {
                        AccessByPermission = TableData "Aproval Entry" = R;
                        Caption = 'Approvals';
                        Image = Approvals;
                        Promoted = true;
                        PromotedCategory = Process;
                        PromotedOnly = true;
                        trigger OnAction()
                        begin
                            CduReq.RequisitionApprovals(Rec);
                        end;
                    }
                    action(ReOpen)
                    {
                        Caption = 'Reopen Requisition';
                        Image = ReOpen;
                        Promoted = true;
                        PromotedCategory = Process;
                        PromotedOnly = true;
                        trigger OnAction()
                        begin
                            CduReq.ReOpenRequisition(Rec);
                        end;
                    }
                    action(Print)
                    {
                        Caption = 'Print';
                        Image = Print;
                        Promoted = true;
                        PromotedCategory = Process;
                        PromotedOnly = true;
                        trigger OnAction()
                        var
                            Requisition: Record Requisition;
                        begin
                            Clear(Requisition);
                            Requisition.setrange("Requisition Code", Rec."Requisition Code");
                            REPORT.RunModal(Report::Requisition, true, true, Requisition);
                        end;
                    }
                }
            }
        }

    }

    trigger OnOpenPage()
    begin
        ApplyFilters();
    end;

    local procedure ApplyFilters()
    var
        BudgetPermissions: Record "Budget Permissions";
        CduReq: Codeunit Requisition;
    begin
        CduReq.ValidatePermissions("Requisition Permissions"::View);
        Rec.FILTERGROUP(2);
        IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN BEGIN
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            IF BudgetPermissions."Filter Requisition By User" THEN
                Rec.SETRANGE("Created by", UPPERCASE(USERID))
            ELSE
                Rec.SETRANGE("Created by");
            IF BudgetPermissions."Filter Requisition By Section" THEN BEGIN
                IF BudgetPermissions."Employee Section" <> '' THEN
                    Rec.SETRANGE("Section Code", BudgetPermissions."Employee Section")
            END ELSE
                Rec.SETRANGE("Section Code");
            IF BudgetPermissions."Filter Requisition By Dep." THEN BEGIN
                IF BudgetPermissions."Employee Department" <> '' THEN
                    Rec.SETRANGE("Department Code", BudgetPermissions."Employee Department")
            END ELSE
                Rec.SETRANGE("Department Code");
        END;
    end;

    var
        CduReq: Codeunit Requisition;
        ApprovalsMgt: Codeunit "Approval Management";
        OpenApprovalEntriesExist: Boolean;
        OpenApprovalEntriesExistForCurrUser: Boolean;
        CanCancelApprovalForRecord: Boolean;

    trigger OnAfterGetCurrRecord()
    begin
        OpenApprovalEntriesExistForCurrUser := ApprovalsMgt.HasOpenApprovalEntriesForCurrentUser(Rec.RecordId);
        OpenApprovalEntriesExist := ApprovalsMgt.HasOpenApprovalEntries(Rec.RecordId);
        CanCancelApprovalForRecord := ApprovalsMgt.CanCancelApprovalForRecord(Rec.RecordId);
    end;

}

