xmlport 57015 ExportToCRC
{
    Caption = 'Export CRC File';
    Direction = Export;
    FieldDelimiter = '<None>';
    FieldSeparator = '|';
    Format = VariableText;
    UseRequestPage = false;

    schema
    {
        textelement(CreditCustomers)
        {
            tableelement(Integer; Integer)
            {
                XmlName = 'CustomerLoop';
                textelement(obsrv)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            obsrv := 'obsrv'
                        else
                            obsrv := '8208';
                    end;
                }
                textelement(appSrc)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            appSrc := 'appSrc'
                        else
                            appSrc := 'SGV';
                    end;
                }
                textelement(refDate)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            refDate := 'refDate'
                        else
                            refDate := Format(WorkDate, 0, '<Year4>-<Month,2>-<Day,2>');
                    end;
                }
                textelement(contNum)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            contNum := 'contNum'
                        else
                            contNum := Customer."Loan No.";
                    end;
                }
                textelement(instNum)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            instNum := 'instNum'
                        else
                            instNum := Customer."Contract No.";
                    end;
                }
                textelement(accClass)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            accClass := 'accClass'
                        else
                            accClass := Customer."Finance Classification";
                    end;
                }
                textelement(balSheetReco)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            balSheetReco := 'balSheetReco'
                        else
                            balSheetReco := Customer."Balance Sheet Recognition";
                    end;
                }
                textelement(SourceEncum)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            SourceEncum := 'SourceEncum'
                        else
                            SourceEncum := Customer."Forms of Constituition";
                    end;
                }
                textelement(accuImpairVal)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            accuImpairVal := 'accuImpairVal'
                        else begin
                            Customer.CalcFields("Accumulated Impairment");
                            accuImpairVal := Format(Customer."Accumulated Impairment", 0, '<Precision,2><Sign><Integer><Decimals><Comma,.>');
                        end;
                    end;
                }
                textelement(tpImpair)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            tpImpair := 'tpImpair'
                        else
                            tpImpair := Customer."Impairment Type";
                    end;
                }
                textelement(impAssessMtd)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            impAssessMtd := 'impAssessMtd'
                        else
                            impAssessMtd := Customer."Impairment Method";
                    end;
                }
                textelement(accuChgFairVal)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            accuChgFairVal := 'accuChgFairVal'
                        else
                            accuChgFairVal := '';
                    end;
                }
                textelement(perfStat)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            perfStat := 'perfStat'
                        else
                            perfStat := Customer."Performing status";
                    end;
                }
                textelement(datePerfStat)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            datePerfStat := 'datePerfStat'
                        else
                            datePerfStat := Format(Customer."Performing status date", 0, '<Year4>-<Month,2>-<Day,2>');
                    end;
                }
                textelement(provOffbalance)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            provOffbalance := 'provOffbalance'
                        else
                            provOffbalance := '';
                    end;
                }
                textelement(statFrbRen)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            statFrbRen := 'statFrbRen'
                        else
                            statFrbRen := Customer."Sit. deferral negotiation";
                    end;
                }
                textelement(cumRecDefault)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            cumRecDefault := 'cumRecDefault'
                        else
                            cumRecDefault := Format(Customer."Accumulated Recovery", 0, '<Precision,2><Sign><Integer><Decimals><Comma,.>');
                    end;
                }
                textelement(statFrbRenDate)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            statFrbRenDate := 'statFrbRenDate'
                        else
                            statFrbRenDate := Format(Customer."Date deferral negotiation", 0, '<Year4>-<Month,2>-<Day,2>');
                    end;
                }
                textelement(prudPortf)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            prudPortf := 'prudPortf'
                        else
                            prudPortf := '';
                    end;
                }
                textelement(carryAmount)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            carryAmount := 'carryAmount'
                        else
                            carryAmount := Format(Customer."Written Amount", 0, '<Precision,2><Sign><Integer><Decimals><Comma,.>');
                    end;
                }
                textelement(eaction)
                {

                    trigger OnBeforePassVariable()
                    begin
                        if Integer.Number = 1 then
                            eaction := 'action'
                        else
                            eaction := '';
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    if Integer.Number <> 1 then begin
                        if Integer.Number = 2 then
                            Customer.FindFirst
                        else
                            Customer.Next;
                    end;
                end;

                trigger OnPreXmlItem()
                begin
                    Integer.SetRange(Number, 1, CustomerCount + 1);
                end;
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    trigger OnPreXmlPort()
    begin
        Customer.Reset;
        Customer.SetRange("Credit Customer", true);
        CustomerCount := Customer.Count;
    end;

    var
        Customer: Record Customer;
        CustomerCount: Integer;
}

