reportextension 52000 PTSSSalesInvoiceReportExt extends "PTSS Sales - Invoice (PT)"
{
    RDLCLayout = './ReportExt/RDL/PTSSSalesInvoice.ReportExt.rdl';
    dataset
    {
        add("Sales Invoice Header")
        {
            column(CMDocument; CMDocument)
            {
            }
            column(CMContractIDLbl; CMContractIDLbl)
            {
            }
            column(CMPickupDateLbl; CMPickupDateLbl)
            {
            }
            column(CMDropOffDateLbl; CMDropOffDateLbl)
            {
            }
            column(CMContractID; "CM Contract ID")
            {
            }
            column(CMPickupDate; FORMAT("CM Pickup Date", 0, 9))
            {
            }
            column(CMDropOffDate; FORMAT("CM Drop Off Date", 0, 9))
            {
            }
        }
    }
    var
        CMContractIDLbl: Label 'Booking Code: ';
        CMPickupDateLbl: Label 'Pickup Date: ';
        CMDropOffDateLbl: Label 'Dropoff Date: ';
}

