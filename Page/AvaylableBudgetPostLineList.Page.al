page 57047 "Posted Avay. Budget Line List"
{
    Caption = 'Posted Avay. Budget Line List';
    Editable = false;
    PageType = List;
    SourceTable = "Posted Avaylable Budget Line";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("Avay Code"; Rec."Avay Code")
                {
                }
                field("Avay Date"; Rec."Avay Date")
                {
                }
                field("Line No."; Rec."Line No.")
                {
                }
                field("Requisition Code"; Rec."Requisition Code")
                {
                }
                field("No."; Rec."No.")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Stock Quantity"; Rec."Stock Quantity")
                {
                    Visible = false;
                }
                field("Location Code"; Rec."Location Code")
                {
                    Visible = false;
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                }
                field("Amount Including Vat"; Rec."Amount Including VAT")
                {
                }
                field("Cost Amount"; Rec."Cost Amount")
                {
                }
                field(ShortcutDimCode1; ShortcutDimCode[1])
                {
                    CaptionClass = '1,2,1';
                    Importance = Additional;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(1, ShortcutDimCode[1]);
                    end;

                }
                field(ShortcutDimCode2; ShortcutDimCode[2])
                {
                    CaptionClass = '1,2,2';
                    Importance = Additional;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(2, ShortcutDimCode[2]);
                    end;

                }
                field(ShortcutDimCode3; ShortcutDimCode[3])
                {
                    CaptionClass = '1,2,3';
                    Importance = Additional;
                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(3, ShortcutDimCode[3]);
                    end;

                }
                field(ShortcutDimCode4; ShortcutDimCode[4])
                {
                    CaptionClass = '1,2,4';
                    Importance = Additional;
                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(4, ShortcutDimCode[4]);
                    end;

                }
                field(ShortcutDimCode5; ShortcutDimCode[5])
                {
                    CaptionClass = '1,2,5';
                    Importance = Additional;
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(5, ShortcutDimCode[5]);
                    end;
                }
                field(ShortcutDimCode6; ShortcutDimCode[6])
                {
                    CaptionClass = '1,2,6';
                    Importance = Additional;
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(6, ShortcutDimCode[6]);
                    end;

                }
                field(ShortcutDimCode7; ShortcutDimCode[7])
                {
                    CaptionClass = '1,2,7';
                    Importance = Additional;
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(7, ShortcutDimCode[7]);
                    end;

                }
                field(ShortcutDimCode8; ShortcutDimCode[8])
                {
                    CaptionClass = '1,2,8';
                    Importance = Additional;
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(8, ShortcutDimCode[8]);
                    end;

                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Posted Avaylable Budget")
            {
                Caption = 'Posted Avaylable Budget';
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;
                    RunObject = Page "Posted Avaylable Budget";
                    RunPageLink = "Avay Code" = FIELD("Avay Code");
                    ShortCutKey = 'Shift+F7';
                }
            }
        }
    }

    var
        ShortcutDimCode: array[8] of Code[20];

    trigger OnAfterGetRecord()
    begin
        Rec.ShowShortcutDimCode(ShortcutDimCode);
    end;

    trigger OnOpenPage()
    begin
        Rec.ShowShortcutDimCode(ShortcutDimCode);
    end;
}

