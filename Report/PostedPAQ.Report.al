report 57002 "Posted PAQ"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/PostedPAQ.rdl';

    Caption = 'Posted PAQ';
    PreviewMode = PrintLayout;
    ApplicationArea = All;

    dataset
    {
        dataitem("Posted PAQ"; "Posted PAQ")
        {
            DataItemTableView = SORTING("PAQ Code");
            CalcFields = "Vendor Name";
            RequestFilterFields = "PAQ Code";
            column(PAQDescription_PostedPAQ; "Posted PAQ"."PAQ Description")
            {
                IncludeCaption = true;
            }
            column(PAQCode_PostedPAQ; "Posted PAQ"."PAQ Code")
            {
                IncludeCaption = true;
            }
            column(PAQDate_PostedPAQ; "Posted PAQ"."PAQ Date")
            {
                IncludeCaption = true;
            }
            column(Status_PostedPAQ; "Posted PAQ".Status)
            {
                IncludeCaption = true;
            }
            column(AprovedBy_PostedPAQ; "Posted PAQ"."Approved By")
            {
                IncludeCaption = true;
            }
            column(AprovedDate_PostedPAQ; "Posted PAQ"."Approved Date")
            {
                IncludeCaption = true;
            }
            column(CreateBy_PostedPAQ; "Posted PAQ"."Created By")
            {
                IncludeCaption = true;
            }
            column(CreateDate_PostedPAQ; "Posted PAQ"."Creation Date")
            {
                IncludeCaption = true;
            }
            column(PAQCodeOriginal_PostedPAQ; "Posted PAQ"."PAQ Code Original")
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
            dataitem("Posted PAQ Lines"; "Posted PAQ Lines")
            {
                DataItemLink = "PAQ Code" = FIELD("PAQ Code");
                DataItemTableView = SORTING("PAQ Code", "Line No.");
                column(VendorName_PostedPAQLines; "Posted PAQ"."Vendor Name")
                {
                    IncludeCaption = true;
                }
                column(Line_PostedPAQLines; "Posted PAQ Lines"."Line No.")
                {
                }
                column(Description_PostedPAQLines; "Posted PAQ Lines".Description)
                {
                    IncludeCaption = true;
                }
                column(UnitofMeasure_PostedPAQLines; '')
                {
                }
                column(Quantity_PostedPAQLines; "Posted PAQ Lines".Quantity)
                {
                    IncludeCaption = true;
                }
                column(DirectUnitCost_PostedPAQLines; "Posted PAQ Lines"."Unit Cost")
                {
                    IncludeCaption = true;
                }
                column(Amount_PostedPAQLines; "Posted PAQ Lines".Amount)
                {
                    IncludeCaption = true;
                }
                column(AmountIncludingVAT_PostedPAQLines; "Posted PAQ Lines"."Amount Including VAT")
                {
                    IncludeCaption = true;
                }
            }
            dataitem("G/L Entry"; "G/L Entry")
            {
                DataItemLink = "Document No." = FIELD("PAQ Code");
                DataItemTableView = SORTING("Entry No.");
                PrintOnlyIfDetail = false;
                column(GLAccountNo_GLEntry; "G/L Account No.")
                {
                    IncludeCaption = true;
                }
                column(EntryNo_GLEntry; "Entry No.")
                {
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
                column(Amount_GLEntry; "G/L Entry".Amount)
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
            DataItemTableView = sorting("Primary Key");
            column(EMail_CompanyInformation; "E-Mail")
            {
            }
            column(HomePage_CompanyInformation; "Home Page")
            {
            }
            column(Name_CompanyInformation; Name)
            {
            }
            column(Picture_CompanyInformation; Picture)
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
        hisp = 'Posted PAQ';
        total = 'Amount';
        Total1 = 'Totals';
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
            GLAccDims."Tab Code" := FORMAT(DATABASE::"Posted PAQ Lines");
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
        Page1: Label 'Page';
        Text001: Label 'You dont have permission to execute reports';
        GLAccDims: Record "G/L Account Dimensions" temporary;
        HaveDim: array[8] of Boolean;
        DimName: array[8] of Text[30];
}

