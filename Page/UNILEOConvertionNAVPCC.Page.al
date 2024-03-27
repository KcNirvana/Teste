page 57227 "UNILEO Convertion NAV PCC"
{
    Caption = 'NAV Account - PCC';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    SourceTable = "G/L Account";
    UsageCategory = Lists;
    ApplicationArea = all;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    Editable = false;
                }
                field(Name; Rec.Name)
                {
                    Editable = false;
                    TableRelation = "UNILEO G/L Account UNILEO-PCC"."No." WHERE("G/L Account Type" = const(PCC));
                }
                field("Account Type"; Rec."Account Type")
                {
                    Editable = false;
                }
                field(CodeDot_PCC; Rec.CodeDot_PCC)
                {
                    Caption = 'PCC No.';
                }
                field("PCC Description"; Rec."PCC Description")
                {
                    Caption = 'PCC Description';
                    Editable = false;
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
                action("Update PCC No.")
                {
                    Caption = 'Update PCC No.';
                    Image = UpdateDescription;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        UpdateGLAccount();
                    end;
                }
                action("Validity Consistency Nav-PCC")
                {
                    Caption = 'Validity Consistency Nav-PCC';
                    Image = CheckDuplicates;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    RunObject = Report "UNILEO Validate Nav - PCC";
                }
            }
        }
    }

    local procedure UpdateGLAccount()
    var
        UNILEOMgt: Codeunit "UNILEO Management";
    begin
        UNILEOMgt.UpdateGLAccount();
    end;

}

