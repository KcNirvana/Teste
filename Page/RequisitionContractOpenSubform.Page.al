page 57032 "Req. Contract Open Subform"
{

    AutoSplitKey = true;
    Caption = 'Lines';
    DelayedInsert = true;
    Editable = true;
    LinksAllowed = false;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = "Requisition Lines";
    SourceTableView = SORTING("Requisition Code", "Line No.");
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field(Lines; Rec."Line No.")
                {
                    Editable = false;
                    Visible = false;
                }
                field("Contract Year"; Rec."Contract Year")
                {
                }
                field(Type; Rec.Type)
                {
                    ValuesAllowed = " ", Item;
                    trigger OnValidate()
                    begin
                        DeltaUpdateTotals();
                    end;
                }
                field(Status; Rec.Status)
                {
                    Visible = false;
                }
                field("No."; Rec."No.")
                {
                    trigger OnValidate()
                    begin
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                        DeltaUpdateTotals();
                    end;
                }
                field("Vat Prod. Posting Group"; Rec."Vat Prod. Posting Group")
                {
                    Importance = Additional;
                    Visible = false;
                }
                field("Vat Bus. Posting Group"; Rec."Vat Bus. Posting Group")
                {
                    Importance = Additional;
                    Visible = false;
                }
                field("Location Code"; Rec."Location Code")
                {
                    Importance = Additional;
                    Visible = false;

                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field("Description 2"; Rec."Description 2")
                {
                    Importance = Additional;
                    Visible = false;
                }
                field(Observations; Rec.Observations)
                {
                    Visible = false;
                }
                field("Requisition Quantity"; Rec."Requisition Quantity")
                {
                    trigger OnValidate()
                    begin
                        DeltaUpdateTotals();
                    end;
                }
                field("Base Unit of Measure"; Rec."Base Unit of Measure")
                {
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    trigger OnValidate()
                    begin
                        DeltaUpdateTotals();
                    end;
                }
                field(Amount; Rec.Amount)
                {
                    Editable = false;
                    trigger OnValidate()

                    begin

                    end;
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                    Editable = false;
                }
                field("Cost Amount"; Rec."Cost Amount")
                {
                    Editable = false;
                }
                field("Initial Avaylable Dotation"; Rec."Initial Avaylable Dotation")
                {
                    Editable = false;
                }
                field("End Avaylable Dotation"; Rec."End Avaylable Dotation")
                {
                    Editable = false;
                }
                field("Stock Quantity"; Rec."Stock Quantity")
                {
                    Importance = Additional;
                    Visible = false;
                }
                field("Quote Quantity"; Rec."Quote Quantity")
                {
                    Visible = false;
                }
                field("Consultation Code"; Rec."Consultation Code")
                {
                    Editable = false;
                    Enabled = false;
                    Visible = false;

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

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(1, ShortcutDimCode[1]);
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

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(2, ShortcutDimCode[2]);
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

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(3, ShortcutDimCode[3]);
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

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(4, ShortcutDimCode[4]);
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

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(5, ShortcutDimCode[5]);
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

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(6, ShortcutDimCode[6]);
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

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(7, ShortcutDimCode[7]);
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

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(8, ShortcutDimCode[8]);
                    end;
                }
            }
            group(Control43)
            {
                ShowCaption = false;
                group(Control37)
                {
                    ShowCaption = false;
                    field("Total Amount"; TotalRequisitionLine.Amount)
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
                    field("Total Amount Inc VAT"; TotalRequisitionLine."Amount Including VAT")
                    {
                        AutoFormatType = 1;
                        Caption = 'Amount Including VAT';
                        DrillDown = false;
                        Editable = false;
                    }
                    field("Total Cost Amount"; TotalRequisitionLine."Cost Amount")
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
    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Clear(ShortcutDimCode);
    end;

    trigger OnAfterGetCurrRecord()
    begin
        GetTotalRequisition();
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

    trigger OnModifyRecord(): Boolean
    begin
        CduReq.RequisitionCheckIfDocumentChanged(Rec, xRec);
    end;

    trigger OnDeleteRecord(): Boolean
    begin
        CduReq.RequisitionTotalsNotUpToDate();
    end;

    var
        ShortcutDimCode: array[8] of Code[20];
        CduReq: Codeunit Requisition;
        TotalRequisitionHeader: Record "Requisition";
        TotalRequisitionLine: Record "Requisition Lines";
        VATAmount: Decimal;

    local procedure GetTotalRequisition()
    begin
        CduReq.GetTotalRequisition(Rec, TotalRequisitionHeader);
    end;

    local procedure CalculateTotals()
    begin
        CduReq.RequisitionCheckIfDocumentChanged(Rec, xRec);
        CduReq.CalculateRequisitionSubPageTotals(
          TotalRequisitionHeader, TotalRequisitionLine, VATAmount);
    end;

    local procedure DeltaUpdateTotals()
    begin
        CduReq.RequisitionDeltaUpdateTotals(Rec, xRec, TotalRequisitionLine, VATAmount);
    end;
}

