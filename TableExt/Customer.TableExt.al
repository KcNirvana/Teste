tableextension 57031 CustomerTableExt extends Customer
{
    fields
    {
        field(50041; "Partner Identity"; Boolean)
        {
            Caption = 'Partner Identity';
            trigger OnValidate()
            begin
                TestField("VAT Registration No.");
            end;
        }
        field(51000; "Credit Customer"; Boolean)
        {
            Caption = 'Credit Customer';
            trigger OnValidate()
            begin
                ClearCreditsValues;
            end;
        }
        field(51001; "Loan No."; Text[100])
        {
            Caption = 'Loan No.';
        }
        field(51002; "Contract No."; Text[100])
        {
            Caption = 'Contract No.';
        }
        field(51003; "Finance Classification"; Code[20])
        {
            Caption = 'Finance Classification';
            TableRelation = "Credit Codes Type".Code WHERE(Type = CONST(T_CCI));
        }
        field(51004; "Balance Sheet Recognition"; Code[20])
        {
            Caption = 'Balance Sheet Recognition';
            TableRelation = "Credit Codes Type".Code WHERE(Type = CONST(T_RCB));
        }
        field(51005; "Forms of Constituition"; Code[20])
        {
            Caption = 'Forms of Constituition';
            TableRelation = "Credit Codes Type".Code WHERE(Type = CONST(T_ONS));
        }
        field(51006; "Accumulated Impairment"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Ledger Entry Amount" = CONST(true),
                                                                                 "Cust. Type Entry" = CONST(Impairments),
                                                                                 "Customer No." = FIELD("No.")));
            Caption = 'Accumulated Impairment';
            Editable = false;
        }
        field(51007; "Impairment Type"; Code[20])
        {
            Caption = 'Impairment Type';
            TableRelation = "Credit Codes Type".Code WHERE(Type = CONST(T_IMP));
        }
        field(51008; "Impairment Method"; Code[20])
        {
            Caption = 'Impairment Method';
            TableRelation = "Credit Codes Type".Code WHERE(Type = CONST(T_MAI));
        }
        field(51009; "Performing status"; Code[20])
        {
            Caption = 'Performing status';
            TableRelation = "Credit Codes Type".Code WHERE(Type = CONST(T_PER));
        }
        field(51010; "Performing status date"; Date)
        {
            Caption = 'Performing status date';
        }
        field(51011; "Sit. deferral negotiation"; Code[20])
        {
            Caption = 'Sit. deferral negotiation';
            TableRelation = "Credit Codes Type".Code WHERE(Type = CONST(T_TDR));
        }
        field(51012; "Accumulated Recovery"; Decimal)
        {
            Caption = 'Accumulated Recovery';
        }
        field(51013; "Date deferral negotiation"; Date)
        {
            Caption = 'Date deferral negotiation';
        }
        field(51014; "Written Amount"; Decimal)
        {
            Caption = 'Written Amount';
        }
        field(51015; CopyCustNo; Code[20])
        {
            Caption = 'Destiny Customer No.';
        }
    }

    keys
    {
        key(NewKey1; "Partner Identity")
        {
        }
        key(NewKey2; "Credit Customer")
        {
        }
    }

    fieldgroups
    {
    }
    local procedure ClearCreditsValues()
    begin
        Clear("Loan No.");
        Clear("Contract No.");
        Clear("Accumulated Impairment");
        Clear("Finance Classification");
        Clear("Balance Sheet Recognition");
        Clear("Forms of Constituition");
        Clear("Accumulated Impairment");
        Clear("Impairment Type");
        Clear("Impairment Method");
        Clear("Performing status");
        Clear("Performing status date");
        Clear("Sit. deferral negotiation");
        Clear("Accumulated Recovery");
        Clear("Date deferral negotiation");
        Clear("Written Amount");
    end;
}

