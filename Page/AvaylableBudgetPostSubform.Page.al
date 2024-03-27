page 57046 "Posted Avaylable Budget Lines"
{

    Caption = 'Lines';
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = ListPart;
    SourceTable = "Posted Avaylable Budget Line";
    Editable = false;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(group)
            {
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
                field("Initial Dotation"; Rec."Initial Avaylable Dotation")
                {
                }
                field("Avaylable Endowment"; Rec."End Avaylable Dotation")
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
                field("Quote Quantity"; Rec."Quote Quantity")
                {
                    Visible = false;
                }
                field(Observations; Rec.Observations)
                {
                }
                field("Requisition Code"; Rec."Requisition Code")
                {
                }
                field("Requesition Line"; Rec."Requisition Line")
                {
                    Visible = false;
                }
                field("Avay Date"; Rec."Avay Date")
                {
                    Visible = false;
                }
                field("Requisition Observations"; Rec."Requisition Observations")
                {
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
            group(Control43)
            {
                ShowCaption = false;
                group(Control37)
                {
                    ShowCaption = false;
                    field("Total Amount"; TotalAvayBudgetLine.Amount)
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
                    field("Total Amount Inc VAT"; TotalAvayBudgetLine."Amount Including VAT")
                    {
                        AutoFormatType = 1;
                        Caption = 'Amount Including VAT';
                        DrillDown = false;
                        Editable = false;
                    }
                    field("Total Cost Amount"; TotalAvayBudgetLine."Cost Amount")
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
                        Rec.ShowDimensions();
                    end;
                }
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        GetTotalPostedAvaylabeBudget();
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
        CduAvay: Codeunit AvaylableBudget;
        TotalAvayBudgetHeader: Record "Posted Avaylable Budget";
        TotalAvayBudgetLine: Record "Posted Avaylable Budget Line";
        VATAmount: Decimal;
        ShortcutDimCode: array[8] of code[20];

    local procedure GetTotalPostedAvaylabeBudget()
    begin
        CduAvay.GetTotalPostedAvayBudget(Rec, TotalAvayBudgetHeader);
    end;

    procedure CalculateTotals()
    begin
        CduAvay.PostedAvayBudgetCheckIfDocumentChanged(Rec, xRec);
        CduAvay.PostedCalculateAvayBudgetSubPageTotals(
          TotalAvayBudgetHeader, TotalAvayBudgetLine, VATAmount);
    end;
}

