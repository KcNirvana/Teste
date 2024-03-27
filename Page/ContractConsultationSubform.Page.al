page 57060 "Contract Consultation Subform"
{

    AutoSplitKey = true;
    Caption = 'Lines';
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = true;
    Editable = true;
    PageType = ListPart;
    SourceTable = "Consultation Lines";
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                field("Contract Year"; Rec."Contract Year")
                {
                    Caption = 'Contract Year';
                }
                field("Requisition Code"; Rec."Requisition Code")
                {
                    Caption = 'Requisition Code';
                }
                field(Type; Rec."Line Type")
                {
                    Caption = 'Type';
                }
                field("No."; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field("Quote Quantity"; Rec."Quote Quantity")
                {
                    Caption = 'Quote Quantity';
                }
                field("Requisition Unit of Measure"; Rec."Requisition Unit of Measure")
                {
                    Caption = 'Unit of Measure';
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    Caption = 'Unit Cost';
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
            }
        }
    }

    actions
    {
        area(processing)
        {
            group(Lines)
            {
                Caption = 'Lines';
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';

                    trigger OnAction()
                    begin
                        DimMgt.ShowDimensionSet(Rec."Dimension Set ID", StrSubstNo('%1 %2 %3', Rec.TableCaption, Rec."Consultation Code", Rec."Line No."));
                    end;
                }
            }
        }
    }
    var
        DimMgt: Codeunit DimensionManagement;
        AmountsVisible: Boolean;
        AmountsWithVatVisible: Boolean;
        CostAmountsVisible: Boolean;

    trigger OnAfterGetRecord()
    var
        Consultation: Record Consultation;
    begin
        Consultation.Get(Rec."Consultation Code");
        AmountsVisible := Consultation."Budget Appropriation Method" = Consultation."Budget Appropriation Method"::"Amount Without VAT";
        AmountsWithVatVisible := Consultation."Budget Appropriation Method" = Consultation."Budget Appropriation Method"::"Amount Without VAT";
        CostAmountsVisible := Consultation."Budget Appropriation Method" = Consultation."Budget Appropriation Method"::"Cost Amount";
    end;
}

