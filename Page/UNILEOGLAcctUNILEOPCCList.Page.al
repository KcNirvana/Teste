page 57226 "UNILEO GLAcc UNILEO-PCC List"
{
    Caption = 'G/L Account UNILEO-PCC List';
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = "UNILEO G/L Account UNILEO-PCC";
    Editable = false;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("G/L Account Type"; Rec."G/L Account Type")
                {
                    Editable = false;
                }
                field("No."; Rec."No.")
                {
                }
                field(Name; Rec.Name)
                {
                }
                field("Account Type"; Rec."Account Type")
                {
                }
            }
        }
    }

    actions
    {
    }
}

