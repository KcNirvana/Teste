page 57049 "Posted PAQ Card"
{

    Caption = 'Posted Adjudication Card';
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = Document;
    Editable = false;
    SourceTable = "Posted PAQ";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("PAQ Code"; Rec."PAQ Code")
                {
                }
                field("PAQ Description"; Rec."PAQ Description")
                {
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                }
                field("PAQ Date"; Rec."PAQ Date")
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
                field("Order Status"; OrderStatus)
                {
                    Caption = 'Order Status';
                    Editable = false;
                }
                field(Reversed; Rec.Reversed)
                {
                }
            }
            part(Lines; "PAQ Posted Subform")
            {
                Editable = False;
                SubPageLink = "PAQ Code" = FIELD("PAQ Code");
                UpdatePropagation = Both;
            }
        }
        area(factboxes)
        {
            part(ApprovalEntryFactbox; "Approval Entry Fact Box")
            {
                SubPageLink = "Table ID" = CONST(Database::"Posted PAQ"),
                              "Document No." = FIELD("PAQ Code");
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
            group(Adjudication)
            {
                Caption = 'Adjudication';
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
                        Rec.PrintPAQ();
                    end;
                }
                action(Navigate)
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
                action(Reverse)
                {
                    Caption = 'Reverse';
                    Image = ReverseRegister;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;

                    trigger OnAction()
                    var
                    begin
                        CduPAQ.ReversePAQ(Rec);
                    end;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        GetOrderStatus;
    end;

    trigger OnOpenPage()
    begin
        ApplyFilters();
    end;

    var
        OrderStatus: Enum "PAQ Order Type";
        CduPAQ: Codeunit PAQ;

    local procedure ApplyFilters()
    var
        BudgetPermissions: Record "Budget Permissions";
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

    local procedure GetOrderStatus()
    var
        PostedPAQLines: Record "Posted PAQ Lines";
        TotalLines: Integer;
        TotalLinesOrdered: Integer;
    begin
        CLEAR(TotalLines);
        CLEAR(TotalLinesOrdered);

        PostedPAQLines.RESET();
        PostedPAQLines.SETRANGE("PAQ Code", Rec."PAQ Code");
        TotalLines := PostedPAQLines.Count;

        PostedPAQLines.RESET();
        PostedPAQLines.SETRANGE("PAQ Code", Rec."PAQ Code");
        PostedPAQLines.SETFILTER("Purchase Quotes", '<>%1', 0);
        TotalLinesOrdered := PostedPAQLines.Count;

        IF TotalLines <> TotalLinesOrdered then begin
            IF TotalLinesOrdered <> 0 THEN
                OrderStatus := OrderStatus::"Partial Ordered"
            ELSE
                OrderStatus := OrderStatus::"No Orders";
        end else
            OrderStatus := OrderStatus::Ordered;
    end;
}

