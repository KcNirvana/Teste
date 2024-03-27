report 57003 "Posted Avaylable Budget"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/AvaylableBudgetPost.rdl';

    Caption = 'Posted Avaylable Budget';
    PreviewMode = PrintLayout;
    ApplicationArea = All;

    dataset
    {
        dataitem("Posted Avaylable Budget"; "Posted Avaylable Budget")
        {
            DataItemTableView = SORTING("Avay Code");
            RequestFilterFields = "Avay Code";
            column(CabCode_AvaylableBudgetPost; "Posted Avaylable Budget"."Avay Code")
            {
                IncludeCaption = true;
            }
            column(Date_AvaylableBudgetPost; "Posted Avaylable Budget"."Avay Date")
            {
                IncludeCaption = true;
            }
            column(Type_AvaylableBudgetPost; "Posted Avaylable Budget".Type)
            {
                IncludeCaption = true;
            }
            column(Usercreate_AvaylableBudgetPost; "Posted Avaylable Budget"."Created by")
            {
                IncludeCaption = true;
            }
            column(MovementDate_AvaylableBudgetPost; "Posted Avaylable Budget"."Creation Date")
            {
                IncludeCaption = true;
            }
            column(RegistUser_AvaylableBudgetPost; "Posted Avaylable Budget"."Approved By")
            {
                IncludeCaption = true;
            }
            column(HasDim1; HaveDim[1])
            {
            }
            column(HasDim2; HaveDim[2])
            {
            }
            column(HasDim3; HaveDim[3])
            {
            }
            column(HasDim4; HaveDim[4])
            {
            }
            column(HasDim5; HaveDim[5])
            {
            }
            column(HasDim6; HaveDim[6])
            {
            }
            column(dimCpt1; DimName[1])
            {
            }
            column(dimCpt2; DimName[2])
            {
            }
            column(dimCpt3; DimName[3])
            {
            }
            column(dimCpt4; DimName[4])
            {
            }
            column(dimCpt5; DimName[5])
            {
            }
            column(dimCpt6; DimName[6])
            {
            }
            dataitem("Posted Avaylable Budget Line"; "Posted Avaylable Budget Line")
            {
                DataItemLink = "Avay Code" = FIELD("Avay Code");
                DataItemTableView = SORTING("Avay Code", "Line No.");
                column(RequisitionCode_AvaylableBudgetLinePost; "Posted Avaylable Budget Line"."Requisition Code")
                {
                    IncludeCaption = true;
                }
                column(CodCab_AvaylableBudgetLinePost; "Posted Avaylable Budget Line"."Avay Code")
                {
                    IncludeCaption = true;
                }
                column(Quantity_AvaylableBudgetLinePost; "Posted Avaylable Budget Line".Quantity)
                {
                    IncludeCaption = true;
                }
                column(Lines_AvaylableBudgetLinePost; "Posted Avaylable Budget Line"."Line No.")
                {
                    IncludeCaption = true;
                }
                column(Description_AvaylableBudgetLinePost; "Posted Avaylable Budget Line".Description)
                {
                    IncludeCaption = true;
                }
                column(QuoteQuantity_AvaylableBudgetLinePost; "Posted Avaylable Budget Line"."Quote Quantity")
                {
                    IncludeCaption = true;
                }
                column(UnitPrice_AvaylableBudgetLinePost; "Posted Avaylable Budget Line"."Unit Cost")
                {
                    IncludeCaption = true;
                }
                column(LineAmountwithVat_AvaylableBudgetLinePost; "Posted Avaylable Budget Line"."Amount Including VAT")
                {
                    IncludeCaption = true;
                }

                trigger OnAfterGetRecord()
                begin

                end;
            }
            dataitem("G/L Entry"; "G/L Entry")
            {
                DataItemLink = "Document No." = FIELD("Avay code");
                DataItemLinkReference = "Posted Avaylable Budget";
                DataItemTableView = SORTING("Entry No.");
                column(GLAccountNo_GLEntry; "G/L Account No.")
                {
                    IncludeCaption = true;
                }
                column(DocumentNo_GLEntry; "Document No.")
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
                column(dim6; GLAccDims."Dimension Value6")
                {
                }
                column(Amount_GLEntry; Amount)
                {
                    IncludeCaption = true;
                }
                trigger OnAfterGetRecord()
                begin
                    GLAccDims.DELETEALL;
                    CalculateDimensions("G/L Entry");
                end;
            }
        }
        dataitem("Company Information"; "Company Information")
        {
            DataItemTableView = SORTING("Primary Key");
            column(Name_CompanyInformation; "Company Information".Name)
            {
            }
            column(Picture_CompanyInformation; "Company Information".Picture)
            {
            }
            column(EMail_CompanyInformation; "Company Information"."E-Mail")
            {
            }
            column(HomePage_CompanyInformation; "Company Information"."Home Page")
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
        totalfor = 'Total Of ';
        hist_dis_orca = 'Posted Avaylable Budget';
        DPC = 'Document Processed by Computer';
    }


    trigger OnPreReport()
    begin

        IF BudgetPermissions.GET(UPPERCASE(USERID), 0) THEN BEGIN
            IF Not BudgetPermissions."Print Documents" THEN
                Error(Text001);

        end else
            Error(Text001);
    end;

    trigger OnInitReport()
    begin
        ShowDimensions();
    end;

    local procedure CalculateDimensions(GLEntry: Record "G/L Entry")
    var
        DimSetEntry: Record "Dimension Set Entry";
    begin
        DimSetEntry.RESET();
        DimSetEntry.SETRANGE("Dimension Set ID", "G/L Entry"."Dimension Set ID");
        IF DimSetEntry.FINDSET() THEN begin
            GLAccDims.RESET();
            GLAccDims.INIT();
            GLAccDims."Tab Code" := FORMAT(DATABASE::"Posted Avaylable Budget Line");
            GLAccDims."Document No." := "G/L Entry"."Document No.";
            GLAccDims."Line No." := "G/L Entry"."Entry No.";
            GLAccDims.INSERT();
            REPEAT
                IF (GLSetup."Shortcut Dimension 1 Code" <> '') AND (DimSetEntry."Dimension Code" = GLSetup."Shortcut Dimension 1 Code") THEN BEGIN
                    GLAccDims.Dimension1 := GLSetup."Shortcut Dimension 1 Code";
                    GLAccDims."Dimension Value1" := DimSetEntry."Dimension Value Code";
                END;
                IF (GLSetup."Shortcut Dimension 2 Code" <> '') AND (DimSetEntry."Dimension Code" = GLSetup."Shortcut Dimension 2 Code") THEN BEGIN
                    GLAccDims.Dimension2 := GLSetup."Shortcut Dimension 2 Code";
                    GLAccDims."Dimension Value2" := DimSetEntry."Dimension Value Code";
                END;
                IF (GLSetup."Shortcut Dimension 3 Code" <> '') AND (DimSetEntry."Dimension Code" = GLSetup."Shortcut Dimension 3 Code") THEN BEGIN
                    GLAccDims.Dimension3 := GLSetup."Shortcut Dimension 3 Code";
                    GLAccDims."Dimension Value3" := DimSetEntry."Dimension Value Code";
                END;
                IF (GLSetup."Shortcut Dimension 4 Code" <> '') AND (DimSetEntry."Dimension Code" = GLSetup."Shortcut Dimension 4 Code") THEN BEGIN
                    GLAccDims.Dimension4 := GLSetup."Shortcut Dimension 4 Code";
                    GLAccDims."Dimension Value4" := DimSetEntry."Dimension Value Code";
                END;
                IF (GLSetup."Shortcut Dimension 5 Code" <> '') AND (DimSetEntry."Dimension Code" = GLSetup."Shortcut Dimension 5 Code") THEN BEGIN
                    GLAccDims.Dimension5 := GLSetup."Shortcut Dimension 5 Code";
                    GLAccDims."Dimension Value5" := DimSetEntry."Dimension Value Code";
                END;
                IF (GLSetup."Shortcut Dimension 6 Code" <> '') AND (DimSetEntry."Dimension Code" = GLSetup."Shortcut Dimension 6 Code") THEN BEGIN
                    GLAccDims.Dimension6 := GLSetup."Shortcut Dimension 6 Code";
                    GLAccDims."Dimension Value6" := DimSetEntry."Dimension Value Code";
                END;
                IF (GLSetup."Shortcut Dimension 7 Code" <> '') AND (DimSetEntry."Dimension Code" = GLSetup."Shortcut Dimension 7 Code") THEN BEGIN
                    GLAccDims.Dimension7 := GLSetup."Shortcut Dimension 7 Code";
                    GLAccDims."Dimension Value7" := DimSetEntry."Dimension Value Code";
                END;
                IF (GLSetup."Shortcut Dimension 8 Code" <> '') AND (DimSetEntry."Dimension Code" = GLSetup."Shortcut Dimension 8 Code") THEN BEGIN
                    GLAccDims.Dimension8 := GLSetup."Shortcut Dimension 8 Code";
                    GLAccDims."Dimension Value8" := DimSetEntry."Dimension Value Code";
                END;
                GLAccDims.MODIFY(TRUE);
            UNTIL DimSetEntry.NEXT = 0;
        end;
    end;

    local procedure ShowDimensions()
    var
        Dimensions: Record Dimension;
    begin
        GLSetup.GET();
        HaveDim[1] := GLSetup."Shortcut Dimension 1 Code" = '';
        HaveDim[2] := GLSetup."Shortcut Dimension 2 Code" = '';
        HaveDim[3] := GLSetup."Shortcut Dimension 3 Code" = '';
        HaveDim[4] := GLSetup."Shortcut Dimension 4 Code" = '';
        HaveDim[5] := GLSetup."Shortcut Dimension 5 Code" = '';
        HaveDim[6] := GLSetup."Shortcut Dimension 6 Code" = '';
        HaveDim[7] := GLSetup."Shortcut Dimension 7 Code" = '';
        HaveDim[8] := GLSetup."Shortcut Dimension 8 Code" = '';

        IF Dimensions.Get(GLSetup."Shortcut Dimension 1 Code") then
            DimName[1] := Dimensions.Name;
        IF Dimensions.Get(GLSetup."Shortcut Dimension 2 Code") then
            DimName[2] := Dimensions.Name;
        IF Dimensions.Get(GLSetup."Shortcut Dimension 3 Code") then
            DimName[3] := Dimensions.Name;
        IF Dimensions.Get(GLSetup."Shortcut Dimension 4 Code") then
            DimName[4] := Dimensions.Name;
        IF Dimensions.Get(GLSetup."Shortcut Dimension 5 Code") then
            DimName[5] := Dimensions.Name;
        IF Dimensions.Get(GLSetup."Shortcut Dimension 6 Code") then
            DimName[6] := Dimensions.Name;
        IF Dimensions.Get(GLSetup."Shortcut Dimension 7 Code") then
            DimName[7] := Dimensions.Name;
        IF Dimensions.Get(GLSetup."Shortcut Dimension 8 Code") then
            DimName[8] := Dimensions.Name;
    end;

    var
        FooterPrinted: Boolean;
        Dim1: Code[20];
        Dim2: Code[20];
        Dim3: Code[20];
        Dim4: Code[20];
        Dim5: Code[20];
        Dim6: Code[20];
        GLSetup: Record "General Ledger Setup";
        BudgetPermissions: Record "Budget Permissions";
        Text001: Label 'You dont have permission to execute reports';
        GLAccDims: Record "G/L Account Dimensions" temporary;
        HaveDim: array[8] of Boolean;
        DimName: array[8] of Text[30];
}

