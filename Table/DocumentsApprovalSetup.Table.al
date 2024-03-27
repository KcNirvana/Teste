table 57038 "Documents Approval Setup"
{

    Caption = 'Documents Approval Setup';
    LookupPageID = "Documents Approval Setup";

    fields
    {
        field(1; "Document Type"; Enum "Approval Entry Document Type")
        {
            Caption = 'Document Type';
        }
        field(2; "Section Code"; Code[20])
        {
            Caption = 'Section Code';
            TableRelation = Sections.Code;
        }
        field(3; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(4; "End Date"; Date)
        {
            Caption = 'End Date';
        }
        field(5; "Approval Level"; Option)
        {
            Caption = 'Approval Level';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(6; "Approval Level Description"; Text[30])
        {
            Caption = 'Approval Level Description';
        }
        field(7; "Approver Type"; Enum "Approver Type")
        {
            Caption = 'Approval Type';

            trigger OnValidate()
            begin
                if "Approver Type" <> xRec."Approver Type" then
                    Validate("Approver ID", '');
            end;
        }
        field(8; "Approver ID"; Code[50])
        {
            Caption = 'Approval Code';
            TableRelation = IF ("Approver Type" = CONST(Charge)) "Charge Setup".Code
            ELSE
            IF ("Approver Type" = CONST(User)) User."User Name";

            trigger OnLookup()
            var
                ChargeSetup: Record "Charge Setup";
                User: Record User;
            begin
                case "Approver Type" of
                    "Approver Type"::Charge:
                        begin
                            ChargeSetup.Reset();
                            If Page.RunModal(Page::"Charge List", ChargeSetup) = Action::LookupOK then
                                Validate("Approver ID", ChargeSetup.Code);
                        end;
                    "Approver Type"::User:
                        begin
                            User.Reset();
                            If Page.RunModal(Page::"User Lookup", User) = Action::LookupOK then
                                Validate("Approver ID", User."User Name");
                        end;
                end;
            end;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
            begin
                case "Approver Type" of
                    "Approver Type"::Charge:
                        ;
                    "Approver Type"::User:
                        UserSelection.ValidateUserName("Approver ID");
                end;
            end;
        }
        field(9; "Inital Amount"; Decimal)
        {
            Caption = 'Inital Amount';
        }
        field(10; "End Amount"; Decimal)
        {
            Caption = 'End Amount';
        }
        field(11; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(12; "Amount Without VAT"; Boolean)
        {
            Caption = 'Amount Without VAT';
        }
        field(13; "Amount With VAT"; Boolean)
        {
            Caption = 'Amount With VAT';
        }
        field(14; "Cost Amount"; Boolean)
        {
            Caption = 'Cost Amount';
        }
    }

    keys
    {
        key(Key1; "Document Type", "Source Code", "Section Code", "Start Date", "End Date", "Approval Level", "Approver ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(Key1; "Document Type", "Section Code", "Start Date", "End Date")
        {

        }
    }

}

