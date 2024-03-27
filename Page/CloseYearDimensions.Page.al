page 57078 CloseYearDimensions
{
    Caption = 'Close Year Dimensions';
    PageType = Card;
    PromotedActionCategories = 'New,Process,Reports,Fase 1,Fase 2,Fase 3';
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            group("Close Year")
            {
                Caption = 'Close Year';
                field(CloseYear; CloseYear)
                {
                    Caption = 'Year To Close';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = Stages;
                action("Close Consultation")
                {
                    Caption = 'Close Consultations';
                    Image = CloseDocument;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        CloseConsultation;
                    end;
                }
                action("Canceled Requisitions")
                {
                    Caption = 'Canceled Requisitions';
                    Image = "Report";
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        CanceledRequistions();
                    end;
                }
            }
            group(Action10)
            {
                Caption = 'F&unctions';
                Image = Stages;
                action("Changing Dimensions")
                {
                    Caption = 'Changing Dimensions';
                    Image = SelectLineToApply;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        ChangeDimensions;
                    end;
                }
            }
            group(Action11)
            {
                Caption = 'F&unctions';
                Image = Stages;
                action("Opening Vendor Balances")
                {
                    Caption = 'Opening Vendor Balances';
                    Image = InsertBalanceAccount;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        OpenVendorBalance;
                    end;
                }
            }
        }
    }

    var
        CloseYear: Integer;
        Text001: Label 'The close year is empty.';
        Text002: Label 'Do you want to close the consultations?';
        Text003: Label 'The consultations were closed with success.';

    local procedure CloseConsultation()
    var
        BudgetCloseYear: Codeunit BudgetCloseYear;
    begin
        Clear(BudgetCloseYear);

        if CloseYear = 0 then
            Error(Text001);
        if not Confirm(Text002, false) then
            exit;

        BudgetCloseYear.CloseConsultations(CloseYear);
        BudgetCloseYear.CloseCtrConsultations(CloseYear);

        Message(Text003);
    end;

    local procedure CanceledRequistions()
    var
        Requisition: Record Requisition;
        CanceledRequisitions: Report "Canceled Requisitions";
    begin
        Clear(CanceledRequisitions);
        Clear(Requisition);

        if CloseYear = 0 then
            Error(Text001);

        Requisition.SetRange(ClosedByYear, CloseYear);
        CanceledRequisitions.SetTableView(Requisition);
        CanceledRequisitions.RunModal;
    end;

    local procedure ChangeDimensions()
    var
        ChangeDimensions: Page ChangeDimensions;
    begin
        Clear(ChangeDimensions);

        if CloseYear = 0 then
            Error(Text001);

        ChangeDimensions.SetCloseYear(CloseYear);
        ChangeDimensions.RunModal;
    end;

    local procedure OpenVendorBalance()
    var
        OpeningBalance: Page OpeningBalance;
    begin
        Clear(OpeningBalance);

        if CloseYear = 0 then
            Error(Text001);

        OpeningBalance.SetCloseYear(CloseYear);
        OpeningBalance.RunModal;
    end;
}

