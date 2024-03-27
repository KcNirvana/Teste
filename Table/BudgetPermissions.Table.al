table 57054 "Budget Permissions"
{
    Caption = 'Budget Permissions';
    DrillDownPageID = "Budget Permissions List";
    LookupPageID = "Budget Permissions List";

    fields
    {
        field(1; "User Code"; Code[50])
        {
            Caption = 'User Code';
            TableRelation = IF (Type = CONST(user)) User."User Name";
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
            begin
                IF Type = Type::user THEN
                    UserSelection.ValidateUserName("User Code");
            end;
        }
        field(2; "Create Requisition"; Boolean)
        {
            Caption = 'Create Requisition';
        }
        field(3; "Modify Requisition"; Boolean)
        {
            Caption = 'Modify Requisition';
        }
        field(4; "Delete Requisition"; Boolean)
        {
            Caption = 'Delete Requisition';
        }
        field(5; "View Requisition"; Boolean)
        {
            Caption = 'View Requisition';
        }
        field(9; "Print Documents"; Boolean)
        {
            Caption = 'Print Documents';
        }
        field(10; "Configuration Model"; Code[20])
        {
            Caption = 'Configuration Model';
            trigger OnLookup()
            var
                BudgetPermissions: Record "Budget Permissions";
            begin
                BudgetPermissions.Reset();
                BudgetPermissions.SetRange(Type, BudgetPermissions.Type::Group);
                If Page.RunModal(Page::"Budget Permissions Models", BudgetPermissions) = Action::LookupOK then
                    Validate("Configuration Model", BudgetPermissions."User Code");
            end;

            trigger OnValidate()
            begin
                UpdateUserFromModel();
            end;
        }
        field(11; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'User,Group';
            OptionMembers = User,Group;
        }
        field(12; "Create Quote"; Boolean)
        {
            Caption = 'Create Quote';
        }
        field(14; "Create Consultation"; Boolean)
        {
            Caption = 'Create Consultation';
        }
        field(15; "Modify Consultation"; Boolean)
        {
            Caption = 'Modify Consultation';
        }
        field(16; "Delete Consultation"; Boolean)
        {
            Caption = 'Delete Consultation';
        }
        field(17; "View Consultation"; Boolean)
        {
            Caption = 'View Consultation';
        }
        field(21; "Create Avaylable Budget"; Boolean)
        {
            Caption = 'Create Avaylable Budget';
        }
        field(22; "Create PAQ"; Boolean)
        {
            Caption = 'Create Adjudication';
        }
        field(23; "View PAQ"; Boolean)
        {
            Caption = 'View Adjudication';
        }
        field(25; "Modify Avaylable Budget"; Boolean)
        {
            Caption = 'Modify Avaylable Budget';
        }
        field(26; "Delete Avaylable Budget"; Boolean)
        {
            Caption = 'Delete Avaylable Budget';
        }
        field(27; "Modify PAQ"; Boolean)
        {
            Caption = 'Modify Adjudication';
        }
        field(28; "Delete PAQ"; Boolean)
        {
            Caption = 'Delete Adjudication';
        }
        field(29; "View Avaylable Budget"; Boolean)
        {
            Caption = 'View Avaylable Budget';
        }
        field(31; "Approve Avaylable Budget"; Boolean)
        {
            Caption = 'Approve Avaylable Budget';
        }
        field(35; "Post Budget"; Boolean)
        {
            Caption = 'Post Budget';
        }
        field(41; "Approve PAQ"; Boolean)
        {
            Caption = 'Approve Adjudication';
        }
        field(43; "Filter Requisition By User"; Boolean)
        {
            Caption = 'Filter Requisition By User';
        }
        field(44; "Filter Requisition By Section"; Boolean)
        {
            Caption = 'Filter Requisition By Section';
        }
        field(47; "Reverse PAQ"; Boolean)
        {
            Caption = 'Reverse Adjudication';
        }
        field(48; "Reverse Avaylable Budget"; Boolean)
        {
            Caption = 'Reverse Avaylable Budget';
        }
        field(49; "Employee Number"; Code[20])
        {
            Caption = 'Employee Number';
            TableRelation = Employee;
        }
        field(50; "Employee Section"; Code[20])
        {
            CalcFormula = Lookup(Employee."Section Code" WHERE("No." = FIELD("Employee Number")));
            Caption = 'Section';
            Editable = false;
            FieldClass = FlowField;
        }
        field(51; "Employee Department"; Code[20])
        {
            CalcFormula = Lookup(Sections."Department Code" WHERE(Code = FIELD("Employee Section")));
            Caption = 'Department';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50031; "Reopen Requisition"; Boolean)
        {
            Caption = 'Reopen Requisition';
        }
        field(50040; "Filter Consultation By User"; Boolean)
        {
            Caption = 'Filter Consultation By User';
        }
        field(50041; "Filter Consultation By Section"; Boolean)
        {
            Caption = 'Filter Consultation By Section';
        }
        field(50042; "Filter Avay Budget By User"; Boolean)
        {
            Caption = 'Filter Avay Budget By User';
        }
        field(50043; "Filter Avay Budget By Section"; Boolean)
        {
            Caption = 'Filter Avay Budget By Section';
        }
        field(50044; "Filter Order By User"; Boolean)
        {
            Caption = 'Filter Order By User';
        }
        field(50045; "Filter Order By Section"; Boolean)
        {
            Caption = 'Filter Order By Section';
        }
        field(50046; "Filter PAQ By User"; Boolean)
        {
            Caption = 'Filter Adjudication By User';
        }
        field(50047; "Filter PAQ By Section"; Boolean)
        {
            Caption = 'Filter Adjudication By Section';
        }
        field(50048; "Filter Consultation By Dep."; Boolean)
        {
            Caption = 'Filter Consultation By Department';
        }
        field(50049; "Filter Avay Budget By Dep."; Boolean)
        {
            Caption = 'Filter Avay Budget By Department';
        }
        field(50050; "Filter Order By Dep."; Boolean)
        {
            Caption = 'Filter Order By Department';
        }
        field(50051; "Filter PAQ By Dep."; Boolean)
        {
            Caption = 'Filter Adjudication By Department';
        }
        field(50052; "Filter Requisition By Dep."; Boolean)
        {
            Caption = 'Filter Requisition By Department';
        }
        field(50053; "Filter Contract By User"; Boolean)
        {
            Caption = 'Filter Contract By User';
        }
        field(50054; "Filter Contract By Section"; Boolean)
        {
            Caption = 'Filter Contract By Section';
        }
        field(50055; "Filter Contract By Dep."; Boolean)
        {
            Caption = 'Filter Contract By Department';
        }
        field(50056; "Adjust Avay/PAQ"; Boolean)
        {
            Caption = 'Adjust Avay/PAQ';
        }
    }

    keys
    {
        key(Key1; "User Code", Type)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    local procedure UpdateUserFromModel()
    var
        BudgetPermissions: Record "Budget Permissions";
        OldUserCode: Code[50];
        OldEmployee: Code[20];
    begin
        BudgetPermissions.RESET;
        BudgetPermissions.SETRANGE("User Code", "Configuration Model");
        BudgetPermissions.SETRANGE(Type, Type::Group);
        IF BudgetPermissions.FindFirst() THEN BEGIN
            "Print Documents" := BudgetPermissions."Print Documents";

            "Post Budget" := BudgetPermissions."Post Budget";

            "Create Requisition" := BudgetPermissions."Create Requisition";
            "Modify Requisition" := BudgetPermissions."Modify Requisition";
            "Delete Requisition" := BudgetPermissions."Delete Requisition";
            "View Requisition" := BudgetPermissions."View Requisition";
            "Reopen Requisition" := BudgetPermissions."Reopen Requisition";
            "Filter Requisition By Dep." := BudgetPermissions."Filter Requisition By Dep.";
            "Filter Requisition By Section" := BudgetPermissions."Filter Requisition By Section";
            "Filter Requisition By User" := BudgetPermissions."Filter Requisition By User";

            "Create Quote" := BudgetPermissions."Create Quote";
            "Create Consultation" := BudgetPermissions."Create Consultation";
            "Modify Consultation" := BudgetPermissions."Modify Consultation";
            "Delete Consultation" := BudgetPermissions."Delete Consultation";
            "View Consultation" := BudgetPermissions."View Consultation";
            "Adjust Avay/PAQ" := BudgetPermissions."Adjust Avay/PAQ";
            "Filter Consultation By Dep." := BudgetPermissions."Filter Consultation By Dep.";
            "Filter Consultation By Section" := BudgetPermissions."Filter Consultation By Section";
            "Filter Consultation By User" := BudgetPermissions."Filter Consultation By User";

            "Create Avaylable Budget" := BudgetPermissions."Create Avaylable Budget";
            "Modify Avaylable Budget" := BudgetPermissions."Modify Avaylable Budget";
            "Delete Avaylable Budget" := BudgetPermissions."Delete Avaylable Budget";
            "View Avaylable Budget" := BudgetPermissions."View Avaylable Budget";
            "Approve Avaylable Budget" := BudgetPermissions."Approve Avaylable Budget";
            "Reverse Avaylable Budget" := BudgetPermissions."Reverse Avaylable Budget";
            "Filter Avay Budget By Dep." := BudgetPermissions."Filter Avay Budget By Dep.";
            "Filter Avay Budget By Section" := BudgetPermissions."Filter Avay Budget By Section";
            "Filter Avay Budget By User" := BudgetPermissions."Filter Avay Budget By User";

            "Create PAQ" := BudgetPermissions."Create PAQ";
            "Modify PAQ" := BudgetPermissions."Modify PAQ";
            "Delete PAQ" := BudgetPermissions."Delete PAQ";
            "View PAQ" := BudgetPermissions."View PAQ";
            "Approve PAQ" := BudgetPermissions."Approve PAQ";
            "Reverse PAQ" := BudgetPermissions."Reverse PAQ";
            "Filter PAQ By Dep." := BudgetPermissions."Filter PAQ By Dep.";
            "Filter PAQ By Section" := BudgetPermissions."Filter PAQ By Section";
            "Filter PAQ By User" := BudgetPermissions."Filter PAQ By User";

            "Filter Contract By Dep." := BudgetPermissions."Filter Contract By Dep.";
            "Filter Contract By Section" := BudgetPermissions."Filter Contract By Section";
            "Filter Contract By User" := BudgetPermissions."Filter Contract By User";

            "Filter Order By Dep." := BudgetPermissions."Filter Order By Dep.";
            "Filter Order By Section" := BudgetPermissions."Filter Order By Section";
            "Filter Order By User" := BudgetPermissions."Filter Order By User";
        end;
    end;

}

