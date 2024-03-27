page 57073 "Approval Entry Fact Box"
{
    Caption = 'Approvals';
    PageType = ListPart;
    SourceTable = "Aproval Entry";
    SourceTableView = SORTING("Table ID", "Document Type", "Document No.", "Sequence No.", "Approver ID", "Source Code");
    ApplicationArea = All;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("Document No."; Rec."Document No.")
                {
                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Approval Entry List", Rec);
                    end;
                }
                field(Status; Rec.Status)
                {
                }
                field("Approver ID"; Rec."Approver ID")
                {
                }
                field("Date-Time Sent for Approval"; Rec."Date-Time Sent for Approval")
                {
                }
                field("Approved Date"; Rec."Approved Date")
                {
                }
            }
        }
    }

    actions
    {
    }

}

