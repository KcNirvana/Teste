report 57025 BlockCustomers
{
    Caption = 'Block Customers';
    ProcessingOnly = true;

    dataset
    {
        dataitem(BlockCust; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

            trigger OnAfterGetRecord()
            var
                Customer: Record Customer;
            begin
                Customer.SetFilter("No.", CustomerFilter);
                Customer.ModifyAll(Blocked, Customer.Blocked::All);
            end;

            trigger OnPostDataItem()
            begin
                Message(Text002);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(CustomerFilter; CustomerFilter)
                    {
                        Caption = 'Customer';

                        trigger OnLookup(var Text: Text): Boolean
                        var
                            CustomerList: Page "Customer List";
                            Customer: Record Customer;
                        begin
                            Customer.FilterGroup(2);
                            Customer.SetRange(Blocked, Customer.Blocked::" ");
                            Customer.FilterGroup(0);
                            CustomerList.SetTableView(Customer);
                            CustomerList.Editable(false);
                            CustomerList.LookupMode(true);
                            if not (CustomerList.RunModal = ACTION::LookupOK) then
                                exit(false);
                            Text := CustomerList.GetSelectionFilter;

                            exit(true);
                        end;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        if CustomerFilter = '' then
            Error(Text001);
    end;

    var
        CustomerFilter: Text;
        Text001: Label 'You didnt select any customer to block.';
        Text002: Label 'Customers were blocked with success.';
}

