page 57081 "Dashboard - Consultations"
{
    Caption = 'Dashboard Consultations Detailed';
    PageType = Worksheet;
    SourceTable = Consultation;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(group)
            {
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
                field("PAQ Amount"; Rec.GetPAQAmount())
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
            part(Requisitions; "Contract Consultation Subform")
            {
                Caption = 'Requisitions';
                Editable = false;
                SubPageLink = "Consultation Code" = FIELD("Consultation code");
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Consultation)
            {
                Caption = 'Consultation';
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    ShortCutKey = 'Shift+F7';

                    trigger OnAction()
                    var
                        Consultation: Record Consultation;
                    begin
                        Consultation.Get(Rec."Consultation Code");
                        If Consultation.IsContract then begin
                            case Consultation."Consultation Status" of
                                "Consultation Status"::Open, "Consultation Status"::"Pending Approval", "Consultation Status"::Released:
                                    Page.Run(Page::"Contract Consultation", Consultation);
                                "Consultation Status"::Canceled, "Consultation Status"::Closed:
                                    Page.Run(Page::"Posted Consultation Header", Consultation);
                            end;

                        end else
                            case Consultation."Consultation Status" of
                                "Consultation Status"::Open, "Consultation Status"::"Pending Approval", "Consultation Status"::Released:
                                    Page.Run(Page::"Consultation Header", Consultation);
                                "Consultation Status"::Canceled, "Consultation Status"::Closed:
                                    Page.Run(Page::"Posted Consultation Header", Consultation);
                            end;
                    end;
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        CduConsultation: Codeunit Consultation;
    begin
        CduConsultation.ValidatePermissions("Consultation Permissions"::View);
    end;
}