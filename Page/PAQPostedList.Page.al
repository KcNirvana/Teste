page 57048 "Posted PAQ List"
{

    Caption = 'Posted Adjudications';
    CardPageID = "Posted PAQ Card";
    Editable = false;
    PageType = List;
    SourceTable = "Posted PAQ";
    UsageCategory = History;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(group)
            {
                field("PAQ Code"; Rec."PAQ Code")
                {
                }
                field("PAQ Description"; Rec."PAQ Description")
                {
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                }
                field("Consultation Code"; Rec."Consultation Code")
                {
                }
                field("Created By"; Rec."Created By")
                {
                }
                field("Creation Date"; Rec."Creation Date")
                {
                }
                field(Type; Rec.Type)
                {
                }
                field("Budget Appropriation Method"; Rec."Budget Appropriation Method")
                {
                }
                field(Status; Rec.Status)
                {
                }
                field(Reversed; Rec.Reversed)
                {
                }
                field(Amount; Rec.Amount)
                {
                }
                field("Amount Including VAT"; rec."Amount Including VAT")
                {
                }
                field("Cost Amount"; rec."Cost Amount")
                {
                }
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
                        Rec.ShowNavigate();
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
    var
        CduPAQ: Codeunit PAQ;

    trigger OnOpenPage()
    begin
        ApplyFilters();
    end;

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
        Rec.FILTERGROUP(0);
    end;

}

