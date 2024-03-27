page 57055 "Consultation Quote"
{
    Caption = 'Quote Lines';
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = true;
    PageType = ListPart;
    SourceTable = "Purchase Header";
    SourceTableView = WHERE("Document Type" = CONST(Quote));
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("No."; Rec."No.")
                {
                    Editable = false;
                }
                field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
                {
                    Editable = false;
                }
                field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
                {
                    Editable = false;
                }
                field(Amount; Rec.Amount)
                {
                    Visible = AmountsVisible;
                    Editable = false;
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                    Visible = AmountsWithVatVisible;
                    Editable = false;
                }
                field("Cost Amount"; Rec."Cost Amount")
                {
                    Visible = CostAmountsVisible;
                    Editable = false;
                }
                field("Comparison Position"; Rec."Comparison Position")
                {
                }
                field("Selected Amount"; Rec."Selected Amount")
                {
                    Visible = AmountsVisible;
                    Editable = false;
                }
                field("Selected Amount Including VAT"; Rec."Selected Amount Including VAT")
                {
                    Visible = AmountsWithVatVisible;
                    Editable = false;
                }
                field("Selected Cost Amount"; Rec."Selected Cost Amount")
                {
                    Visible = CostAmountsVisible;
                    Editable = false;
                }
                field("Due Date"; Rec."Due Date")
                {
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Card)
            {
                Caption = 'Card';
                Image = EditLines;

                trigger OnAction()
                begin
                    Page.Run(Page::"Purchase Quote", Rec);
                end;
            }
        }
    }

    var
        AmountsVisible: Boolean;
        AmountsWithVatVisible: Boolean;
        CostAmountsVisible: Boolean;

    trigger OnAfterGetRecord()
    begin
        AmountsVisible := Rec."Budget Appropriation Method" = Rec."Budget Appropriation Method"::"Amount Without VAT";
        AmountsWithVatVisible := Rec."Budget Appropriation Method" = Rec."Budget Appropriation Method"::"Amount Without VAT";
        CostAmountsVisible := Rec."Budget Appropriation Method" = Rec."Budget Appropriation Method"::"Cost Amount";
    end;
}

