page 57018 "Requisitions Open List"
{
    Caption = 'Open Requisition List';
    CardPageID = "Requisition Open Card";
    Editable = false;
    PageType = List;
    SourceTable = Requisition;
    SourceTableView = SORTING("Requisition Code")
                      WHERE(Status = FILTER(Open | Reopened),
                            IsContract = CONST(false));
    ApplicationArea = all;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("Requisition Code"; Rec."Requisition Code")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Requisition Date"; Rec."Requisition Date")
                {
                }
                field(User; Rec."Created By")
                {
                }
                field("Creation Date"; Rec."Creation Date")
                {
                }
                field(Observations; Rec.Observations)
                {
                }
                field(Status; Rec.Status)
                {
                }
                field("Section Description"; Rec."Section Description")
                {
                }
                field("Employee Name"; rec."Employee Name")
                {
                }
                field("Cost Amount"; Rec."Cost Amount")
                {
                }
                field("Requisition Amount"; Rec.Amount)
                {
                }
            }
        }
        area(factboxes)
        {
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
        CduReq: Codeunit Requisition;
    begin
        CduReq.ValidatePermissions("Requisition Permissions"::View);
        Rec.FILTERGROUP(2);
        IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN BEGIN
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            IF BudgetPermissions."Filter Requisition By User" THEN
                Rec.SETRANGE("Created by", UPPERCASE(USERID))
            ELSE
                Rec.SETRANGE("Created by");
            IF BudgetPermissions."Filter Requisition By Section" THEN BEGIN
                IF BudgetPermissions."Employee Section" <> '' THEN
                    Rec.SETRANGE("Section Code", BudgetPermissions."Employee Section")
            END ELSE
                Rec.SETRANGE("Section Code");
            IF BudgetPermissions."Filter Requisition By Dep." THEN BEGIN
                IF BudgetPermissions."Employee Department" <> '' THEN
                    Rec.SETRANGE("Department Code", BudgetPermissions."Employee Department")
            END ELSE
                Rec.SETRANGE("Department Code");
        END;
    end;
}

