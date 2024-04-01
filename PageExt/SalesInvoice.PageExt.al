pageextension 52001 SalesInvoicePageExt extends "Sales Invoice"
{
    layout
    {
        addlast(content)
        {
            group("CM NAV Integration")
            {
                Caption = 'CM NAV Integration';
                field(CMInvoice; Rec.CMDocument)
                {
                    Applicationarea = all;
                }
                field("CM Invoice UID"; Rec."CM Document UID")
                {
                    Applicationarea = all;
                }
                field("CM Contract ID"; Rec."CM Contract ID")
                {
                    Applicationarea = all;
                }
                field("CM Number Plate"; Rec."CM Number Plate")
                {
                    Applicationarea = all;
                }
                field("CM VIN"; Rec."CM VIN")
                {
                    Applicationarea = all;
                }
                field("CM Pickup Date"; Rec."CM Pickup Date")
                {
                    Applicationarea = all;
                }
                field("CM Drop Off Date"; Rec."CM Drop Off Date")
                {
                    Applicationarea = all;
                }
            }

        }
    }

}
