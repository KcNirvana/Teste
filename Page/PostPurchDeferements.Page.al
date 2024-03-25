page 50006 "Post Purch Deferements"
{

    Caption = 'Post Purch Deferements';
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = Worksheet;
    UsageCategory = Tasks;
    ApplicationArea = All;
    SourceTable = "Purch. Deferments Entry";
    SourceTableTemporary = true;
    SourceTableView = SORTING("Document No.", "Document Line No.", "Deferment Date", "Line No.")
                      WHERE(Posted = CONST(false));

    layout
    {
        area(content)
        {
            group(Filters)
            {
                Caption = 'Filters';
                field(DateFilter; DateFilter)
                {
                    Caption = 'Date Filter';

                    trigger OnValidate()
                    begin
                        ClearAmounts;
                        TextManagement.MakeDateFilter(DateFilter);
                    end;
                }
            }
            group(Options)
            {
                Caption = 'Options';
                field(PostingDate; PostingDate)
                {
                    Caption = 'Posting Date';

                    trigger OnValidate()
                    begin
                        TextManagement.MakeDateFilter(DateFilter);
                    end;
                }
            }
            repeater(Group)
            {
                Editable = false;
                field("Document No."; Rec."Document No.")
                {
                    Editable = false;
                    Lookup = true;
                    LookupPageID = "Posted Purchase Invoice";
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
                field("Entry Type Contract"; Rec."Entry Type Contract")
                {
                }
                field("Contract No."; Rec."Contract No.")
                {
                }
                field("ShortcutDimCode[1]"; ShortcutDimCode[1])
                {
                    CaptionClass = '1,2,1';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                }
                field("ShortcutDimCode[2]"; ShortcutDimCode[2])
                {
                    ApplicationArea = Dimensions;
                    CaptionClass = '1,2,2';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = false;
                }
                field("ShortcutDimCode[3]"; ShortcutDimCode[3])
                {
                    ApplicationArea = Suite;
                    CaptionClass = '1,2,3';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(3),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = false;
                }
                field("ShortcutDimCode[4]"; ShortcutDimCode[4])
                {
                    ApplicationArea = Suite;
                    CaptionClass = '1,2,4';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(4),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = false;
                }
                field("ShortcutDimCode[5]"; ShortcutDimCode[5])
                {
                    ApplicationArea = Suite;
                    CaptionClass = '1,2,5';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(5),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = false;
                }
                field("ShortcutDimCode[6]"; ShortcutDimCode[6])
                {
                    ApplicationArea = Suite;
                    CaptionClass = '1,2,6';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(6),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = false;
                }
                field("ShortcutDimCode[7]"; ShortcutDimCode[7])
                {
                    ApplicationArea = Suite;
                    CaptionClass = '1,2,7';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(7),
                                                                  "Dimension Value Type" = CONST(Standard),
                                                                  Blocked = CONST(false));
                    Visible = false;
                }
                field("ShortcutDimCode[8]"; ShortcutDimCode[8])
                {
                    ApplicationArea = Suite;
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
        area(processing)
        {
            action("Calculate Deferements")
            {
                Caption = 'Calculate Deferements';
                Image = UpdateDescription;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    GetData;
                end;
            }
            action("Post Deferements")
            {
                Caption = 'Post Deferements';
                Image = PostBatch;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    PostData;
                end;
            }
        }
        area(Navigation)
        {
            action(Dimensions)
            {
                AccessByPermission = TableData Dimension = R;
                ApplicationArea = Dimensions;
                Caption = 'Dimensions';
                Image = Dimensions;
                ShortCutKey = 'Shift+Ctrl+D';
                Enabled = Rec."Document No." <> '';
                trigger OnAction()
                begin
                    Rec.ShowDimensions;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        DimMgt.GetShortcutDimensions(Rec."Dimension Set ID", ShortcutDimCode);
    end;

    trigger OnOpenPage()
    begin
        PostingDate := WorkDate;
    end;

    var
        ShortcutDimCode: array[8] of Code[20];
        DimMgt: Codeunit DimensionManagement;
        TextManagement: Codeunit "PTSS TextManagement";
        DateFilter: Text;
        PostingDate: Date;

    local procedure GetData()
    var
        PurchDeferements: Record "Purch. Deferments Entry";
    begin
        Rec.Reset;
        Rec.DeleteAll;

        PurchDeferements.Reset;
        PurchDeferements.SetFilter("Deferment Date", DateFilter);
        PurchDeferements.SetRange(Posted, false);
        if PurchDeferements.FindSet then
            repeat
                Rec.Init;
                Rec := PurchDeferements;
                Rec.Insert;
            until PurchDeferements.Next = 0;

        Rec.Reset();
        if Rec.FindFirst then;
    end;

    local procedure PostData()
    var
        Developements: Codeunit Developments;
        PostConfirm: Label 'Do you want to post the diferements?';
        PostNoLines: Label 'There is nothing to post.';
        PostNoDate: Label 'Posting Date cant be empty.';
        PostSuccess: Label 'Diferments posted with success.';
    begin
        if not Confirm(PostConfirm) then
            exit;

        if Rec.Count = 0 then
            Error(PostNoLines);

        if PostingDate = 0D then
            Error(PostNoDate);

        Developements.PostPurchDeferments(Rec, PostingDate);

        Message(PostSuccess);
        ClearAmounts();
    end;

    local procedure ClearAmounts()
    begin
        Rec.Reset;
        Rec.DeleteAll;
    end;
}

