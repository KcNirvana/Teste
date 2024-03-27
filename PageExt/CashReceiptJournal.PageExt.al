pageextension 57012 CashReceiptJournalPageExt extends "Cash Receipt Journal"
{
    layout
    {
        addbefore("Posting Date")
        {
            field("Line No."; Rec."Line No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field(ConfOpt00V; Rec.ConfOpt00v)
            {
                ApplicationArea = All;
            }
            field(ConfClass0; Rec.ConfClass0)
            {
                ApplicationArea = All;
            }
            field("No Budget"; Rec."No Budget")
            {
                ApplicationArea = All;
            }
        }
        addlast(Control1)
        {
            field("EasyDoc No."; Rec."EasyDoc No.")
            {
                ApplicationArea = All;
            }
            field("Cust. Type Entry"; Rec."Cust. Type Entry")
            {
                Visible = IsCreditCompany;
                ApplicationArea = All;
            }
        }
        modify("PTSS Posting Group")
        {
            Editable = false;
        }
        modify("PTSS Acc: cash-flow code")
        {
            Editable = false;
        }
    }

    actions
    {
        addfirst(processing)
        {
            action("Import Journal Lines")
            {
                Caption = 'Import Journal Lines';
                Image = Import;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    Rec.ImportJournalLines();
                end;
            }
        }
    }
    var
        IsCreditCompany: Boolean;

    trigger OnOpenPage()
    var
        CompanyInfo: Record "Company Information";
    begin
        CompanyInfo.GET;
        IsCreditCompany := CompanyInfo."Credits Company";
    end;
}
