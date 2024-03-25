page 50004 "Purch Sales Invoice Lines"
{
    ApplicationArea = All;
    Caption = 'Purch Sales Invoice Lines';
    Editable = false;
    LinksAllowed = false;
    PageType = List;
    SourceTable = "PTSS Temporary Table";
    SourceTableView = sorting("Entry No.");
    SourceTableTemporary = true;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                FreezeColumn = Name;
                field("Document Type"; Rec."Purch Sales Type")
                {
                    ApplicationArea = All;
                    Caption = 'Document Type';
                }
                field("Document No."; Rec.Code1)
                {
                    ApplicationArea = All;
                    Caption = 'Document No.';
                }
                field("Posting Date"; Rec.Date1)
                {
                    ApplicationArea = All;
                    Caption = 'Posting Date';
                }
                field("Customer/Vendor No."; Rec.Code2)
                {
                    ApplicationArea = All;
                    Caption = 'Customer/Vendor No.';
                }
                field("Name"; Rec.Text4)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field("Line No."; Rec.Integer1)
                {
                    ApplicationArea = All;
                    Caption = 'Line No.';
                }
                field(Type; Rec."Purch Sales Line Type")
                {
                    ApplicationArea = All;
                    Caption = 'Type';
                }
                field("No."; Rec.Code3)
                {
                    ApplicationArea = All;
                    Caption = 'No.';
                }
                field(Description; Rec.Text1)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                }
                field("Description 2"; Rec.Text3)
                {
                    ApplicationArea = All;
                    Caption = 'Description 2';
                }
                field("Location Code"; Rec.Code4)
                {
                    ApplicationArea = Location;
                    Caption = 'Location';
                }
                field(Quantity; Rec.Decimal1)
                {
                    ApplicationArea = All;
                    Caption = 'Quantity';
                }

                field("Unit Cost/Price"; Rec.Decimal2)
                {
                    ApplicationArea = All;
                    Caption = 'Unit Cost/Price';
                    BlankZero = true;
                }
                field(Amount; Rec.Decimal3)
                {
                    ApplicationArea = All;
                    Caption = 'Amount';
                    BlankZero = true;
                }
                field("Amount Including VAT"; Rec.Decimal4)
                {
                    ApplicationArea = All;
                    Caption = 'Amount Including VAT';
                    BlankZero = true;
                }
                field("ShortcutDimCode[1]"; ShortcutDimCode[1])
                {
                    ApplicationArea = All;
                    CaptionClass = '1,2,1';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                }
                field("ShortcutDimCode[2]"; ShortcutDimCode[2])
                {
                    ApplicationArea = All;
                    CaptionClass = '1,2,2';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                }
                field("ShortcutDimCode[3]"; ShortcutDimCode[3])
                {
                    ApplicationArea = All;
                    CaptionClass = '1,2,3';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(3),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = false;
                }
                field("ShortcutDimCode[4]"; ShortcutDimCode[4])
                {
                    ApplicationArea = All;
                    CaptionClass = '1,2,4';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(4),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = false;
                }
                field("ShortcutDimCode[5]"; ShortcutDimCode[5])
                {
                    ApplicationArea = All;
                    CaptionClass = '1,2,5';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(5),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = false;
                }
                field("ShortcutDimCode[6]"; ShortcutDimCode[6])
                {
                    ApplicationArea = All;
                    CaptionClass = '1,2,6';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(6),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = false;
                }
                field("ShortcutDimCode[7]"; ShortcutDimCode[7])
                {
                    ApplicationArea = All;
                    CaptionClass = '1,2,7';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(7),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = false;
                }
                field("ShortcutDimCode[8]"; ShortcutDimCode[8])
                {
                    ApplicationArea = All;
                    CaptionClass = '1,2,8';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(8),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = false;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Refresh Data")
            {
                ApplicationArea = All;
                Caption = 'Refresh Data';
                Image = Refresh;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    FillTempTable();
                end;
            }

            action("Show Document")
            {
                ApplicationArea = All;
                Caption = 'Show Document';
                Image = View;
                ShortCutKey = 'Shift+F7';
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                trigger OnAction()
                var
                    PageManagement: Codeunit "Page Management";
                    PurchInvHeader: Record "Purch. Inv. Header";
                    SalesInvHeader: Record "Sales Invoice Header";
                begin
                    case Rec."Purch Sales Type" of
                        Rec."Purch Sales Type"::Purchase:
                            begin
                                PurchInvHeader.Get(Rec.Code1);
                                PageManagement.PageRun(PurchInvHeader);
                            end;
                        Rec."Purch Sales Type"::Sales:
                            begin
                                SalesInvHeader.Get(Rec.Code1);
                                PageManagement.PageRun(SalesInvHeader);
                            end;
                    end;
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        FillTempTable();
    end;

    trigger OnAfterGetRecord()
    begin
        ShowShortcutDimCode(ShortcutDimCode);
    end;

    var
        ShortcutDimCode: array[8] of Code[20];
        DimMgt: Codeunit DimensionManagement;

    local procedure ShowShortcutDimCode(var ShortcutDimCode: array[8] of Code[20])
    begin
        DimMgt.GetShortcutDimensions(Rec.Integer2, ShortcutDimCode);
    end;


    local procedure FillTempTable()
    var
        Text0001: Label 'Calculating...\\';
        PurchInvLines: Record "Purch. Inv. Line";
        SalesInvLines: Record "Sales Invoice Line";
        EntryNo: Integer;
        i: Integer;
        Window: Dialog;
    begin
        Clear(Rec);
        Clear(PurchInvLines);
        Clear(SalesInvLines);
        Clear(Window);
        Clear(EntryNo);

        Rec.DeleteAll();
        Window.Open(Text0001 + '#1#################################################\' +
                    '#2#################################################\',
                    Rec."Purch Sales Type", Rec.Code1);

        PurchInvLines.Reset();
        PurchInvLines.SetFilter(Type, '<>%1', PurchInvLines.Type::" ");
        If PurchInvLines.FindSet() then
            repeat
                Window.Update(1, Format(Rec."Purch Sales Type"));
                Window.Update(2, Rec.Code1);
                Rec.Init();
                Rec."Entry No." := EntryNo;
                Rec.Integer2 := PurchInvLines."Dimension Set ID";
                Rec."Purch Sales Type" := Rec."Purch Sales Type"::Purchase;
                Rec.Code1 := PurchInvLines."Document No.";
                Rec.Date1 := PurchInvLines."Posting Date";
                Rec.Code2 := PurchInvLines."Buy-from Vendor No.";
                Rec.Text4 := GetCustomerVendorName(Rec."Purch Sales Type", Rec.Code2);
                Rec.Integer1 := PurchInvLines."Line No.";
                Rec."Purch Sales Line Type" := PurchInvLines.Type;
                Rec.Code3 := PurchInvLines."No.";
                Rec.Text1 := PurchInvLines.Description;
                Rec.Text3 := PurchInvLines."Description 2";
                Rec.Code4 := PurchInvLines."Location Code";
                Rec.Decimal1 := PurchInvLines.Quantity;
                Rec.Decimal2 := PurchInvLines."Unit Cost";
                Rec.Decimal3 := PurchInvLines.Amount;
                Rec.Decimal4 := PurchInvLines."Amount Including VAT";
                Rec.Insert;
                EntryNo += 1;
            until PurchInvLines.Next() = 0;

        SalesInvLines.Reset();
        SalesInvLines.SetFilter(Type, '<>%1', SalesInvLines.Type::" ");
        If SalesInvLines.FindSet() then
            repeat
                Window.Update(1, Format(Rec."Purch Sales Type"));
                Window.Update(2, Rec.Code1);
                Rec.Init();
                Rec."Entry No." := EntryNo;
                Rec.Integer2 := SalesInvLines."Dimension Set ID";
                Rec."Purch Sales Type" := Rec."Purch Sales Type"::Sales;
                Rec.Code1 := SalesInvLines."Document No.";
                Rec.Date1 := SalesInvLines."Posting Date";
                Rec.Code2 := SalesInvLines."Sell-to Customer No.";
                Rec.Text4 := GetCustomerVendorName(Rec."Purch Sales Type", Rec.Code2);
                Rec.Integer1 := SalesInvLines."Line No.";
                Rec."Purch Sales Line Type" := SalesInvLines.Type;
                Rec.Code3 := SalesInvLines."No.";
                Rec.Text1 := SalesInvLines.Description;
                Rec.Text3 := SalesInvLines."Description 2";
                Rec.Code4 := SalesInvLines."Location Code";
                Rec.Decimal1 := SalesInvLines.Quantity;
                Rec.Decimal2 := SalesInvLines."Unit Price";
                Rec.Decimal3 := SalesInvLines.Amount;
                Rec.Decimal4 := SalesInvLines."Amount Including VAT";
                Rec.Insert;
                EntryNo += 1;
            until SalesInvLines.Next() = 0;

        Rec.Reset;
        If Rec.FindFirst() then;
    end;

    local procedure GetCustomerVendorName(PurchSalesType: enum "Purch Sales Type"; VendorCustomerCode: Code[20]): Text[250]
    var
        Vendor: Record Vendor;
        Customer: Record Customer;
    begin
        case PurchSalesType of
            PurchSalesType::Purchase:
                begin
                    If Vendor.Get(VendorCustomerCode) then
                        exit(Vendor.Name);
                end;
            PurchSalesType::Sales:
                begin
                    If Customer.Get(VendorCustomerCode) then
                        exit(Customer.Name);
                end;
        end;
    end;
}

