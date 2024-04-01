codeunit 50007 CMCreateSalesDocuments
{
    var
        CMSalesDocument: Record CMSalesDocument temporary;
        CMSalesDocumentLine: Record CMSalesDocumentLine temporary;
        SalesSetup: Record "Sales & Receivables Setup";
        PostedDocumentNo: Code[20];
        DimMgt: Codeunit DimensionManagement;

    trigger OnRun()
    begin
        CheckConfigurations();
        CheckDocumentHeader();
        CheckDocumentLines();
        CreateDocuments();
    end;

    procedure SetDocuments(var pCMSalesDocument: Record CMSalesDocument temporary; var pCMSalesDocumentLine: Record CMSalesDocumentLine temporary): Boolean
    begin
        pCMSalesDocument.Reset();
        if pCMSalesDocument.FindSet() then
            repeat
                CMSalesDocument.Init();
                CMSalesDocument := pCMSalesDocument;
                CMSalesDocument.Insert();
            until pCMSalesDocument.Next() = 0;

        pCMSalesDocumentLine.Reset();
        if pCMSalesDocumentLine.FindSet() then
            repeat
                CMSalesDocumentLine.Init();
                CMSalesDocumentLine := pCMSalesDocumentLine;
                CMSalesDocumentLine.Insert();
            until pCMSalesDocumentLine.Next() = 0;
        exit(true);
    end;

    procedure GetPostedDocumentNo(): Code[20]
    begin
        exit(PostedDocumentNo);
    end;

    local procedure CheckConfigurations()
    begin
        SalesSetup.Get();
        SalesSetup.TestField("Location Dimension");
        SalesSetup.TestField("Cost Center Dimension");
        SalesSetup.TestField("PT Customer Template");
        SalesSetup.TestField("EU Customer Template");
        SalesSetup.TestField("NEU Customer Template");
        SalesSetup.TestField("Generic Customer No.");
    end;

    local procedure CheckDocumentHeader()
    var
        DimensionValues: Record "Dimension Value";
        CountryRegion: Record "Country/Region";
        NoSeries: Record "No. Series";
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        Text001: Label 'The %1 %2 dont exist.';
        Text002: Label 'The %1 cant be empty.';
        Text003: Label 'The header %1 is different from the total lines.';
        Text004: Label 'The %1 %2 for %3 dont exist.';
        Text005: Label 'Theres is already a %1 with UUI %2 (%1 %3).';
    begin
        CMSalesDocument.Reset();
        if CMSalesDocument.FindSet(true) then
            repeat
                if CMSalesDocument."Document Type" = CMSalesDocument."Document Type"::" " then
                    Error(Text002, CMSalesDocument.FieldCaption("Document Type"));
                if CMSalesDocument.UII = 0 then
                    Error(Text002, CMSalesDocument.FieldCaption(UII));
                DimensionValues.Reset();
                DimensionValues.SetRange("Dimension Code", SalesSetup."Location Dimension");
                DimensionValues.SetRange(Code, CMSalesDocument.Location);
                if DimensionValues.IsEmpty then
                    Error(Text001, SalesSetup."Location Dimension", CMSalesDocument.Location);
                if CMSalesDocument."Post Code" = '' then
                    Error(Text002, CMSalesDocument.FieldCaption("Post Code"));
                if CMSalesDocument.Country = '' then
                    Error(Text002, CMSalesDocument.FieldCaption(Country));
                if not CountryRegion.Get(CMSalesDocument.Country) then
                    Error(Text001, CountryRegion.TableCaption, CMSalesDocument.Country);
                if CMSalesDocument."Document Sequence" = '' then
                    Error(Text002, CMSalesDocument.FieldCaption("Document Sequence"));
                if not CMSalesDocument.EndCustomer then begin
                    CMSalesDocument.TestField("VAT Registration No.");
                    //if ValidateCustomer(CMSalesDocument) then
                    //    CMSalesDocument.Modify();
                end;
                NoSeries.Reset();
                NoSeries.SetRange("CM Series Code", CMSalesDocument."Document Sequence");
                case CMSalesDocument."Document Type" of
                    "CM Document Type"::Invoice:
                        NoSeries.SetFilter("PTSS SAF-T Invoice Type", '%1|%2|%3', NoSeries."PTSS SAF-T Invoice Type"::FS,
                                            NoSeries."PTSS SAF-T Invoice Type"::FR, NoSeries."PTSS SAF-T Invoice Type"::FT);
                    "CM Document Type"::CrMemo:
                        NoSeries.SetRange("PTSS SAF-T Invoice Type", NoSeries."PTSS SAF-T Invoice Type"::NC);
                end;
                if not NoSeries.FindFirst() then
                    Error(Text004, NoSeries.FieldCaption("CM Series Code"), CMSalesDocument."Document Sequence", CMSalesDocument."Document Type")
                else begin
                    if NoSeries."CM Cost Center Dimension" = '' then
                        Error(Text004, NoSeries.FieldCaption("CM Cost Center Dimension"), CMSalesDocument."Document Sequence", CMSalesDocument."Document Type");
                    if NoSeries."CM Bill-to Customer No." = '' then
                        Error(Text004, NoSeries.FieldCaption("CM Bill-to Customer No."), CMSalesDocument."Document Sequence", CMSalesDocument."Document Type")
                end;

                case CMSalesDocument."Document Type" of
                    "CM Document Type"::Invoice:
                        begin
                            SalesInvoiceHeader.Reset();
                            SalesInvoiceHeader.SetRange(CMDocument, true);
                            SalesInvoiceHeader.SetRange("CM Document UID", CMSalesDocument.UII);
                            if SalesInvoiceHeader.FindFirst() then
                                Error(Text005, CMSalesDocument."Document Type", CMSalesDocument.UII, SalesInvoiceHeader."No.");
                        end;
                    "CM Document Type"::CrMemo:
                        begin
                            SalesCrMemoHeader.Reset();
                            SalesCrMemoHeader.SetRange(CMDocument, true);
                            SalesCrMemoHeader.SetRange("CM Document UID", CMSalesDocument.UII);
                            if SalesCrMemoHeader.FindFirst() then
                                Error(Text005, CMSalesDocument."Document Type", CMSalesDocument.UII, SalesCrMemoHeader."No.");
                        end;
                end;

                CMSalesDocumentLine.Reset();
                CMSalesDocumentLine.SetRange(UII, CMSalesDocument.UII);
                CMSalesDocumentLine.CalcSums(Amount, AmountIncludingVAT, VATAmount);
                case true of
                    (CMSalesDocument.Amount + CMSalesDocument.DiscountWithoutVAT) <> CMSalesDocumentLine.Amount:
                        Error(Text003, CMSalesDocument.FieldCaption(Amount));
                    (CMSalesDocument.AmountIncludingVAT + CMSalesDocument.DiscountWithVAT) <> CMSalesDocumentLine.AmountIncludingVAT:
                        Error(Text003, CMSalesDocument.FieldCaption(AmountIncludingVAT));
                    (CMSalesDocument.VATAmount + (CMSalesDocument.DiscountWithVAT - CMSalesDocument.DiscountWithoutVAT)) <> CMSalesDocumentLine.VATAmount:
                        Error(Text003, CMSalesDocument.FieldCaption(VATAmount));
                end;
            until CMSalesDocument.Next() = 0;
    end;

    local procedure CheckDocumentLines()
    var
        Item: Record Item;
        Text001: Label 'Item %1 dont exist.';
        Text002: Label '%1 cant be zero.';
    begin
        CMSalesDocumentLine.Reset();
        if CMSalesDocumentLine.FindSet() then
            repeat
                if not Item.Get(CMSalesDocumentLine.Service) then
                    Error(Text001, CMSalesDocumentLine.Service);
                if CMSalesDocumentLine.Quantity = 0 then
                    Error(Text002, CMSalesDocumentLine.FieldCaption(Quantity));
                if CMSalesDocumentLine."Unit Price" <= 0 then
                    Error(Text002, CMSalesDocumentLine.FieldCaption("Unit Price"));
            until CMSalesDocumentLine.Next() = 0;
    end;

    local procedure ValidateCustomer(var pCMSalesDocument: Record CMSalesDocument temporary): Boolean
    var
        Customer: Record Customer;
        CustomerTemplate: Record "Customer Templ.";
        CustomerTemplMgt: Codeunit "Customer Templ. Mgt.";
    begin
        Customer.Reset();
        Customer.SetRange("VAT Registration No.", pCMSalesDocument."VAT Registration No.");
        IF Customer.FindFirst() then begin
            if pCMSalesDocument.ApplyVAT then
                CustomerTemplate.Get(SalesSetup."PT Customer Template")
            else begin
                case pCMSalesDocument."VAT Type" of
                    "VAT Type"::PT:
                        CustomerTemplate.Get(SalesSetup."PT Customer Template");
                    "VAT Type"::EU:
                        if pCMSalesDocument.ViesValid then
                            CustomerTemplate.Get(SalesSetup."EU Customer Template")
                        else
                            CustomerTemplate.Get(SalesSetup."PT Customer Template");
                    "VAT Type"::NEU:
                        CustomerTemplate.Get(SalesSetup."NEU Customer Template");
                end;
            end;

            CustomerTemplMgt.ApplyCustomerTemplate(Customer, CustomerTemplate, true);
            Customer.Validate(Name, pCMSalesDocument."Customer Name");
            Customer.Validate(Address, pCMSalesDocument.Address);
            Customer.Validate("Country/Region Code", pCMSalesDocument.Country);
            Customer.Validate("Post Code", pCMSalesDocument."Post Code");
            Customer.Validate(City, pCMSalesDocument.City);
            Customer."VAT Registration No." := pCMSalesDocument."VAT Registration No.";
            Customer.Modify(true);
            pCMSalesDocument."Customer Number" := Customer."No.";
            exit(true);
        end;

        if pCMSalesDocument.ApplyVAT then
            CustomerTemplate.Get(SalesSetup."PT Customer Template")
        else begin
            case pCMSalesDocument."VAT Type" of
                "VAT Type"::PT:
                    CustomerTemplate.Get(SalesSetup."PT Customer Template");
                "VAT Type"::EU:
                    if pCMSalesDocument.ViesValid then
                        CustomerTemplate.Get(SalesSetup."EU Customer Template")
                    else
                        CustomerTemplate.Get(SalesSetup."PT Customer Template");
                "VAT Type"::NEU:
                    CustomerTemplate.Get(SalesSetup."NEU Customer Template");
            end;
        end;

        Clear(Customer);
        Customer.SetInsertFromTemplate(true);
        Customer.Init();
        CustomerTemplMgt.InitCustomerNo(Customer, CustomerTemplate);
        Customer."Contact Type" := CustomerTemplate."Contact Type";
        Customer.Insert(true);
        Customer.SetInsertFromTemplate(false);
        CustomerTemplMgt.ApplyCustomerTemplate(Customer, CustomerTemplate);
        Customer.Validate(Name, pCMSalesDocument."Customer Name");
        Customer.Validate(Address, pCMSalesDocument.Address);
        Customer.Validate("Country/Region Code", pCMSalesDocument.Country);
        Customer.Validate("Post Code", pCMSalesDocument."Post Code");
        Customer.Validate(City, pCMSalesDocument.City);
        Customer."VAT Registration No." := pCMSalesDocument."VAT Registration No.";
        Customer.Modify(true);

        pCMSalesDocument."Customer Number" := Customer."No.";
        exit(true);
    end;

    local procedure CreateDocuments()
    var
        SalesSetup: Record "Sales & Receivables Setup";
        SalesHeader: Record "Sales Header";
        SalesLine: Record "Sales Line";
        NoSeries: Record "No. Series";
        PaymentMethod: Record "Payment Method";
        SalesDiscount: Codeunit "Sales - Calc Discount By Type";
        Currency: Record Currency;
        BillToCustomer: Record Customer;
        LineNo: Integer;
        DimID: Integer;
    begin
        Clear(PostedDocumentNo);
        Clear(DimID);
        Clear(Currency);
        Clear(BillToCustomer);

        Currency.InitRoundingPrecision();
        SalesSetup.Get;
        SalesHeader.LockTable;
        SalesLine.LockTable;

        CMSalesDocument.Reset();
        if CMSalesDocument.FindSet() then
            repeat
                Clear(SalesHeader);
                Clear(NoSeries);
                case CMSalesDocument."Document Type" of
                    "CM Document Type"::Invoice:
                        NoSeries.SetFilter("PTSS SAF-T Invoice Type", '%1|%2|%3', NoSeries."PTSS SAF-T Invoice Type"::FS,
                                            NoSeries."PTSS SAF-T Invoice Type"::FR, NoSeries."PTSS SAF-T Invoice Type"::FT);
                    "CM Document Type"::CrMemo:
                        NoSeries.SetRange("PTSS SAF-T Invoice Type", NoSeries."PTSS SAF-T Invoice Type"::NC);
                end;
                NoSeries.SetRange("CM Series Code", CMSalesDocument."Document Sequence");
                NoSeries.FindFirst();

                SalesHeader.Init;
                case CMSalesDocument."Document Type" of
                    "CM Document Type"::Invoice:
                        SalesHeader."Document Type" := SalesHeader."Document Type"::Invoice;
                    "CM Document Type"::CrMemo:
                        SalesHeader."Document Type" := SalesHeader."Document Type"::"Credit Memo";
                end;
                if NoSeries."CM Force Document Date" then
                    SalesHeader.Validate("Posting Date", CMSalesDocument."Document Date");
                SalesHeader.Insert(true);
                BillToCustomer.Get(NoSeries."CM Bill-to Customer No.");

                SalesHeader.Validate("Sell-to Customer No.", SalesSetup."Generic Customer No.");
                SalesHeader.Validate("Sell-to Customer Name", CMSalesDocument."Customer Name");
                SalesHeader.Validate("Sell-to Customer Name 2", '');
                SalesHeader.Validate("Sell-to Address", CMSalesDocument.Address);
                SalesHeader.Validate("Sell-to Country/Region Code", CMSalesDocument.Country);
                SalesHeader.Validate("Sell-to Post Code", CMSalesDocument."Post Code");
                SalesHeader.Validate("Sell-to City", CMSalesDocument.City);
                SalesHeader.Validate("Bill-to Customer No.", NoSeries."CM Bill-to Customer No.");
                if BillToCustomer."PTSS End Consumer" then begin
                    CopySellToToBillTo(SalesHeader);
                    CopySellToToShipTo(SalesHeader);
                    if CMSalesDocument."VAT Registration No." <> '' then begin
                        SalesHeader."VAT Registration No." := CMSalesDocument."VAT Registration No.";
                        ValidateVATRegistrationNo(SalesHeader);
                    end;
                end;

                SalesHeader.Validate("Document Date", CMSalesDocument."Document Date");
                InsertDimensions(SalesSetup."Location Dimension", CMSalesDocument.Location, SalesHeader."Dimension Set ID");
                InsertDimensions(SalesSetup."Cost Center Dimension", NoSeries."CM Cost Center Dimension", SalesHeader."Dimension Set ID");
                DimMgt.UpdateGlobalDimFromDimSetID(SalesHeader."Dimension Set ID", SalesHeader."Shortcut Dimension 1 Code", SalesHeader."Shortcut Dimension 2 Code");
                SalesHeader.Validate(CMDocument, true);
                SalesHeader.Validate("CM Document UID", CMSalesDocument.UII);
                SalesHeader.Validate("CM Contract ID", CMSalesDocument.ContractID);
                SalesHeader.Validate("CM Number Plate", CMSalesDocument.NumberPlate);
                SalesHeader.Validate("CM VIN", CMSalesDocument.VIN);
                SalesHeader.Validate("CM Pickup Date", CMSalesDocument.Pickup);
                SalesHeader.Validate("CM Drop Off Date", CMSalesDocument.DropOff);
                SalesHeader.Validate("Posting No. Series", NoSeries.Code);
                SalesHeader.Validate("Prices Including VAT", true);
                if ValidateDeferements(SalesHeader) then begin
                    SalesHeader.Validate(Deferement, true);
                end;
                SalesHeader.Modify(true);
                LineNo := 10000;

                CMSalesDocumentLine.Reset();
                CMSalesDocumentLine.SetRange(UII, CMSalesDocument.UII);
                if CMSalesDocumentLine.FindSet() then
                    repeat
                        SalesLine.Init;
                        SalesLine."Document Type" := SalesHeader."Document Type";
                        SalesLine."Document No." := SalesHeader."No.";
                        SalesLine."Line No." := LineNo;
                        SalesLine.Insert(true);

                        SalesLine.Validate(Type, SalesLine.Type::Item);
                        SalesLine.Validate("No.", CMSalesDocumentLine.Service);
                        SalesLine.Validate(Quantity, CMSalesDocumentLine.Quantity);
                        SalesLine.Validate("Unit Price", Round(CMSalesDocumentLine.AmountIncludingVAT / CMSalesDocumentLine.Quantity, Currency."Unit-Amount Rounding Precision"));
                        //SalesLine.Validate(Amount, CMSalesDocumentLine.Amount);
                        //SalesLine.Validate("Unit Price", CMSalesDocumentLine.AmountIncludingVAT);
                        SalesLine.Validate("Amount Including VAT", CMSalesDocumentLine.AmountIncludingVAT);
                        SalesLine.Modify(true);
                        LineNo := LineNo + 10000;
                    until CMSalesDocumentLine.Next() = 0;
                if CMSalesDocument.DiscountWithoutVAT <> 0 then
                    SalesDiscount.ApplyInvDiscBasedOnAmt(CMSalesDocument.DiscountWithVAT, SalesHeader);
            until CMSalesDocument.Next() = 0;
        Codeunit.Run(Codeunit::"Sales-Post", SalesHeader);
        PostedDocumentNo := GetPostSalesDocument(SalesHeader);
    end;

    local procedure CopySellToToBillTo(var SalesHeader: Record "Sales Header")
    begin
        SalesHeader."Bill-to Name" := SalesHeader."Sell-to Customer Name";
        SalesHeader."Bill-to Name 2" := SalesHeader."Sell-to Customer Name 2";
        SalesHeader."Bill-to Address" := SalesHeader."Sell-to Address";
        SalesHeader."Bill-to Address 2" := SalesHeader."Sell-to Address 2";
        SalesHeader."Bill-to Post Code" := SalesHeader."Sell-to Post Code";
        SalesHeader."Bill-to Country/Region Code" := SalesHeader."Sell-to Country/Region Code";
        SalesHeader."Bill-to City" := SalesHeader."Sell-to City";
        SalesHeader."Bill-to County" := SalesHeader."Sell-to County";
    end;

    local procedure CopySellToToShipTo(var SalesHeader: Record "Sales Header")
    begin
        SalesHeader."Ship-to Name" := SalesHeader."Sell-to Customer Name";
        SalesHeader."Ship-to Name 2" := SalesHeader."Sell-to Customer Name 2";
        SalesHeader."Ship-to Address" := SalesHeader."Sell-to Address";
        SalesHeader."Ship-to Address 2" := SalesHeader."Sell-to Address 2";
        SalesHeader."Ship-to Post Code" := SalesHeader."Sell-to Post Code";
        SalesHeader."Ship-to Country/Region Code" := SalesHeader."Sell-to Country/Region Code";
        SalesHeader."Ship-to City" := SalesHeader."Sell-to City";
        SalesHeader."Ship-to County" := SalesHeader."Sell-to County";
    end;

    local procedure InsertDimensions(DimCode: Code[20]; DimValue: Code[20]; var DimID: Integer)
    var
        TempDimSetEntry: Record "Dimension Set Entry" temporary;
        OldDimID: Integer;
        NewDimID: Integer;
        SalesReceivablesSetup: Record "Sales & Receivables Setup";
        DimensionValues: Record "Dimension Value";
    begin
        DimensionValues.Reset();
        DimensionValues.SetRange("Dimension Code", DimCode);
        DimensionValues.SetRange(Code, DimValue);
        DimensionValues.FindFirst();

        TempDimSetEntry.DeleteAll;
        OldDimID := DimID;
        DimMgt.GetDimensionSet(TempDimSetEntry, OldDimID);
        TempDimSetEntry.Reset;
        TempDimSetEntry.SetRange("Dimension Code", DimCode);
        if TempDimSetEntry.FindFirst then begin
            TempDimSetEntry.Validate("Dimension Value Code", DimensionValues.Code);
            TempDimSetEntry.Modify(true);
        end else begin
            TempDimSetEntry.Init;
            TempDimSetEntry.Validate("Dimension Code", DimCode);
            TempDimSetEntry.Validate("Dimension Value Code", DimensionValues.Code);
            TempDimSetEntry.Insert(true);
        end;
        NewDimID := DimMgt.GetDimensionSetID(TempDimSetEntry);
        DimID := NewDimID;
    end;

    local procedure GetPostSalesDocument(SalesHeader: Record "Sales Header"): Code[20]
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
    begin
        case SalesHeader."Document Type" of
            "Sales Document Type"::Invoice:
                begin
                    SalesInvoiceHeader.Reset;
                    SalesInvoiceHeader.SetCurrentKey("Pre-Assigned No.");
                    SalesInvoiceHeader.SetRange("Pre-Assigned No.", SalesHeader."No.");
                    if SalesInvoiceHeader.FindFirst then;
                    exit(SalesInvoiceHeader."No.");
                end;
            "Sales Document Type"::"Credit Memo":
                begin
                    SalesCrMemoHeader.Reset;
                    SalesCrMemoHeader.SetCurrentKey("Pre-Assigned No.");
                    SalesCrMemoHeader.SetRange("Pre-Assigned No.", SalesHeader."No.");
                    if SalesCrMemoHeader.FindFirst then;
                    exit(SalesCrMemoHeader."No.");
                end;
        end;
    end;

    local procedure ValidateVATRegistrationNo(SalesHeader: Record "Sales Header")
    var
        VATRegistrationNoFormat: Record "VAT Registration No. Format";
    begin
        if not VATRegistrationNoFormat.Test(SalesHeader."VAT Registration No.", SalesHeader."Bill-to Country/Region Code", SalesHeader."Bill-to Customer No.", 0) then
            exit;
    end;

    local procedure ValidateDeferements(SalesHeader: Record "Sales Header"): Boolean
    var
        lDate: Record Date;
    begin
        if (SalesHeader."CM Drop Off Date" = 0D) and (SalesHeader."CM Pickup Date" = 0D) then
            exit(false);

        lDate.Reset();
        lDate.SetRange("Period Type", lDate."Period Type"::Month);
        lDate.SetRange("Period Start", CalcDate('<-CM>', SalesHeader."CM Pickup Date"), CalcDate('<CM>', SalesHeader."CM Drop Off Date"));
        if (lDate.Count - 1) >= 1 then
            exit(true);

        exit(false);
    end;

    local procedure CreateSalesInvoiceDeferment(SalesInvoiceHeader: Record "Sales Invoice Header")
    var
        lIntNumberMonths: Integer;
        lIntPos: Integer;
        lDatFirstPeriod: Date;
        lDatLastPeriod: Date;
        lDatCurrPeriod: Date;
        lIntMonth: Integer;
        lIntYear: Integer;
        lDecAmountPerMonth: Decimal;
        lDecAmountCorrectedFirstMonth: Decimal;
        lDecAmountTimesMonths: Decimal;
        lDecPeriodAmount: Decimal;
        lDatTestPeriod: Date;
        lDecTotalPercent: Decimal;
        lDecNewAmount: Decimal;
        lPeriodText: Text;
    begin
        if not SalesInvoiceHeader.Deferement then
            exit;

        lIntYear := Date2DMY(SalesInvoiceHeader."CM Pickup Date", 3);
        lIntMonth := Date2DMY(SalesInvoiceHeader."CM Pickup Date", 2);

        lDatFirstPeriod := SalesInvoiceHeader."CM Pickup Date";
        lDatLastPeriod := lDatFirstPeriod;
        //if lDatFirstPeriod = CalcDate('<-CM>', PurchInvHeader."Posting Date") then
        //    exit;

        lIntPos := lIntNumberMonths - 1;

        while (lIntPos > 0) do begin
            lDatLastPeriod := GetPeriodReferenceDate(CalcDate('<1M>', lDatLastPeriod));
            lIntPos -= 1;
        end;
        lPeriodText := Format(lDatFirstPeriod) + '..' + Format(CalcDate('<CM>', lDatLastPeriod));
        lDecAmountPerMonth := Round(PurchInvLine.Amount / lIntNumberMonths, 0.01, '<');
        lDecAmountTimesMonths := lDecAmountPerMonth * lIntNumberMonths;

        if lDecAmountTimesMonths = PurchInvLine.Amount then begin
            lDecAmountCorrectedFirstMonth := lDecAmountPerMonth;
        end else begin
            lDecAmountCorrectedFirstMonth := lDecAmountPerMonth + PurchInvLine.Amount - lDecAmountTimesMonths;
        end;

        lDecPeriodAmount := 0;
        lDatCurrPeriod := DMY2Date(1, lIntMonth, lIntYear);

        lDatTestPeriod := lDatFirstPeriod;
        while (lDatTestPeriod <= lDatCurrPeriod) do begin
            if lDecAmountCorrectedFirstMonth <> 0 then begin
                lDecPeriodAmount += lDecAmountCorrectedFirstMonth;
                lDecAmountCorrectedFirstMonth := 0;
            end else begin
                lDecPeriodAmount += lDecAmountPerMonth;
            end;
            lDatTestPeriod := GetPeriodReferenceDate(CalcDate('<1M>', lDatTestPeriod));
        end;
        CreateDefermentLine(PurchInvLine, lDatCurrPeriod, lDecPeriodAmount, lIntNumberMonths, PurchInvLine.Amount, lPeriodText);

        lDatCurrPeriod := GetPeriodReferenceDate(CalcDate('<1M>', lDatCurrPeriod));
        while (lDatCurrPeriod <= lDatLastPeriod) do begin
            if lDecAmountCorrectedFirstMonth <> 0 then begin
                CreateDefermentLine(PurchInvLine, lDatCurrPeriod, lDecAmountCorrectedFirstMonth, lIntNumberMonths, PurchInvLine.Amount, lPeriodText);
                lDecAmountCorrectedFirstMonth := 0;
            end else
                CreateDefermentLine(PurchInvLine, lDatCurrPeriod, lDecAmountPerMonth, lIntNumberMonths, PurchInvLine.Amount, lPeriodText);
            lDatCurrPeriod := GetPeriodReferenceDate(CalcDate('<1M>', lDatCurrPeriod));
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterInsertInvoiceHeader', '', false, false)]
    local procedure OnAfterInsertInvoiceHeader(var SalesHeader: Record "Sales Header"; var SalesInvHeader: Record "Sales Invoice Header")
    begin
        CreateSalesInvoiceDeferment(SalesInvHeader);
    end;
}

