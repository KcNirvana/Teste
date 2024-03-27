pageextension 57014 PostedPurchaseCrMemoPageExt extends "Posted Purchase Credit Memo"
{
    layout
    {
        addlast(General)
        {
            field("EasyDoc No."; Rec."EasyDoc No.")
            {
                ApplicationArea = All;
            }
            field("Entity Type"; Rec."Entity Type")
            {
                ApplicationArea = All;
            }
            group("Budget Management")
            {
                Caption = 'Budget Management';
                field(ConfClass0; Rec.ConfClass0)
                {
                    ApplicationArea = All;
                }
                field("No Budget"; Rec."No Budget")
                {
                    ApplicationArea = All;
                }
                field("Not Budget Document"; Rec."Not Budget Document")
                {
                    ApplicationArea = All;
                }
                field("Consultation Code"; Rec."Consultation Code")
                {
                    ApplicationArea = All;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        DrillDownConsultation();
                    end;
                }
            }
        }
    }

    local procedure DrillDownConsultation()
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
