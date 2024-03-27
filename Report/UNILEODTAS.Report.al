report 57037 "UNILEO DTAS"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/UNILEODTAS.rdl';
    Caption = 'DTAS - Debts to Third Parties due to Old Balances';
    ApplicationArea = All;

    dataset
    {
        dataitem(MapaDTAS; Integer)
        {
            DataItemTableView = SORTING(Number)
                                WHERE(Number = FILTER(1 .. 28));
            column(CompanyName; COMPANYNAME)
            {
            }
            column(CurrReportPageNoCaption; CurrReportPageNoCaptionLbl)
            {
            }
            column(DTAS_Economica__; DTAS_Economica[MapaDTAS.Number])
            {
            }
            column(DTAS_Descricao__; DTAS_Descricao[MapaDTAS.Number])
            {
            }
            column(DTAS_Somatorio; DTAS_Somatorio[MapaDTAS.Number])
            {
            }
            column(DTAS_Bold__; DTAS_Bold[MapaDTAS.Number])
            {
            }
            column(DTAS_Gray__; DTAS_Gray[MapaDTAS.Number])
            {
            }
            column(DTAS_Padding__; DTAS_Padding[MapaDTAS.Number])
            {
            }
            column(Valor_A; -Valor_A)
            {
            }
            column(Valor_B; -Valor_B)
            {
            }
            column(AgedVendLedgEnt2RemAmtLCY; -Valor_1)
            {
                AutoFormatType = 1;
            }
            column(AgedVendLedgEnt3RemAmtLCY; -Valor_2)
            {
                AutoFormatType = 1;
            }
            column(AgedVendLedgEnt4RemAmtLCY; -Valor_3)
            {
                AutoFormatType = 1;
            }
            column(AgedVendLedgEnt5RemAmtLCY; -Valor_4)
            {
                AutoFormatType = 1;
            }
            column(Valor_D; -Valor_D)
            {
            }
            column(Valor_E; -Valor_E)
            {
            }
            column(Valor_F; -Valor_F)
            {
            }
            column(Valor_G; -Valor_G)
            {
            }
            column(Valor_H; -Valor_H)
            {
            }
            column(Total_A; -Total_A)
            {
            }
            column(Total_B; -Total_B)
            {
            }
            column(Total_2; -Total_2)
            {
            }
            column(Total_3; -Total_3)
            {
            }
            column(Total_4; -Total_4)
            {
            }
            column(Total_5; -Total_5)
            {
            }
            column(Total_D; -Total_D)
            {
            }
            column(Total_E; -Total_E)
            {
            }
            column(Total_F; -Total_F)
            {
            }
            column(Total_G; -Total_G)
            {
            }
            column(Total_H; -Total_H)
            {
            }
            column(NrLinha; MapaDTAS.Number)
            {
            }
            column(EndingDate; FORMAT(EndingDate, 0, 9))
            {
            }
            column(PeriodoReport; PeriodoReport)
            {
            }

            trigger OnAfterGetRecord()
            var
                DateDiff: Integer;
                VendorLedgerEntry: Record "Vendor Ledger Entry";
            begin
                CLEAR(VendorLedgerEntry);
                CLEAR(AgedVendorLedgEntry);
                CLEAR(Valor_A);
                CLEAR(Valor_B);
                CLEAR(Valor_C);
                CLEAR(Valor_D);
                CLEAR(Valor_1);
                CLEAR(Valor_2);
                CLEAR(Valor_3);
                CLEAR(Valor_4);
                CLEAR(Valor_E);
                CLEAR(Valor_F);
                CLEAR(Valor_G);
                CLEAR(Valor_H);

                IF DTAS_Somatorio[MapaDTAS.Number] <> '' THEN BEGIN
                    VendorLedgerEntry.RESET;
                    VendorLedgerEntry.SetCurrentKey("Document Type", "Posting Date", "Global Dimension 1 Code");
                    VendorLedgerEntry.SETRANGE("Document Type", VendorLedgerEntry."Document Type"::Invoice);
                    VendorLedgerEntry.SETFILTER("Posting Date", '%1..%2', startDate, EndingDate);
                    VendorLedgerEntry.SETFILTER("Date Filter", '%1..%2', startDate, EndingDate);
                    VendorLedgerEntry.SETFILTER("Global Dimension 1 Code", DTAS_Somatorio[MapaDTAS.Number]);
                    VendorLedgerEntry.SETFILTER("Remaining Amt. (LCY)", '<0');
                    IF VendorLedgerEntry.FINDSET THEN
                        REPEAT
                            VendorLedgerEntry.CALCFIELDS("Remaining Amt. (LCY)");
                            DateDiff := (EndingDate - VendorLedgerEntry."Due Date");
                            CASE TRUE OF
                                DateDiff < -365:
                                    Valor_B += VendorLedgerEntry."Remaining Amt. (LCY)";
                                (DateDiff > -365) AND (DateDiff < 0):
                                    Valor_A += VendorLedgerEntry."Remaining Amt. (LCY)";
                                (DateDiff >= 0) AND (DateDiff < 90):
                                    Valor_1 += VendorLedgerEntry."Remaining Amt. (LCY)";
                                (DateDiff >= 90) AND (DateDiff < 180):
                                    Valor_2 += VendorLedgerEntry."Remaining Amt. (LCY)";
                                (DateDiff >= 180) AND (DateDiff <= 365):
                                    Valor_3 += VendorLedgerEntry."Remaining Amt. (LCY)";
                                DateDiff > 365:
                                    Valor_4 += VendorLedgerEntry."Remaining Amt. (LCY)";
                            END;
                        UNTIL VendorLedgerEntry.NEXT = 0;
                    sumA := 0;
                    recGLE.RESET;
                    recGLE.SETRANGE(recGLE."Posting Date", startDate2, EndingDate);
                    recGLE.SETFILTER(recGLE."G/L Account No.", '0271*|0272*');
                    recGLE.SETFILTER(recGLE."Global Dimension 1 Code", DTAS_Somatorio[MapaDTAS.Number]);
                    IF recGLE.FINDSET THEN BEGIN
                        REPEAT
                            sumA := sumA + recGLE.Amount;
                        UNTIL recGLE.NEXT = 0;
                    END;

                    Valor_C := Valor_1 + Valor_2 + Valor_3 + Valor_4;
                    Valor_A := sumA - Valor_C;
                    Valor_D := 0;
                    Valor_E := Valor_2 + Valor_3 + Valor_4 + Valor_D;
                    Valor_F := Valor_A + Valor_C;
                    Valor_G := Valor_B;
                    Valor_H := Valor_F + Valor_G;
                END;

                IF (MapaDTAS.Number = 1) OR (MapaDTAS.Number = 21) THEN BEGIN
                    Total_A := Total_A + Valor_A;
                    Total_B := Total_B + Valor_B;
                    Total_2 := Total_2 + Valor_1;
                    Total_3 := Total_3 + Valor_2;
                    Total_4 := Total_4 + Valor_3;
                    Total_5 := Total_5 + Valor_4;
                    Total_D := Total_D + Valor_D;
                    Total_E := Total_E + Valor_E;
                    Total_F := Total_F + Valor_F;
                    Total_G := Total_G + Valor_G;
                    Total_H := Total_H + Valor_H;
                END;
            end;

            trigger OnPreDataItem()
            begin
                startDate := DMY2DATE(1, 1, 2020);
                startDate2 := DMY2DATE(1, 1, PeriodYear);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(Ano; PeriodYear)
                    {
                        Caption = 'Year';

                        trigger OnValidate()
                        begin
                            IF (PeriodoReport + 2 > 12) THEN
                                EndingDate := DMY2DATE(31, 12, PeriodYear)
                            ELSE
                                EndingDate := DMY2DATE(1, PeriodoReport + 2, PeriodYear) - 1;
                            EndingDate := CALCDATE('<CM>', EndingDate);
                        end;
                    }
                    field(Mes; PeriodoReport)
                    {
                        Caption = 'Period';

                        trigger OnValidate()
                        begin
                            IF (PeriodoReport + 2 > 12) THEN
                                EndingDate := DMY2DATE(31, 12, PeriodYear)
                            ELSE
                                EndingDate := DMY2DATE(1, PeriodoReport + 2, PeriodYear) - 1;
                            EndingDate := CALCDATE('<CM>', EndingDate);
                        end;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            IF EndingDate = 0D THEN
                EndingDate := WORKDATE;

            PeriodYear := DATE2DMY(WORKDATE, 3);
            PeriodoReport := DATE2DMY(WORKDATE, 2);
            EndingDate := DMY2DATE(1, PeriodoReport, PeriodYear);
            EndingDate := CALCDATE('<CM>', EndingDate);
        end;
    }

    labels
    {
        Titulo1Lbl = 'Economic Classification';
        Titulo2Lbl = 'Description';
        Titulo3Lbl = 'Due Debts';
        Titulo31Lbl = 'Short Term [A]';
        Titulo32Lbl = 'Medium / Long Term [B]';
        Titulo4Lbl = 'Overdue Debt Age Ranges.';
        Titulo41Lbl = '(in days) [C]';
        Titulo411Lbl = '< 90';
        Titulo412Lbl = '[90-180[';
        Titulo413Lbl = '[180-365]';
        Titulo414Lbl = '> 365';
        Titulo4111Lbl = '[1]';
        Titulo4121Lbl = '[2]';
        Titulo4131Lbl = '[3]';
        Titulo4141Lbl = '[4]';
        Titulo5Lbl = 'Exceptions [D]';
        Titulo6Lbl = 'Late payments';
        Titulo61Lbl = '[E]=[2]+[3]+[4]-[D]';
        Titulo7Lbl = 'Total debt by type of expense';
        Titulo71Lbl = 'Short Term   [F]=[A]+[C]';
        Titulo72Lbl = 'Medium / Long Term [G]=[B]';
        Titulo73Lbl = 'SUM';
        Titulo731Lbl = ' [H]=[F]+[G]';
        TituloMapaLbl = 'Debts to Third Parties due to Old Balances';
        SomaLbl = 'Sum';
        PeriodoLbl = 'Period';
        AntiguidadeADataLbl = 'Date to Date';
    }

    trigger OnPreReport()
    begin
        ValidateReport();
    end;

    var
        AgedVendorLedgEntry: array[6] of Record "Vendor Ledger Entry";
        PeriodYear: Integer;
        EndingDate: Date;
        CurrReportPageNoCaptionLbl: Label 'Page';
        DTAS_Descricao: array[50] of Text;
        DTAS_Somatorio: array[50] of Text;
        DTAS_Economica: array[50] of Text;
        DTAS_Rubrica: array[50] of Text;
        DTAS_RubricaAgregadora: array[50] of Text;
        DTAS_MacroRubrica: array[50] of Text;
        DTAS_Bold: array[50] of Boolean;
        DTAS_Gray: array[50] of Boolean;
        DTAS_Padding: array[50] of Text;
        PeriodoReport: Option "1","2","3","4","5","6","7","8","9","10","11","12","13","14";
        Valor_A: Decimal;
        Valor_B: Decimal;
        Valor_C: Decimal;
        Valor_D: Decimal;
        Valor_1: Decimal;
        Valor_2: Decimal;
        Valor_3: Decimal;
        Valor_4: Decimal;
        Valor_E: Decimal;
        Valor_F: Decimal;
        Valor_G: Decimal;
        Valor_H: Decimal;
        Total_A: Decimal;
        Total_B: Decimal;
        Total_2: Decimal;
        Total_3: Decimal;
        Total_4: Decimal;
        Total_5: Decimal;
        Total_D: Decimal;
        Total_E: Decimal;
        Total_F: Decimal;
        Total_G: Decimal;
        Total_H: Decimal;
        startDate: Date;
        recGLE: Record "G/L Entry";
        sumA: Decimal;
        startDate2: Date;

    local procedure ValidateReport()
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
        j: Integer;
        UNILEOMgt: Codeunit "UNILEO Management";
    begin
        CLEAR(UNILEOAuxTable);
        UNILEOAuxTable.SETRANGE("Report Type", "UNILEO Report Type"::DTAS);
        UNILEOAuxTable.SETRANGE("Setup Start Date", UNILEOMgt.GetLastDateSetup("UNILEO Report Type"::DTAS, EndingDate));
        j := 1;
        IF UNILEOAuxTable.FINDSET THEN
            REPEAT
                DTAS_Economica[j] := UNILEOAuxTable.Description2;
                DTAS_Descricao[j] := UNILEOAuxTable.Description1;
                DTAS_Somatorio[j] := UNILEOAuxTable.Totaling + UNILEOAuxTable.Totaling2;
                DTAS_Rubrica[j] := UNILEOAuxTable.Code1;
                DTAS_MacroRubrica[j] := UNILEOAuxTable.Code3;
                DTAS_RubricaAgregadora[j] := UNILEOAuxTable.Code2;
                DTAS_Bold[j] := UNILEOAuxTable.Bold;
                DTAS_Gray[j] := UNILEOAuxTable.GroupCode;
                DTAS_Padding[j] := LOWERCASE(UNILEOAuxTable.Code4);
                j := j + 1;
            UNTIL UNILEOAuxTable.NEXT = 0;
    end;
}

