table 57072 "PAQ Lines"
{
    Caption = 'PAQ Lines';
    DrillDownPageID = "PAQ Lines List";
    LookupPageID = "PAQ Lines List";

    fields
    {
        field(1; "PAQ Code"; Code[20])
        {
            Caption = 'Adjudication Code';
            TableRelation = PAQ;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
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
            Editable = false;
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(12; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
            Editable = false;
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
            Editable = false;
        }
        field(25; "VAT %"; Decimal)
        {
            Caption = 'VAT %';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(29; Amount; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Amount';
            Editable = false;
        }
        field(30; "Amount Including VAT"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            Caption = 'Amount Including VAT';
            Editable = false;

        }
        field(32; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            trigger OnLookup()
            begin
                ShowDimensions;
            end;
        }
        field(91; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(61002; "Requisition Code"; Code[20])
        {
            Caption = 'Requisition Code';
            Editable = false;
            TableRelation = Requisition;
        }
        field(61003; "Requisition Line"; Integer)
        {
            Caption = 'Requisition Line';
            Editable = false;
        }
        field(61004; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            Editable = false;

        }
        field(61005; Status; enum "PAQ Status")
        {
            Caption = 'Status';
            Editable = false;
        }
        field(61006; "Quote No."; Code[20])
        {
            Caption = 'Quote No.';
            Editable = false;
            TableRelation = "Purchase Header"."No." WHERE("Document Type" = FILTER(Quote | Order),
                                                           "No." = FIELD("Quote No."));
        }
        field(61007; "Quote Line No."; Integer)
        {
            Caption = 'Quote Line No.';
            Editable = false;
            TableRelation = "Purchase Line"."No." WHERE("Document Type" = CONST(Quote),
                                                           "No." = FIELD("Quote No."),
                                                           "Line No." = field("Quote Line No."));
        }
        field(61009; "Original Direct Unit Cost"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            Caption = 'Original Direct Unit Cost';
            Editable = false;
        }
        field(61010; "Original Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Original Amount';
            Editable = false;
        }
        field(61011; "Original Amount Including VAT"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Original Amount Including VAT';
            Editable = false;
        }
        field(61028; "Line Type"; Enum "Documents Line Type")
        {
            Caption = 'Type';
        }
        field(61031; "PAQ Date"; Date)
        {
            Caption = 'PAQ Date';
            Editable = false;
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
        field(61060; "Dimensions Source"; enum "Dimensions Source")
        {
            Caption = 'Dimensions Source';
        }
        field(61061; "Dimensions Source Type"; Integer)
        {
            Caption = 'Dimensions Source Type';
        }
        field(61062; "Dimensions Source Subtype"; enum "Dimensions Source Subtype")
        {
            Caption = 'Dimensions Source Subtype';
        }
        field(61063; "Dimensions Source Doc. No."; Code[20])
        {
            Caption = 'Dimensions Source Doc. No.';
        }
        field(61064; "Dimensions Source Line No."; Integer)
        {
            Caption = 'Dimensions Source Line No.';
        }
        field(61072; "Original Cost Amount"; Decimal)
        {
            Caption = 'Original Cost Amount';
        }
        field(70000; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
        }
    }

    keys
    {
        key(Key1; "PAQ Code", "Line No.")
        {
            Clustered = true;
            SumIndexFields = "Amount Including VAT", Amount, "Cost Amount";
        }
        key(Key2; "Consultation Code", "No.")
        {
            SumIndexFields = "Amount Including VAT", Amount, "Cost Amount";
        }
        key(Key4; "Requisition Code", "Requisition Line", Status)
        {
            SumIndexFields = "Amount Including VAT", Amount, "Cost Amount";
        }
        key(Key5; "Requisition Code")
        {
        }
    }

    fieldgroups
    {
    }
    var
        DimMgt: Codeunit DimensionManagement;
        Text001: Label 'You cannot rename %1.';
        CduPAQ: Codeunit PAQ;

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

    procedure ShowDimensions()
    begin
        DimMgt.ShowDimensionSet("Dimension Set ID", STRSUBSTNO('%1 %2', TABLECAPTION, "PAQ Code"));
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
}

