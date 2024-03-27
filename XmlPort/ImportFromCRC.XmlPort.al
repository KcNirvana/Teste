xmlport 57016 ImportFromCRC
{

    Caption = 'Import CRC File';
    Direction = Import;
    FieldDelimiter = '<None>';
    FieldSeparator = '|';
    Format = VariableText;
    UseRequestPage = false;

    schema
    {
        textelement(CreditCustomers)
        {
            tableelement(Customer; Customer)
            {
                AutoSave = false;
                MinOccurs = Zero;
                XmlName = 'Customer';
                SourceTableView = SORTING("No.") ORDER(Ascending) WHERE("Credit Customer" = CONST(true));
                textelement(obsrv)
                {
                    MinOccurs = Zero;
                }
                textelement(appSrc)
                {
                    MinOccurs = Zero;
                }
                textelement(refDate)
                {
                    MinOccurs = Zero;

                }
                textelement(contNum)
                {
                    MinOccurs = Zero;
                }
                textelement(instNum)
                {
                    MinOccurs = Zero;
                }
                textelement(accClass)
                {
                    MinOccurs = Zero;
                }
                textelement(balSheetReco)
                {
                    MinOccurs = Zero;
                }
                textelement(SourceEncum)
                {
                    MinOccurs = Zero;
                }
                textelement(accuImpairVal)
                {
                    MinOccurs = Zero;

                }
                textelement(tpImpair)
                {
                    MinOccurs = Zero;
                }
                textelement(impAssessMtd)
                {
                    MinOccurs = Zero;
                }
                textelement(accuChgFairVal)
                {
                    MinOccurs = Zero;
                }
                textelement(perfStat)
                {
                    MinOccurs = Zero;
                }
                textelement(datePerfStat)
                {
                    MinOccurs = Zero;
                }
                textelement(provOffbalance)
                {
                    MinOccurs = Zero;
                }
                textelement(statFrbRen)
                {
                    MinOccurs = Zero;
                }
                textelement(cumRecDefault)
                {
                    MinOccurs = Zero;
                }
                textelement(statFrbRenDate)
                {
                    MinOccurs = Zero;
                }
                textelement(prudPortf)
                {
                    MinOccurs = Zero;
                }
                textelement(carryAmount)
                {
                    MinOccurs = Zero;
                }
                textelement(eaction)
                {
                    MinOccurs = Zero;
                }

                trigger OnBeforeInsertRecord()
                begin
                    Clear(Customer2);
                    Customer2.SetRange("Contract No.", instNum);
                    if Customer2.Count > 1 then
                        Error(Text001, instNum);

                    if Customer2.FindFirst then begin
                        Clear(CreditCodesType);

                        Customer2.TestField(Customer2."Credit Customer", true);
                        if not CreditCodesType.Get(CreditCodesType.Type::T_CCI, accClass) then
                            Error(Text003, CreditCodesType.TableCaption, CreditCodesType.Type::T_CCI, accClass);
                        if not CreditCodesType.Get(CreditCodesType.Type::T_RCB, balSheetReco) then
                            Error(Text003, CreditCodesType.TableCaption, CreditCodesType.Type::T_RCB, balSheetReco);
                        if not CreditCodesType.Get(CreditCodesType.Type::T_ONS, SourceEncum) then
                            Error(Text003, CreditCodesType.TableCaption, CreditCodesType.Type::T_ONS, SourceEncum);
                        if not CreditCodesType.Get(CreditCodesType.Type::T_IMP, tpImpair) then
                            Error(Text003, CreditCodesType.TableCaption, CreditCodesType.Type::T_IMP, tpImpair);
                        if not CreditCodesType.Get(CreditCodesType.Type::T_MAI, impAssessMtd) then
                            Error(Text003, CreditCodesType.TableCaption, CreditCodesType.Type::T_MAI, impAssessMtd);
                        if not CreditCodesType.Get(CreditCodesType.Type::T_PER, perfStat) then
                            Error(Text003, CreditCodesType.TableCaption, CreditCodesType.Type::T_PER, perfStat);
                        if not CreditCodesType.Get(CreditCodesType.Type::T_TDR, statFrbRen) then
                            Error(Text003, CreditCodesType.TableCaption, CreditCodesType.Type::T_TDR, statFrbRen);

                        Customer2."Loan No." := contNum;
                        Customer2."Finance Classification" := accClass;
                        Customer2."Balance Sheet Recognition" := balSheetReco;
                        Customer2."Forms of Constituition" := SourceEncum;
                        Customer2."Impairment Type" := tpImpair;
                        Customer2."Impairment Method" := impAssessMtd;
                        Customer2."Performing status" := perfStat;
                        if datePerfStat <> '' then
                            Evaluate(Customer2."Performing status date", FormatDate(datePerfStat));
                        Customer2."Sit. deferral negotiation" := statFrbRen;
                        Evaluate(Customer2."Accumulated Recovery", FormatDecimal(cumRecDefault));
                        if statFrbRenDate <> '' then
                            Evaluate(Customer2."Date deferral negotiation", FormatDate(statFrbRenDate));
                        Evaluate(Customer2."Written Amount", FormatDecimal(carryAmount));
                        Customer2.Modify;
                    end else
                        Error(Text002, instNum);
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

    trigger OnPostXmlPort()
    begin
        Message(Text004);
    end;

    trigger OnPreXmlPort()
    begin
        LineNo := 0;
    end;

    var
        Text001: Label 'There are multiple customers with Contract No. %1.';
        Text002: Label 'There is no customer with Contract No. %1.';
        Customer2: Record Customer;
        CreditCodesType: Record "Credit Codes Type";
        Text003: Label 'There is no %1 %2 %3.';
        Text004: Label 'Imported with success.';
        LineNo: Integer;

    local procedure FormatDate(ImportDate: Text): Text
    begin
        exit(CopyStr(ImportDate, 9, 2) + '-' + CopyStr(ImportDate, 6, 2) + '-' + CopyStr(ImportDate, 1, 4));
    end;

    local procedure FormatDecimal(ImportDecimal: Text): Text
    begin
        if ImportDecimal = '' then
            exit('0');
        exit(ConvertStr(ImportDecimal, '.', ','));
    end;
}

