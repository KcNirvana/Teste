table 57047 "Avaylable Budget Line"
{

    Caption = 'Avaylable Budget Line';
    DrillDownPageID = "Avaylable Budget Lines List";
    LookupPageID = "Avaylable Budget Lines List";

    fields
    {
        field(1; "Requisition Code"; Code[20])
        {
            Caption = 'Requisition Code';
            TableRelation = Requisition;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF ("Line Type" = CONST("G/L Account")) "G/L Account"
            ELSE
            IF ("Line Type" = CONST(Item)) Item
            ELSE
            IF ("Line Type" = CONST(Resource)) Resource
            ELSE
            IF ("Line Type" = CONST("Fixed Asset")) "Fixed Asset"
            ELSE
            IF ("Line Type" = CONST("Charge (Item)")) "Item Charge";

            trigger OnValidate()
            begin
                CASE "Line Type" OF
                    "Line Type"::" ":
                        CopyFromStandardText;
                    "Line Type"::Item:
                        CopyFromItem;
                    "Line Type"::"Fixed Asset":
                        CopyFromFixedAsset;
                END;
            end;
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5; "Stock Quantity"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("No."),
                                                                              "Location Code" = FIELD("Location Code")));
            Caption = 'Stock Quantity';
            DecimalPlaces = 0 : 0;
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(9; "Quote Quantity"; Decimal)
        {
            CalcFormula = Lookup("Requisition Lines"."Quote Quantity" WHERE("Requisition Code" = FIELD("Requisition Code"),
                                                                             "Line No." = FIELD("Requisition Line"),
                                                                             "Consultation Code" = FIELD("Consultation Code")));
            Caption = 'Quote Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; Observations; Text[60])
        {
            Caption = 'Observations';
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
        field(21; "Avay Code"; Code[20])
        {
            Caption = 'Avay Code';
            TableRelation = "Avaylable Budget";
        }
        field(22; "Unit Cost"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            Caption = 'Unit Cost';
        }
        field(23; "Amount Including VAT"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            Caption = 'Amount Including VAT';

        }
        field(24; "End Avaylable Dotation"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            Caption = 'End Avaylable Dotation';
        }
        field(25; "Requisition Line"; Integer)
        {
            Caption = 'Requisition Line';
            Editable = false;
        }
        field(28; "Avay Date"; Date)
        {
            Caption = 'Avay Date';
            Editable = false;
        }
        field(29; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            Editable = false;
        }
        field(30; "Dimension Set ID"; Integer)
        {

            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
            trigger OnLookup()
            begin
                ShowDimensions;
            end;
        }
        field(61002; "VAT %"; Decimal)
        {
            Caption = 'VAT %';
            Editable = false;
        }
        field(61003; Amount; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Amount';
            Editable = false;
        }
        field(61004; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
        }
        field(61005; "Quote No."; Code[20])
        {
            Caption = 'Quote No.';
            Editable = false;
            TableRelation = "Purchase Header"."No." WHERE("Document Type" = CONST(Quote),
                                                           "No." = FIELD("Quote No."));
        }
        field(61006; "Quote Line No."; Integer)
        {
            Caption = 'Quote Line No.';
            TableRelation = "Purchase Line"."No." WHERE("Document Type" = CONST(Quote),
                                                           "No." = FIELD("Quote No."),
                                                           "Line No." = field("Quote Line No."));
            Editable = false;
        }
        field(61007; "Original Direct Unit Cost"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            Caption = 'Original Direct Unit Cost';
            Editable = false;
        }
        field(61008; "Original Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Original Amount';
            Editable = false;
        }
        field(61009; "Original Amount Including VAT"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Original Amount Including VAT';
            Editable = false;
        }
        field(61010; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(61028; "Line Type"; enum "Documents Line Type")
        {
            Caption = 'Type';
        }
        field(61040; "ND %"; Decimal)
        {
            Caption = 'ND %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(61041; "Cost Amount"; Decimal)
        {
            Caption = 'Cost Amount';
        }
        field(61050; "Dimensions Source"; Enum "Dimensions Source")
        {
            Caption = 'Dimensions Source';
        }
        field(61051; "Dimensions Source Type"; Integer)
        {
            Caption = 'Dimensions Source Type';
        }
        field(61052; "Dimensions Source Subtype"; Enum "Dimensions Source Subtype")
        {
            Caption = 'Dimensions Source Subtype';
        }
        field(61053; "Dimensions Source Doc. No."; Code[20])
        {
            Caption = 'Dimensions Source Doc. No.';
        }
        field(61054; "Dimensions Source Line No."; Integer)
        {
            Caption = 'Dimensions Source Line No.';
        }
        field(61059; "Initial Avaylable Dotation"; Decimal)
        {
            Caption = 'Initial Avaylable Dotation';
            Editable = false;
        }
        field(61064; "Original Cost Amount"; Decimal)
        {
            Caption = 'Original Cost Amount';
        }
        field(61066; "Requisition Observations"; Text[250])
        {
            Caption = 'Requisition Observations';
        }
        field(70000; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
        }
    }

    keys
    {
        key(Key1; "Avay Code", "Line No.")
        {
            Clustered = true;
            SumIndexFields = "Amount Including Vat", Amount, "Cost Amount";
        }
        key(Key2; "Requisition Code", "Line No.")
        {
            SumIndexFields = "Amount Including Vat", Amount, "Cost Amount";
        }
        key(Key3; "Avay Date", "Consultation Code")
        {
            SumIndexFields = "Amount Including Vat", Amount, "Cost Amount";
        }
        key(Key4; "Consultation Code", "Line Type")
        {
            SumIndexFields = "Amount Including Vat", Amount, "Cost Amount";
        }
        key(Key5; "Requisition Code", "Requisition Line")
        {
            SumIndexFields = "Amount Including Vat", Amount, "Cost Amount";
        }
        key(Key6; "Requisition Code", "Requisition Line", "No.")
        {
            SumIndexFields = "Amount Including Vat", Amount, "Cost Amount";
        }
        key(Key7; "Requisition Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Avay Code", "Avay Date", "Line Type", "No.", "Consultation Code")
        {
        }
    }

    trigger OnInsert()
    begin
        "Dimensions Source" := "Dimensions Source"::Requisition;
        "Dimensions Source Type" := DATABASE::"Requisition Lines";
        "Dimensions Source Subtype" := "Dimensions Source Subtype"::"6";
        "Dimensions Source Doc. No." := "Requisition Code";
        "Dimensions Source Line No." := "Requisition Line";
    end;

    trigger OnRename()
    begin
        Error(Text001, TableCaption);
    end;

    var
        DimMgt: Codeunit DimensionManagement;
        Text001: Label 'You cannot rename %1.';

    procedure GetBudgetAppropriationMethod(): Enum "Budget Appropriation Method"
    var
        BudgetConfig: Record "Budget Configuration";
    begin
        BudgetConfig.Get();
        BudgetConfig.TestField("Budget Appropriation Method");
        exit(BudgetConfig."Budget Appropriation Method");
    end;

    procedure GetAvayLineAmount(): Decimal
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

    procedure ShowDimensions()
    begin
        DimMgt.ShowDimensionSet("Dimension Set ID", STRSUBSTNO('%1 %2', TABLECAPTION, "Avay Code"));
    end;

    local procedure CopyFromStandardText()
    var
        StandardText: Record "Standard Text";
    begin
        StandardText.Get("No.");
        Description := StandardText.Description;
    end;

    local procedure CopyFromFixedAsset()
    var
        FixedAsset: Record "Fixed Asset";
    begin
        FixedAsset.Get("No.");
        FixedAsset.TestField(Inactive, false);
        FixedAsset.TestField(Blocked, false);
        Description := FixedAsset.Description;
    end;

    local procedure CopyFromItem()
    var
        Item: Record Item;
    begin
        GetItem(Item);
        Item.TestField(Description);
        Item.TestField(Blocked, FALSE);
        Item.TestField("Gen. Prod. Posting Group");
        Description := Item.Description;
    end;

    local procedure GetItem(var Item: Record Item)
    begin
        TESTFIELD("No.");
        Item.GET("No.");
    end;

    procedure LookupShortcutDimCode(FieldNumber: Integer; var ShortcutDimCode: Code[20])
    var
    begin
        DimMgt.LookupDimValueCode(FieldNumber, ShortcutDimCode);
        DimMgt.ValidateShortcutDimValues(FieldNumber, ShortcutDimCode, "Dimension Set ID");
    end;

    procedure ShowShortcutDimCode(var ShortcutDimCode: array[8] of Code[20])
    begin
        DimMgt.GetShortcutDimensions("Dimension Set ID", ShortcutDimCode);
    end;
}

