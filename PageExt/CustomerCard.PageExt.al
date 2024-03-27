pageextension 57021 CustomerCardPageExt extends "Customer Card"
{
    layout
    {
        addafter(Shipping)
        {
            group(UNILEO)
            {
                Caption = 'UNILEO';

                field("Partner Identity"; Rec."Partner Identity")
                {
                    ApplicationArea = All;
                }
            }
            group(Credits)
            {
                Caption = 'Credits';
                Visible = IsCreditVisible;
                field("Loan No."; Rec."Loan No.")
                {
                    ApplicationArea = All;
                }
                field("Contract No."; Rec."Contract No.")
                {
                    ApplicationArea = All;
                }
                field("Finance Classification"; Rec."Finance Classification")
                {
                    ApplicationArea = All;
                }
                field("Balance Sheet Recognition"; Rec."Balance Sheet Recognition")
                {
                    ApplicationArea = All;
                }
                field("Forms of Constituition"; Rec."Forms of Constituition")
                {
                    ApplicationArea = All;
                }
                field("Accumulated Impairment"; Rec."Accumulated Impairment")
                {
                    ApplicationArea = All;
                }
                field("Impairment Type"; Rec."Impairment Type")
                {
                    ApplicationArea = All;
                }
                field("Impairment Method"; Rec."Impairment Method")
                {
                    ApplicationArea = All;
                }
                field("Performing status"; Rec."Performing status")
                {
                    ApplicationArea = All;
                }
                field("Performing status date"; Rec."Performing status date")
                {
                    ApplicationArea = All;
                }
                field("Sit. deferral negotiation"; Rec."Sit. deferral negotiation")
                {
                    ApplicationArea = All;
                }
                field("Accumulated Recovery"; Rec."Accumulated Recovery")
                {
                    ApplicationArea = All;
                }
                field("Date deferral negotiation"; Rec."Date deferral negotiation")
                {
                    ApplicationArea = All;
                }
                field("Written Amount"; Rec."Written Amount")
                {
                    ApplicationArea = All;
                }
            }
        }
        addlast(General)
        {
            field("Credit Customer"; Rec."Credit Customer")
            {
                Visible = IsCreditCompany;
                ApplicationArea = All;
                trigger OnValidate()
                begin
                    IsCreditVisible := Rec."Credit Customer";
                    CurrPage.UPDATE;
                end;
            }
        }
    }
    var
        IsCreditCompany: Boolean;
        IsCreditVisible: Boolean;

    trigger OnOpenPage()
    var
        CompanyInfo: Record "Company Information";
    begin
        CompanyInfo.GET;
        IsCreditCompany := CompanyInfo."Credits Company";
        IsCreditVisible := Rec."Credit Customer";
    end;
}
