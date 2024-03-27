pageextension 57046 PurchaseOrderPageExt extends "Purchase Order"
{

    layout
    {
        addafter(General)
        {
            group(Consultation)
            {
                Caption = 'Consultation';
                field("Created by"; Rec."Created By")
                {
                    Applicationarea = all;
                }
                field("Employee No."; Rec."Employee No.")
                {
                    Applicationarea = all;
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    Applicationarea = all;
                }
                field("Consultation Code"; Rec."Consultation Code")
                {
                    Applicationarea = all;
                }
                field("Associated Quote"; Rec."Associated Quote")
                {
                    Applicationarea = all;
                    Lookup = true;
                    LookupPageId = "Purchase Quote";
                }

            }
        }
        modify("Shortcut Dimension 1 Code")
        {
            Enabled = false;
        }
        modify("Shortcut Dimension 2 Code")
        {
            Enabled = false;
        }
        modify("Vendor Invoice No.")
        {
            Visible = false;
        }
        modify("PTSS Withholding Invoice")
        {
            Visible = false;
        }
        modify("PTSS Withholding Payment")
        {
            Visible = false;
        }
        modify("PTSS Withholding Tax Code 1")
        {
            Visible = false;
        }
        modify("PTSS Withholding Tax Code 2")
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
        addbefore(Statistics)
        {
            action(Dimensions2)
            {
                AccessByPermission = TableData Dimension = R;
                ApplicationArea = Dimensions;
                Caption = 'Dimensions';
                Enabled = Rec."No." <> '';
                Image = Dimensions;
                ShortCutKey = 'Alt+D';
                Promoted = true;
                PromotedCategory = Category8;

                trigger OnAction()
                var
                    DimMgt: Codeunit DimensionManagement;
                begin
                    DimMgt.ShowDimensionSet(Rec."Dimension Set ID", STRSUBSTNO('%1 %2', Rec.TABLECAPTION, Rec."No."));
                end;
            }
        }
    }
}



