page 57072 "Approval Entry"
{
    Caption = 'Approval Entries';
    Editable = false;
    PageType = List;
    SourceTable = "Aproval Entry";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("Document Type"; Rec."Document Type")
                {
                }
                field("Document No."; Rec."Document No.")
                {
                }
                field("Sequence No."; Rec."Sequence No.")
                {
                }
                field("Source Code"; Rec."Source Code")
                {
                }
                field("Sender ID"; Rec."Sender ID")
                {
                }
                field("Approver ID"; Rec."Approver ID")
                {
                }
                field("Section Code"; Rec."Section Code")
                {
                }
                field(Status; Rec.Status)
                {
                }
                field("Date-Time Sent for Approval"; Rec."Date-Time Sent for Approval")
                {
                    Visible = false;
                }
                field("Last Date-Time Modified"; Rec."Last Date-Time Modified")
                {
                    Visible = false;
                }
                field(Amount; Rec.Amount)
                {
                }
                field("Amount (LCY)"; Rec."Amount (LCY)")
                {
                }
                field("Approved By"; Rec."Approved By")
                {
                }
                field("Aproved Date"; Rec."Approved Date")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Documents)
            {
                Caption = 'Documents';
                Enabled = ShowRecCommentsEnabled;
                action(Card)
                {
                    Caption = 'Card';
                    Image = Document;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    trigger OnAction()
                    begin
                        ApprovalsMgt.LookupDocument(Rec);
                    end;
                }
            }
        }
        area(processing)
        {
            group(Functions)
            {
                Caption = 'Functions';
                action(Approve)
                {
                    Caption = 'Approve';
                    Image = Approve;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    Visible = OpenApprovalEntriesExistForCurrUser;

                    trigger OnAction()
                    begin
                        ApprovalsMgt.ApproveDocument(Rec);
                    end;
                }
                action(Reject)
                {
                    Caption = 'Reject';
                    Image = Reject;
                    Promoted = true;
                    PromotedCategory = Process;
                    Visible = OpenApprovalEntriesExistForCurrUser;
                    trigger OnAction()
                    begin
                        ApprovalsMgt.RejectDocument(Rec);
                    end;
                }
            }
        }

    }
    var
        ApprovalsMgt: Codeunit "Approval Management";
        ShowRecCommentsEnabled: Boolean;
        OpenApprovalEntriesExist: Boolean;
        OpenApprovalEntriesExistForCurrUser: Boolean;
        CanCancelApprovalForRecord: Boolean;

    trigger OnAfterGetCurrRecord()
    var
        RecRef: RecordRef;
    begin
        ShowRecCommentsEnabled := RecRef.GET(Rec."Record ID to Approve");
        OpenApprovalEntriesExistForCurrUser := ApprovalsMgt.HasOpenApprovalEntriesForCurrentUser(Rec.RecordId);
        OpenApprovalEntriesExist := ApprovalsMgt.HasOpenApprovalEntries(Rec.RecordId);
        CanCancelApprovalForRecord := ApprovalsMgt.CanCancelApprovalForRecord(Rec.RecordId);
    end;

    procedure Setfilters(RecordIDValue: RecordID)
    begin
        Rec.SetRange("Record ID to Approve", RecordIDValue);
    end;

    procedure SetRecordFilters(TableId: Integer; DocumentType: Enum "Approval Entry Document Type"; DocumentNo: Code[20])
    begin
        if TableId <> 0 then begin
            Rec.FilterGroup(2);
            Rec.SetCurrentKey("Table ID", "Document Type", "Document No.", "Date-Time Sent for Approval");
            Rec.SetRange("Table ID", TableId);
            Rec.SetRange("Document Type", DocumentType);
            if DocumentNo <> '' then
                Rec.SetRange("Document No.", DocumentNo);
            Rec.FilterGroup(0);
        end;
    end;

}

