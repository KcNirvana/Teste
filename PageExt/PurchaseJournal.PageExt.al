pageextension 57016 PurchaseJournalPageExt extends "Purchase Journal"
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
        modify("Document Date")
        {
            Visible = true;
        }
        modify("External Document No.")
        {
            Visible = true;
        }
        modify("Gen. Posting Type")
        {
            Visible = true;
        }
        modify("Gen. Bus. Posting Group")
        {
            Visible = true;
        }
        modify("Gen. Prod. Posting Group")
        {
            Visible = true;
        }
        modify("VAT Bus. Posting Group")
        {
            Visible = true;
        }
        modify("VAT Prod. Posting Group")
        {
            Visible = true;
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
                PromotedOnly = true;
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
