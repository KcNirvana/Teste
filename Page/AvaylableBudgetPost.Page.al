page 57045 "Posted Avaylable Budget"
{

    Caption = 'Posted Avaylable Budget';
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = Document;
    Editable = false;
    SourceTable = "Posted Avaylable Budget";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Avay Code"; Rec."Avay Code")
                {
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                }
                field("Avay Date"; Rec."Avay Date")
                {
                }
                field("Consultation Code"; Rec."Consultation Code")
                {

                    trigger OnDrillDown()
                    var
                        Consultation: record Consultation;
                        ConsultationPage: Page "Consultation List";
                    begin
                        CLEAR(ConsultationPage);
                        Consultation.RESET();
                        Consultation.SETRANGE("Consultation code", Rec."Consultation Code");
                        ConsultationPage.SETTABLEVIEW(Consultation);
                        ConsultationPage.RUNMODAL();
                    end;
                }
                field(Status; Rec.Status)
                {
                }
                field(Type; Rec.Type)
                {
                }
                field("Budget Appropriation Method"; Rec."Budget Appropriation Method")
                {
                }
                field("Creation Date"; Rec."Creation Date")
                {
                    Visible = false;
                }
                field("Created By"; Rec."Created By")
                {
                }
                field(Reversed; Rec.Reversed)
                {
                }
            }
            part(Lines; "Posted Avaylable Budget Lines")
            {
                Editable = False;
                SubPageLink = "Avay Code" = FIELD("Avay Code");
                UpdatePropagation = Both;
            }
        }
        area(factboxes)
        {
            part(ApprovalEntryFactbox; "Approval Entry Fact Box")
            {
                SubPageLink = "Table ID" = CONST(Database::"Posted Avaylable Budget"),
                              "Document No." = FIELD("Avay Code");
                Editable = false;
            }
            systempart(Control1000000004; Notes)
            {
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Posted Avaylable Budget")
            {
                Caption = 'Posted Avaylable Budget';
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin
                        Rec.ShowDimensions();
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
                    begin
                        Rec.PrintAvaylableBudget();
                    end;

                }
                action("&Navigate")
                {
                    Caption = '&Navigate';
                    Image = Navigate;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin
                        rec.ShowNavigate();
                    end;
                }
            }
            action(Reverse)
            {
                Caption = 'Reverse';
                Image = ReverseRegister;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    CduAvay.ReverseAvaylableBudget(Rec);
                end;
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
}

