report 57000 Requisition
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/Requisition.rdl';
    PreviewMode = PrintLayout;
    ApplicationArea = All;

    dataset
    {
        dataitem(Requisition; Requisition)
        {
            DataItemTableView = SORTING("Requisition Code");
            RequestFilterFields = "Requisition Code";
            column(RequisitionCode_Requisition; Requisition."Requisition Code")
            {
                IncludeCaption = true;
            }
            column(Description_Requisition; Requisition.Description)
            {
                IncludeCaption = true;
            }
            column(RequisitionDate_Requisition; Requisition."Requisition Date")
            {
                IncludeCaption = true;
            }
            column(CreationDate_Requisition; Requisition."Creation Date")
            {
                IncludeCaption = true;
            }
            column(DepartmentDescription_Requisition; Requisition."Department Description")
            {
                IncludeCaption = true;
            }
            column(DepartmentCode_Requisition; Requisition."Department Code")
            {
                IncludeCaption = true;
            }
            column(ReqEmployee_Requisition; Requisition."Requisition Employee")
            {
                IncludeCaption = true;
            }
            column(NameEmployee_Requisition; Requisition."Employee Name")
            {
                IncludeCaption = true;
            }
            column(UserNameAprovedRejected_Requisition; Requisition."Approved/Rejected Name")
            {
                IncludeCaption = true;
            }
            column(Observations_Requisition; Requisition.Observations)
            {
                IncludeCaption = true;
            }
            column(BShowInternalInfo; BShowInternalInfo)
            {
            }
            column(StartInterventionDate_RequisitionLines; '')
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                column(Copytext; Copytext)
                {
                }
                column(Number; Number)
                {
                }
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    dataitem(Requisition2; Requisition)
                    {
                        DataItemLink = "Requisition Code" = FIELD("Requisition Code");
                        DataItemLinkReference = Requisition;
                        DataItemTableView = SORTING("Requisition Code");
                        dataitem("Requisition Lines"; "Requisition Lines")
                        {
                            DataItemLink = "Requisition Code" = FIELD("Requisition Code");
                            DataItemLinkReference = Requisition;
                            DataItemTableView = SORTING("Requisition Code", "Line No.");
                            column(Observations_RequisitionLines; "Requisition Lines".Observations)
                            {
                                IncludeCaption = true;
                            }
                            column(No_RequisitionLines; "Requisition Lines"."No.")
                            {
                                IncludeCaption = true;
                            }
                            column(Lines_RequisitionLines; "Requisition Lines"."Line No.")
                            {
                            }
                            column(Description_RequisitionLines; "Requisition Lines".Description)
                            {
                                IncludeCaption = true;
                            }
                            column(Description2_RequisitionLines; "Requisition Lines"."Description 2")
                            {
                            }
                            column(StockQuantity_RequisitionLines; "Requisition Lines"."Stock Quantity")
                            {
                                IncludeCaption = true;
                            }
                            column(RequisitionQuantity_RequisitionLines; "Requisition Lines"."Requisition Quantity")
                            {
                                IncludeCaption = true;
                            }
                            dataitem(DimensionLoop2; Integer)
                            {
                                DataItemTableView = sorting(Number);
                                column(DimensionSetID_DimensionSetEntry; DimSetEntry."Dimension Set ID")
                                {
                                }
                                column(DimensionCode_DimensionSetEntry; DimSetEntry."Dimension Code")
                                {
                                }
                                column(DimensionValueCode_DimensionSetEntry; DimSetEntry."Dimension Value Code")
                                {
                                }
                                column(DimensionValueID_DimensionSetEntry; DimSetEntry."Dimension Value ID")
                                {
                                }
                                column(DimensionName_DimensionSetEntry; DimSetEntry."Dimension Name")
                                {
                                }
                                column(DimensionValueName_DimensionSetEntry; DimSetEntry."Dimension Value Name")
                                {
                                }
                                trigger OnPreDataItem()
                                begin
                                    IF NOT BShowInternalInfo THEN
                                        CurrReport.BREAK;
                                    DimSetEntry.SETRANGE("Dimension Set ID", "Requisition Lines"."Dimension Set ID");
                                    SETRANGE(Number, 1, DimSetEntry.COUNT);
                                end;

                                trigger OnAfterGetRecord()
                                begin
                                    IF Number = 1 THEN
                                        DimSetEntry.FindFirst()
                                    else
                                        DimSetEntry.Next();
                                    DimSetEntry.CalcFields("Dimension Value Name");
                                end;
                            }

                            trigger OnAfterGetRecord()
                            begin
                                Clear(TempObservations1);
                                Clear(TempObservations2);

                                if StrLen("Requisition Lines".Observations) <= 60 then
                                    TempObservations1 := CopyStr("Requisition Lines".Observations, 1, 89);

                                if StrLen("Requisition Lines".Observations) > 60 then begin
                                    TempObservations1 := CopyStr("Requisition Lines".Observations, 1, 139);
                                    TempObservations2 := CopyStr("Requisition Lines".Observations, 140);
                                end;
                            end;
                        }
                        dataitem("Requisition Comments"; "Requisition Comments")
                        {
                            DataItemLink = Code = FIELD("Requisition Code");
                            DataItemTableView = SORTING("Table ID", Code, "Line No.") ORDER(Ascending) WHERE("Table ID" = CONST(Database::Requisition));
                            column(G_Comment; G_Comment)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                Clear(G_Comment);
                                G_RecReqLineCom.Reset;
                                G_RecReqLineCom.SetRange(Code, Requisition2."Requisition Code");
                                if G_RecReqLineCom.FindSet then
                                    repeat
                                        G_Comment += G_RecReqLineCom.Comments + ' ';
                                    until G_RecReqLineCom.Next = 0
                            end;
                        }
                    }
                }

                trigger OnAfterGetRecord()
                begin

                    case Number of
                        1:
                            Copytext := text02;
                        2:
                            Copytext := text03;
                        else
                            Copytext := text04
                    end;
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := Abs(NoOfCopies) + 1;
                    if NoOfLoops <= 0 then
                        NoOfLoops := 1;
                    Copytext := '';
                    SetRange(Number, 1, NoOfLoops);
                end;
            }
        }
        dataitem("Company Information"; "Company Information")
        {
            DataItemTableView = SORTING("Primary Key") ORDER(Ascending);
            column(FaxNo_CompanyInformation; "Company Information"."Fax No.")
            {
            }
            column(PhoneNo_CompanyInformation; "Company Information"."Phone No.")
            {
            }
            column(PostCode_CompanyInformation; "Company Information"."Post Code")
            {
            }
            column(City_CompanyInformation; "Company Information".City)
            {
            }
            column(Address2_CompanyInformation; "Company Information"."Address 2")
            {
            }
            column(Address_CompanyInformation; "Company Information".Address)
            {
            }
            column(Picture_CompanyInformation; "Company Information".Picture)
            {
            }
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Control1000000001)
                {
                    ShowCaption = false;
                    field(NoOfCopies; NoOfCopies)
                    {
                        Caption = 'No. Copies';
                    }
                    field("Mostrar Dimensoes"; BShowInternalInfo)
                    {
                        Caption = 'Show Internal Information - Dimensions';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            BShowInternalInfo := true;
        end;

        trigger OnOpenPage()
        begin
            BShowInternalInfo := true;
        end;
    }

    labels
    {
        text01 = 'No. Requisition';
        text02 = 'Original';
        text03 = 'Duplicate';
        text04 = 'Copy';
        Dppc = 'Document Processed by Computer';
        fundamentos = 'Fundamentals';
    }

    trigger OnInitReport()
    begin
        BShowInternalInfo := true;
    end;

    trigger OnPreReport()
    begin

        GlobalLanguage := 2070;
    end;

    var
        G_RecItem: Record Item;
        Copytext: Text[30];
        NoOfLoops: Integer;
        NoOfCopies: Integer;
        text01: Label 'Requisition Nº:';
        text02: Label 'Original';
        text03: Label 'Duplicate';
        text04: Label 'Copy';
        G_RecReqLineCom: Record "Requisition Comments";
        G_Comment: Text;
        G_RecReqLine: Record "Requisition Lines";
        BShowInternalInfo: Boolean;
        TempObservations1: Text[150];
        TempObservations2: Text[150];
        DimSetEntry: Record "Dimension Set Entry";
        Continue: Boolean;

}