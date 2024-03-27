page 57062 "Consultation Without Avay"
{

    Caption = 'Consultation Without Avaylables';
    CardPageID = "Consultation Header";
    Editable = false;
    PageType = List;
    SourceTableTemporary = true;
    SourceTable = Consultation;
    SourceTableView = WHERE(IsContract = CONST(false),
                            "Consultation Status" = FILTER(<> Canceled & <> Closed));
    ApplicationArea = All;
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("Consultation code"; Rec."Consultation code")
                {
                    Caption = 'Consultation Code';
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
    var
        CduConsultation: Codeunit Consultation;
    begin
        ApplyFilters;
        CduConsultation.GetConsultationWithoutAvaylables(Rec.GetFilter("Created by"), Rec.GetFilter("Section Code"),
                                                    Rec.GetFilter("Department Code"), Rec);
    end;

    local procedure ApplyFilters()
    var
        BudgetPermissions: Record "Budget Permissions";
        CduConsultation: Codeunit Consultation;
    begin
        CduConsultation.ValidatePermissions("Consultation Permissions"::View);
        Rec.FilterGroup(2);
        if BudgetPermissions.GET(UserId, BudgetPermissions.Type::User) then begin
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            if BudgetPermissions."Filter Consultation By User" then
                Rec.SetRange("Created by", UpperCase(UserId))
            else
                Rec.SetRange("Created by");
            IF BudgetPermissions."Filter Consultation By Section" then begin
                IF BudgetPermissions."Employee Section" <> '' then
                    Rec.SetRange("Section Code", BudgetPermissions."Employee Section")
            END else
                Rec.SetRange("Section Code");
            IF BudgetPermissions."Filter Consultation By Dep." then begin
                IF BudgetPermissions."Employee Department" <> '' then
                    Rec.SetRange("Department Code", BudgetPermissions."Employee Department")
            end else
                Rec.SetRange("Department Code");
        end;
    end;
}