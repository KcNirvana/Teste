page 57228 "UNILEO Convertion PCC2UNILEO"
{
    Caption = 'Account PCC - UNILEO';
    PageType = List;
    SourceTable = "UNILEO G/L Account PCC-UNILEO";
    SourceTableView = WHERE(Type = FILTER(PCC2UNILEO));
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Type; Rec.Type)
                {
                    Caption = 'Type';
                    Editable = false;
                    Visible = false;
                }
                field("Account PCC"; Rec."Account PCC")
                {
                    Caption = 'PCC Account';
                    TableRelation = "UNILEO G/L Account UNILEO-PCC"."No." WHERE("G/L Account Type" = FILTER(PCC));
                }
                field("PCC Description"; Rec."PCC Description")
                {
                    Caption = 'PCC Description';
                }
                field("Account UNILEO"; Rec."Account UNILEO")
                {
                    Caption = 'UNILEO Account';
                    TableRelation = "UNILEO G/L Account UNILEO-PCC"."No." WHERE("G/L Account Type" = FILTER(UNILEO));

                }
                field("UNILEO Description"; Rec."UNILEO Description")
                {
                    Caption = 'UNILEO Description';
                }
            }
        }
    }

    actions
    {
    }

}

