page 57017 "Documents Approval Setup"
{
    Caption = 'Documents Approval Setup';
    DelayedInsert = true;
    PageType = List;
    SourceTable = "Documents Approval Setup";
    UsageCategory = Administration;
    ApplicationArea = all;

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
                field("Source Code"; Rec."Source Code")
                {
                }
                field("Section Code"; Rec."Section Code")
                {
                }
                field("Start Date"; Rec."Start Date")
                {
                }
                field("End Date"; Rec."End Date")
                {
                }
                field(Sequency; Rec."Approval Level")
                {
                }
                field("Sequency Description"; Rec."Approval Level Description")
                {
                }
                field("Approval Type"; Rec."Approver Type")
                {
                }
                field("Approver ID"; Rec."Approver ID")
                {
                }
                field("Inital Amount"; Rec."Inital Amount")
                {
                }
                field("End Amount"; Rec."End Amount")
                {
                }
                field("Amount without VAT"; Rec."Amount without VAT")
                {
                }
                field("Amount with VAT"; Rec."Amount with VAT")
                {
                }
                field("Cost Amount"; Rec."Cost Amount")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group(Functions)
            {
                Caption = 'Functions';
                action(UserConfig)
                {
                    PromotedCategory = Process;
                    Promoted = true;
                    PromotedOnly = true;
                    PromotedIsBig = true;
                    Image = UserSetup;
                    Caption = 'User Configuration';

                    trigger OnAction()
                    var
                        ApprovalSetup: Record "Approval Setup";
                        ApprovalSetupPage: Page "Approval Setup";
                    begin
                        ApprovalSetup.Reset();
                        ApprovalSetup.SetRange("Approver Type", Rec."Approver Type");
                        ApprovalSetup.SetRange("Approver ID", Rec."Approver ID");
                        ApprovalSetup.SetRange("Start Date", Rec."Start Date");
                        ApprovalSetup.SetRange("End Date", Rec."End Date");
                        Clear(ApprovalSetupPage);
                        ApprovalSetupPage.SetTableView(ApprovalSetup);
                        ApprovalSetupPage.RunModal();
                    end;
                }
            }
        }
    }
}

