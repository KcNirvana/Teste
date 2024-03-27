page 57042 "PAQ Subform"
{
    Caption = 'Lines';
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    Editable = false;
    PageType = ListPart;
    RefreshOnActivate = true;
    SourceTable = "PAQ Lines";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("Line Type"; Rec."Line Type")
                {
                }
                field("No."; Rec."No.")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field(Quantity; Rec.Quantity)
                {
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    DecimalPlaces = 2 : 2;
                }
                field(Amount; Rec.Amount)
                {
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                }
                field("Cost Amount"; Rec."Cost Amount")
                {
                }
                field("Vat %"; Rec."Vat %")
                {
                    Visible = false;
                }
                field("Location Code"; Rec."Location Code")
                {
                    Visible = false;
                }
                field("Requisition Code"; Rec."Requisition Code")
                {
                }
                field("Requesition Line"; Rec."Requisition Line")
                {
                    Visible = false;
                }
                field("PAQ Date"; Rec."PAQ Date")
                {
                    Visible = false;
                }
                field("Consultation Code"; Rec."Consultation Code")
                {
                }
                field("Original Cost Amount"; Rec."Original Cost Amount")
                {
                }
                field(ShortcutDimCode1; ShortcutDimCode[1])
                {
                    CaptionClass = '1,2,1';
                    Importance = Additional;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(1, ShortcutDimCode[1]);
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;

                }
                field(ShortcutDimCode2; ShortcutDimCode[2])
                {
                    CaptionClass = '1,2,2';
                    Importance = Additional;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(2, ShortcutDimCode[2]);
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;

                }
                field(ShortcutDimCode3; ShortcutDimCode[3])
                {
                    CaptionClass = '1,2,3';
                    Importance = Additional;
                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(3, ShortcutDimCode[3]);
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;

                }
                field(ShortcutDimCode4; ShortcutDimCode[4])
                {
                    CaptionClass = '1,2,4';
                    Importance = Additional;
                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(4, ShortcutDimCode[4]);
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
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
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
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
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
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
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
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
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;

                }
            }
            group(Control43)
            {
                ShowCaption = false;
                group(Control37)
                {
                    ShowCaption = false;
                    field("Total Amount"; TotalPAQLine.Amount)
                    {
                        AutoFormatType = 1;
                        Caption = 'Amount';
                        DrillDown = false;
                        Editable = false;
                    }
                    field("Vat Amount"; VATAmount)
                    {
                        AutoFormatType = 1;
                        Caption = 'VAT Amount';
                        DrillDown = false;
                        Editable = false;
                    }
                    field("Total Amount Inc VAT"; TotalPAQLine."Amount Including VAT")
                    {
                        AutoFormatType = 1;
                        Caption = 'Amount Including VAT';
                        DrillDown = false;
                        Editable = false;
                    }
                    field("Total Cost Amount"; TotalPAQLine."Cost Amount")
                    {
                        AutoFormatType = 1;
                        Caption = 'Cost Amount';
                        Editable = false;
                    }
                }
            }
        }
    }


    actions
    {
        area(processing)
        {
            group(Line)
            {
                Caption = 'Line';
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';

                    trigger OnAction()
                    begin
                        Rec.ShowDimensions();
                    end;
                }
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        GetTotalPAQ();
        CalculateTotals();
    end;

    trigger OnAfterGetRecord()
    begin
        Rec.ShowShortcutDimCode(ShortcutDimCode);
    end;

    trigger OnOpenPage()
    begin
        Rec.ShowShortcutDimCode(ShortcutDimCode);
    end;

    var
        CduPAQ: Codeunit PAQ;
        TotalPAQHeader: Record "PAQ";
        TotalPAQLine: Record "PAQ Lines";
        VATAmount: Decimal;
        ShortcutDimCode: array[8] of code[20];

    local procedure GetTotalPAQ()
    begin
        CduPAQ.GetTotalPAQ(Rec, TotalPAQHeader);
    end;

    procedure CalculateTotals()
    begin
        CduPAQ.PAQCheckIfDocumentChanged(Rec, xRec);
        CduPAQ.CalculatePAQSubPageTotals(
          TotalPAQHeader, TotalPAQLine, VATAmount);
    end;
}

