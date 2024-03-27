page 57040 "PAQ List"
{

    Caption = 'Adjudication List';
    CardPageID = "PAQ Card";
    PageType = List;
    SourceTable = PAQ;
    ApplicationArea = all;
    UsageCategory = Lists;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("PAQ Code"; Rec."PAQ Code")
                {
                }
                field("PAQ Description"; Rec."PAQ Description")
                {
                }
                field("PAQ Date"; Rec."PAQ Date")
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

}

