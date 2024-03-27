page 57071 "Approval Entry List"
{
    Caption = 'Approval Entry List';
    Editable = false;
    PageType = List;
    Permissions = TableData "Vendor Ledger Entry" = rimd,
                  TableData "Purch. Inv. Header" = rimd,
                  TableData "Purch. Inv. Line" = rimd;
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
                field("Sender ID"; Rec."Sender ID")
                {
                }
                field("Approver ID"; Rec."Approver ID")
                {
                }
                field(Status; Rec.Status)
                {
                }
                field("Date-Time Sent for Approval"; Rec."Date-Time Sent for Approval")
                {
                }
                field("Last Date-Time Modified"; Rec."Last Date-Time Modified")
                {
                }
                field("Last Modified By User ID"; Rec."Last Modified By User ID")
                {
                }
                field(Amount; Rec.Amount)
                {
                }
                field("Status Description"; Rec."Status Description")
                {
                    Visible = false;
                }
                field("Req. Employee"; Rec."Req. Employee")
                {
                    Visible = false;
                }
                field("Req. Name"; Rec."Req. Name")
                {
                }
            }
        }
    }

    actions
    {
    }

}

