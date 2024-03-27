page 57037 "Avaylable Budget"
{
    Caption = 'Avaylable Budget';
    PageType = Document;
    RefreshOnActivate = true;
    SourceTable = "Avaylable Budget";
    ApplicationArea = all;
    Editable = false;
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Avay Code"; Rec."Avay Code")
                {
                    Editable = false;
                    trigger OnAssistEdit()
                    begin
                        IF Rec.AssistEdit(xRec) THEN
                            CurrPage.UPDATE;
                    end;
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    Editable = false;
                }
                field("Avay Date"; Rec."Avay Date")
                {
                    Editable = false;
                }
                field(Status; Rec.Status)
                {
                    Editable = false;
                }
                field(Type; Rec.Type)
                {
                    Editable = false;
                }
                field("Budget Appropriation Method"; Rec."Budget Appropriation Method")
                {
                    Editable = false;
                }
                field("Consultation Code"; Rec."Consultation Code")
                {
                    Editable = false;
                }
                field("Created By"; Rec."Created By")
                {
                }
                field("Creation Date"; Rec."Creation Date")
                {
                }

            }
            part(Lines; "Avaylable Budget Subform")
            {
                Editable = False;
                SubPageLink = "Avay Code" = FIELD("Avay Code");
                UpdatePropagation = Both;
            }
        }
        area(factboxes)
        {
            part(Control1000000040; "Approval Entry Fact Box")
            {
                SubPageLink = "Table ID" = CONST(Database::"Avaylable Budget"),
                              "Document Type" = CONST("Avaylable Budget"),
                              "Document No." = FIELD("Avay Code");
                SubPageView = SORTING("Table ID", "Document Type", "Document No.", "Sequence No.", "Approver ID", "Source Code");
                Visible = OpenApprovalEntriesExistForCurrUser;
                Editable = false;
            }
            systempart(Control1000000007; Notes)
            {
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
                    action(Approve)
                    {
                        ApplicationArea = All;
                        Caption = 'Approve';
                        Image = Approve;
                        Visible = OpenApprovalEntriesExistForCurrUser;

                        trigger OnAction()
                        begin
                            CduAvay.ApproveAvaylableBudget(Rec);
                        end;
                    }
                    action(Reject)
                    {
                        ApplicationArea = All;
                        Caption = 'Reject';
                        Image = Reject;
                        Visible = OpenApprovalEntriesExistForCurrUser;

                        trigger OnAction()
                        begin
                            CduAvay.RejectAvaylableBudget(Rec);
                        end;
                    }
                }
                group("Request Approval")
                {
                    Caption = 'Request Approval';
                    action(Approvals)
                    {
                        AccessByPermission = TableData "Aproval Entry" = R;
                        Caption = 'Approvals';
                        Image = Approvals;

                        trigger OnAction()
                        begin
                            CduAvay.OpenAvaylableApprovals(Rec);
                        end;
                    }
                    action(SendApprovalRequest)
                    {
                        Caption = 'Send A&pproval Request';
                        Enabled = NOT OpenApprovalEntriesExist;
                        Image = SendApprovalRequest;

                        trigger OnAction()
                        begin
                            CduAvay.SendToApproval(Rec);
                        end;
                    }
                    action(CancelApprovalRequest)
                    {
                        Caption = 'Cancel Approval Re&quest';
                        Enabled = CanCancelApprovalForRecord;
                        Image = CancelApprovalRequest;

                        trigger OnAction()
                        begin
                            CduAvay.CancelAvayApproval(Rec);
                        end;
                    }
                }
                group(Reports)
                {
                    Caption = 'Print';
                    action(Print)
                    {
                        Caption = 'Print';
                        Image = Print;

                        trigger OnAction()
                        var
                            AvaylableBudget: Record "Avaylable Budget";
                        begin
                            Clear(AvaylableBudget);
                            AvaylableBudget.setrange("Avay Code", Rec."Avay Code");
                            Report.RunModal(Report::"Avaylable Budget", true, true, AvaylableBudget);
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
        CduAvay: Codeunit AvaylableBudget;
    begin
        CduAvay.ValidatePermissions("Avay Permissions"::View);
        Rec.FILTERGROUP(2);
        IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN BEGIN
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            IF BudgetPermissions."Filter Avay Budget By User" THEN
                Rec.SETRANGE("Created by", UPPERCASE(USERID))
            ELSE
                Rec.SETRANGE("Created by");
            IF BudgetPermissions."Filter Avay Budget By Section" THEN BEGIN
                IF BudgetPermissions."Employee Section" <> '' THEN
                    Rec.SETRANGE("Section Code", BudgetPermissions."Employee Section")
            END ELSE
                Rec.SETRANGE("Section Code");
            IF BudgetPermissions."Filter Avay Budget By Dep." THEN BEGIN
                IF BudgetPermissions."Employee Department" <> '' THEN
                    Rec.SETRANGE("Department Code", BudgetPermissions."Employee Department")
            END ELSE
                Rec.SETRANGE("Department Code");
        END;
    end;

    var
        CduAvay: Codeunit AvaylableBudget;
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

