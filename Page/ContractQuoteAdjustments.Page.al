page 57061 "Contract Quote Adjustments"
{
    Caption = 'Purchase Quote Adjustments';
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    PageType = List;
    SourceTable = "Purchase Line";
    SourceTableView = WHERE("Document Type" = FILTER(Quote));
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                field("Contract Year"; Rec."Contract Year")
                {
                    Editable = false;
                }
                field(Type; Rec.Type)
                {
                    Editable = false;
                }
                field("No."; Rec."No.")
                {
                    Editable = false;

                }
                field(Description; Rec.Description)
                {
                    Editable = false;
                }
                field("Description 2"; Rec."Description 2")
                {
                    Editable = false;
                }
                field(Quantity; Rec.Quantity)
                {
                    BlankZero = true;
                    Editable = false;
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    Editable = false;
                }
                field("Direct Unit Cost"; Rec."Direct Unit Cost")
                {
                    BlankZero = true;
                    Editable = false;
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    BlankZero = true;
                    Editable = false;
                }
                field("Selection Code"; Rec."Selection Code")
                {
                    Editable = false;
                }
                field("Selection Description"; Rec."Selection Description")
                {
                    Editable = false;
                }
                field("Rejection Code"; Rec."Rejection Code")
                {
                    Editable = false;
                }
                field("Rejection Description"; Rec."Rejection Description")
                {
                    Editable = false;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    Editable = false;
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    Editable = false;
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
                field("Requisition Code"; Rec."Requisition Code")
                {
                    Editable = false;
                }
                field("Requisition Line"; Rec."Requisition Line")
                {
                    Editable = false;
                }
                field("Amount Avaylabled"; Rec."Amount Avaylabled")
                {
                    Editable = false;
                }
                field("Amount Adjudicated"; Rec."Amount Adjudicated")
                {
                    Editable = false;
                }
                field("Amount Ordered"; Rec."Amount Ordered")
                {
                    Editable = false;
                }
                field("Amount to Adjust Avay"; Rec."Amount to Adjust Avay")
                {
                    Editable = Budgets;
                    Visible = Budgets;
                }
                field("Amount to Adjust Adj."; Rec."Amount to Adjust Adj.")
                {
                    Editable = Adjudications;
                    Visible = Adjudications;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action(Dimensions)
                {
                    AccessByPermission = TableData 348 = R;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';

                    trigger OnAction()
                    begin
                        Rec.ShowDimensions()
                    end;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Rec.ShowShortcutDimCode(ShortcutDimCode);
    end;

    trigger OnOpenPage()
    begin
        Rec.FILTERGROUP(2);
        Rec.SETRANGE("Consultation Code", ConsultationCode);
        Rec.SETFILTER("Selection Code", '<>%1', '');
    end;

    var
        ShortcutDimCode: array[8] of Code[20];
        ConsultationCode: Code[20];
        [InDataSet]
        Adjudications: Boolean;
        [InDataSet]
        Budgets: Boolean;

    procedure SetParams(pConsultationCode: Code[20]; Type: Enum "Contract Quote Adjustments")
    begin
        ConsultationCode := pConsultationCode;
        Adjudications := Type = Type::Adjudications;
        Budgets := Type = Type::"Avaylable Budgets";
    end;
}

