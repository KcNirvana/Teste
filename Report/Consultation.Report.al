report 57005 Consultation
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/Consultation.rdl';
    Caption = 'Consultation';
    PreviewMode = PrintLayout;
    ApplicationArea = All;

    dataset
    {
        dataitem(Consultation; Consultation)
        {
            RequestFilterFields = "Consultation code";
            column(Consultationcode_Consultation; "Consultation code")
            {
                IncludeCaption = true;
            }
            column(Description_Consultation; Description)
            {
                IncludeCaption = true;
            }
            column(InitialDate_Consultation; "Start Date")
            {
                IncludeCaption = true;
            }
            column(FinalDate_Consultation; "End Date")
            {
                IncludeCaption = true;
            }
            dataitem(Copyloop; Integer)
            {
                DataItemTableView = SORTING(Number);
                column(Copytext; Copytext)
                {
                }
                column(Number; Number)
                {
                }
                dataitem(Pageloop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    dataitem("Consultation Lines"; "Consultation Lines")
                    {
                        DataItemLink = "Consultation Code" = FIELD("Consultation code");
                        DataItemLinkReference = Consultation;
                        DataItemTableView = SORTING("Consultation Code", "Line No.");
                        column(Line_ConsultationLines; "Line No.")
                        {
                        }
                        column(LocationCode_ConsultationLines; "Location Code")
                        {
                            IncludeCaption = true;
                        }
                        column(RequisitionQuantity_ConsultationLines; "Requisition Quantity")
                        {
                            IncludeCaption = true;
                        }
                        column(No_ConsultationLines; "No.")
                        {
                            IncludeCaption = true;
                        }
                        column(Description_ConsultationLines; Description)
                        {
                            IncludeCaption = true;
                        }
                    }
                }

                trigger OnAfterGetRecord()
                begin

                    CASE Number OF
                        1:
                            Copytext := text02;
                        2:
                            Copytext := text03;
                        ELSE
                            Copytext := text04
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := ABS(NoOfCopies) + 2;
                    IF NoOfLoops <= 0 THEN
                        NoOfLoops := 1;
                    Copytext := '';
                    SETRANGE(Number, 1, NoOfLoops);
                end;
            }
        }
        dataitem(DataItem5; "Company Information")
        {
            DataItemTableView = sorting("Primary Key");
            column(Picture_CompanyInformation; Picture)
            {
            }
            column(EMail_CompanyInformation; "E-Mail")
            {
            }
            column(HomePage_CompanyInformation; "Home Page")
            {
            }
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Consultation)
                {
                    Caption = 'Consultation';
                    field("No. of Copies"; NoOfCopies)
                    {
                        Caption = 'No. of Copies';
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
        dpc = 'Document Processed by Computer';
    }

    trigger OnPreReport()
    begin
        IF recperm.GET(UPPERCASE(USERID), 0) THEN BEGIN
            IF not recperm."Print Documents" THEN ERROR(text05);
        END;
    end;

    var
        recperm: Record "Budget Permissions";
        text05: Label 'You dont have permission to execute reports';
        NoOfLoops: Integer;
        NoOfCopies: Integer;
        Copytext: Text[30];
        text02: Label 'Original';
        text03: Label 'Duplicate';
        text04: Label 'Copy';
}

