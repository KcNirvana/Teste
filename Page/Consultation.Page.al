page 57053 "Consultation Header"
{
    Caption = 'Consultation Header';
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = Consultation;
    SourceTableView = SORTING("Consultation Status", "Consultation code")
                      WHERE(IsContract = CONST(false));
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Consultation code"; Rec."Consultation code")
                {

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update;
                    end;
                }
                field(Description; Rec.Description)
                {
                }
                field("Creation Date"; Rec."Creation Date")
                {
                    Editable = false;
                }
                field("Pending Avaylable Budgets"; Rec."Pending Avaylable Budgets")
                {
                }
                field("Pending Avaylable Amount"; Rec.GetPendingAvaylableAmount())
                {
                    Caption = 'Pending Avaylable Amount';
                    Editable = false;
                    trigger OnDrillDown()
                    begin
                        CduConsultation.DrillDownAvaylableBudget(Rec);
                    end;
                }
                field("Posted Avaylable Budgets"; Rec."Posted Avaylable Budgets")
                {
                }
                field("Posted Avaylable Budget Amount"; Rec.GetPostedAvaylableAmount())
                {
                    Caption = 'Posted Avaylable Budget Amount';
                    Editable = false;
                    trigger OnDrillDown()
                    begin
                        CduConsultation.DrillDownPostedAvaylableBudget(Rec);
                    end;
                }
                field("Pending PAQs"; Rec."Pending PAQs")
                {
                    Caption = 'Pending Adjudications';
                }
                field("Pending PAQ Amount"; Rec.GetPAQAmount())
                {
                    Caption = 'Pending Adjudications Amount';
                    Editable = false;
                    trigger OnDrillDown()
                    begin
                        CduConsultation.DrillDownPAQ(Rec);
                    end;
                }
                field("PAQ Rejected"; Rec."PAQ Rejected")
                {
                    Caption = 'Adjudications Rejected';
                }

                field("PAQ Approved not Posted"; Rec."PAQ Approved not Posted")
                {
                    Caption = 'Adjudications Approved Not Posted';
                }
                field("Posted PAQs"; Rec."Posted PAQs")
                {
                    Caption = 'Posted Adjudications';
                }
                field("Posted PAQ Amount"; Rec.GetPostedPAQAmount())
                {
                    Caption = 'Posted Adjudications Amount';
                    Editable = false;
                    trigger OnDrillDown()
                    begin
                        CduConsultation.DrillDownPostedPAQ(Rec);
                    end;
                }
                field("Number of Orders"; Rec."Associated Orders")
                {
                    Caption = 'Orders';
                    DrillDown = true;
                    DrillDownPageId = "Purchase Order List";
                }
                field("Order Amount"; Rec.GetOrderedAmount())
                {
                    Caption = 'Ordered Amount';
                    Editable = false;
                    trigger OnDrillDown()
                    begin
                        CduConsultation.DrillDownOrders(Rec);
                    end;
                }
                field("Invoices Associated"; Rec."Associated Invoices")
                {
                    Caption = 'Invoices Associated';

                }
                field("Invoiced Amount"; Rec.GetInvoicedAmount())
                {
                    Caption = 'Invoiced Amount';
                    Editable = false;

                    trigger OnDrillDown()
                    begin
                        CduConsultation.DrillDownInvoices(Rec);
                    end;
                }
                field("Cr. Memo Associated"; Rec."Associated Cr. Memos")
                {
                    Caption = 'Cr. Memo Associated';

                }
                field("Credit Memo Amount"; Rec.GetCreditedAmount())
                {
                    Caption = 'Credit Memo Amount';
                    Editable = false;

                    trigger OnDrillDown()
                    begin
                        CduConsultation.DrillDownCrMemos(Rec);
                    end;
                }
            }
            part(Lines; "Consultation Subform")
            {
                Caption = 'Associated Requisitions';
                Editable = true;
                SubPageLink = "Consultation Code" = FIELD("Consultation code");
            }
            part(QuoteForm; "Consultation Quote")
            {
                Caption = 'Associated Quotes';
                Editable = true;
                SubPageLink = "Consultation Code" = FIELD("Consultation code"),
                              "Document Type" = CONST(Quote);
            }
            group(Employee)
            {
                Caption = 'Employee';
                field("Created By"; Rec."Created by")
                {
                    Caption = 'Created by';
                }
                field("Req Employee"; Rec."Req Employee")
                {
                    Caption = 'Req. Employee';
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    Caption = 'Employee Name';
                }
                field("Section Code"; Rec."Section Code")
                {
                    Caption = 'Section Code';
                }
                field("Section Description"; Rec."Section Description")
                {
                    Caption = 'Section Description';
                }
            }
            group(Statistics)
            {
                Caption = 'Statistics';
                field("Selected Quote Amount"; Rec.GetSelectedQuotesAmount())
                {
                    Caption = 'Selected Quote Amount';
                }
                field("Posted Avaylable Budget Amount2"; Rec.GetPostedAvaylableAmount())
                {
                    Caption = 'Posted Avaylable Budget Amount';
                }
                field("Posted PAQ Amount2"; Rec.GetPostedPAQAmount())
                {
                    Caption = 'Posted Adjudication Amount';
                }
                field("Order Amount2"; Rec.GetOrderedAmount())
                {
                    Caption = 'Order Amount';
                    Editable = false;
                }
                field("Invoiced Amount2"; Rec.GetInvoicedAmount)
                {
                    Caption = 'Invoiced Amount';
                    Editable = false;
                }
                field("Credit Memo Amount2"; Rec.GetCreditedAmount)
                {
                    Caption = 'Credit Memo Amount';
                    Editable = false;
                }
            }
            part(Comments; "Requisition Comments")
            {
                Caption = 'Requisition Comments';
                SubPageLink = Code = FIELD("Consultation code"),
                              "Table ID" = CONST(Database::Consultation);
            }
        }
    }

    actions
    {
        area(processing)
        {
            group(Functions)
            {
                Caption = 'Functions';
                action("Associate Requisitions")
                {
                    Caption = 'Associate Requisitions';
                    Image = CopyDocument;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    Enabled = Rec."Consultation Code" <> '';
                    RunPageMode = View;
                    ShortCutKey = 'Shift+F7';

                    trigger OnAction()
                    begin
                        CduConsultation.GetRequisitionLines(Rec);
                        CurrPage.Update();
                    end;
                }
                action("Create Quote")
                {
                    Caption = 'Create Quote';
                    Image = Quote;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    Enabled = Rec."Consultation Code" <> '';
                    trigger OnAction()
                    begin
                        CduConsultation.PreferredVendor(Rec);
                    end;
                }
                action("Create Avaylable Budget")
                {
                    Caption = 'Create Avaylable Budget';
                    Image = CreateDocument;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    Enabled = Rec."Consultation Code" <> '';
                    trigger OnAction()
                    begin
                        CduConsultation.CreateAvaylableBudget(Rec);
                    end;
                }
                action("Create PAQ")
                {
                    Caption = 'Create Adjudication';
                    Image = CreateCreditMemo;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    Enabled = Rec."Consultation Code" <> '';
                    trigger OnAction()
                    begin
                        CduConsultation.CreatePAQ(Rec);
                    end;
                }
            }
        }
        area(Reporting)
        {
            group(Print)
            {
                Caption = 'Pr&int';
                action(Consultation)
                {
                    Caption = 'Consultation';
                    Image = Print;

                    trigger OnAction()
                    var
                        Consultation: Record Consultation;
                    begin
                        Clear(Consultation);
                        Consultation.SetRange("Consultation code", Rec."Consultation code");
                        REPORT.RunModal(Report::Consultation, true, true, Consultation);
                    end;
                }
                action("Quote Comparison")
                {
                    Caption = 'Quote Comparison';
                    Image = Print;

                    trigger OnAction()
                    var
                        Consultation: Record Consultation;
                    begin
                        Clear(Consultation);
                        Consultation.SetRange("Consultation Code", Rec."Consultation Code");
                        Report.RunModal(Report::"Purchase Quotes Comparison", true, false, Consultation);
                    end;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        ApplyFilters();
    end;

    var
        CduConsultation: Codeunit Consultation;

    local procedure ApplyFilters()
    var
        BudgetPermissions: Record "Budget Permissions";
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

