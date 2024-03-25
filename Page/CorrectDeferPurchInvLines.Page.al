page 50007 "Correct Defer. Purch Inv Lines"
{
    Caption = 'Correct Deferements';
    LinksAllowed = false;
    PageType = List;
    SourceTable = "Purch. Inv. Line";
    SourceTableTemporary = true;
    InsertAllowed = false;
    DeleteAllowed = false;
    Permissions = tabledata "Purch. Inv. Line" = RIMD;
    Editable = true;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    BlankZero = true;
                    Editable = false;
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Direct Unit Cost"; Rec."Direct Unit Cost")
                {
                    ApplicationArea = All;
                    BlankZero = true;
                    Editable = false;
                }
                field("Unit Price (LCY)"; Rec."Unit Price (LCY)")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ApplicationArea = All;
                    BlankZero = true;
                    Editable = false;
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ApplicationArea = All;
                    BlankZero = true;
                    Editable = false;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = Dimensions;
                    Visible = DimVisible1;
                    Editable = false;
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = Dimensions;
                    Visible = DimVisible2;
                    Editable = false;
                }
                field("ShortcutDimCode[3]"; ShortcutDimCode[3])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,3';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(3),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = DimVisible3;
                    Editable = false;
                }
                field("ShortcutDimCode[4]"; ShortcutDimCode[4])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,4';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(4),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = DimVisible4;
                    Editable = false;
                }
                field("ShortcutDimCode[5]"; ShortcutDimCode[5])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,5';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(5),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = DimVisible5;
                    Editable = false;
                }
                field("ShortcutDimCode[6]"; ShortcutDimCode[6])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,6';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(6),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = DimVisible6;
                    Editable = false;
                }
                field("ShortcutDimCode[7]"; ShortcutDimCode[7])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,7';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(7),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = DimVisible7;
                    Editable = false;
                }
                field("ShortcutDimCode[8]"; ShortcutDimCode[8])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,8';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(8),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = DimVisible8;
                    Editable = false;
                }
                field(Deferement; Rec.Deferement)
                {
                    ApplicationArea = All;
                }
                field("Deferement Start Date"; Rec."Deferement Start Date")
                {
                    Applicationarea = all;
                }
                field("Deferement Periodicity"; Rec."Deferement Periodicity")
                {
                    Applicationarea = all;
                }
                field("Deferement Account"; Rec."Deferement Account")
                {
                    Applicationarea = all;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Rec.ShowShortcutDimCode(ShortcutDimCode);
    end;

    trigger OnOpenPage()
    begin
        SetDimensionsVisibility();
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        if CloseAction in [Action::LookupOK, Action::OK] then begin
            ValidateDeferementLines();
        end;
    end;

    var
        ShortcutDimCode: array[8] of Code[20];
        DimVisible1: Boolean;
        DimVisible2: Boolean;
        DimVisible3: Boolean;
        DimVisible4: Boolean;
        DimVisible5: Boolean;
        DimVisible6: Boolean;
        DimVisible7: Boolean;
        DimVisible8: Boolean;

    local procedure SetDimensionsVisibility()
    var
        DimMgt: Codeunit DimensionManagement;
    begin
        DimVisible1 := false;
        DimVisible2 := false;
        DimVisible3 := false;
        DimVisible4 := false;
        DimVisible5 := false;
        DimVisible6 := false;
        DimVisible7 := false;
        DimVisible8 := false;

        DimMgt.UseShortcutDims(
          DimVisible1, DimVisible2, DimVisible3, DimVisible4, DimVisible5, DimVisible6, DimVisible7, DimVisible8);

        Clear(DimMgt);
    end;

    procedure SetRec(PurchInvHeader: Record "Purch. Inv. Header")
    var
        PurchInvLine: Record "Purch. Inv. Line";
    begin
        PurchInvLine.Reset();
        PurchInvLine.SetRange("Document No.", PurchInvHeader."No.");
        PurchInvLine.SetRange(Deferement, true);
        if PurchInvLine.FindSet() then
            repeat
                Rec := PurchInvLine;
                Rec.Insert()
            until PurchInvLine.Next() = 0;
    end;

    local procedure ValidateDeferementLines()
    var
        PurchInvLine: Record "Purch. Inv. Line";
    begin
        Rec.Reset();
        if Rec.FindSet() then
            repeat
                Rec.TestField("Deferement Start Date");
                Rec.TestField("Deferement Periodicity");
                Rec.TestField("Deferement Account");
                PurchInvLine.Get(Rec."Document No.", Rec."Line No.");
                PurchInvLine."Deferement Start Date" := Rec."Deferement Start Date";
                PurchInvLine."Deferement Periodicity" := Rec."Deferement Periodicity";
                PurchInvLine."Deferement Account" := Rec."Deferement Account";
                PurchInvLine.Modify(true);
            until Rec.Next() = 0;
    end;
}