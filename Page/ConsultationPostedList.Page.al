page 57067 "Posted Consultation List"
{

    Caption = 'Posted Consultation List';
    CardPageID = "Posted Consultation Header";
    Editable = false;
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Consultation;
    SourceTableView = SORTING("Consultation Status", "Consultation Code")
                      ORDER(Ascending)
                      WHERE("Consultation Status" = FILTER(Canceled | Closed));
    ApplicationArea = All;
    UsageCategory = History;

    layout
    {
        area(content)
        {
            repeater(group)
            {
                field(IsContract; Rec.IsContract)
                {
                    Caption = 'Contract';
                }
                field("Consultation code"; Rec."Consultation code")
                {
                    Caption = 'Consultation Code';
                }
                field("Consultation Status"; Rec."Consultation Status")
                {
                    Caption = 'Consultation Status';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field("Creation Date"; Rec."Creation Date")
                {
                    Caption = 'Creation Date';
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                    Caption = 'Amount Including VAT';
                }
                field("Avaylable Amount"; Rec.GetPostedAvaylableAmount)
                {
                    Caption = 'Avaylable Amount';
                }
                field("PAQ Amount"; Rec.GetPostedPAQAmount())
                {
                    Caption = 'Adjudicated Amount';
                }
                field("Order Amount"; Rec.GetOrderedAmount())
                {
                    Caption = 'Ordered Amount';
                }
                field("Invoiced Amount"; Rec.GetInvoicedAmount())
                {
                    Caption = 'Invoiced Amount';
                }
                field("Credited Amount"; Rec.GetCreditedAmount())
                {
                    Caption = 'Credited Amount';
                }
                field("Created By"; Rec."Created by")
                {
                    Caption = 'Created by';
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
        CduConsultation: Codeunit Consultation;
    begin
        CduConsultation.ValidatePermissions("Consultation Permissions"::View);
        Rec.FILTERGROUP(2);
        IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN BEGIN
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            IF BudgetPermissions."Filter Consultation By User" THEN
                Rec.SETRANGE("Created by", UPPERCASE(USERID))
            ELSE
                Rec.SETRANGE("Created by");
            IF BudgetPermissions."Filter Consultation By Section" THEN BEGIN
                IF BudgetPermissions."Employee Section" <> '' THEN
                    Rec.SETRANGE("Section Code", BudgetPermissions."Employee Section")
            END ELSE
                Rec.SETRANGE("Section Code");
            IF BudgetPermissions."Filter Consultation By Dep." THEN BEGIN
                IF BudgetPermissions."Employee Department" <> '' THEN
                    Rec.SETRANGE("Department Code", BudgetPermissions."Employee Department")
            END ELSE
                Rec.SETRANGE("Department Code");
        END;
    end;
}