page 57044 "Posted Avaylable Budget List"
{

    Caption = 'Posted Avaylable Budget List';
    CardPageID = "Posted Avaylable Budget";
    Editable = false;
    PageType = List;
    SourceTable = "Posted Avaylable Budget";
    UsageCategory = History;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(group)
            {
                field("Avay Code"; Rec."Avay Code")
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

    var
        CduAvay: Codeunit AvaylableBudget;

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

}

