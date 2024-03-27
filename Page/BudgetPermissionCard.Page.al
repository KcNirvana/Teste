page 57011 "Budget Permissions Card"
{

    Caption = 'Budget Permission Card';
    PageType = Card;
    SourceTable = "Budget Permissions";
    SourceTableView = where(Type = const(User));
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("User Code"; Rec."User Code")
                {
                }
                field("Configuration Model"; Rec."Configuration Model")
                {
                }
                field("Employee Number"; Rec."Employee Number")
                {
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Employee Section"; Rec."Employee Section")
                {
                }
                field("Employee Department"; Rec."Employee Department")
                {
                }
                field("Print Documents"; Rec."Print Documents")
                {
                }
            }
            group(Budget)
            {
                Caption = 'Budget';
                field("Post Budget"; Rec."Post Budget")
                {
                }
            }
            group(Requisitions)
            {
                Caption = 'Requisitions';
                field("View Requisition"; Rec."View Requisition")
                {
                }
                field("Insert Requisition"; Rec."Create Requisition")
                {
                }
                field("Modify Requisition"; Rec."Modify Requisition")
                {
                }
                field("Delete Requisition"; Rec."Delete Requisition")
                {
                }
                field("Reopen Requisition"; Rec."Reopen Requisition")
                {
                }
                group(Filters)
                {
                    Caption = 'Filters';
                    field("Filter Requisition By User"; Rec."Filter Requisition By User")
                    {
                    }
                    field("Filter Requisition By Section"; Rec."Filter Requisition By Section")
                    {
                    }
                    field("Filter Requisition By Dep."; Rec."Filter Requisition By Dep.")
                    {
                    }
                }

            }
            group(Consultation)
            {
                Caption = 'Consultations';
                field("View Consultation"; Rec."View Consultation")
                {
                }
                field("Create Consultation"; Rec."Create Consultation")
                {
                }
                field("Modify Consultation"; Rec."Modify Consultation")
                {
                }
                field("Delete Consultation"; Rec."Delete Consultation")
                {
                }
                field("Create Quote"; Rec."Create Quote")
                {
                }
                field("Adjust Avay/PAQ"; Rec."Adjust Avay/PAQ")
                {
                }
                group(Filters2)
                {
                    Caption = 'Filters';
                    field("Filter Consultation Procedure By User"; Rec."Filter Consultation By User")
                    {
                    }
                    field("Filter Consultation Proc. By Section"; Rec."Filter Consultation By Section")
                    {
                    }
                    field("Filter Consultation Procedure By Dep."; Rec."Filter Consultation By Dep.")
                    {
                    }
                }
            }
            group("Avaylable Budgets")
            {
                Caption = 'Avaylable Budgets';
                field("View Avaylable Budget"; Rec."View Avaylable Budget")
                {
                }
                field("Create Avaylable Budget"; Rec."Create Avaylable Budget")
                {
                }
                field("Modify Avaylable Budget"; Rec."Modify Avaylable Budget")
                {
                }
                field("Delete Avaylable Budget"; Rec."Delete Avaylable Budget")
                {
                }
                field("Approve Avaylable Budget"; Rec."Approve Avaylable Budget")
                {
                }
                field("Reverse Avaylable Budget"; Rec."Reverse Avaylable Budget")
                {
                }

                group(Filters3)
                {
                    Caption = 'Filters';
                    field("Filter Budget By User"; Rec."Filter Avay Budget By User")
                    {
                    }
                    field("Filter Budget By Section"; Rec."Filter Avay Budget By Section")
                    {
                    }
                    field("Filter Budget By Dep."; Rec."Filter Avay Budget By Dep.")
                    {
                    }
                }
            }
            group(Adjudication)
            {
                Caption = 'Adjudications';
                field("View PAQ"; Rec."View PAQ")
                {
                }
                field("Create PAQ"; Rec."Create PAQ")
                {
                }
                field("Modify PAQ"; Rec."Modify PAQ")
                {
                }
                field("Delete PAQ"; Rec."Delete PAQ")
                {
                }
                field("Approve PAQ"; Rec."Approve PAQ")
                {
                }
                field("Reverse PAQ"; Rec."Reverse PAQ")
                {
                }
                group(Filters4)
                {
                    Caption = 'Filters';
                    field("Filter PAQ By User"; Rec."Filter PAQ By User")
                    {
                    }
                    field("Filter PAQ By Section"; Rec."Filter PAQ By Section")
                    {
                    }
                    field("Filter PAQ By Dep."; Rec."Filter PAQ By Dep.")
                    {
                    }
                }

            }
            group(Contracts)
            {
                Caption = 'Contracts';
                group(Filters5)
                {
                    Caption = 'Filters';
                    field("Filter Contract By User"; Rec."Filter Contract By User")
                    {
                    }
                    field("Filter Contract By Section"; Rec."Filter Contract By Section")
                    {
                    }
                    field("Filter Contract By Dep."; Rec."Filter Contract By Dep.")
                    {
                    }
                }
            }
            group(Orders)
            {
                Caption = 'Orders';
                group(Filters6)
                {
                    Caption = 'Filters';
                    field("Filter Order By User"; Rec."Filter Order By User")
                    {
                    }
                    field("Filter Order By Section"; Rec."Filter Order By Section")
                    {
                    }
                    field("Filter Order By Dep."; Rec."Filter Order By Dep.")
                    {
                    }
                }
            }
        }
    }

    actions
    {
    }
}

