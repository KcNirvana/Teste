table 57002 "G/L Account Dimensions"
{
    Caption = 'G/L Account Dimensions';

    fields
    {
        field(1; "Tab Code"; Code[20])
        {
            Caption = 'Tab Code';
        }
        field(2; "Entry Type"; Enum "GL Account Dim Entry Type")
        {
            Caption = 'Entry Type';
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(7; "Amount(DL)"; Decimal)
        {
            Caption = 'Amount(DL)';
            DecimalPlaces = 2 : 2;
        }
        field(8; "Apply Amount"; Decimal)
        {
            Caption = 'Apply Amount';
            DecimalPlaces = 2 : 2;
        }
        field(9; "Remaining Amount"; Decimal)
        {
            Caption = 'Remaining Amount';
            DecimalPlaces = 2 : 2;
        }
        field(11; "Budget Code"; Code[20])
        {
            Caption = 'Budget Code';
        }
        field(12; Account; Code[20])
        {
            Caption = 'Account';
        }
        field(13; "Balance Account"; Decimal)
        {
            Caption = 'Balance Account';
        }
        field(14; Type; enum "GL Account Dim Type")
        {
            Caption = 'Type';
        }
        field(15; "Posted By"; Code[50])
        {
            Caption = 'Posted By';
        }
        field(16; "Date Posted"; Date)
        {
            Caption = 'Date Posted';
        }
        field(17; "Orig. Doc"; Code[20])
        {
            Caption = 'Orig. Doc';
        }
        field(18; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(19; Dimension1; Code[20])
        {
            Caption = 'Dimension 1';
        }
        field(20; Dimension2; Code[20])
        {
            Caption = 'Dimension 2';
        }
        field(21; Dimension3; Code[20])
        {
            Caption = 'Dimension 3';
        }
        field(22; Dimension4; Code[20])
        {
            Caption = 'Dimension 4';
        }
        field(23; Dimension5; Code[20])
        {
            Caption = 'Dimension 5';
        }
        field(24; Dimension6; Code[20])
        {
            Caption = 'Dimension 6';
        }
        field(25; Dimension7; Code[20])
        {
            Caption = 'Dimension 7';
        }
        field(26; Dimension8; Code[20])
        {
            Caption = 'Dimension 8';
        }
        field(27; "Dimension Value1"; Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'Dimension Value1';
            Editable = true;
        }
        field(28; "Dimension Value2"; Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Dimension Value2';
            Editable = false;
        }
        field(29; "Dimension Value3"; Code[20])
        {
            CaptionClass = '1,2,3';
            Caption = 'Dimension Value3';
            Editable = false;
        }
        field(30; "Dimension Value4"; Code[20])
        {
            CaptionClass = '1,2,4';
            Caption = 'Dimension Value4';
            Editable = false;
        }
        field(31; "Dimension Value5"; Code[20])
        {
            CaptionClass = '1,2,5';
            Caption = 'Dimension Value5';
            Editable = false;
        }
        field(32; "Dimension Value6"; Code[20])
        {
            CaptionClass = '1,2,6';
            Caption = 'Dimension Value6';
            Editable = false;
        }
        field(33; "Dimension Value7"; Code[20])
        {
            CaptionClass = '1,2,7';
            Caption = 'Dimension Value7';
            Editable = false;
        }
        field(34; "Dimension Value8"; Code[20])
        {
            CaptionClass = '1,2,8';
            Caption = 'Dimension Value8';
            Editable = false;
        }
        field(35; "Line Orig. Doc."; Integer)
        {
            Caption = 'Line Orig. Doc.';
        }
        field(36; "Diary Insert"; Boolean)
        {
            Caption = 'Diary Insert';
        }
        field(37; "Diary Line"; Integer)
        {
            Caption = 'Diary Line';
        }
        field(38; "Liquidation Open"; Boolean)
        {
            Caption = 'Liquidation Open';
        }
        field(39; "Requisition Code"; Code[20])
        {
            Caption = 'Requisition Code';
            Editable = false;
        }
        field(40; "Requisition Line"; Integer)
        {
            Caption = 'Requisition Line';
            Editable = false;
        }
        field(41; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(42; Quantity; Decimal)
        {
            Caption = 'Quantity';
            Editable = false;
        }
        field(43; "Unit Cost"; Decimal)
        {
            Caption = 'Unit Cost';
            Editable = false;
        }
        field(44; "Amount Without VAT"; Decimal)
        {
            Caption = 'Amount Without VAT';
            Editable = false;
        }
        field(45; "Line Type"; Enum "Documents Line Type")
        {
            Caption = 'Line Type';
            Editable = false;
        }
        field(46; "Line No"; Code[20])
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(50003; "Consultation Code"; Code[20])
        {
            Caption = 'Consultation Code';
            Editable = false;
        }
        field(50004; "Cost Amount"; Decimal)
        {
            Caption = 'Cost Amount';
        }
        field(50005; "Doc. Type"; Enum "GL Account Doc Type")
        {
            Caption = 'Document Type';
        }
        field(50006; "Dimensions Source"; Enum "Dimensions Source")
        {
            Caption = 'Dimensions Source';
        }
        field(50007; "Dimensions Source Type"; Integer)
        {
            Caption = 'Dimensions Source Type';
        }
        field(50008; "Dimensions Source Subtype"; Enum "Dimensions Source Subtype")
        {
            Caption = 'Dimensions Source Subtype';
        }
        field(50009; "Dimensions Source Doc. No."; Code[20])
        {
            Caption = 'Dimensions Source Doc. No.';
        }
        field(50010; "Dimensions Source Line No."; Integer)
        {
            Caption = 'Dimensions Source Line No.';
        }
        field(50015; "Original Amount"; Decimal)
        {
            Caption = 'Original Amount';
        }
        field(50016; "Class Zero Correction"; Boolean)
        {
            Caption = 'Class Zero Correction';
        }
        field(50017; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(50018; "L Type"; Option)
        {
            OptionCaption = ' ,G/L Account,Item,,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,,"Fixed Asset","Charge (Item)";
        }
        field(50019; "Budget Year"; Text[10])
        {
            Caption = 'Budget Year';
        }
    }

    keys
    {
        key(Key1; "Tab Code", "Document No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Orig. Doc", "Line Orig. Doc.")
        {
            SumIndexFields = "Remaining Amount";
        }
        key(Key3; "Dimension Value2")
        {
        }
        key(Key4; Account, "Dimension Value2")
        {
        }
        key(Key5; "Requisition Code", "Requisition Line", "Dimension Value1", "Dimension Value2", "Dimension Value3", "Dimension Value4")
        {
        }
    }

    fieldgroups
    {
    }

    procedure FillDimensions(var GLAccDim: Record "G/L Account Dimensions"; DimSetID: Integer)
    var
        BudgetConfig: Record "Budget Configuration";
        DimSetEntry: Record "Dimension Set Entry";
    begin
        BudgetConfig.Get();

        DimSetEntry.Reset;
        DimSetEntry.SetRange("Dimension Set ID", DimSetID);
        if DimSetEntry.FindSet then begin
            repeat
                if (DimSetEntry."Dimension Code" = BudgetConfig.dim1) and (BudgetConfig.Sd1) then begin
                    GLAccDim.Dimension1 := DimSetEntry."Dimension Code";
                    GLAccDim."Dimension Value1" := DimSetEntry."Dimension Value Code";
                end;
                if (DimSetEntry."Dimension Code" = BudgetConfig.dim2) and (BudgetConfig.Sd2) then begin
                    GLAccDim.Dimension2 := DimSetEntry."Dimension Code";
                    GLAccDim."Dimension Value2" := DimSetEntry."Dimension Value Code";
                end;
                if (DimSetEntry."Dimension Code" = BudgetConfig.dim3) and (BudgetConfig.Sd3) then begin
                    GLAccDim.Dimension3 := DimSetEntry."Dimension Code";
                    GLAccDim."Dimension Value3" := DimSetEntry."Dimension Value Code";
                end;
                if (DimSetEntry."Dimension Code" = BudgetConfig.dim4) and (BudgetConfig.Sd4) then begin
                    GLAccDim.Dimension4 := DimSetEntry."Dimension Code";
                    GLAccDim."Dimension Value4" := DimSetEntry."Dimension Value Code";
                end;
            until DimSetEntry.Next = 0;
        end;
    end;

    procedure GetCompareOrderAmounts(OrderLines: Record "Purchase Line"): Decimal
    var
        BudgetApropriationMethod: Enum "Budget Appropriation Method";
        OrderHeader: Record "Purchase Header";
        Currency: Record Currency;
        CurrExchRate: Record "Currency Exchange Rate";
        VATPostingSetup: Record "VAT Posting Setup";
    begin
        BudgetApropriationMethod := OrderLines.GetBudgetAppropriationMethod();
        OrderLines.GetPurchHeader(OrderHeader, Currency);
        Orderlines.Amount := (Orderlines."Outstanding Quantity" + OrderLines."Qty. Rcd. Not Invoiced (Base)") * OrderLines."Direct Unit Cost";
        Orderlines."Amount Including VAT" := Round(Orderlines.Amount + Orderlines.Amount * (Orderlines."VAT %" + Orderlines."PTSS ND %") / 100, Currency."Amount Rounding Precision");
        Orderlines."Cost Amount" := Orderlines."Amount to Avay";
        IF (Orderlines."VAT %" + Orderlines."PTSS ND %" <> 0) THEN
            Orderlines."Cost Amount" += ROUND((Orderlines."Amount Including VAT" - Orderlines.Amount) / (Orderlines."VAT %" + Orderlines."PTSS ND %") * Orderlines."PTSS ND %", Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
        IF (Orderlines."VAT %" + Orderlines."PTSS ND %" = 0) AND (Orderlines."VAT Calculation Type" = Orderlines."VAT Calculation Type"::"Reverse Charge VAT") THEN BEGIN
            IF VATPostingSetup.GET(Orderlines."VAT Bus. Posting Group", Orderlines."VAT Prod. Posting Group") THEN BEGIN
                Orderlines."Cost Amount" += ROUND(Orderlines.Amount * (VATPostingSetup."PTSS VAT N.D. %") / 100, Currency."Amount Rounding Precision", Currency.VATRoundingDirection);
            END;
        END;

        case BudgetApropriationMethod of
            BudgetApropriationMethod::"Cost Amount":
                exit(Orderlines."Cost Amount");
            BudgetApropriationMethod::"Amount Without VAT":
                exit(OrderLines.Amount);
            BudgetApropriationMethod::"Amount With VAT":
                exit(OrderLines."Amount Including VAT");
        end;
    end;
}

