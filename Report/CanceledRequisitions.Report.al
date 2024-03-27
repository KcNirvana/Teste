report 57006 "Canceled Requisitions"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/CanceledRequisitions.rdl';

    Caption = 'Canceled Requisitions';
    ApplicationArea = All;

    dataset
    {
        dataitem(Requisition; Requisition)
        {
            DataItemTableView = SORTING("Requisition Code")
                                ORDER(Ascending)
                                WHERE(Status = CONST(Canceled));
            RequestFilterFields = "Department Code";
            column(Filters; STRSUBSTNO(Filters, Requisition.GETFILTERS))
            {
            }
            column(Picture; CompanyInfo.Picture)
            {
            }
            column(RINo; "Requisition Code")
            {
            }
            column(RIDesc; Description)
            {
            }
            column(RIDate; FORMAT("Requisition Date", 0, 9))
            {
            }
            column(RIEmployee; "Employee Name")
            {
            }
            column(RIDepartment; "Department Description")
            {
            }
            dataitem(DataItem2; "Requisition Lines")
            {
                DataItemLink = "Requisition Code" = FIELD("Requisition Code");
                DataItemTableView = SORTING("Requisition Code", "Line No.")
                                    ORDER(Ascending);
                column(RILNo; "No.")
                {
                }
                column(RILDesc; Description)
                {
                }
                column(RILQtd; "Requisition Quantity")
                {
                }
                column(RILUnitCost; "Unit Cost")
                {
                }
                column(RILAmount; Amount)
                {
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

    labels
    {
        lblRINo = 'Requisition No.';
        lblRIDesc = 'Description';
        lblRIDate = 'Posting Date';
        lblRIEmployee = 'Employee';
        lblRIDepartment = 'Department';
        lblRILNo = 'Item No.';
        lblRILDesc = 'Description';
        lblRILQtd = 'Qty.';
        lblRILCost = 'Unit Cost';
        lblRILAmount = 'Amount';
    }

    trigger OnPreReport()
    begin
        CompanyInfo.GET;
        CompanyInfo.CALCFIELDS(Picture);
    end;

    var
        CompanyInfo: Record "Company Information";
        Filters: Label 'Filters: %1';
}

