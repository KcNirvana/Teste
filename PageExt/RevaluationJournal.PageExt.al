pageextension 57035 RevaluationJournalPageExt extends "Revaluation Journal"
{
    layout
    {
        addbefore("Posting Date")
        {
            field("Line No."; Rec."Line No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field(ConfClass0; Rec.ConfClass0)
            {
                ApplicationArea = All;
            }
            field("No Budget"; Rec."No Budget")
            {
                ApplicationArea = All;
            }
        }
        addafter("Item No.")
        {
            field("Revaluation Type"; Rec."Revaluation Type")
            {
                ApplicationArea = all;
            }
            field("Source Currency Code"; Rec."Source Currency Code")
            {
                ApplicationArea = all;
            }
            field("Tax Rate"; Rec."Tax Rate")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        addafter("Calculate Inventory Value")
        {
            action("Calculate Deeds Value")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Calculate Deeds Value';
                Ellipsis = true;
                Image = Calculate;
                Scope = Repeater;
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;
                trigger OnAction()
                var
                    ObjTransl: Record "Object Translation";
                    CalcDeedsValue: Report "Calculate Deeds Value";
                    Text001: Label 'To make sure that all items are adjusted before you start the revaluation, you should run the %1 batch job first.\Do you want to continue with the revaluation?';
                begin
                    if Confirm(
                         StrSubstNo(
                           Text001,
                           ObjTransl.TranslateObject(ObjTransl."Object Type"::Report, REPORT::"Adjust Cost - Item Entries")),
                         false)
                    then begin
                        CalcDeedsValue.SetItemJnlLine(Rec);
                        CalcDeedsValue.RunModal();
                        Clear(CalcDeedsValue);
                    end;
                end;
            }
        }
    }
}
