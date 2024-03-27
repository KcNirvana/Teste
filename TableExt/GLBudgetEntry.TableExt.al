tableextension 57001 GLBudgetEntryTableExt extends "G/L Budget Entry"
{
    fields
    {
        field(50000; "Budget Mov Type"; Enum "Budget Mov Type")
        {
            Caption = 'Budget Mov Type';
        }
        field(50001; Posted; boolean)
        {
            Caption = 'Posted';
        }
        field(50002; "Budget Dim Type"; Enum "Budget Dim Type")
        {
            Caption = 'Budget Dim Type';
        }
        field(50003; "Mov Type"; Enum "GLBudget Mov Type")
        {
            Caption = 'Mov Type';
        }
        field(50004; "Rubric Code"; Code[20])
        {
            Caption = 'Rubric Code';
        }
        modify(Amount)
        {
            trigger OnBeforeValidate()
            begin
                ValidateAmount();
            end;
        }

    }
    keys
    {
        key(NewKey1; Posted, "Budget Mov Type", "Budget Dim Type")
        {
        }
        key(NewKey2; Posted, "Rubric Code", "Budget Mov Type", "Budget Dim Type")
        {
        }
        key(NewKey3; "Budget Mov Type")
        {
        }
    }

    var
        Text001: Label 'The budget type %1 cant have reduction amounts.';
        Text002: Label 'The budget type %1 cant have increase amounts.';
        Text003: Label 'You cant delete posted entries.';

    trigger OnDelete()
    begin
        if Posted then
            Error(Text003);
    end;

    trigger OnModify()
    begin
        IF "Budget Mov Type" <> "Budget Mov Type"::" " THEN
            ValidateAmount;
        UpdateBudgetType;
        ValidateRubric;
    end;

    trigger OnInsert()
    var
        GlSetup: Record "General Ledger Setup";
        BudgetConfig: Record "Budget Configuration";
        DimensionValue: Record "Dimension Value";
    begin

        GLSetup.GET();
        BudgetConfig.GET();
        BudgetConfig.TESTFIELD("ExpRev Dimension");

        IF BudgetConfig."ExpRev Dimension" = GLSetup."Global Dimension 1 Code" THEN BEGIN
            IF DimensionValue.GET(BudgetConfig."ExpRev Dimension", "Global Dimension 1 Code") THEN
                "Budget Dim Type" := DimensionValue."Budget Dim Type";
        END;

        IF BudgetConfig."ExpRev Dimension" = GLSetup."Global Dimension 2 Code" THEN BEGIN
            IF DimensionValue.GET(BudgetConfig."ExpRev Dimension", "Global Dimension 2 Code") THEN
                "Budget Dim Type" := DimensionValue."Budget Dim Type";
        END;
        UpdateBudgetType;
        ValidateRubric;
    end;

    LOCAL procedure ValidateAmount()
    begin
        If Amount > 0 THEN
            "Mov Type" := "Mov Type"::Increase
        else
            "Mov Type" := "Mov Type"::Decrease;
        CASE "Budget Mov Type" OF
            "Budget Mov Type"::Cative:
                IF "Mov Type" = "Mov Type"::Increase THEN
                    ERROR(Text002, "Budget Mov Type");
            "Budget Mov Type"::Descative:
                IF "Mov Type" = "Mov Type"::Decrease THEN
                    ERROR(Text001, "Budget Mov Type");
        END;
    end;

    local procedure UpdateBudgetType()
    var
        GLSetup: Record "General Ledger Setup";
        GLBudgetName: Record "G/L Budget Name";
        DimensionValue: Record "Dimension Value";
        DimCode: Code[20];
        DimValue: Code[20];
    begin
        GLSetup.Get();
        GLBudgetName.Get(Rec."Budget Name");
        If GLBudgetName."Budget Type Dimension" <> '' then begin
            case
              GLBudgetName."Budget Type Dimension" of
                GLSetup."Global Dimension 1 Code":
                    begin
                        DimCode := GLSetup."Global Dimension 1 Code";
                        DimValue := "Global Dimension 1 Code";
                    end;
                GLSetup."Global Dimension 2 Code":
                    BEGIN
                        DimCode := GLSetup."Global Dimension 2 Code";
                        DimValue := "Global Dimension 2 Code";
                    END;
                GLBudgetName."Budget Dimension 1 Code":
                    BEGIN
                        DimCode := GLBudgetName."Budget Dimension 1 Code";
                        DimValue := "Budget Dimension 1 Code";
                    END;
                GLBudgetName."Budget Dimension 2 Code":
                    BEGIN
                        DimCode := GLBudgetName."Budget Dimension 2 Code";
                        DimValue := "Budget Dimension 2 Code";
                    END;
                GLBudgetName."Budget Dimension 3 Code":
                    BEGIN
                        DimCode := GLBudgetName."Budget Dimension 3 Code";
                        DimValue := "Budget Dimension 3 Code";
                    END;
                GLBudgetName."Budget Dimension 4 Code":
                    BEGIN
                        DimCode := GLBudgetName."Budget Dimension 4 Code";
                        DimValue := "Budget Dimension 4 Code";
                    END;
            end;
        end;
        IF (DimCode <> '') AND (DimValue <> '') THEN BEGIN
            DimensionValue.GET(DimCode, DimValue);
            "Budget Dim Type" := DimensionValue."Budget Dim Type";
        END;
    end;

    local procedure ValidateRubric()
    var
        GLSetup: Record "General Ledger Setup";
        GLBudgetName: Record "G/L Budget Name";
        DimensionValue: Record "Dimension Value";
        BudgetRepConfig: Record "Budget Report Configuration";
        DimCode: Code[20];
        DimValue: Code[20];
    begin
        GLSetup.Get();
        BudgetRepConfig.GET;
        BudgetRepConfig.TESTFIELD("Rubric Dimension");
        BudgetRepConfig.TESTFIELD("Economic Dimension");
        GLBudgetName.Get(Rec."Budget Name");

        If GLBudgetName."Budget Type Dimension" <> '' then begin
            case
              GLBudgetName."Budget Type Dimension" of
                GLSetup."Global Dimension 1 Code":
                    begin
                        DimCode := GLSetup."Global Dimension 1 Code";
                        DimValue := "Global Dimension 1 Code";
                    end;
                GLSetup."Global Dimension 2 Code":
                    BEGIN
                        DimCode := GLSetup."Global Dimension 2 Code";
                        DimValue := "Global Dimension 2 Code";
                    END;
                GLBudgetName."Budget Dimension 1 Code":
                    BEGIN
                        DimCode := GLBudgetName."Budget Dimension 1 Code";
                        DimValue := "Budget Dimension 1 Code";
                    END;
                GLBudgetName."Budget Dimension 2 Code":
                    BEGIN
                        DimCode := GLBudgetName."Budget Dimension 2 Code";
                        DimValue := "Budget Dimension 2 Code";
                    END;
                GLBudgetName."Budget Dimension 3 Code":
                    BEGIN
                        DimCode := GLBudgetName."Budget Dimension 3 Code";
                        DimValue := "Budget Dimension 3 Code";
                    END;
                GLBudgetName."Budget Dimension 4 Code":
                    BEGIN
                        DimCode := GLBudgetName."Budget Dimension 4 Code";
                        DimValue := "Budget Dimension 4 Code";
                    END;
            end;
        end;
        IF (DimCode <> '') AND (DimValue <> '') THEN BEGIN
            IF DimCode = BudgetRepConfig."Economic Dimension" THEN BEGIN
                DimensionValue.GET(DimCode, DimValue);
                DimensionValue.TESTFIELD("Rubric Code");
                "Rubric Code" := DimensionValue."Rubric Code";
            END;
        END;
    end;
}
