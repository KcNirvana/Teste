table 57049 "Requisition Lines"
{
    Caption = 'Requisition Lines';
    DrillDownPageID = "Requisition Lines List";
    LookupPageID = "Requisition Lines List";

    fields
    {
        field(1; "Requisition Code"; Code[20])
        {
            Caption = 'Requisition Code';
            NotBlank = true;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';

        }
        field(3; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST(" ")) "Standard Text"
            ELSE
            IF (Type = CONST("Fixed Asset")) "Fixed Asset"
            ELSE
            IF (Type = CONST(Item)) Item WHERE(Blocked = CONST(false));
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                TempRequisitionLine: Record "Requisition Lines" temporary;
            begin
                TestStatusOpen();
                TempRequisitionLine := Rec;
                Init();
                "Contract Year" := TempRequisitionLine."Contract Year";
                Type := TempRequisitionLine.Type;
                "No." := TempRequisitionLine."No.";
                IF "No." = '' THEN
                    exit;
                CASE Type OF
                    Type::" ":
                        CopyFromStandardText;
                    Type::Item:
                        CopyFromItem;
                    Type::"Fixed Asset":
                        CopyFromFixedAsset;
                END;
                IF Type = Type::Item then
                    Validate("VAT Prod. Posting Group");

                CreateDimFromDefaultDim();
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
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(7; "Requisition Quantity"; Decimal)
        {
            Caption = 'Requisition Quantity';
            DecimalPlaces = 1 : 4;

            trigger OnValidate()
            begin
                TestStatusOpen();
                if "Requisition Quantity" <= 0 then
                    Error(Text002);

                BudgetConfig.Get();

                if BudgetConfig."Quote Qt. equal Req Quant" then
                    "Quote Quantity" := "Requisition Quantity"
                else
                    "Quote Quantity" := "Requisition Quantity" - "Stock Quantity";
                Validate(Amount, "Requisition Quantity" * "Unit Cost");
            end;
        }
        field(9; "Quote Quantity"; Decimal)
        {
            Caption = 'Quote Quantity';
        }
        field(15; Observations; Text[250])
        {
            Caption = 'Observations';
        }
        field(18; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            Editable = false;
            InitValue = 1;
        }

        field(19; "Shortcut Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1),
                                                          Blocked = CONST(false));

            trigger OnValidate()
            begin
                ValidateShortcutDimCode(1, "Shortcut Dimension 1 Code");
            end;
        }
        field(20; "Shortcut Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2),
                                                          Blocked = CONST(false));

            trigger OnValidate()
            begin
                ValidateShortcutDimCode(2, "Shortcut Dimension 2 Code");
            end;
        }
        field(21; Status; Enum "Requisition Status")
        {
            CalcFormula = Lookup(Requisition.Status WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Status';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Base Unit of Measure"; Code[10])
        {
            Caption = 'Base Unit of Measure';
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            "Unit of Measure";

            trigger OnValidate()
            begin
                TestStatusOpen();
            end;
        }
        field(23; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
            Editable = false;
        }
        field(24; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";

            trigger OnLookup()
            begin
                ShowDimensions;
            end;
        }
        field(50000; Datefilter; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(50002; "Item Category Code"; Code[20])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(50011; "Remain Quantity"; Decimal)
        {
            Caption = 'Remain Quantity';
        }
        field(61028; Type; Enum "Documents Line Type")
        {
            Caption = 'Type';

            trigger OnValidate()
            var
                TempRequisitionLine: Record "Requisition Lines" temporary;
            begin
                TestStatusOpen();
                TempRequisitionLine := Rec;
                Rec.Init();
                "Contract Year" := TempRequisitionLine."Contract Year";
                Type := TempRequisitionLine.Type;
            end;
        }
        field(61032; "VAT Calculation Type"; enum "Tax Calculation Type")
        {
            Caption = 'VAT Calculation Type';
        }

        field(61033; "VAT Base Amount"; Decimal)
        {
            Caption = 'VAT Base Amount';
        }
        field(61034; "Unit Cost"; Decimal)
        {
            Caption = 'Unit Cost';
            DecimalPlaces = 0 : 8;

            trigger OnValidate()
            begin
                Validate(Amount, ("Requisition Quantity" * "Unit Cost"));
            end;
        }
        field(61035; Amount; Decimal)
        {
            Caption = 'Amount';

            trigger OnValidate()
            begin
                GetRequisition();
                Amount := Round(Amount, Currency."Amount Rounding Precision");
                case "VAT Calculation Type" of
                    "VAT Calculation Type"::"Normal VAT",
                    "VAT Calculation Type"::"PTSS No Taxable VAT",
                    "VAT Calculation Type"::"Reverse Charge VAT":
                        begin
                            "VAT Base Amount" :=
                                Round(Amount, Currency."Amount Rounding Precision");
                            "Amount Including VAT" :=
                                Round(Amount + "VAT Base Amount" * ("VAT %" + "ND %") / 100, Currency."Amount Rounding Precision");
                            "Cost Amount" := GetCostAmount();
                            if "Requisition Quantity" <> 0 then
                                "Unit Cost" := Amount / "Requisition Quantity";
                        END;
                    "VAT Calculation Type"::"Full VAT":
                        IF Amount <> 0 THEN
                            FIELDERROR(Amount,
                                STRSUBSTNO(
                                Text003, FIELDCAPTION("VAT Calculation Type"),
                                "VAT Calculation Type"));
                    "VAT Calculation Type"::"Sales Tax":
                        BEGIN
                            "VAT Base Amount" := Amount;
                            IF "VAT Base Amount" <> 0 THEN begin
                                "VAT %" := Round(100 * ("Amount Including VAT" - "VAT Base Amount") / "VAT Base Amount", 0.000001);
                                "Cost Amount" := "VAT Base Amount";
                            End ELSE BEGIN
                                "ND %" := 0;
                                "VAT %" := 0;
                            END;
                        END;
                end;
            end;
        }
        field(61036; "Cost Amount"; Decimal)
        {
            Caption = 'Cost Amount';
        }
        field(61037; "VAT %"; Decimal)
        {
            Caption = 'VAT %';
        }
        field(61038; "ND %"; Decimal)
        {
            Caption = 'ND %';
        }
        field(61039; "Vat Prod. Posting Group"; Code[20])
        {
            Caption = 'Vat Prod. Posting Group';
            TableRelation = "VAT Product Posting Group".Code;

            trigger OnValidate()
            var
                VATPostingSetup: Record "VAT Posting Setup";
            begin
                TestStatusOpen;
                VATPostingSetup.GET("VAT Bus. Posting Group", "VAT Prod. Posting Group");
                "VAT %" := VATPostingSetup."PTSS VAT D. %";
                "ND %" := VATPostingSetup."PTSS VAT N.D. %";
                "VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
                CASE "VAT Calculation Type" OF
                    "VAT Calculation Type"::"Reverse Charge VAT",
                    "VAT Calculation Type"::"Sales Tax":
                        BEGIN
                            "ND %" := 0;
                            "VAT %" := 0;
                        END;
                END;
                Validate("Unit Cost");
            end;
        }

        field(61041; "Vat Bus. Posting Group"; Code[20])
        {
            Caption = 'Vat Bus. Posting Group';
            TableRelation = "VAT Business Posting Group".Code;

            trigger OnValidate()
            begin
                VALIDATE("VAT Prod. Posting Group");
            end;
        }
        field(61044; "Amount Including VAT"; Decimal)
        {
            Caption = 'Amount Including VAT';
            trigger OnValidate()
            begin
                "Amount Including VAT" := Round("Amount Including VAT", Currency."Amount Rounding Precision");
                CASE "VAT Calculation Type" OF
                    "VAT Calculation Type"::"Normal VAT",
                    "VAT Calculation Type"::"PTSS No Taxable VAT",
                    "VAT Calculation Type"::"Reverse Charge VAT":
                        BEGIN
                            Amount := Round("Amount Including VAT" / (1 * ("VAT %" + "ND %") / 100), Currency."Amount Rounding Precision");
                            "VAT Base Amount" := Round(Amount, Currency."Amount Rounding Precision");
                        END;
                    "VAT Calculation Type"::"Full VAT":
                        BEGIN
                            Amount := 0;
                            "VAT Base Amount" := 0;
                        END;
                    "VAT Calculation Type"::"Sales Tax":
                        BEGIN
                            Amount := "Amount Including VAT";
                            "VAT Base Amount" := Amount;
                            "ND %" := 0;
                            "VAT %" := 0;
                        END;
                END;
                Validate("Unit Cost");
            END;
        }
        field(61045; "Initial Avaylable Dotation"; Decimal)
        {
            Caption = 'Initial Avaylable Dotation';
            Editable = false;
        }
        field(61046; "End Avaylable Dotation"; Decimal)
        {
            Caption = 'End Avaylable Dotation';
            Editable = false;
        }

        field(61074; "Contract Year"; Integer)
        {
            Caption = 'Contract Year';
            trigger OnValidate()
            begin
                ValidateCtrYear;
            end;
        }
        field(57000; "Requisition Date"; Date)
        {
            CalcFormula = Lookup(Requisition."Requisition Date" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Requisition Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(57001; "Requisition Department"; Code[20])
        {
            CalcFormula = Lookup(Requisition."Department Code" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Department Code';
            FieldClass = FlowField;
            Editable = false;
        }
        field(57002; "Requisition Section"; Code[20])
        {
            CalcFormula = Lookup(Requisition."Section Code" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Section Code';
            FieldClass = FlowField;
            Editable = false;
        }
        field(57003; "Requisition Employee"; Code[20])
        {
            CalcFormula = Lookup(Requisition."Requisition Employee" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Requisition Employee';
            FieldClass = FlowField;
            Editable = false;
        }
        field(57004; "Requisition User"; Code[50])
        {
            Caption = 'Requisition User';
            FieldClass = FlowField;
            CalcFormula = Lookup(Requisition."Created By" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Editable = false;
        }
        field(57005; "Requisition Status"; enum "Requisition Status")
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Requisition.Status WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Requisition Status';
            Editable = false;

        }
        field(57006; "Req. Approved/Rejected Date"; Date)
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Requisition."Approved/Rejected Date" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Requisition Approved/Rejected Date';
            Editable = false;

        }
        field(57007; "Req. Approved/Rejected by"; Code[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Requisition."Approved/Rejected by" WHERE("Requisition Code" = FIELD("Requisition Code")));
            Caption = 'Requisition Approved/Rejected by';
            Editable = false;

        }
        field(57008; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            FieldClass = FlowField;
            CalcFormula = Lookup("Consultation Lines"."Consultation Code" WHERE("Requisition Code" = FIELD("Requisition Code"),
                                                                                "Requisition Line" = field("Line No.")));
            Editable = false;
        }
        field(57009; "Consultation Status"; enum "Req. Consultation Status")
        {
            Caption = 'Consultation Status';
            Editable = false;
        }
        field(57010; "Avaylable Budgets"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Avaylable Budget Line" WHERE("Requisition Code" = FIELD("Requisition Code"),
                                                              "Requisition Line" = field("Line No.")));
            Caption = 'Avaylable Budgets';
            Editable = false;

        }
        field(57011; "Posted Avaylable Budgets"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Posted Avaylable Budget Line" WHERE("Requisition Code" = FIELD("Requisition Code"),
                                                                     "Requisition Line" = field("Line No.")));
            Caption = 'Posted Avaylable Budgets';
            Editable = false;

        }
        field(57012; "PAQs"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("PAQ Lines" WHERE("Requisition Code" = FIELD("Requisition Code"),
                                                  "Requisition Line" = field("Line No.")));
            Caption = 'Adjudications';
            Editable = false;

        }
        field(57013; "Posted PAQs"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Posted PAQ Lines" WHERE("Requisition Code" = FIELD("Requisition Code"),
                                                         "Requisition Line" = field("Line No.")));
            Caption = 'Posted Adjudications';
            Editable = false;
        }
        field(57014; Orders; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purchase Line" WHERE("Document Type" = CONST(Order),
                                                      "Requisition Code" = FIELD("Requisition Code"),
                                                      "Requisition Line" = field("Line No.")));
            Caption = 'Orders';
            Editable = false;
        }
        field(57015; Quotes; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purchase Line" WHERE("Document Type" = CONST(Quote),
                                                      "Requisition Code" = FIELD("Requisition Code"),
                                                      "Requisition Line" = field("Line No.")));
            Caption = 'Quotes';
            Editable = false;
        }
        field(57016; "Purch Receipts"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purch. Rcpt. Line" WHERE("Requisition Code" = FIELD("Requisition Code"),
                                                          "Requisition Line" = field("Line No.")));
            Caption = 'Purch Receipts';
            Editable = false;
        }
        field(57017; "Invoices"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purchase Line" WHERE("Document Type" = CONST(Invoice),
                                                      "Requisition Code" = FIELD("Requisition Code"),
                                                      "Requisition Line" = field("Line No.")));
            Caption = 'Invoices';
            Editable = false;
        }
        field(57018; "Posted Invoices"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purch. Inv. Line" WHERE("Requisition Code" = FIELD("Requisition Code"),
                                                         "Requisition Line" = field("Line No.")));
            Caption = 'Posted Invoices';
            Editable = false;
        }
        field(57019; "Credit Memos"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purchase Line" WHERE("Document Type" = CONST("Credit Memo"),
                                                      "Requisition Code" = FIELD("Requisition Code"),
                                                      "Requisition Line" = field("Line No.")));
            Caption = 'Credit Memos';
            Editable = false;
        }
        field(57020; "Posted Credit Memos"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Purch. Cr. Memo Line" WHERE("Requisition Code" = FIELD("Requisition Code"),
                                                            "Requisition Line" = field("Line No.")));
            Caption = 'Posted Credit Memos';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Requisition Code", "Line No.")
        {
            Clustered = true;
            SumIndexFields = Amount, "Cost Amount", "Requisition Quantity", "Amount Including VAT";
        }
        key(Key2; "Quote Quantity", "Requisition Code")
        {
            SumIndexFields = Amount, "Cost Amount";
        }
        key(Key4; Type, "No.")
        {
            SumIndexFields = Amount, "Cost Amount", "Requisition Quantity";
        }
        key(Key5; Type)
        {
            SumIndexFields = Amount, "Cost Amount", "Requisition Quantity", "Amount Including VAT";
        }
    }

    fieldgroups
    {
    }

    var
        Requisition: Record Requisition;
        DimMgt: Codeunit DimensionManagement;
        PTSSTextManagement: Codeunit "PTSS TextManagement";
        Currency: Record Currency;
        BudgetConfig: Record "Budget Configuration";
        CduReq: Codeunit Requisition;
        Text001: Label 'The contract year is not valid.';
        Text002: Label 'Quantity must be greather than zero.';
        Text003: Label ' must be 0 when %1 is %2';

    trigger OnDelete()
    begin
        CduReq.ValidatePermissions("Requisition Permissions"::Delete);
    end;

    trigger OnInsert()
    begin
        CduReq.ValidatePermissions("Requisition Permissions"::Create);
    end;

    trigger OnModify()
    begin
        CduReq.ValidatePermissions("Requisition Permissions"::Modify);
    end;

    procedure IsContract(RequisitionLines: Record "Requisition Lines"): Boolean
    begin
        GetRequisition();
        exit(Requisition.IsContract)
    end;

    procedure ShowDimensions()
    begin
        "Dimension Set ID" :=
          DimMgt.EditDimensionSet("Dimension Set ID", StrSubstNo('%1 %2 %3', TABLECAPTION, "Requisition Code", "Line No."));
        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code");
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

    procedure ValidateShortcutDimCode(FieldNumber: Integer; var ShortcutDimCode: Code[20])
    begin
        DimMgt.ValidateShortcutDimValues(FieldNumber, ShortcutDimCode, "Dimension Set ID");
    end;

    procedure CreateDimFromDefaultDim()
    var
        DefaultDimSource: List of [Dictionary of [Integer, Code[20]]];
    begin
        InitDefaultDimensionSources(DefaultDimSource);
        CreateDim(DefaultDimSource);
    end;

    local procedure InitDefaultDimensionSources(var DefaultDimSource: List of [Dictionary of [Integer, Code[20]]])
    begin
        GetRequisition();
        DimMgt.AddDimSource(DefaultDimSource, Database::Employee, Requisition."Requisition Employee");
        case Type of
            Type::"Fixed Asset":
                DimMgt.AddDimSource(DefaultDimSource, DATABASE::"Fixed Asset", "No.");
            Type::"Item":
                DimMgt.AddDimSource(DefaultDimSource, DATABASE::"Item", "No.");
        end;
    end;

    local procedure CreateDim(DefaultDimSource: List of [Dictionary of [Integer, Code[20]]])
    var
        SourceCodeSetup: Record "Source Code Setup";
    begin
        SourceCodeSetup.Get();
        "Shortcut Dimension 1 Code" := '';
        "Shortcut Dimension 2 Code" := '';
        GetRequisition();
        "Dimension Set ID" :=
          DimMgt.GetRecDefaultDimID(
            Rec, CurrFieldNo, DefaultDimSource, SourceCodeSetup.Requisition,
            "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", Requisition."Dimension Set ID", DATABASE::Employee);
        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code");
    end;

    procedure GetRequisition(): Record Requisition
    begin
        GetRequisition(Requisition);
        exit(Requisition);
    end;

    procedure GetRequisition(var OutRequisition: Record Requisition)
    begin
        TestField("Requisition Code");
        IF ("Requisition Code" <> Requisition."Requisition Code") then begin
            Requisition.GET("Requisition Code");
            Currency.InitRoundingPrecision;
        end;
        OutRequisition := Requisition;
    end;

    procedure TestStatusOpen()
    var
    begin
        GetRequisition();
        If not (Requisition.Status in ["Requisition Status"::Open, "Requisition Status"::Reopened]) then
            Requisition.FieldError(Status);
        Requisition.Testfield("Requisition Employee");
    end;

    local procedure GetCostAmount(): Decimal
    var
        lCostAmount: Decimal;
        VATPostingSetup: Record "VAT Posting Setup";
    begin
        Currency.InitRoundingPrecision;
        lCostAmount := Amount;
        if ("VAT %" + "ND %" <> 0) then
            lCostAmount += Round(("Amount Including VAT" - Amount) / ("VAT %" + "ND %") * "ND %", Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
        IF ("VAT %" + "ND %" = 0) AND ("VAT Calculation Type" = "VAT Calculation Type"::"Reverse Charge VAT") THEN BEGIN
            IF VATPostingSetup.GET("VAT Bus. Posting Group", "VAT Prod. Posting Group") THEN BEGIN
                "Cost Amount" += Round(Amount * (VATPostingSetup."PTSS VAT N.D. %") / 100, Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
            END;
        END;
        exit(lCostAmount);

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
        "Description 2" := FixedAsset."Description 2";
    end;

    local procedure CopyFromItem()
    var
        Item: Record Item;
    begin
        BudgetConfig.Get();
        GetItem(Item);
        Item.TestField(Description);
        Item.TestField(Blocked, FALSE);
        Item.TestField("Gen. Prod. Posting Group");
        Description := Item.Description;
        "Description 2" := Item."Description 2";
        "Vat Bus. Posting Group" := BudgetConfig."Req. Vat. Bus. Posting Group";
        "VAT Prod. Posting Group" := Item."VAT Prod. Posting Group";
        "Item Category Code" := Item."Item Category Code";
        if Item."Purch. Unit of Measure" <> '' then
            "Base Unit of Measure" := Item."Purch. Unit of Measure"
        else
            "Base Unit of Measure" := Item."Base Unit of Measure";
        GetUnitCost();
    end;

    local procedure GetUnitCost()
    var
        Item: Record Item;
        UOMMgt: Codeunit "Unit of Measure Management";
        GLSetup: Record "General Ledger Setup";
    begin
        TestField(Type, Type::Item);
        TestField("No.");
        GetItem(Item);
        GLSetup.Get();

        "Qty. per Unit of Measure" := UOMMgt.GetQtyPerUnitOfMeasure(Item, "Base Unit of Measure");
        Validate("Unit Cost", Item."Unit Cost" * "Qty. per Unit of Measure");
        "Unit Cost" := Round("Unit Cost", GLSetup."Unit-Amount Rounding Precision");
    end;

    local procedure GetItem(var Item: Record Item)
    begin
        TESTFIELD("No.");
        Item.GET("No.");
    end;

    local procedure ValidateCtrYear()
    var
        Contracts: Record Contract;
        Consultation: Record Consultation;
        MinYear: Integer;
        MaxYear: Integer;
    begin
        GetRequisition();
        Requisition.TestField("Contract No.");

        Contracts.Get(Requisition."Contract No.");
        Contracts.TestField("Start Date");
        Contracts.TestField("End Date");
        MinYear := Date2DMY(Contracts."Start Date", 3);
        MaxYear := Date2DMY(Contracts."End Date", 3);
        if ("Contract Year" < MinYear) or ("Contract Year" > MaxYear) then
            Error(Text001);
    end;

}