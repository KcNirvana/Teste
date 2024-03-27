pageextension 57051 CustomerListPageExt extends "Customer List"
{
    layout
    {
        addafter(Name)
        {
            field(Address; Rec.Address)
            {
                ApplicationArea = all;
            }
            field("Address 2"; Rec."Address 2")
            {
                ApplicationArea = all;
            }
            field(City; Rec.City)
            {
                ApplicationArea = all;
            }
            field("VAT Registration No."; Rec."VAT Registration No.")
            {
                ApplicationArea = all;
            }
        }
        modify(Contact)
        {
            Visible = true;
            ApplicationArea = all;
        }
    }
    actions
    {
        addlast(navigation)
        {
            group(Credits)
            {
                Caption = 'Credits';
                Image = "Report";
                Visible = IsCreditCompany;
                action(CustomerCredits)
                {
                    ApplicationArea = All;
                    Caption = 'Customer Credits';
                    Image = "Report";
                    Visible = IsCreditCompany;
                    RunObject = Page "Credits by Customer";
                }
                action("Block Customers")
                {
                    ApplicationArea = All;
                    Caption = 'Block Customers';
                    Image = Reject;
                    Visible = IsCreditCompany;
                    RunObject = Report BlockCustomers;
                }
                action("Copy Customers")
                {
                    ApplicationArea = All;
                    Caption = 'Copy Customers';
                    Image = Copy;
                    Visible = IsCreditCompany;
                    RunObject = Page CopyCustomers;
                }
                action(ExportCRC)
                {
                    ApplicationArea = All;
                    Caption = 'Export CRC File';
                    Image = Export;
                    Visible = IsCreditCompany;
                    RunObject = XMLport ExportToCRC;
                }
                action(ImportCRC)
                {
                    ApplicationArea = All;
                    Caption = 'Import CRC File';
                    Image = Import;
                    Visible = IsCreditCompany;
                    RunObject = XMLport ImportFromCRC;
                }
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
