xmlport 50000 "Import CM Sales Documents"
{

    Direction = Both;
    Encoding = UTF16;
    FormatEvaluate = Xml;
    UseRequestPage = false;
    UseDefaultNamespace = true;
    schema
    {
        textelement(Documents)
        {
            MinOccurs = Once;
            MaxOccurs = Once;

            tableelement(CMSalesDocument; CMSalesDocument)
            {
                XmlName = 'Document';
                UseTemporary = true;
                MinOccurs = Once;
                MaxOccurs = Once;
                textelement(DocumentType)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                    trigger OnAfterAssignVariable()
                    begin
                        case UpperCase(DocumentType) of
                            UpperCase('Invoice'):
                                CMSalesDocument."Document Type" := CMSalesDocument."Document Type"::Invoice;
                            UpperCase('CrMemo'):
                                CMSalesDocument."Document Type" := CMSalesDocument."Document Type"::CrMemo;
                        end;
                    end;
                }
                textelement(ClientType)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                    trigger OnAfterAssignVariable()
                    begin
                        case ClientType of
                            'Person':
                                CMSalesDocument."Customer Type" := CMSalesDocument."Customer Type"::Person;
                            'Company':
                                CMSalesDocument."Customer Type" := CMSalesDocument."Customer Type"::Company;
                        end;
                    end;
                }
                textelement(EndCustomer)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                    trigger OnAfterAssignVariable()
                    begin
                        case EndCustomer of
                            'Yes':
                                CMSalesDocument.EndCustomer := true;
                        end;
                    end;
                }
                fieldelement(VatRegistrationNo; CMSalesDocument."VAT Registration No.")
                {
                    MinOccurs = Zero;
                    MaxOccurs = Once;
                }
                textelement(ViesValid)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;

                    trigger OnAfterAssignVariable()
                    begin
                        case ViesValid of
                            'Yes':
                                CMSalesDocument.ViesValid := true;
                        end;
                    end;
                }
                fieldelement(CustomerNumber; CMSalesDocument."Customer Number")
                {
                    MinOccurs = Zero;
                    MaxOccurs = Once;
                }
                fieldelement(CustomerName; CMSalesDocument."Customer Name")
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                fieldelement(Address; CMSalesDocument.Address)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                fieldelement(CountryRegion; CMSalesDocument.Country)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                fieldelement(City; CMSalesDocument.City)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                fieldelement(PostalCode; CMSalesDocument."Post Code")
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                textelement(VatType)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                    trigger OnAfterAssignVariable()
                    begin
                        case VatType of
                            'EU':
                                CMSalesDocument."VAT Type" := CMSalesDocument."VAT Type"::EU;
                            'PT':
                                CMSalesDocument."VAT Type" := CMSalesDocument."VAT Type"::PT;
                            'NEU':
                                CMSalesDocument."VAT Type" := CMSalesDocument."VAT Type"::NEU;
                        end;
                    end;
                }
                textelement(UniqueInvoiceIdentificator)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                    trigger OnAfterAssignVariable()
                    var
                        int: Integer;
                    begin
                        Evaluate(int, UniqueInvoiceIdentificator);
                        CMSalesDocument.UII := int;
                    end;
                }
                fieldelement(Identificator; CMSalesDocument."Document No.")
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                fieldelement(DocumentSequence; CMSalesDocument."Document Sequence")
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                textelement(DateOfTheDocument)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                    trigger OnAfterAssignVariable()
                    begin
                        CMSalesDocument."Document Date" := GetDate(DateOfTheDocument);
                    end;
                }
                fieldelement(Location; CMSalesDocument.Location)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                fieldelement(ContractId; CMSalesDocument.ContractID)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                fieldelement(NumberPlate; CMSalesDocument.NumberPlate)
                {
                    MinOccurs = zero;
                    MaxOccurs = Once;
                }
                fieldelement(VIN; CMSalesDocument.VIN)
                {
                    MinOccurs = Zero;
                    MaxOccurs = Once;
                }
                textelement(Pickup)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                    trigger OnAfterAssignVariable()
                    begin
                        CMSalesDocument.Pickup := GetDate(Pickup);
                    end;
                }
                textelement(DropOff)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                    trigger OnAfterAssignVariable()
                    begin
                        CMSalesDocument.DropOff := GetDate(DropOff);
                    end;
                }
                fieldelement(AmountWithoutVAT; CMSalesDocument.Amount)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                fieldelement(AmountWithVAT; CMSalesDocument.AmountIncludingVAT)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                fieldelement(TotalVATAmount; CMSalesDocument.VATAmount)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                fieldelement(DiscountWithVAT; CMSalesDocument.DiscountWithVAT)
                {
                    MinOccurs = Zero;
                    MaxOccurs = Once;
                }
                fieldelement(DiscountWithoutVAT; CMSalesDocument.DiscountWithoutVAT)
                {
                    MinOccurs = Zero;
                    MaxOccurs = Once;
                }
                fieldelement(ApplyVAT; CMSalesDocument.ApplyVAT)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;
                }
                textelement(DocumentLines)
                {
                    MinOccurs = Once;
                    MaxOccurs = Once;

                    tableelement(CMSalesDocumentLine; CMSalesDocumentLine)
                    {
                        XmlName = 'DocumentLine';
                        UseTemporary = true;
                        MinOccurs = Once;
                        MaxOccurs = Unbounded;

                        textelement(DocumentLineNumber)
                        {
                            MinOccurs = Once;
                            MaxOccurs = Once;
                            trigger OnAfterAssignVariable()
                            var
                                int: Integer;
                            begin
                                Evaluate(int, DocumentLineNumber);
                                CMSalesDocumentLine."Line No." := int;
                            end;
                        }
                        fieldelement(Service; CMSalesDocumentLine.Service)
                        {
                            MinOccurs = Once;
                            MaxOccurs = Once;
                        }
                        fieldelement(Description; CMSalesDocumentLine.Description)
                        {
                            MinOccurs = Zero;
                            MaxOccurs = Once;
                        }
                        fieldelement(Quantity; CMSalesDocumentLine.Quantity)
                        {
                            MinOccurs = Once;
                            MaxOccurs = Once;
                        }
                        fieldelement(UnitPrice; CMSalesDocumentLine."Unit Price")
                        {
                            MinOccurs = Once;
                            MaxOccurs = Once;
                        }
                        fieldelement(AmountWithoutVAT; CMSalesDocumentLine.Amount)
                        {
                            MinOccurs = Once;
                            MaxOccurs = Once;
                        }
                        fieldelement(TotalWithVAT; CMSalesDocumentLine.AmountIncludingVAT)
                        {
                            MinOccurs = Once;
                            MaxOccurs = Once;
                        }
                        fieldelement(VATOfTheProduct; CMSalesDocumentLine.VATAmount)
                        {
                            MinOccurs = Once;
                            MaxOccurs = Once;
                        }
                        fieldelement(VATRate; CMSalesDocumentLine.VATRate)
                        {
                            MinOccurs = Once;
                            MaxOccurs = Once;
                        }
                        trigger OnAfterInitRecord()
                        begin
                            CMSalesDocumentLine.UII := CMSalesDocument.UII;
                        end;
                    }
                }
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

    procedure GetCMSalesDocuments(var pCmSalesDocument: Record CMSalesDocument temporary; var pCMSalesDocumentLine: Record CMSalesDocumentLine temporary): Boolean
    begin
        CmSalesDocument.Reset();
        if CmSalesDocument.FindSet() then
            repeat
                pCmSalesDocument.Init();
                pCmSalesDocument := CmSalesDocument;
                pCmSalesDocument.Insert();
            until CmSalesDocument.Next() = 0;

        CmSalesDocumentLine.Reset();
        if CmSalesDocumentLine.FindSet() then
            repeat
                pCmSalesDocumentLine.Init();
                pCmSalesDocumentLine := CmSalesDocumentLine;
                pCmSalesDocumentLine.Insert();
            until CmSalesDocumentLine.Next() = 0;
        exit(true);
    end;

    local procedure GetDate(DateText: Text): Date
    var
        Day: Integer;
        Month: Integer;
        Year: Integer;
    begin
        Evaluate(Day, CopyStr(DateText, 9, 2));
        Evaluate(Month, CopyStr(DateText, 6, 2));
        Evaluate(Year, CopyStr(DateText, 1, 4));
        exit(DMY2Date(Day, Month, Year));
    end;

}

