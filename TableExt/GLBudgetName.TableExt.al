tableextension 57002 GLBudgetNameTableExt extends "G/L Budget Name"
{
    fields
    {
        field(50000; "Budget Line Option"; Code[20])
        {
            Caption = 'Budget Line Option';
            trigger OnLookup()
            var
                NewCode: Text[30];
            begin
                NewCode := GetDimSelection("Budget Line Option");
                Validate("Budget Line Option", NewCode);
            end;
        }
        field(50001; "Budget Column Option"; Code[20])
        {
            Caption = 'Budget Column Option';
            trigger OnLookup()
            var
                NewCode: Text[30];
            begin
                NewCode := GetDimSelection("Budget Column Option");
                Validate("Budget Column Option", NewCode);
            end;
        }
        field(50002; "Budget Type Dimension"; Code[20])
        {
            Caption = 'Budget Type Dimension';
            TableRelation = Dimension;
        }
        field(50003; "Prevision N"; Code[10])
        {
            Caption = 'Prevision N';
            trigger OnValidate()
            begin
                ValidateOrc(true);
            end;
        }
        field(50004; "Future Years"; Code[10])
        {
            Caption = 'Future Years';
            trigger OnValidate()
            begin
                ValidateOrc(true);
            end;
        }
        field(50005; "Budget Start Date"; Date)
        {
            Caption = 'Budget Start Date';
            trigger OnValidate()
            begin
                ValidateDates();
            end;
        }
        field(50006; "Budget End Date"; Date)
        {
            Caption = 'Budget End Date';
            trigger OnValidate()
            begin
                ValidateDates();
            end;
        }
    }

    local procedure ValidateDates()
    var
        Text001: Label '%1 cant be greater than %2';
    begin
        if ("Budget Start Date" <> 0D) AND ("Budget End Date" <> 0D) then
            IF ("Budget Start Date" > "Budget End Date") THEN
                ERROR(STRSUBSTNO(Text001, FIELDCAPTION("Budget Start Date"), FIELDCAPTION("Budget End Date")));
    END;


    local procedure ValidateOrc(pIsPrevision: Boolean)
    var
        GLBudgetName: Record "G/L Budget Name";
        Text001: Label 'The budget %1 cant be equal to actual budget.';
        Text002: Label 'The budget %1 cant be equal to budget %2.';
    begin
        If pIsPrevision then begin
            GLBudgetName.Get("Prevision N");
            IF ("Prevision N" <> '') and ("Prevision N" = Name) THEN
                ERROR(Text001, FIELDCAPTION("Prevision N"));
            IF ("Future Years" <> '') AND ("Future Years" = "Prevision N") THEN
                ERROR(Text002, FIELDCAPTION("Prevision N"), FIELDCAPTION("Future Years"));
        end else begin
            GLBudgetName.Get("Future Years");
            IF ("Future Years" <> '') and ("Future Years" = Name) THEN
                ERROR(Text001, FIELDCAPTION("Future Years"));
            IF ("Prevision N" <> '') AND ("Future Years" = "Prevision N") THEN
                ERROR(Text002, FIELDCAPTION("Future Years"), FIELDCAPTION("Prevision N"));
        end;
    end;

    local procedure GetDimSelection(OldDimSelCode: Text[30]): Text[30]
    var
        GLAcc: Record "G/L Account";
        BusUnit: Record "Business Unit";
        DimSelection: Page "Dimension Selection";
        Text001: Label 'Period';
        GLSetup: Record "General Ledger Setup";
    begin
        GLSetup.Get();
        DimSelection.InsertDimSelBuf(false, GLAcc.TableCaption(), GLAcc.TableCaption());
        DimSelection.InsertDimSelBuf(false, BusUnit.TableCaption(), BusUnit.TableCaption());
        DimSelection.InsertDimSelBuf(false, Text001, Text001);
        if GLSetup."Global Dimension 1 Code" <> '' then
            DimSelection.InsertDimSelBuf(false, GLSetup."Global Dimension 1 Code", '');
        if GLSetup."Global Dimension 2 Code" <> '' then
            DimSelection.InsertDimSelBuf(false, GLSetup."Global Dimension 2 Code", '');
        if "Budget Dimension 1 Code" <> '' then
            DimSelection.InsertDimSelBuf(false, "Budget Dimension 1 Code", '');
        if "Budget Dimension 2 Code" <> '' then
            DimSelection.InsertDimSelBuf(false, "Budget Dimension 2 Code", '');
        if "Budget Dimension 3 Code" <> '' then
            DimSelection.InsertDimSelBuf(false, "Budget Dimension 3 Code", '');
        if "Budget Dimension 4 Code" <> '' then
            DimSelection.InsertDimSelBuf(false, "Budget Dimension 4 Code", '');

        DimSelection.LookupMode := true;
        if DimSelection.RunModal() = ACTION::LookupOK then
            exit(DimSelection.GetDimSelCode());

        exit(OldDimSelCode);
    end;
}
