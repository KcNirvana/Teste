page 57004 "Class 0 Configuration"
{
    AutoSplitKey = true;
    Caption = 'Class 0 configuration';
    PageType = List;
    SourceTable = "Class 0 Setup";
    UsageCategory = Administration;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                field("Regist type"; Rec."Regist type")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Debit Account"; Rec."Debt count")
                {
                }
                field("Credit Account"; Rec."Credit count")
                {
                }
                field("Verify Avaylable Amount"; Rec."Verify Avaylable Amount")
                {
                }
            }
        }
    }

    actions
    {
    }

}

