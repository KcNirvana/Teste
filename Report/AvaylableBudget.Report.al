report 57001 "Avaylable Budget"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/Avaylablebudget.rdl';

    Caption = 'Avaylable Budget';
    PreviewMode = PrintLayout;
    ApplicationArea = All;

    dataset
    {
        dataitem("Avaylable Budget"; "Avaylable Budget")
        {
            DataItemTableView = SORTING("Avay Code");
            RequestFilterFields = "Avay Code";
            column(Code_AvaylableBudget; "Avaylable Budget"."Avay Code")
            {
            }
            column(Date_AvaylableBudget; "Avaylable Budget"."Avay Date")
            {
            }
            column(Amount_AvaylableBudget; "Avaylable Budget".Amount)
            {
                IncludeCaption = true;
            }
            column(Type_AvaylableBudget; "Avaylable Budget".Type)
            {
                IncludeCaption = true;
            }
            column(User_AvaylableBudget; "Avaylable Budget"."Created by")
            {
                IncludeCaption = true;
            }
            column(ApproveDate_AvaylableBudget; "Avaylable Budget"."Approved Date")
            {
                IncludeCaption = true;
            }
            column(ConsultationCode_AvaylableBudget; "Avaylable Budget"."Consultation Code")
            {
                IncludeCaption = true;
            }
            column(Status_AvaylableBudget; "Avaylable Budget".Status)
            {
                IncludeCaption = true;
            }
            dataitem("Avaylable Budget Line"; "Avaylable Budget Line")
            {
                DataItemLink = "Avay Code" = FIELD("Avay Code");
                DataItemLinkReference = "Avaylable Budget";
                DataItemTableView = SORTING("Avay Code", "Line No.");
                column(CodCab_AvaylableBudgetLine; "Avaylable Budget Line"."Avay Code")
                {
                    IncludeCaption = true;
                }
                column(Lines_AvaylableBudgetLine; "Avaylable Budget Line"."Line No.")
                {
                    IncludeCaption = true;
                }
                column(RequisitionCode_AvaylableBudgetLine; "Avaylable Budget Line"."Requisition Code")
                {
                    IncludeCaption = true;
                }
                column(No_AvaylableBudgetLine; "Avaylable Budget Line"."No.")
                {
                    IncludeCaption = true;
                }
                column(Description_AvaylableBudgetLine; "Avaylable Budget Line".Description)
                {
                    IncludeCaption = true;
                }
                column(CostAmount_AvaylableBudgetLine; "Avaylable Budget Line"."Cost Amount")
                {
                }
                column(AmountwithVat_AvaylableBudgetLine; "Avaylable Budget Line"."Amount Including VAT")
                {
                    IncludeCaption = true;
                }
                column(AvaylableEndowment_AvaylableBudgetLine; "Avaylable Budget Line"."End Avaylable Dotation")
                {
                    IncludeCaption = true;
                }

                trigger OnAfterGetRecord()
                var
                    L_DimSetEntry: Record "Dimension Set Entry";
                begin

                    "Avaylable Budget Line"."End Avaylable Dotation" := "Avaylable Budget Line"."End Avaylable Dotation" * -1;

                    ledgersetup.Get();

                    L_DimSetEntry.Reset();
                    L_DimSetEntry.SetRange("Dimension Set ID", "Avaylable Budget Line"."Dimension Set ID");
                    if L_DimSetEntry.FindSet() then
                        GLAccDims.Reset();
                    GLAccDims.Init();
                    GLAccDims."Tab Code" := Format(DATABASE::"Avaylable Budget Line");
                    GLAccDims."Document No." := "Avaylable Budget Line"."Avay Code";
                    GLAccDims."Line No." := "Avaylable Budget Line"."Line No.";
                    GLAccDims.Insert();

                    repeat

                        if (ledgersetup."Shortcut Dimension 1 Code" <> '') and (L_DimSetEntry."Dimension Code" = ledgersetup."Shortcut Dimension 1 Code") then begin
                            GLAccDims.Dimension1 := ledgersetup."Shortcut Dimension 1 Code";
                            GLAccDims."Dimension Value1" := L_DimSetEntry."Dimension Value Code";
                        end;
                        if (ledgersetup."Shortcut Dimension 2 Code" <> '') and (L_DimSetEntry."Dimension Code" = ledgersetup."Shortcut Dimension 2 Code") then begin
                            GLAccDims.Dimension2 := ledgersetup."Shortcut Dimension 2 Code";
                            GLAccDims."Dimension Value2" := L_DimSetEntry."Dimension Value Code";
                        end;
                        if (ledgersetup."Shortcut Dimension 3 Code" <> '') and (L_DimSetEntry."Dimension Code" = ledgersetup."Shortcut Dimension 3 Code") then begin
                            GLAccDims.Dimension3 := ledgersetup."Shortcut Dimension 3 Code";
                            GLAccDims."Dimension Value3" := L_DimSetEntry."Dimension Value Code";
                        end;
                        if (ledgersetup."Shortcut Dimension 4 Code" <> '') and (L_DimSetEntry."Dimension Code" = ledgersetup."Shortcut Dimension 4 Code") then begin
                            GLAccDims.Dimension4 := ledgersetup."Shortcut Dimension 4 Code";
                            GLAccDims."Dimension Value4" := L_DimSetEntry."Dimension Value Code";
                        end;
                        if (ledgersetup."Shortcut Dimension 5 Code" <> '') and (L_DimSetEntry."Dimension Code" = ledgersetup."Shortcut Dimension 5 Code") then begin
                            GLAccDims.Dimension5 := ledgersetup."Shortcut Dimension 5 Code";
                            GLAccDims."Dimension Value5" := L_DimSetEntry."Dimension Value Code";
                        end;
                        if (ledgersetup."Shortcut Dimension 6 Code" <> '') and (L_DimSetEntry."Dimension Code" = ledgersetup."Shortcut Dimension 6 Code") then begin
                            GLAccDims.Dimension6 := ledgersetup."Shortcut Dimension 6 Code";
                            GLAccDims."Dimension Value6" := L_DimSetEntry."Dimension Value Code";
                        end;
                        if (ledgersetup."Shortcut Dimension 7 Code" <> '') and (L_DimSetEntry."Dimension Code" = ledgersetup."Shortcut Dimension 7 Code") then begin
                            GLAccDims.Dimension7 := ledgersetup."Shortcut Dimension 7 Code";
                            GLAccDims."Dimension Value7" := L_DimSetEntry."Dimension Value Code";
                        end;
                        if (ledgersetup."Shortcut Dimension 8 Code" <> '') and (L_DimSetEntry."Dimension Code" = ledgersetup."Shortcut Dimension 8 Code") then begin
                            GLAccDims.Dimension8 := ledgersetup."Shortcut Dimension 8 Code";
                            GLAccDims."Dimension Value8" := L_DimSetEntry."Dimension Value Code";
                        end;
                        GLAccDims.Modify(true);
                    until L_DimSetEntry.Next = 0;

                end;
            }
            dataitem(Dims; "Integer")
            {
                DataItemTableView = SORTING(Number);
                column(Document_No; GLAccDims."Document No.")
                {
                    IncludeCaption = true;
                }
                column(Line_No; GLAccDims."Line No.")
                {
                    IncludeCaption = true;
                }
                column(dim1; GLAccDims."Dimension Value1")
                {
                }
                column(dim2; GLAccDims."Dimension Value2")
                {
                }
                column(dim3; GLAccDims."Dimension Value3")
                {
                }
                column(dim4; GLAccDims."Dimension Value4")
                {
                }
                column(dim5; GLAccDims."Dimension Value5")
                {
                }

                trigger OnAfterGetRecord()
                begin


                    if Number = 1 then
                        GLAccDims.FindFirst
                    else
                        GLAccDims.Next;

                    Clear(dim1);
                    Clear(dim2);
                    Clear(dim3);
                    Clear(dim4);
                    Clear(dim5);

                    dim1 := GLAccDims."Dimension Value1";
                    dim2 := GLAccDims."Dimension Value2";
                    dim3 := GLAccDims."Dimension Value3";
                    dim4 := GLAccDims."Dimension Value4";
                    dim5 := GLAccDims."Dimension Value5";
                end;

                trigger OnPreDataItem()
                begin

                    GLAccDims.Reset;
                    SetRange(Number, 1, GLAccDims.Count);
                end;
            }

            trigger OnAfterGetRecord()
            begin

                GLAccDims.DeleteAll;
                ledgersetup.Get;
            end;
        }
        dataitem("Company Information"; "Company Information")
        {
            DataItemTableView = sorting("Primary Key");
            column(Picture_CompanyInformation; "Company Information".Picture)
            {
            }
            column(EMail_CompanyInformation; "Company Information"."E-Mail")
            {
            }
            column(HomePage_CompanyInformation; "Company Information"."Home Page")
            {
            }
            column(Name_CompanyInformation; "Company Information".Name)
            {
            }
            column(Address_CompanyInformation; "Company Information".Address)
            {
            }
            column(PhoneNo_CompanyInformation; "Company Information"."Phone No.")
            {
            }
            column(VATRegistrationNo_CompanyInformation; "Company Information"."VAT Registration No.")
            {
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
        DPC = 'Document Process by Computer';
        Contrib_n = 'Vat registration nº';
        Cab = 'Avaylable Budget';
        data = 'Date';
        valor = 'Cost Amount';
        CR = 'Responsability Center';
        RO = 'Heading Budget';
        CA = 'Activity Code';
        CV = 'Vehicle Code';
        CF = 'Financial Code';
    }



    trigger OnPreReport()
    begin

        if recperm.Get(UpperCase(UserId), 0) then begin

            if not recperm."Print Documents" then Error(text05);

        end;
    end;

    var
        recperm: Record "Budget Permissions";
        Page1: Label 'Page';
        TotalFor: Label 'Total';
        text05: Label 'You dont have permission to execute reports';
        PurchSetup: Record "Purchases & Payables Setup";
        LastFieldNo: Integer;
        ledgersetup: Record "General Ledger Setup";
        GLAccDims: Record "G/L Account Dimensions" temporary;
        dim1: Code[20];
        dim2: Code[20];
        dim3: Code[20];
        dim4: Code[20];
        dim5: Code[20];
        dim6: Code[20];

}

