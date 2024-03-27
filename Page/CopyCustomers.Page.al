page 57088 CopyCustomers
{
    Caption = 'Copy Customers';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = ListPlus;
    SourceTable = Customer;
    SourceTableTemporary = true;

    layout
    {
        area(content)
        {
            group("Cliente Origem")
            {
                field(CustOri; CustOri)
                {
                    Caption = 'No.';
                    TableRelation = Customer."No.";

                    trigger OnValidate()
                    var
                        Customer: Record Customer;
                    begin
                        Customer.Get(CustOri);
                        NameCustOri := Customer.Name;

                        if (CustOri <> '') and (NoOfCopies <> 0) then
                            CreateCusts;
                    end;
                }
                field(NoOfCopies; NoOfCopies)
                {
                    Caption = 'No. of Copies';
                    MinValue = 0;

                    trigger OnValidate()
                    begin
                        if (CustOri <> '') and (NoOfCopies <> 0) then
                            CreateCusts;
                    end;
                }
                field(NameCustOri; NameCustOri)
                {
                    Caption = 'Customer Name';
                    Editable = false;
                }
            }
            group("Cliente Destino")
            {
                repeater(Control4)
                {
                    ShowCaption = false;
                    field("No."; Rec."No.")
                    {
                        Caption = 'No.';
                        Editable = false;
                    }
                    field(CopyCustNo; Rec.CopyCustNo)
                    {
                    }
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(CopyCustomers)
            {
                Caption = 'Copy Customers';
                Image = Copy;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    CopyCusts;
                end;
            }
        }
    }

    var
        CustOri: Code[20];
        NameCustOri: Text;
        NoOfCopies: Integer;
        Text001: Label 'The number of copies must be greater than 0.';
        Text002: Label 'Origin customer is empty.';
        Text003: Label 'The customer %1 dont have destin customer.';
        Text004: Label 'The destin customer %1 already exists.';
        Text005: Label 'There are equal destin numbers.';
        Text006: Label 'Do you want to copy customer %1 to %2 customers?';
        Text007: Label 'Customers copied with success.';

    procedure CopyCusts()
    var
        Customer: Record Customer;
        Customer2: Record Customer;
        TempCust: Record Customer temporary;
    begin
        if not Confirm(Text006, false, CustOri, NoOfCopies) then
            exit;

        Rec.Reset;
        if Rec.FindSet then
            repeat
                if Rec.CopyCustNo = '' then
                    Error(Text003, Rec."No.");
                if Customer.Get(Rec.CopyCustNo) then
                    Error(Text004, Rec.CopyCustNo);
                TempCust.Init;
                TempCust."No." := Rec.CopyCustNo;
                if not TempCust.Insert then
                    Error(Text005);
            until Rec.Next = 0;

        Customer.Get(CustOri);
        TempCust.Reset;
        if TempCust.FindSet then
            repeat
                Customer2.Init;
                Customer2 := Customer;
                Customer2."No." := TempCust."No.";
                Customer2.Insert;
            until TempCust.Next = 0;

        Message(Text007);
        CurrPage.Close;
    end;

    local procedure CreateCusts()
    var
        CopyCustomers: Page CopyCustomers;
        TempCust: Record Customer temporary;
        i: Integer;
    begin
        if NoOfCopies = 0 then
            Error(Text001);
        if CustOri = '' then
            Error(Text002);

        Rec.DeleteAll;
        for i := 1 to NoOfCopies do begin
            Rec.Init;
            Rec."No." := Format(i);
            Rec.Insert;
        end;
        Rec.FindFirst;
        CurrPage.Update;
    end;
}

