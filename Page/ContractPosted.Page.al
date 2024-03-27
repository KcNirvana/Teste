page 57086 "Posted Contract"
{

    Caption = 'Posted Contract';
    PageType = Card;
    SourceTable = Contract;
    SourceTableView = SORTING("No.")
                      WHERE(status = FILTER(Canceled | Blocked));
    ApplicationArea = All;
    Editable = false;
    layout
    {
        area(content)
        {
            group(Geral)
            {
                field("No."; Rec."No.")
                {
                    AssistEdit = true;

                    trigger OnAssistEdit()
                    begin
                        IF Rec.AssistEdit(xRec) THEN
                            CurrPage.UPDATE;
                    end;
                }
                field(Description; Rec.Description)
                {
                    ShowMandatory = true;
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    NotBlank = true;
                    ShowMandatory = true;
                }
                field(Status; Rec.Status)
                {
                }
                field("Start Date"; Rec."Start Date")
                {
                    NotBlank = true;
                    ShowMandatory = true;
                }
                field("End Date"; Rec."End Date")
                {
                    ShowMandatory = true;
                }
                field(Amount; Rec.Amount)
                {
                    ShowMandatory = true;
                }
            }
            group(Utilizador)
            {
                field("Created by"; Rec."Created by")
                {
                }
                field("Section Code"; Rec."Section Code")
                {
                }
                field("Department Code"; Rec."Department Code")
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

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        Rec.TESTFIELD("Start Date");
        Rec.TESTFIELD("End Date");
        Rec.TESTFIELD("Vendor No.");
        Rec.TESTFIELD(Amount);
        Rec.TESTFIELD(Description);
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

