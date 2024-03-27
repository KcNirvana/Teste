page 57041 "PAQ Card"
{

    Caption = 'PAQ Card';
    PageType = Document;
    SourceTable = PAQ;
    Editable = true;
    RefreshOnActivate = true;
    ApplicationArea = all;
    ModifyAllowed = false;
    InsertAllowed = false;
    DeleteAllowed = true;
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("PAQ Code"; Rec."PAQ Code")
                {
                    Editable = false;
                    trigger OnAssistEdit()
                    begin
                        IF Rec.AssistEdit(xRec) THEN
                            CurrPage.UPDATE;
                    end;
                }
                field("PAQ Description"; Rec."PAQ Description")
                {
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    Editable = false;
                }
                field("PAQ Date"; Rec."PAQ Date")
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
            part(Lines; "PAQ Subform")
            {
                SubPageLink = "PAQ Code" = FIELD("PAQ Code");
                Editable = False;
                UpdatePropagation = Both;
            }
        }
        area(factboxes)
        {
            part(Control1000000040; "Approval Entry Fact Box")
            {
                SubPageLink = "Table ID" = CONST(Database::PAQ),
                              "Document Type" = CONST(Adjudication),
                              "Document No." = FIELD("PAQ Code");
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
                            CduPAQ.ApprovePAQ(Rec);
                            CurrPage.Close();
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
                            CduPAQ.RejectPAQ(Rec);
                            CurrPage.Close();
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
                            CduPAQ.OpenPAQApprovals(Rec);
                        end;
                    }
                    action(SendApprovalRequest)
                    {
                        Caption = 'Send A&pproval Request';
                        Enabled = NOT OpenApprovalEntriesExist;
                        Visible = false;
                        Image = SendApprovalRequest;

                        trigger OnAction()
                        begin
                            CduPAQ.SendToApproval(Rec);
                        end;
                    }
                    action(CancelApprovalRequest)
                    {
                        Caption = 'Cancel Approval Re&quest';
                        Enabled = CanCancelApprovalForRecord;
                        Visible = false;
                        Image = CancelApprovalRequest;

                        trigger OnAction()
                        begin
                            CduPAQ.CancelPAQApproval(Rec);
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
                        Visible = false;
                        trigger OnAction()
                        var
                            PAQ: Record PAQ;
                        begin
                            Clear(PAQ);
                            PAQ.setrange("PAQ Code", Rec."PAQ Code");
                            //REPORT.Run(Report::"PAQ", true, true, PAQ);
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
        CduPAQ: Codeunit PAQ;
    begin
        CduPAQ.ValidatePermissions("PAQ Permissions"::View);
        Rec.FILTERGROUP(2);
        IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN BEGIN
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            IF BudgetPermissions."Filter PAQ By User" THEN
                Rec.SETRANGE("Created by", UPPERCASE(USERID))
            ELSE
                Rec.SETRANGE("Created by");
            IF BudgetPermissions."Filter PAQ By Section" THEN BEGIN
                IF BudgetPermissions."Employee Section" <> '' THEN
                    Rec.SETRANGE("Section Code", BudgetPermissions."Employee Section")
            END ELSE
                Rec.SETRANGE("Section Code");
            IF BudgetPermissions."Filter PAQ By Dep." THEN BEGIN
                IF BudgetPermissions."Employee Department" <> '' THEN
                    Rec.SETRANGE("Department Code", BudgetPermissions."Employee Department")
            END ELSE
                Rec.SETRANGE("Department Code");
        END;
    end;

    var
        CduPAQ: Codeunit PAQ;
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

