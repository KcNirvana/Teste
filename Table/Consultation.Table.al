table 57059 Consultation
{
    Caption = 'Consultation';
    DrillDownPageID = "Consultation List";
    LookupPageID = "Consultation List";

    fields
    {
        field(1; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            trigger OnValidate()
            begin
                if "Consultation code" <> xRec."Consultation code" then begin
                    BudgetConfig.Get;
                    NoSeriesMgt.TestManual(GetNoSeriesCode);
                    "No. Series" := '';
                end;
            end;
        }
        field(2; Description; Text[240])
        {
            Caption = 'Description';
        }
        field(3; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(10; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
        }
        field(21; "Consultation Status"; enum "Consultation Status")
        {
            Caption = 'Consultation Status';
            Editable = false;
        }

        field(50000; "Order Amount"; Decimal)
        {
            Caption = 'Order Amount';
        }
        field(50001; "Invoiced Amount"; Decimal)
        {
            Caption = 'Invoiced Amount';
        }
        field(50002; "Credit Amount"; Decimal)
        {
            Caption = 'Credit Memo Amount';
        }
        field(50011; Amount; Decimal)
        {
            CalcFormula = Sum("Consultation Lines".Amount WHERE("Consultation Code" = FIELD("Consultation Code")));
            Caption = 'Amount';
            FieldClass = FlowField;
            Editable = false;
        }
        field(50012; "Amount Including VAT"; Decimal)
        {
            CalcFormula = Sum("Consultation Lines"."Amount Including VAT" WHERE("Consultation Code" = FIELD("Consultation Code")));
            Caption = 'Amount Including VAT';
            FieldClass = FlowField;
            Editable = false;
        }
        field(50014; "Cost Amount"; Decimal)
        {
            CalcFormula = Sum("Consultation Lines"."Cost Amount" WHERE("Consultation Code" = FIELD("Consultation Code")));
            Caption = 'Cost Amount';
            FieldClass = FlowField;
            Editable = false;
        }
        field(50024; "Start Date"; Date)
        {
            Caption = 'Start Date';
            trigger OnValidate()
            begin
                ValidateDates();
            end;
        }
        field(50025; "End Date"; Date)
        {
            Caption = 'End Date';
            trigger OnValidate()
            begin
                ValidateDates();
            end;
        }
        field(50028; "Contract No."; Code[29])
        {
            Caption = 'Contract No.';
            TableRelation = Contract."No." WHERE(Status = CONST(" "));
            trigger OnValidate()
            begin
                CheckContract;
            end;
        }
        field(50029; "Req Employee"; Code[20])
        {
            Caption = 'Req Employee';
            Editable = false;
            TableRelation = Employee;
        }
        field(50030; "Employee Name"; Text[60])
        {
            Caption = 'Employee Name';
            Editable = false;
        }
        field(50031; "Section Code"; Code[20])
        {
            Caption = 'Section Code';
            Editable = false;
        }
        field(50032; "Section Description"; Text[30])
        {
            Caption = 'Section Description';
            Editable = false;
        }
        field(50033; IsContract; Boolean)
        {
            Caption = 'IsContract';
        }
        field(50035; ClosedByYear; Integer)
        {
            Caption = 'Closed By Year';
        }
        field(61000; Comments; Boolean)
        {
            CalcFormula = Exist("Requisition Comments" WHERE("Table ID" = CONST(3),
                                                                  Code = FIELD("Consultation code")));
            Caption = 'Comments';
            FieldClass = FlowField;
            Editable = false;
        }
        field(61002; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Editable = false;
        }
        field(61020; "Budget Appropriation Method"; enum "Budget Appropriation Method")
        {
            Caption = 'Budget Appropriation Method';
            Editable = false;
        }
        field(61030; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code".Code;
        }
        field(61031; "Department Code"; Code[20])
        {
            Caption = 'Department Code';
            Editable = false;
            TableRelation = "Departments";
        }
        field(62000; "Pending Avaylable Budgets"; Integer)
        {
            CalcFormula = Count("Avaylable Budget" WHERE("Consultation Code" = FIELD("Consultation code")));
            Caption = 'Pending Avaylable Budgets';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62002; "Posted Avaylable Budgets"; Integer)
        {
            CalcFormula = Count("Posted Avaylable Budget" WHERE("Consultation Code" = FIELD("Consultation code")));
            Caption = 'Posted Avaylable Budgets';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62005; "Pending PAQs"; Integer)
        {
            CalcFormula = Count(PAQ WHERE("Consultation Code" = FIELD("Consultation code"),
                                           Status = FILTER("Pending Approval" | Open)));
            Caption = 'Pending Adjudications';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62006; "PAQ Approved Not Posted"; Integer)
        {
            CalcFormula = Count(PAQ WHERE("Consultation Code" = FIELD("Consultation code"),
                                           Status = CONST(Released)));
            Caption = 'PAQ Approved Not Posted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62007; "Posted PAQs"; Integer)
        {
            CalcFormula = Count("Posted PAQ" WHERE("Consultation Code" = FIELD("Consultation code"),
                                                    Status = FILTER(<> Rejected)));
            Caption = 'Posted Adjudications';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62008; "PAQ Rejected"; Integer)
        {
            CalcFormula = Count("Posted PAQ" WHERE("Consultation Code" = FIELD("Consultation code"),
                                                    Status = CONST(Rejected)));
            Caption = 'Adjudications Rejected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(63000; "Associated Quotes"; Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE("Document Type" = CONST(Quote),
                                                         "Consultation Code" = FIELD("Consultation code")));
            Caption = 'Associated Quotes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(63001; "Associated Orders"; Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE("Consultation Code" = FIELD("Consultation code"),
                                                         "Document Type" = CONST(Order)));
            Caption = 'Associated Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(63002; "Associated Invoices"; Integer)
        {
            CalcFormula = Count("Purch. Inv. Header" WHERE("Consultation Code" = FIELD("Consultation code")));
            Caption = 'Associated Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(63003; "Associated Cr. Memos"; Integer)
        {
            CalcFormula = Count("Purch. Cr. Memo Hdr." WHERE("Consultation Code" = FIELD("Consultation code")));
            Caption = 'Associated Cr. Memos';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Consultation Code")
        {
            Clustered = true;
        }
        key(Key2; "Consultation Status", "Consultation Code")
        {
        }
        key(Key3; IsContract, "Consultation Status", "Section Code", "Department Code", "Created by")
        {
        }
        key(Key4; IsContract, "Created by", "Consultation Status")
        {
        }
        key(Key5; "Created by", "Consultation Status")
        {
        }
    }

    fieldgroups
    {
    }

    var
        BudgetConfig: Record "Budget Configuration";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        CduCons: Codeunit Consultation;
        Text001: Label 'You cant delete a Consultation with pending associated budget requests.';
        Text002: Label 'You cant delete a Consultation with pending adjudications requests.';
        Text003: Label 'You cant delete a Consultation with %1 associated.';
        Text004: Label 'You cant delete a Consultation with avaylable budgets.';
        Text005: Label 'You cant delete a Consultation with adjudications.';
        Text006: Label 'You cannot rename %1.';
        Text007: Label '%1 cannot be bigger then %2';


    trigger OnInsert()
    begin
        CduCons.ValidatePermissions("Consultation Permissions"::Create);
        InitInsert();
    end;

    trigger OnModify()
    begin
        CduCons.ValidatePermissions("Consultation Permissions"::Modify);
    end;

    trigger OnDelete()
    var
        AvaylableBudget: Record "Avaylable Budget";
        PAQ: Record PAQ;
        PurchaseHeader: Record "Purchase Header";
        PostedAvayBudget: Record "Posted Avaylable Budget";
        PostedPAQ: Record "Posted PAQ";
        ConsultationLines: Record "Consultation Lines";
        AprovalEntry: Record "Aproval Entry";

    begin
        CduCons.ValidatePermissions("Consultation Permissions"::Delete);
        AvaylableBudget.Reset;
        AvaylableBudget.SetRange("Consultation Code", "Consultation Code");
        If not AvaylableBudget.IsEmpty then
            Error(Text001);

        PAQ.Reset;
        PAQ.SetRange("Consultation Code", "Consultation code");
        IF not PAQ.IsEmpty then
            Error(Text002);

        PurchaseHeader.Reset();
        PurchaseHeader.SetRange("Consultation Code", "Consultation Code");
        if PurchaseHeader.FindFirst() then
            Error(Text003, PurchaseHeader."Document Type");

        PostedAvayBudget.Reset;
        PostedAvayBudget.SetRange("Consultation Code", "Consultation Code");
        if not PostedAvayBudget.IsEmpty then
            Error(Text004);

        PostedPAQ.Reset;
        PostedPAQ.SetRange("Consultation Code", "Consultation Code");
        if not PostedPAQ.IsEmpty then
            Error(Text005);

        ConsultationLines.Reset();
        ConsultationLines.SetRange("Consultation Code", "Consultation Code");
        ConsultationLines.DeleteAll(true);

        AprovalEntry.Reset;
        AprovalEntry.SetRange("Table ID", DATABASE::Consultation);
        AprovalEntry.SetRange("Document Type", AprovalEntry."Document Type"::Consultation);
        AprovalEntry.SetRange("Document No.", "Consultation Code");
        AprovalEntry.DeleteAll(true);
    end;

    trigger OnRename()
    begin
        Error(Text006, TableCaption);
    end;

    procedure AssistEdit(Old: Record Consultation): Boolean
    var
        Consultation: Record Consultation;
    begin
        BudgetConfig.Get();
        BudgetConfig.TestField("Consultation Nos.");
        Consultation := Rec;
        if NoSeriesMgt.SelectSeries(BudgetConfig."Consultation Nos.", Old."No. Series", Consultation."No. Series") then begin
            NoSeriesMgt.SetSeries(Consultation."Consultation code");
            Rec := Consultation;
            exit(true);
        end;
    end;

    procedure GetPendingAvaylableAmount(): Decimal
    var
        AvaylableBudget: Record "Avaylable Budget";
        Amount: Decimal;
    begin
        Clear(Amount);
        if "Consultation code" <> '' then begin
            AvaylableBudget.Reset;
            AvaylableBudget.SetRange("Consultation Code", "Consultation code");
            if AvaylableBudget.FindSet() then
                repeat
                    Amount += AvaylableBudget.GetAvayBudgetAmount();
                until AvaylableBudget.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetPostedAvaylableAmount(): Decimal
    var
        PostedAvaylableBudget: Record "Posted Avaylable Budget";
        Amount: Decimal;
    begin
        Clear(Amount);
        if "Consultation code" <> '' then begin
            PostedAvaylableBudget.Reset;
            PostedAvaylableBudget.SetRange("Consultation Code", "Consultation code");
            PostedAvaylableBudget.SetFilter(Status, '%1|%2', "Avaylable Budget Status"::Released, "Avaylable Budget Status"::Canceled);
            if PostedAvaylableBudget.FindSet() then
                repeat
                    Amount += PostedAvaylableBudget.GetAvayBudgetAmount();
                until PostedAvaylableBudget.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetPAQAmount(): Decimal
    var
        PAQ: Record PAQ;
        Amount: Decimal;
    begin
        Clear(Amount);
        if "Consultation code" <> '' then begin
            PAQ.Reset;
            PAQ.SetRange("Consultation Code", "Consultation Code");
            PAQ.SetFilter(Status, '%1|%2', "PAQ Status"::Open, "PAQ Status"::"Pending Approval");
            if PAQ.FindSet() then
                repeat
                    Amount += PAQ.GetPAQAmount();
                until PAQ.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetPostedPAQAmount(): Decimal
    var
        PostedPAQ: Record "Posted PAQ";
        Amount: Decimal;
    begin
        if "Consultation code" <> '' then begin
            PostedPAQ.Reset;
            PostedPAQ.SetRange("Consultation Code", "Consultation Code");
            PostedPAQ.SetFilter(Status, '%1|%2', "PAQ Status"::Released, "PAQ Status"::Canceled);
            if PostedPAQ.FindSet() then
                repeat
                    Amount += PostedPAQ.GetPAQAmount();
                until PostedPAQ.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetQuotedAmount(): Decimal
    var
        PurchHeader: Record "Purchase Header";
        Amount: Decimal;
    begin
        if "Consultation code" <> '' then begin
            PurchHeader.Reset;
            PurchHeader.SetRange("Document Type", PurchHeader."Document Type"::Quote);
            PurchHeader.SetRange("Consultation Code", "Consultation Code");
            if PurchHeader.FindSet() then
                repeat
                    Amount += PurchHeader.GetPurchHeaderAmount();
                until PurchHeader.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetSelectedQuotesAmount(): Decimal
    var
        PurchHeader: Record "Purchase Header";
        Amount: Decimal;
    begin
        if "Consultation code" <> '' then begin
            PurchHeader.Reset;
            PurchHeader.SetRange("Document Type", PurchHeader."Document Type"::Quote);
            PurchHeader.SetRange("Consultation Code", "Consultation Code");
            if PurchHeader.FindSet() then
                repeat
                    Amount += PurchHeader.GetSelectedQuoteAmount();
                until PurchHeader.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetOrderedAmount(): Decimal
    var
        PurchHeader: Record "Purchase Header";
        Amount: Decimal;
    begin
        if "Consultation code" <> '' then begin
            PurchHeader.Reset;
            PurchHeader.SetRange("Document Type", PurchHeader."Document Type"::Order);
            PurchHeader.SetRange("Consultation Code", "Consultation Code");
            if PurchHeader.FindSet() then
                repeat
                    Amount += PurchHeader.GetPurchHeaderAmount();
                until PurchHeader.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetOrderAmountNotReceived(): Decimal
    var
        PurchHeader: Record "Purchase Header";
        PurchaseLine: Record "Purchase Line";
        Currency: Record Currency;
        Amount: Decimal;
    begin
        if "Consultation code" <> '' then begin
            PurchaseLine.Reset;
            PurchaseLine.SetRange("Document Type", PurchaseLine."Document Type"::Order);
            PurchaseLine.SetRange("Consultation Code", "Consultation Code");
            PurchaseLine.SetFilter("Qty. Rcd. Not Invoiced", '<>0');
            if PurchaseLine.FindSet() then
                repeat
                    PurchaseLine.GetPurchHeader(PurchHeader, Currency);
                    Amount += Round(PurchaseLine.GetPurchLineAmount() * PurchaseLine."Qty. Rcd. Not Invoiced" / PurchaseLine.Quantity, Currency."Amount Rounding Precision");
                until PurchaseLine.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetInvoicedAmount(): Decimal
    var
        PurchInvHeader: Record "Purch. Inv. Header";
        Amount: Decimal;
    begin
        if "Consultation code" <> '' then begin
            PurchInvHeader.Reset;
            PurchInvHeader.SetRange("Consultation Code", "Consultation Code");
            if PurchInvHeader.FindSet() then
                repeat
                    Amount += PurchInvHeader.GetPurchInvHeaderAmount();
                until PurchInvHeader.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetCreditedAmount(): Decimal
    var
        PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
        lAmount: Decimal;
    begin
        if "Consultation code" <> '' then begin
            PurchCrMemoHeader.Reset;
            PurchCrMemoHeader.SetRange("Consultation Code", "Consultation Code");
            if PurchCrMemoHeader.FindSet() then
                repeat
                    Amount += PurchCrMemoHeader.GetCrMemoHeaderAmount();
                until PurchCrMemoHeader.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure CountAvaylablesByYear(Year: Integer): Integer
    var
        AvaylableBudget: Record "Avaylable Budget" temporary;
        AvaylableBudgetLines: Record "Avaylable Budget Line";
        ReturnResult: Integer;
    begin
        AvaylableBudgetLines.Reset();
        AvaylableBudgetLines.SetRange("Consultation Code", "Consultation Code");
        AvaylableBudgetLines.SetFilter("Avay Date", '%1..%2', DMY2Date(1, 1, Year), DMY2Date(31, 12, Year));
        If AvaylableBudgetLines.FindSet() then
            repeat
                If not AvaylableBudget.Get(AvaylableBudgetLines."Avay Code") then begin
                    AvaylableBudget.Init();
                    AvaylableBudget."Avay Code" := AvaylableBudgetLines."Avay Code";
                    AvaylableBudget.Insert();
                end;
            until AvaylableBudgetLines.Next() = 0;
        ReturnResult := AvaylableBudget.Count;
        exit(ReturnResult);
    end;

    procedure CountInvoicesByYear(Year: Integer): Integer
    var
        PurchInvLine: Record "Purch. Inv. Line";
        PurchInvHeader: Record "Purch. Inv. Header" temporary;
        ReturnResult: Integer;
    begin
        PurchInvLine.Reset();
        PurchInvLine.SetRange("Consultation Code", "Consultation Code");
        PurchInvLine.Setrange("Contract Year", Year);
        If PurchInvLine.FindSet() then
            repeat
                If not PurchInvHeader.Get(PurchInvLine."Document No.") then begin
                    PurchInvHeader.Init();
                    PurchInvHeader."No." := PurchInvLine."Document No.";
                    PurchInvHeader.Insert();
                end;
            until PurchInvLine.Next() = 0;
        ReturnResult := PurchInvHeader.Count;
        exit(ReturnResult);
    end;

    procedure CountCreditsByYear(Year: Integer): Integer
    var
        PurchCrMemoLine: Record "Purch. Cr. Memo Line";
        PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr." temporary;
        ReturnResult: Integer;
    begin
        PurchCrMemoLine.Reset();
        PurchCrMemoLine.SetRange("Consultation Code", "Consultation Code");
        PurchCrMemoLine.Setrange("Contract Year", Year);
        If PurchCrMemoLine.FindSet() then
            repeat
                If not PurchCrMemoHeader.Get(PurchCrMemoLine."Document No.") then begin
                    PurchCrMemoHeader.Init();
                    PurchCrMemoHeader."No." := PurchCrMemoLine."Document No.";
                    PurchCrMemoHeader.Insert();
                end;
            until PurchCrMemoLine.Next() = 0;
        ReturnResult := PurchCrMemoHeader.Count;
        exit(ReturnResult);
    end;

    procedure GetPostedAvaylableAmountByYear(Year: Integer): Decimal
    var
        PostedAvaylableBudget: Record "Posted Avaylable Budget";
        Amount: Decimal;
    begin
        if "Consultation code" <> '' then begin
            PostedAvaylableBudget.Reset;
            PostedAvaylableBudget.SetRange("Consultation Code", "Consultation Code");
            PostedAvaylableBudget.SetFilter(Status, '%1|%2', "Avaylable Budget Status"::Released, "Avaylable Budget Status"::Canceled);
            PostedAvaylableBudget.SetFilter("Avay Date", '%1..%2', DMY2Date(1, 1, Year), DMY2Date(31, 12, Year));
            if PostedAvaylableBudget.FindSet() then
                repeat
                    Amount += PostedAvaylableBudget.GetAvayBudgetAmount();
                until PostedAvaylableBudget.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetPostedPAQAmountByYear(Year: Integer): Decimal
    var
        PostedPAQ: Record "Posted PAQ";
        Amount: Decimal;
    begin
        if "Consultation code" <> '' then begin
            PostedPAQ.Reset;
            PostedPAQ.SetRange("Consultation Code", "Consultation Code");
            PostedPAQ.SetFilter(Status, '%1|%2', "PAQ Status"::Released, "PAQ Status"::Canceled);
            PostedPAQ.SetFilter("PAQ Date", '%1..%2', DMY2Date(1, 1, Year), DMY2Date(31, 12, Year));
            if PostedPAQ.FindSet() then
                repeat
                    Amount += PostedPAQ.GetPAQAmount();
                until PostedPAQ.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetOrderedAmountByYear(Year: Integer): Decimal
    var
        PurchaseLine: Record "Purchase Line";
    begin
        if "Consultation code" <> '' then begin
            PurchaseLine.Reset;
            PurchaseLine.SetRange("Document Type", PurchaseLine."Document Type"::Order);
            PurchaseLine.SetRange("Consultation Code", "Consultation Code");
            PurchaseLine.SetRange("Contract Year", Year);
            PurchaseLine.CalcSums("Amt. Rcd. Not Invoiced (LCY)");
            exit(PurchaseLine."Amt. Rcd. Not Invoiced (LCY)")
        end;
        exit(0);
    end;

    procedure GetInvoicedAmountByYear(Year: Integer): Decimal
    var
        PurchInvLine: Record "Purch. Inv. Line";
        Amount: Decimal;
    begin
        if "Consultation code" <> '' then begin
            PurchInvLine.Reset;
            PurchInvLine.SetRange("Consultation Code", "Consultation Code");
            PurchInvLine.SetRange("Contract Year", Year);
            if PurchInvLine.FindSet() then
                repeat
                    Amount += PurchInvLine.GetPurchInvLineAmount();
                until PurchInvLine.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetCreditedAmountByYear(Year: Integer): Decimal
    var
        PurchCrMemoLine: Record "Purch. Cr. Memo Line";
        Amount: Decimal;
    begin
        if "Consultation code" <> '' then begin
            PurchCrMemoLine.Reset;
            PurchCrMemoLine.SetRange("Consultation Code", "Consultation Code");
            PurchCrMemoLine.SetRange("Contract Year", Year);
            if PurchCrMemoLine.FindSet() then
                repeat
                    Amount += PurchCrMemoLine.GetPurchCrMemoLineAmount();
                until PurchCrMemoLine.Next() = 0;
        end;
        exit(Amount);
    end;

    procedure GetTotalConsultation(): Decimal
    begin
        CalcFields(Amount, "Amount Including VAT", "Cost Amount");
        case "Budget Appropriation Method" of
            "Budget Appropriation Method"::"Amount Without VAT":
                exit(Amount);
            "Budget Appropriation Method"::"Amount With VAT":
                exit("Amount Including VAT");
            "Budget Appropriation Method"::"Cost Amount":
                exit("Cost Amount");
            else
                exit(0);
        end;
    end;

    local procedure UpdateEmployee()
    var
        BudgetPermissions: Record "Budget Permissions";
        Employee: Record Employee;
        SectionCode: Record Sections;
    begin
        if BudgetPermissions.Get("Created By", 0) then begin
            "Req Employee" := BudgetPermissions."Employee Number";

            Clear(Employee);
            Clear(SectionCode);
            if Employee.Get("Req Employee") then begin
                "Employee Name" := Employee."First Name" + ' ' + Employee."Last Name";
                "Section Code" := Employee."Section Code";
                SectionCode.SetRange(Code, Employee."Section Code");
                if SectionCode.FindSet then begin
                    "Section Description" := SectionCode.Description;
                    "Department Code" := SectionCode."Department Code";
                end;
            end;
        END;
    end;

    procedure GetPostedPAQLastDate(): Date
    var
        PostedPAQ: Record "Posted PAQ";
    begin
        PostedPAQ.Reset();
        PostedPAQ.SetCurrentKey("Creation Date");
        PostedPAQ.SetRange("Consultation Code", "Consultation code");
        PostedPAQ.SetRange(Reversed, false);
        if PostedPAQ.FindLast then
            exit(PostedPAQ."Creation Date");

        exit(0D);
    end;

    local procedure CheckContract()
    var
        Consultation: Record Consultation;
        Text001: Label 'You cant change the contract because it has avaylable amounts.';
        Text002: Label 'The contract %1 is already associated with consultation %2.';
    begin
        if xRec."Contract No." <> "Contract No." then begin
            if GetPostedAvaylableAmount() <> 0 then
                Error(Text001);
            if "Contract No." <> '' then begin
                Consultation.SetRange("Contract No.", "Contract No.");
                if Consultation.FindFirst then
                    Error(Text002, "Contract No.", Consultation."Consultation code");
            end;
        end;
    end;

    local procedure ValidateDates()
    begin
        if (("Start Date" <> 0D) and ("End Date" <> 0D)) then begin
            if ("Start Date" > "End Date") then
                Error(StrSubstNo(Text007, FieldCaption("Start Date"), FieldCaption("End Date")));
        end;
    end;

    local procedure TestNoSeriesDate(No: Code[20]; NoSeriesCode: Code[20]; NoCapt: Text[1024]; NoSeriesCapt: Text[1024])
    var
        NoSeries: Record "No. Series";
    begin
        IF (No <> '') AND (NoSeriesCode <> '') THEN BEGIN
            NoSeries.GET(NoSeriesCode);
            IF NoSeries."Date Order" THEN
                ERROR(Text001, FIELDCAPTION("Creation Date"), NoSeriesCapt, NoSeriesCode,
                      NoSeries.FIELDCAPTION("Date Order"), NoSeries."Date Order", NoCapt, No);
        END;
    end;

    local procedure TestNoSeries()
    begin
        BudgetConfig.GET;
        BudgetConfig.TestField("Consultation Nos.")
    end;

    local procedure GetNoSeriesCode(): Code[20]
    begin
        BudgetConfig.GET;
        exit(BudgetConfig."Consultation Nos.");
    end;

    local procedure GetPostingNoSeriesCode() PostingNos: Code[20]
    begin
        BudgetConfig.GET;
    end;

    local procedure InitInsert()
    var
        BudgetPermissions: Record "Budget Permissions";
    begin
        BudgetConfig.Get;
        BudgetConfig.TestField("Budget Appropriation Method");

        if "Consultation Code" = '' then begin
            TestNoSeries();
            BudgetConfig.Get;
            NoSeriesMgt.InitSeries(GetNoSeriesCode, xRec."No. Series", "Creation Date", "Consultation Code", "No. Series");
        end;

        "Creation Date" := WorkDate();
        "Created by" := UserId;
        "Start Date" := WorkDate();
        Validate("Budget Appropriation Method", BudgetConfig."Budget Appropriation Method");
        UpdateEmployee;
    end;

}

