table 57068 "Posted PAQ Lines"
{
    Caption = 'Posted PAQ Lines';
    DrillDownPageID = "Posted PAQ Lines List";
    LookupPageID = "Posted PAQ Lines List";

    fields
    {
        field(1; "PAQ Code"; Code[20])
        {
            Caption = 'Adjudication Code';
            TableRelation = "Posted PAQ";
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(6; "No."; Code[20])
        {
            Caption = 'No.';
            Editable = false;
            TableRelation = IF ("Line Type" = CONST("G/L Account")) "G/L Account"
            ELSE
            IF ("Line Type" = CONST(Item)) Item
            ELSE
            IF ("Line Type" = CONST(Resource)) Resource
            ELSE
            IF ("Line Type" = CONST("Fixed Asset")) "Fixed Asset"
            ELSE
            IF ("Line Type" = CONST("Charge (Item)")) "Item Charge";
        }
        field(7; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(12; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(15; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(19; "Shortcut Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(20; "Shortcut Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(22; "Unit Cost"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            Caption = 'Unit Cost';
        }
        field(25; "VAT %"; Decimal)
        {
            Caption = 'VAT %';
            DecimalPlaces = 0 : 5;
        }
        field(29; Amount; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(30; "Amount Including VAT"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Amount Including VAT';
        }
        field(91; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(93; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';

            trigger OnLookup()
            begin
                ShowDimensions;
            end;
        }
        field(50002; "Approved By"; Code[20])
        {
            Caption = 'Approved By';
            Editable = false;
        }
        field(50003; "Approved Date"; Date)
        {
            Caption = 'Approved Date';
            Editable = false;
        }
        field(50004; "Section Code"; Code[10])
        {
            Caption = 'Section Code';
            TableRelation = Sections.Code;
        }
        field(61002; "Requisition Code"; Code[20])
        {
            Caption = 'Requisition Code';
            TableRelation = Requisition;
        }
        field(61003; "Requisition Line"; Integer)
        {
            Caption = 'Requisition Line';
        }
        field(61004; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            TableRelation = Consultation."Consultation code";
        }
        field(61005; Status; Enum "PAQ Status")
        {
            Caption = 'Status';
            Editable = false;
        }
        field(61006; "Quote No."; Code[20])
        {
            Caption = 'Quote No.';
            TableRelation = "Purchase Header"."No." WHERE("Document Type" = CONST(Quote),
                                                           "No." = FIELD("Quote No."));
        }
        field(61007; "Quote Line No."; Integer)
        {
            Caption = 'Quote Line No.';
            TableRelation = "Purchase Line"."No." WHERE("Document Type" = CONST(Quote),
                                                           "No." = FIELD("Quote No."),
                                                           "Line No." = field("Quote Line No."));
        }
        field(61008; "Purchase Quotes"; Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE("Associated Quote" = FIELD("Quote No.")));
            Caption = 'Purchase Quotes';
            FieldClass = FlowField;
            Editable = false;
        }
        field(61009; "Original Direct Unit Cost"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            Caption = 'Original Direct Unit Cost';
        }
        field(61010; "Original Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Original Amount';
        }
        field(61011; "Original Amount Including VAT"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Original Amount Including VAT';
        }
        field(61072; "Original Cost Amount"; Decimal)
        {
            Caption = 'Original Cost Amount';
        }
        field(61013; "Requisition Section"; Code[20])
        {
            CalcFormula = Lookup(Requisition."Section Code" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Requisition Section';
            FieldClass = FlowField;
            Editable = false;
        }
        field(61016; "Posted PAQ Type"; Enum "PAQ Type")
        {
            CalcFormula = Lookup("Posted PAQ".Type WHERE("PAQ Code" = FIELD("PAQ Code")));
            Caption = 'Adjudication Type';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61025; Reversed; Boolean)
        {
            CalcFormula = Lookup("Posted PAQ".Reversed WHERE("PAQ Code" = FIELD("PAQ Code")));
            Caption = 'Reversed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61028; "Line Type"; Enum "Documents Line Type")
        {
            Caption = 'Type';
        }
        field(61031; "PAQ Date"; Date)
        {
            Caption = 'PAQ Date';
        }
        field(61050; "ND %"; Decimal)
        {
            Caption = 'ND %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(61051; "Cost Amount"; Decimal)
        {
            Caption = 'Cost Amount';
        }
        field(61060; "Dimensions Source"; Enum "Dimensions Source")
        {
            Caption = 'Dimensions Source';
            Editable = false;

        }
        field(61061; "Dimensions Source Type"; Integer)
        {
            Caption = 'Dimensions Source Type';
            Editable = false;
        }
        field(61062; "Dimensions Source Subtype"; Enum "Dimensions Source Subtype")
        {
            Caption = 'Dimensions Source Subtype';
            Editable = false;
        }
        field(61063; "Dimensions Source Doc. No."; Code[20])
        {
            Caption = 'Dimensions Source Doc. No.';
            Editable = false;
        }
        field(61064; "Dimensions Source Line No."; Integer)
        {
            Caption = 'Dimensions Source Line No.';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "PAQ Code", "Line No.")
        {
            Clustered = true;
            SumIndexFields = "Amount Including VAT", Amount, "Cost Amount";
        }
        key(Key2; Status, "Quote No.", "Quote Line No.")
        {
            SumIndexFields = "Amount Including VAT", Amount, "Cost Amount";
        }
        key(Key3; Status, "Requisition Code", "Requisition Line")
        {
            SumIndexFields = "Amount Including VAT", Amount, "Cost Amount";
        }
        key(Key4; "Consultation Code", Status)
        {
            SumIndexFields = "Amount Including VAT", Amount, "Cost Amount";
        }
        key(Key7; "Line No.", "Requisition Code", "Requisition Line", "Consultation Code")
        {
            SumIndexFields = "Amount Including VAT", Amount, "Cost Amount";
        }
        key(Key8; Status, "Requisition Line", "Requisition Code", "Consultation Code")
        {
            SumIndexFields = "Amount Including VAT", Amount, "Cost Amount";
        }
        key(Key9; "Requisition Code", "Requisition Line", Status, "PAQ Date")
        {
            SumIndexFields = "Amount Including VAT", Amount, "Cost Amount";
        }
        key(Key10; "Requisition Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "PAQ Code", "PAQ Date", "Line Type", "No.", "Consultation Code")
        {
        }
    }

    var
        DimMgt: Codeunit DimensionManagement;

    procedure ShowDimensions()
    begin
        DimMgt.ShowDimensionSet("Dimension Set ID", STRSUBSTNO('%1 %2', TABLECAPTION, "PAQ Code"));
    end;

    procedure GetBudgetAppropriationMethod(): Enum "Budget Appropriation Method"
    var
        BudgetConfig: Record "Budget Configuration";
    begin
        BudgetConfig.Get();
        BudgetConfig.TestField("Budget Appropriation Method");
        exit(BudgetConfig."Budget Appropriation Method");
    end;

    procedure GetPAQLineAmount(): Decimal
    var
        lBudgetAppropriationMethod: Enum "Budget Appropriation Method";
    begin
        lBudgetAppropriationMethod := GetBudgetAppropriationMethod;
        case lBudgetAppropriationMethod of
            lBudgetAppropriationMethod::"Amount Without VAT":
                exit(Amount);
            lBudgetAppropriationMethod::"Amount With VAT":
                exit("Amount Including VAT");
            lBudgetAppropriationMethod::"Cost Amount":
                exit("Cost Amount");
        end;
    end;

    procedure LookupShortcutDimCode(FieldNumber: Integer; var ShortcutDimCode: Code[20])
    var
    begin
        DimMgt.LookupDimValueCode(FieldNumber, ShortcutDimCode);
        DimMgt.ValidateShortcutDimValues(FieldNumber, ShortcutDimCode, "Dimension Set ID");
    end;

    procedure ShowShortcutDimCode(var ShortcutDimCode: array[8] of Code[20])
    begin
        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID", ShortcutDimCode[1], ShortcutDimCode[2]);
        DimMgt.GetShortcutDimensions("Dimension Set ID", ShortcutDimCode);
    end;

    procedure ShowShortcutDimDescription(var ShortcutDimDescription: array[8] of Text[50])
    var
        GLSetupShortcutDimCode: array[8] of Code[20];
        DimSetEntry: Record "Dimension Set Entry";
        i: Integer;
    begin
        DimMgt.GetGLSetup(GLSetupShortcutDimCode);
        For i := 1 to 8 do begin
            ShortcutDimDescription[i] := '';
            DimSetEntry.RESET;
            DimSetEntry.SETRANGE("Dimension Set ID", "Dimension Set ID");
            DimSetEntry.SETRANGE("Dimension Code", GLSetupShortcutDimCode[i]);
            IF DimSetEntry.FINDFIRST THEN BEGIN
                DimSetEntry.CALCFIELDS("Dimension Value Name");
                ShortcutDimDescription[i] := DimSetEntry."Dimension Value Name";
            END;
        end;
    end;
}

