page 57085 "Posted Contract List"
{

    Caption = 'Posted Contract List';
    CardPageID = "Posted Contract";
    Editable = false;
    PageType = List;
    SourceTable = Contract;
    SourceTableView = SORTING("No.")
                      WHERE(Status = filter(Blocked | Canceled));
    UsageCategory = Lists;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                }
                field("Start Date"; Rec."Start Date")
                {
                }
                field("End Date"; Rec."End Date")
                {
                }
                field(Amount; Rec.Amount)
                {
                }
                field("Created by"; Rec."Created by")
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
        ApplyFilters;
    end;

    local procedure ApplyFilters()
    var
        BudgetPermissions: Record "Budget Permissions";
    begin
        Rec.FILTERGROUP(2);
        IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN BEGIN
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            IF BudgetPermissions."Filter Contract By User" THEN
                Rec.SETRANGE("Created by", UPPERCASE(USERID))
            ELSE
                Rec.SETRANGE("Created by");
            IF BudgetPermissions."Filter Contract By Section" THEN BEGIN
                IF BudgetPermissions."Employee Section" <> '' THEN
                    Rec.SETRANGE("Section Code", BudgetPermissions."Employee Section")
            END ELSE
                Rec.SETRANGE("Section Code");
            IF BudgetPermissions."Filter Contract By Dep." THEN BEGIN
                IF BudgetPermissions."Employee Department" <> '' THEN
                    Rec.SETRANGE("Department Code", BudgetPermissions."Employee Department")
            END ELSE
                Rec.SETRANGE("Department Code");
        END;
    end;
}

