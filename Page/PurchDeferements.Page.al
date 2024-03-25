page 50005 "Purchase Deferements"
{
    Caption = 'Purchase Deferements';
    Editable = false;
    PageType = List;
    SourceTable = "Purch. Deferments Entry";
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No."; Rec."Document No.")
                {
                }
                field("Document Line No."; Rec."Document Line No.")
                {
                }
                field("Deferment Date"; Rec."Deferment Date")
                {
                }
                field("Line No."; Rec."Line No.")
                {
                }
                field("Origin Account No."; Rec."Origin Account No.")
                {
                }
                field("Destin Account No."; Rec."Destin Account No.")
                {
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                }
                field("Invoice Text"; Rec."Invoice Text")
                {
                }
                field(Period; Rec.Period)
                {
                }
                field("Period Amount"; Rec."Period Amount")
                {
                }
                field("Posting Date"; Rec."Posting Date")
                {
                }
                field("Number Of Months"; Rec."Number Of Months")
                {
                }
                field("Total Amount"; Rec."Total Amount")
                {
                }
                field(Posted; Rec.Posted)
                {
                }
                field("Entry Type Contract"; Rec."Entry Type Contract")
                {
                }
                field("Contract No."; Rec."Contract No.")
                {
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group(Line)
            {
                Caption = '&Line';
                Image = Line;
                action(Dimensions)
                {
                    AccessByPermission = TableData Dimension = R;
                    ApplicationArea = Dimensions;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    Enabled = Rec."Document No." <> '';
                    trigger OnAction()
                    begin
                        Rec.ShowDimensions;
                    end;
                }
            }
        }
    }
}

