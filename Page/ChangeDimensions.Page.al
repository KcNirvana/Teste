page 57079 ChangeDimensions
{
    Caption = 'Change Dimensions';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Worksheet;
    SourceTable = "PTSS Temporary Table";
    SourceTableTemporary = true;
    SourceTableView = SORTING("Entry No.");
    Permissions = tableData "Vendor Ledger Entry" = rimd,
                  tabledata "Cust. Ledger Entry" = rimd;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(Filters)
            {
                Caption = 'Filters';
                field(CloseYear; CloseYear)
                {
                    Caption = 'Close Year';
                    Editable = false;
                }
                field(DataType; DataType)
                {
                    Caption = 'Type';

                    trigger OnValidate()
                    begin
                        ClearRec;
                    end;
                }
                field(Dimension; Dimension)
                {
                    Caption = 'Dimension';
                    TableRelation = Dimension.Code WHERE(Blocked = CONST(false));

                    trigger OnValidate()
                    begin
                        CLEAR(DimensionValueFrom);
                        CLEAR(DimensionValueTo);
                    end;
                }
                field(DimensionValueFrom; DimensionValueFrom)
                {
                    Caption = 'From Dimension Value';

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        DimensionValue: Record "Dimension Value";
                        DimensionValueList: Page "Dimension Value List";
                    begin
                        CLEAR(DimensionValueList);
                        DimensionValue.RESET;
                        DimensionValue.FILTERGROUP(2);
                        DimensionValue.SETRANGE("Dimension Code", Dimension);
                        DimensionValue.SETRANGE(Blocked, FALSE);
                        DimensionValue.SETRANGE("Dimension Value Type", DimensionValue."Dimension Value Type"::Standard);
                        DimensionValue.FILTERGROUP(0);
                        DimensionValueList.SETRECORD(DimensionValue);
                        DimensionValueList.SETTABLEVIEW(DimensionValue);
                        DimensionValueList.LOOKUPMODE(TRUE);
                        IF DimensionValueList.RUNMODAL = ACTION::LookupOK THEN BEGIN
                            DimensionValueList.GETRECORD(DimensionValue);
                            ValidateDimension(DimensionValue.Code);
                            Text := FORMAT(DimensionValue.Code);
                            EXIT(TRUE);
                        END;
                    end;

                    trigger OnValidate()
                    begin
                        ValidateDimension(DimensionValueFrom);
                    end;
                }
                field(DimensionValueTo; DimensionValueTo)
                {
                    Caption = 'To Dimension Value';

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        DimensionValue: Record "Dimension Value";
                        DimensionValueList: Page "Dimension Value List";
                    begin
                        CLEAR(DimensionValueList);
                        DimensionValue.RESET;
                        DimensionValue.FILTERGROUP(2);
                        DimensionValue.SETRANGE("Dimension Code", Dimension);
                        DimensionValue.SETRANGE(Blocked, FALSE);
                        DimensionValue.SETRANGE("Dimension Value Type", DimensionValue."Dimension Value Type"::Standard);
                        DimensionValue.FILTERGROUP(0);
                        DimensionValueList.SETRECORD(DimensionValue);
                        DimensionValueList.SETTABLEVIEW(DimensionValue);
                        DimensionValueList.LOOKUPMODE(TRUE);
                        IF DimensionValueList.RUNMODAL = ACTION::LookupOK THEN BEGIN
                            DimensionValueList.GETRECORD(DimensionValue);
                            ValidateDimension(DimensionValue.Code);
                            Text := FORMAT(DimensionValue.Code);
                            EXIT(TRUE);
                        END;
                    end;
                }
            }

            repeater(Group)
            {
                field(DescType; Rec.Text3)
                {
                    Editable = false;
                    caption = 'Type';
                }
                field(No2; Rec.Code1)
                {
                    Editable = false;
                    caption = 'No.';
                }
                field(Description; Rec.Text1)
                {
                    Editable = false;
                    caption = 'Description';
                }
                field("Dimension Code"; Rec.Code2)
                {
                    Editable = false;
                    caption = 'Dimension Code';
                }
                field("Dimension Value Code"; Rec.Code3)
                {
                    Caption = 'Dimension Value Code';
                    Editable = false;
                }
                field("Dimension Value To"; Rec.Code4)
                {
                    Caption = 'Dimension Value To';
                }
                field("Document No."; Rec.Code5)
                {
                    Editable = false;
                    caption = 'Document No.';
                }
                field("Contract Year"; Rec.Integer2)
                {
                    editable = false;
                    caption = 'Contract Year';
                }
                field(NotEditable; Rec.Boolean1)
                {
                    Caption = 'Marked';
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
                action(Calculate)
                {
                    Caption = 'Calculate';
                    Image = PostApplication;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        InitTempTable;
                    end;
                }
                action(Posting)
                {
                    Caption = 'Post';
                    Image = Post;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        Post;
                    end;
                }
                action("Mark All")
                {
                    Caption = 'Mark All';
                    Image = SelectLineToApply;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        Rec.MODIFYALL(Boolean1, TRUE);
                    end;
                }
                action("Unmark All")
                {
                    Caption = 'Unmark All';
                    Image = Undo;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        Rec.MODIFYALL(Boolean1, false);
                    end;
                }
            }
        }
    }

    var
        Dimension: Code[20];
        DimensionValueFrom: Code[20];
        DimensionValueTo: Code[20];
        DimMgt: Codeunit DimensionManagement;
        DataType: Enum "Change Dimensions Type";
        CloseYear: Integer;
        Text000: Label 'Do you want to post the dimensions changes?';
        Text001: Label 'You must fill the dimension.';
        Text002: Label 'You must fill the dimension value to.';
        Text003: Label 'You must fill the dimension value from.';
        Text004: Label 'There is nothing to post.';
        Text005: Label 'Dimensions changes posted.';
        Text006: Label 'Posting dimension changes...\\';

    procedure SetCloseYear(NewCloseYear: Integer)
    begin
        CloseYear := NewCloseYear;
    end;

    local procedure InitTempTable()
    var
        DefaultDimension: Record "Default Dimension";
        ConsultationLines: Record "Consultation Lines";
        RequisitionLines: Record "Requisition Lines";
        QuoteLines: Record "Purchase Line";
        CustLedgerEntry: Record "Cust. Ledger Entry";
        VendorLedgerEntry: Record "Vendor Ledger Entry";
        EntryNo: Integer;
        ConsultationText: Label 'Consultations';
        RequisitionText: Label 'Requisitions';
        QuoteText: Label 'Vendor Quotes';
        SalesEntriesText: Label 'Pending Customer Entries';
        PurchEntriesText: Label 'Pending Vendor Entries';
        RecNo: Integer;
        TotalRecNo: Integer;
        Window: Dialog;
        DialogLabel: Label 'Type: #1###################\';
    begin
        CLEAR(Rec);
        CLEAR(EntryNo);

        EntryNo := 1;
        Rec.DELETEALL;
        IF Dimension = '' THEN
            ERROR(Text001);
        IF DimensionValueTo = '' THEN
            ERROR(Text003);

        Window.OPEN(
          Text006 +
          DialogLabel +
          '@2@@@@@@@@@@@@@@@@@@@@@@@@@\');

        IF DataType IN [DataType::All, DataType::Items, DataType::Employees, DataType::"G/L Accounts", DataType::"Bank Accounts", DataType::"Fixed Assets", DataType::Customers, DataType::Vendors] THEN BEGIN
            DefaultDimension.RESET;
            DefaultDimension.SETRANGE("Dimension Code", Dimension);
            DefaultDimension.SETRANGE("Dimension Value Code", DimensionValueFrom);
            CASE DataType OF
                DataType::All:
                    DefaultDimension.SETFILTER("Table ID", '%1|%2|%3|%4|%5|%6|%7',
                      DATABASE::Employee, DATABASE::Item, DATABASE::"G/L Account", DATABASE::"Bank Account", DATABASE::"Fixed Asset", DATABASE::Customer, DATABASE::Vendor);
                DataType::Employees:
                    DefaultDimension.SETRANGE("Table ID", DATABASE::Employee);
                DataType::Items:
                    DefaultDimension.SETRANGE("Table ID", DATABASE::Item);
                DataType::"G/L Accounts":
                    DefaultDimension.SETRANGE("Table ID", DATABASE::"G/L Account");
                DataType::"Bank Accounts":
                    DefaultDimension.SETRANGE("Table ID", DATABASE::"Bank Account");
                DataType::"Fixed Assets":
                    DefaultDimension.SETRANGE("Table ID", DATABASE::"Fixed Asset");
                DataType::Customers:
                    DefaultDimension.SETRANGE("Table ID", DATABASE::Customer);
                DataType::Vendors:
                    DefaultDimension.SETRANGE("Table ID", DATABASE::Vendor);
            END;
            IF DefaultDimension.FINDSET THEN BEGIN
                Window.UPDATE(1, '');
                Window.UPDATE(2, 0);
                TotalRecNo := DefaultDimension.COUNT;
                RecNo := 0;
                REPEAT
                    DefaultDimension.CalcFields("Table Caption");
                    RecNo := RecNo + 1;
                    Window.UPDATE(1, DefaultDimension."Table Caption");
                    Window.UPDATE(2, ROUND(RecNo / TotalRecNo * 10000, 1));
                    Rec.Init();
                    Rec.Integer1 := DefaultDimension."Table ID";
                    Rec."Entry No." := EntryNo;
                    Rec.Code1 := DefaultDimension."No.";
                    Rec.Text1 := GetNo2Desc(Rec.Integer1, Rec.Code1);
                    Rec.Text3 := DefaultDimension."Table Caption";
                    Rec.Code2 := DefaultDimension."Dimension Code";
                    Rec.Code3 := DefaultDimension."Dimension Value Code";
                    Rec.Code4 := DimensionValueTo;
                    Rec.Boolean1 := FALSE;
                    Rec.Insert();
                    EntryNo += 1;
                UNTIL DefaultDimension.NEXT = 0;
            END;
            Window.UPDATE(1, '');
            Window.UPDATE(2, 10000);
        END;

        IF DataType IN [DataType::All, DataType::Consultations] THEN BEGIN
            ConsultationLines.RESET;
            ConsultationLines.SETRANGE("Line Type", ConsultationLines."Line Type"::Item);
            ConsultationLines.SETFILTER("Contract Year", '>%1', CloseYear);
            IF ConsultationLines.FINDSET THEN BEGIN
                Window.UPDATE(1, '');
                Window.UPDATE(2, 0);
                TotalRecNo := ConsultationLines.COUNT;
                RecNo := 0;
                REPEAT
                    IF HaveDimension(ConsultationLines."Dimension Set ID", Dimension, DimensionValueFrom) THEN BEGIN
                        RecNo := RecNo + 1;
                        Window.UPDATE(1, ConsultationText);
                        Window.UPDATE(2, ROUND(RecNo / TotalRecNo * 10000, 1));

                        Rec.Init();
                        Rec.Integer1 := DATABASE::"Consultation Lines";
                        Rec."Entry No." := EntryNo;
                        Rec.Code1 := ConsultationLines."No.";
                        Rec.Text1 := GetNo2Desc(Database::Item, Rec.Code1);
                        Rec.Text3 := ConsultationText;
                        Rec.Integer2 := ConsultationLines."Contract Year";
                        Rec.Integer3 := ConsultationLines."Line No.";
                        Rec.Code2 := Dimension;
                        Rec.Code3 := DimensionValueFrom;
                        Rec.Code4 := DimensionValueTo;
                        Rec.Code5 := ConsultationLines."Consultation Code";
                        Rec.Boolean1 := FALSE;
                        Rec.Insert();
                        EntryNo += 1;
                    END;
                UNTIL ConsultationLines.NEXT = 0;
            END;
            Window.UPDATE(1, '');
            Window.UPDATE(2, 10000);
        END;

        IF DataType IN [DataType::All, DataType::Requisitions] THEN BEGIN
            RequisitionLines.RESET;
            RequisitionLines.SETRANGE(Type, RequisitionLines.Type::Item);
            RequisitionLines.SETFILTER("Contract Year", '>%1', CloseYear);
            IF RequisitionLines.FINDSET THEN BEGIN
                Window.UPDATE(1, '');
                Window.UPDATE(2, 0);
                TotalRecNo := RequisitionLines.COUNT;
                RecNo := 0;
                REPEAT
                    IF HaveDimension(RequisitionLines."Dimension Set ID", Dimension, DimensionValueFrom) THEN BEGIN
                        RecNo := RecNo + 1;
                        Window.UPDATE(1, RequisitionText);
                        Window.UPDATE(2, ROUND(RecNo / TotalRecNo * 10000, 1));

                        Rec.Init();
                        Rec.Integer1 := DATABASE::"Requisition Lines";
                        Rec."Entry No." := EntryNo;
                        Rec.Code1 := RequisitionLines."No.";
                        Rec.Text1 := GetNo2Desc(Database::Item, Rec.Code1);
                        Rec.Text3 := RequisitionText;
                        Rec.Integer2 := RequisitionLines."Contract Year";
                        Rec.Integer3 := RequisitionLines."Line No.";
                        Rec.Code2 := Dimension;
                        Rec.Code3 := DimensionValueFrom;
                        Rec.Code4 := DimensionValueTo;
                        Rec.Code5 := RequisitionLines."Requisition Code";
                        Rec.Boolean1 := FALSE;
                        Rec.Insert();
                        EntryNo += 1;
                    END;
                UNTIL RequisitionLines.NEXT = 0;
            END;
            Window.UPDATE(1, '');
            Window.UPDATE(2, 10000);
        END;

        IF DataType IN [DataType::All, DataType::Quotes] THEN BEGIN
            QuoteLines.RESET;
            QuoteLines.SETRANGE("Document Type", QuoteLines."Document Type"::Quote);
            QuoteLines.SETRANGE(Type, QuoteLines.Type::Item);
            QuoteLines.SETFILTER("Contract Year", '>%1', CloseYear);
            IF QuoteLines.FINDSET THEN BEGIN
                Window.UPDATE(1, '');
                Window.UPDATE(2, 0);
                TotalRecNo := QuoteLines.COUNT;
                RecNo := 0;
                REPEAT
                    IF HaveDimension(QuoteLines."Dimension Set ID", Dimension, DimensionValueFrom) THEN BEGIN
                        RecNo := RecNo + 1;
                        Window.UPDATE(1, QuoteText);
                        Window.UPDATE(2, ROUND(RecNo / TotalRecNo * 10000, 1));

                        Rec.Init();
                        Rec.Integer1 := DATABASE::"Purchase Line";
                        Rec."Entry No." := EntryNo;
                        Rec.Code1 := QuoteLines."No.";
                        Rec.Text1 := GetNo2Desc(Database::Item, Rec.Code1);
                        Rec.Text3 := QuoteText;
                        Rec.Integer2 := QuoteLines."Contract Year";
                        Rec.Integer3 := QuoteLines."Line No.";
                        Rec.Code2 := Dimension;
                        Rec.Code3 := DimensionValueFrom;
                        Rec.Code4 := DimensionValueTo;
                        Rec.Code5 := QuoteLines."Requisition Code";
                        Rec.Boolean1 := FALSE;
                        Rec.Insert();
                        EntryNo += 1;
                    END;
                UNTIL QuoteLines.NEXT = 0;
            END;
            Window.UPDATE(1, '');
            Window.UPDATE(2, 10000);
        END;

        IF DataType IN [DataType::All, DataType::"Customer Ledger Entries"] THEN BEGIN
            CustLedgerEntry.RESET;
            CustLedgerEntry.SETFILTER("Posting Date", '..%1', DMY2DATE(31, 12, CloseYear));
            CustLedgerEntry.SETFILTER("Date Filter", '..%1', DMY2DATE(31, 12, CloseYear));
            CustLedgerEntry.SETFILTER("Remaining Amt. (LCY)", '<>0');
            IF CustLedgerEntry.FINDSET THEN BEGIN
                Window.UPDATE(1, '');
                Window.UPDATE(2, 0);
                TotalRecNo := CustLedgerEntry.COUNT;
                RecNo := 0;
                REPEAT
                    IF HaveDimension(CustLedgerEntry."Dimension Set ID", Dimension, DimensionValueFrom) THEN BEGIN
                        RecNo := RecNo + 1;
                        Window.UPDATE(1, SalesEntriesText);
                        Window.UPDATE(2, ROUND(RecNo / TotalRecNo * 10000, 1));

                        Rec.Init();
                        Rec.Integer1 := DATABASE::"Cust. Ledger Entry";
                        Rec."Entry No." := EntryNo;
                        Rec.Code1 := CustLedgerEntry."Customer No.";
                        Rec.Text1 := GetNo2Desc(Database::Customer, Rec.Code1);
                        Rec.Text3 := SalesEntriesText;
                        Rec.Integer3 := CustLedgerEntry."Entry No.";
                        Rec.Code2 := Dimension;
                        Rec.Code3 := DimensionValueFrom;
                        Rec.Code4 := DimensionValueTo;
                        Rec.Code5 := CustLedgerEntry."Document No.";
                        Rec.Boolean1 := FALSE;
                        Rec.Insert();
                        EntryNo += 1;
                    END;
                UNTIL CustLedgerEntry.NEXT = 0;
            END;
            Window.UPDATE(1, '');
            Window.UPDATE(2, 10000);
        END;

        IF DataType IN [DataType::All, DataType::"Vendor Ledger Entries"] THEN BEGIN
            VendorLedgerEntry.RESET;
            VendorLedgerEntry.SETFILTER("Posting Date", '..%1', DMY2DATE(31, 12, CloseYear));
            VendorLedgerEntry.SETFILTER("Date Filter", '..%1', DMY2DATE(31, 12, CloseYear));
            VendorLedgerEntry.SETFILTER("Remaining Amt. (LCY)", '<>0');
            IF VendorLedgerEntry.FINDSET THEN BEGIN
                Window.UPDATE(1, '');
                Window.UPDATE(2, 0);
                TotalRecNo := VendorLedgerEntry.COUNT;
                RecNo := 0;
                REPEAT
                    IF HaveDimension(VendorLedgerEntry."Dimension Set ID", Dimension, DimensionValueFrom) THEN BEGIN
                        RecNo := RecNo + 1;
                        Window.UPDATE(1, PurchEntriesText);
                        Window.UPDATE(2, ROUND(RecNo / TotalRecNo * 10000, 1));

                        Rec.Init();
                        Rec.Integer1 := DATABASE::"Vendor Ledger Entry";
                        Rec."Entry No." := EntryNo;
                        Rec.Code1 := VendorLedgerEntry."Vendor No.";
                        Rec.Text1 := GetNo2Desc(Database::Vendor, Rec.Code1);
                        Rec.Text3 := PurchEntriesText;
                        Rec.Integer3 := VendorLedgerEntry."Entry No.";
                        Rec.Code2 := Dimension;
                        Rec.Code3 := DimensionValueFrom;
                        Rec.Code4 := DimensionValueTo;
                        Rec.Code5 := VendorLedgerEntry."Document No.";
                        Rec.Boolean1 := FALSE;
                        Rec.Insert();
                        EntryNo += 1;
                    END;
                UNTIL VendorLedgerEntry.NEXT = 0;
            END;
            Window.UPDATE(1, '');
            Window.UPDATE(2, 10000);
        END;

        Window.CLOSE;
        IF Rec.FINDFIRST THEN;

    end;

    local procedure Post()
    var
        DefaultDimension: Record "Default Dimension";
        ConsultationLines: Record "Consultation Lines";
        RequisitionLines: Record "Requisition Lines";
        QuoteLines: Record "Purchase Line";
        CustLedgerEntry: Record "Cust. Ledger Entry";
        VendorLedgerEntry: Record "Vendor Ledger Entry";
    begin
        IF NOT CONFIRM(Text000, FALSE) THEN
            EXIT;

        Rec.RESET;
        Rec.SETRANGE(Boolean1, TRUE);
        IF Rec.FINDSET THEN BEGIN
            REPEAT
                IF Rec.Integer1 IN [DATABASE::Employee, DATABASE::Item, DATABASE::"G/L Account", DATABASE::"Bank Account", DATABASE::"Fixed Asset", DATABASE::Customer, DATABASE::Vendor] THEN BEGIN
                    DefaultDimension.GET(Rec.Integer1, Rec.Code1, Rec.Code2);
                    DefaultDimension."Dimension Value Code" := Rec.Code4;
                    DefaultDimension.MODIFY;
                END;
                IF Rec.Integer1 IN [DATABASE::"Consultation Lines"] THEN BEGIN
                    ConsultationLines.GET(Rec.Code5, Rec.Integer3);
                    ConsultationLines."Dimension Set ID" := GetNewDimID(ConsultationLines."Dimension Set ID", Rec.Code2, Rec.Code4);
                    ConsultationLines.MODIFY;
                END;
                IF Rec.Integer1 IN [DATABASE::"Requisition Lines"] THEN BEGIN
                    RequisitionLines.GET(Rec.Code5, Rec.Integer3);
                    RequisitionLines."Dimension Set ID" := GetNewDimID(RequisitionLines."Dimension Set ID", Rec.Code2, Rec.Code4);
                    DimMgt.UpdateGlobalDimFromDimSetID(RequisitionLines."Dimension Set ID", RequisitionLines."Shortcut Dimension 1 Code", RequisitionLines."Shortcut Dimension 2 Code");
                    RequisitionLines.MODIFY;
                END;
                IF Rec.Integer1 IN [DATABASE::"Purchase Line"] THEN BEGIN
                    QuoteLines.GET(QuoteLines."Document Type"::Quote, Rec.Code5, Rec.Integer3);
                    QuoteLines."Dimension Set ID" := GetNewDimID(QuoteLines."Dimension Set ID", Rec.Code2, Rec.Code4);
                    DimMgt.UpdateGlobalDimFromDimSetID(QuoteLines."Dimension Set ID", QuoteLines."Shortcut Dimension 1 Code", QuoteLines."Shortcut Dimension 2 Code");
                    QuoteLines.MODIFY;
                END;
                IF Rec.Integer1 IN [DATABASE::"Cust. Ledger Entry"] THEN BEGIN
                    CustLedgerEntry.GET(Rec.Integer3);
                    CustLedgerEntry."Dimension Set ID" := GetNewDimID(CustLedgerEntry."Dimension Set ID", Rec.Code2, Rec.Code4);
                    DimMgt.UpdateGlobalDimFromDimSetID(CustLedgerEntry."Dimension Set ID", CustLedgerEntry."Global Dimension 1 Code", CustLedgerEntry."Global Dimension 2 Code");
                    CustLedgerEntry.MODIFY;
                END;
                IF Rec.Integer1 IN [DATABASE::"Vendor Ledger Entry"] THEN BEGIN
                    VendorLedgerEntry.GET(Rec.Integer3);
                    VendorLedgerEntry."Dimension Set ID" := GetNewDimID(VendorLedgerEntry."Dimension Set ID", Rec.Code2, Rec.Code4);
                    DimMgt.UpdateGlobalDimFromDimSetID(VendorLedgerEntry."Dimension Set ID", VendorLedgerEntry."Global Dimension 1 Code", VendorLedgerEntry."Global Dimension 2 Code");
                    VendorLedgerEntry.MODIFY;
                END;
            UNTIL Rec.NEXT = 0;
            MESSAGE(Text005);
            ClearRec;
        END ELSE
            ERROR(Text004);
    end;

    local procedure GetNo2Desc(TableID: Integer; No2: Code[20]): Text[250]
    var
        Employee: Record Employee;
        Item: Record Item;
        BankAccount: Record "Bank Account";
        FixedAsset: Record "Fixed Asset";
        GLAccount: Record "G/L Account";
        Customer: Record Customer;
        Vendor: Record Vendor;
    begin
        CASE TableID OF
            DATABASE::Employee:
                BEGIN
                    Employee.GET(No2);
                    EXIT(Employee.FullName);
                END;
            DATABASE::Item:
                BEGIN
                    Item.GET(No2);
                    EXIT(Item.Description);
                END;
            DATABASE::"G/L Account":
                BEGIN
                    GLAccount.GET(No2);
                    EXIT(GLAccount.Name);
                END;
            DATABASE::"Bank Account":
                BEGIN
                    BankAccount.GET(No2);
                    EXIT(BankAccount.Name);
                END;
            DATABASE::"Fixed Asset":
                BEGIN
                    FixedAsset.GET(No2);
                    EXIT(FixedAsset.Description);
                END;
            DATABASE::Customer:
                BEGIN
                    Customer.GET(No2);
                    EXIT(Customer.Name);
                END;
            DATABASE::Vendor:
                BEGIN
                    Vendor.GET(No2);
                    EXIT(Vendor.Name);
                END;
        END;
        EXIT('');
    end;

    local procedure GetNewDimID(DimSetID: Integer; NewDimension: Code[20]; NewDimensionValue: Code[20]): Integer
    var
        TempDimSetEntry: Record "Dimension Set Entry" temporary;
    begin
        CLEAR(TempDimSetEntry);
        TempDimSetEntry.DELETEALL;

        DimMgt.GetDimensionSet(TempDimSetEntry, DimSetID);
        TempDimSetEntry.RESET;
        TempDimSetEntry.SETRANGE("Dimension Code", NewDimension);
        IF TempDimSetEntry.FINDFIRST THEN BEGIN
            TempDimSetEntry.VALIDATE("Dimension Value Code", NewDimensionValue);
            TempDimSetEntry.MODIFY;
        END ELSE BEGIN
            TempDimSetEntry.INIT;
            TempDimSetEntry.VALIDATE("Dimension Code", NewDimension);
            TempDimSetEntry.VALIDATE("Dimension Value Code", NewDimensionValue);
            TempDimSetEntry.INSERT;
        END;

        EXIT(DimMgt.GetDimensionSetID(TempDimSetEntry));
    end;

    local procedure ValidateDimension(DimValue: Code[20])
    var
        DimensionValue: Record "Dimension Value";
    begin
        DimensionValue.GET(Dimension, DimValue);
        DimensionValue.TESTFIELD("Dimension Value Type", DimensionValue."Dimension Value Type"::Standard);
        DimensionValue.TESTFIELD(Blocked, FALSE);
    end;

    local procedure HaveDimension(DimSetId: Integer; DimCode: Code[20]; DimValue: Code[20]): Boolean
    var
        DimSetEntry: Record "Dimension Set Entry";
    begin
        IF DimValue = '' THEN BEGIN
            IF DimSetId = 0 THEN
                EXIT(TRUE)
            ELSE BEGIN
                DimSetEntry.RESET;
                DimSetEntry.SETRANGE("Dimension Set ID", DimSetId);
                DimSetEntry.SETRANGE("Dimension Code", DimCode);
                DimSetEntry.SETFILTER("Dimension Value Code", '<>%1', DimValue);
                EXIT(NOT DimSetEntry.FINDFIRST);
            END;
        END ELSE BEGIN
            DimSetEntry.RESET;
            DimSetEntry.SETRANGE("Dimension Set ID", DimSetId);
            DimSetEntry.SETRANGE("Dimension Code", DimCode);
            DimSetEntry.SETRANGE("Dimension Value Code", DimValue);
            EXIT(DimSetEntry.FINDFIRST);
        END;
    end;

    local procedure ClearRec()
    begin
        CLEAR(Rec);
        Rec.DELETEALL;
    end;
}

