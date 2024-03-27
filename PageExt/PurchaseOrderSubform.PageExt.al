pageextension 57047 PurchaseOrderubformPageExt extends "Purchase Order Subform"
{
    layout
    {
        addafter(ShortcutDimCode8)
        {
            field("Requisition Code"; Rec."Requisition Code")
            {
                ApplicationArea = All;
                Editable = false;
                DrillDown = true;
                trigger OnDrillDown()
                var
                    Requisition: Record Requisition;
                begin
                    Requisition.Get(Rec."Requisition Code");
                    If Requisition.IsContract then
                        Page.Run(Page::"Req. Contract Posted Card", Requisition)
                    else
                        Page.Run(Page::"Requisition Posted Card", Requisition);
                end;
            }
            field("Requisition Line"; Rec."Requisition Line")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("Cost Amount"; Rec.GetPurchLineAmount())
            {
                ApplicationArea = All;
                Editable = false;
                Caption = 'Cost Amount';
            }
        }
        modify("Shortcut Dimension 1 Code")
        {
            Editable = false;
        }
        modify("Shortcut Dimension 2 Code")
        {
            Editable = false;
        }
        modify(ShortcutDimCode3)
        {
            Editable = false;
        }
        modify(ShortcutDimCode4)
        {
            Editable = false;
        }
        modify(ShortcutDimCode5)
        {
            Editable = false;
        }
        modify(ShortcutDimCode6)
        {
            Editable = false;
        }
        modify(ShortcutDimCode7)
        {
            Editable = false;
        }
        modify(ShortcutDimCode8)
        {
            Editable = false;
        }
        modify("PTSS Withholding Line Exempt")
        {
            Visible = false;
        }
        modify("PTSS Withholding Tax")
        {
            Visible = false;
        }
    }
    actions
    {
        modify(Dimensions)
        {
            Visible = false;

        }
        addafter(Dimensions)
        {
            action(Dimensions2)
            {
                AccessByPermission = TableData Dimension = R;
                ApplicationArea = all;
                Caption = 'Dimensions';
                Image = Dimensions;
                ShortCutKey = 'Alt+D';
                trigger OnAction()
                var
                    DimMgt: Codeunit DimensionManagement;
                begin
                    DimMgt.ShowDimensionSet(Rec."Dimension Set ID", STRSUBSTNO('%1 %2 %3', Rec.TABLECAPTION, Rec."Document No.", Rec."Line No."));
                end;
            }
        }
    }

}


