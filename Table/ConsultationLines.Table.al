table 57074 "Consultation Lines"
{
    Caption = 'Consultation Lines';

    fields
    {
        field(1; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
        }
        field(2; "Requisition Code"; Code[20])
        {
            Caption = 'Requisition Code';
        }
        field(3; "Requisition Line"; Integer)
        {
            Caption = 'Requisition Line';
            Editable = false;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(6; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(7; "Requisition Quantity"; Decimal)
        {
            Caption = 'Requisition Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(9; "Quote Quantity"; Decimal)
        {
            Caption = 'Quote Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(13; "No."; Code[20])
        {
            Caption = 'No.';
            Editable = false;
            TableRelation = IF ("Line Type" = CONST(Item)) Item
            ELSE
            IF ("Line Type" = CONST("Fixed Asset")) "Fixed Asset";
        }
        field(14; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(16; "Amount Including VAT"; Decimal)
        {
            Caption = 'Amount Including VAT';
            DecimalPlaces = 2 : 2;
        }
        field(17; "Requisition Unit of Measure"; Code[10])
        {
            Caption = 'Requisition Unit of Measure';
            TableRelation = "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."));
        }
        field(18; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
        }
        field(19; "Cost Amount"; Decimal)
        {
            Caption = 'Cost Amount';
            DecimalPlaces = 2 : 2;
        }
        field(20; Amount; Decimal)
        {
            Caption = 'Amount';
            DecimalPlaces = 2 : 2;
        }
        field(21; "Shortcut Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1),
                                                          Blocked = CONST(false));

        }
        field(22; "Shortcut Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2),
                                                          Blocked = CONST(false));

        }
        field(61002; Observations; Text[250])
        {
            Caption = 'Observations';
            Editable = false;
        }
        field(61028; "Line Type"; Enum "Documents Line Type")
        {
            Caption = 'Type';
        }
        field(61039; "Section Code"; Code[20])
        {
            Caption = 'Section Code';
            Editable = false;
            TableRelation = Sections;
        }
        field(61040; "Unit Cost"; Decimal)
        {
            Caption = 'Unit Cost';
        }
        field(61047; "Contract Year"; Integer)
        {
            Caption = 'Contract Year';
        }
        field(57100; "Consultation Status"; enum "Consultation Status")
        {
            Caption = 'Consultation Status';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Consultation."Consultation Status" where("Consultation Code" = field("Consultation Code")));
        }
        field(57101; "Requisition Date"; Date)
        {
            Caption = 'Requisition Date';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Requisition."Requisition Date" where("Requisition Code" = field("Requisition Code")));
        }
        field(57102; "Consultation Date"; Date)
        {
            Caption = 'Consultation Date';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Consultation."Start Date" where("Consultation Code" = field("Consultation Code")));
        }
        field(57103; "First Purchase Quote Date"; Date)
        {
            Caption = 'First Purchase Quote Date';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = min("Purchase Header"."Posting Date" where("Consultation Code" = field("Consultation Code"),
                                                                    "Document Type" = const(Quote)));
        }
        field(57104; "First Purchase Order Date"; Date)
        {
            Caption = 'First Purchase Order Date';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = min("Purchase Header"."Posting Date" where("Consultation Code" = field("Consultation Code"),
                                                                    "Document Type" = const(Order)));
        }
        field(57105; "First Purchase Receipt Date"; Date)
        {
            Caption = 'First Purchase Receipt Date';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = min("Purch. Rcpt. Header"."Posting Date" where("Consultation Code" = field("Consultation Code")));
        }
        field(57106; "First Invoice Date"; Date)
        {
            Caption = 'First Invoice Date';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = min("Purch. Inv. Header"."Posting Date" where("Consultation Code" = field("Consultation Code")));
        }
        field(57107; "First CrMemo Date"; Date)
        {
            Caption = 'First CrMemo Date';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = min("Purch. Inv. Header"."Posting Date" where("Consultation Code" = field("Consultation Code")));
        }
    }

    keys
    {
        key(Key1; "Consultation Code", "Line No.")
        {
            Clustered = true;
            SumIndexFields = Amount, "Amount Including VAT", "Cost Amount";
        }
        key(Key2; "Requisition Code", "Requisition Line", "No.")
        {
        }
        key(Key3; "Consultation Code", "Requisition Code")
        {
        }
        key(Key4; "Section Code")
        {
        }
        Key(Key5; "Contract Year")
        {
            SumIndexFields = Amount, "Amount Including VAT", "Cost Amount";
        }
    }

    fieldgroups
    {
    }
    var
        PTSSTextManagement: Codeunit "PTSS TextManagement";
        CduCons: Codeunit Consultation;
        Text001: Label 'You cant dissassociate a requisition with pending associated budget requests.';
        Text002: Label 'You cant dissassociate a requisition with pending adjudications requests.';
        Text003: Label 'You cant dissassociate a requisition with %1 associated.';
        Text004: Label 'You cant dissassociate a requisition with avaylable budgets.';
        Text005: Label 'You cant dissassociate a requisition with adjudications.';

    trigger OnDelete()
    var
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        PAQLines: Record "PAQ Lines";
        PurchaseLines: Record "Purchase Line";
        PostedAvayBudgetLines: Record "Posted Avaylable Budget Line";
        PostedPAQLines: Record "Posted PAQ Lines";
        ConsultationLines: Record "Consultation Lines";
        AprovalEntry: Record "Aproval Entry";

    begin
        CduCons.ValidatePermissions("Consultation Permissions"::Delete);
        AvaylableBudgetLines.Reset;
        AvaylableBudgetLines.SetRange("Consultation Code", "Consultation Code");
        AvaylableBudgetLines.SetRange("Requisition Code", "Requisition Code");
        If not AvaylableBudgetLines.IsEmpty then
            Error(Text001);

        PAQLines.Reset;
        PAQLines.SetRange("Consultation Code", "Consultation code");
        PAQLines.SetRange("Requisition Code", "Requisition Code");
        IF not PAQLines.IsEmpty then
            Error(Text002);

        PurchaseLines.Reset();
        PurchaseLines.SetRange("Consultation Code", "Consultation Code");
        PurchaseLines.SetRange("Requisition Code", "Requisition Code");
        if PurchaseLines.FindFirst() then
            Error(Text003, PurchaseLines."Document Type");

        PostedAvayBudgetLines.Reset;
        PostedAvayBudgetLines.SetRange("Consultation Code", "Consultation Code");
        PostedAvayBudgetLines.SetRange("Requisition Code", "Requisition Code");
        if not PostedAvayBudgetLines.IsEmpty then
            Error(Text004);

        PostedPAQLines.Reset;
        PostedPAQLines.SetRange("Consultation Code", "Consultation Code");
        PostedPAQLines.SetRange("Requisition Code", "Requisition Code");
        if not PostedPAQLines.IsEmpty then
            Error(Text005);

        ConsultationLines.Reset();
        ConsultationLines.SetRange("Consultation Code", "Consultation Code");
        ConsultationLines.SetRange("Requisition Code", "Requisition Code");
        ConsultationLines.DeleteAll();
    end;
}