pageextension 57009 PurchaseQuoteSubformPageExt extends "Purchase Quote Subform"
{

    layout
    {
        addbefore(Type)
        {
            field("Contract Year"; Rec."Contract Year")
            {
                Applicationarea = all;
                Editable = false;
                Visible = IsCtrVisible;
            }
        }
        addbefore("Shortcut Dimension 1 Code")
        {
            field("Selection Code"; Rec."Selection Code")
            {
                Applicationarea = all;
            }
            field("Selection Description"; Rec."Selection Description")
            {
                Applicationarea = all;
            }
            field("Rejection Code"; Rec."Rejection Code")
            {
                Applicationarea = all;
            }
            field("Rejection Description"; Rec."Rejection Description")
            {
                Applicationarea = all;
            }
        }
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
            field("Amount to Avay"; Rec."Amount to Avay")
            {
                ApplicationArea = All;
                Visible = IsCtrVisible;
            }
            field("Amount Avaylabled"; Rec."Amount Avaylabled")
            {
                ApplicationArea = All;
                Editable = false;
                Visible = IsCtrVisible;
            }
            field("Amount to Adjudicate"; Rec."Amount to Adjudicate")
            {
                ApplicationArea = All;
                Visible = IsCtrVisible;
            }
            field("Amount Adjudicated"; Rec."Amount Adjudicated")
            {
                ApplicationArea = All;
                Editable = false;
                Visible = IsCtrVisible;
            }
            field("Amount to Order"; Rec."Amount to Order")
            {
                ApplicationArea = All;
                Visible = IsCtrVisible;
            }
            field("Amount Ordered"; Rec."Amount Ordered")
            {
                ApplicationArea = All;
                Editable = false;
                Visible = IsCtrVisible;
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
                begin
                    DimMgt.ShowDimensionSet(Rec."Dimension Set ID", STRSUBSTNO('%1 %2 %3', Rec.TABLECAPTION, Rec."Document No.", Rec."Line No."));
                end;
            }
        }
    }
    var
        IsCtrVisible: Boolean;
        DimMgt: Codeunit DimensionManagement;

    trigger OnAfterGetRecord()
    begin
        SetCtrFieldsVisible;
    end;

    local procedure SetCtrFieldsVisible()
    var
        PurchaseHeader: Record "Purchase Header";
        Consultation: Record Consultation;
    begin
        PurchaseHeader := Rec.GetPurchHeader();
        Consultation.GET(PurchaseHeader."Consultation Code");
        IsCtrVisible := Consultation.IsContract;
    end;

}


