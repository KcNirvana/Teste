page 57224 "UNILEO G/L Account PCC"
{

    Caption = 'UNILEO G/L Account PCC';
    PageType = List;
    SourceTable = "UNILEO G/L Account UNILEO-PCC";
    SourceTableView = SORTING("G/L Account Type", "No.")
                      ORDER(Ascending)
                      WHERE("G/L Account Type" = CONST(PCC));
    ShowFilter = true;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                IndentationColumn = NameIndent;
                IndentationControls = Name;
                field("G/L Account Type"; Rec."G/L Account Type")
                {
                    Editable = false;
                    Visible = false;
                }
                field("No."; Rec."No.")
                {
                    Style = Strong;
                    StyleExpr = NoEmphasize;
                }
                field(Name; Rec.Name)
                {
                    Style = Strong;
                    StyleExpr = NameEmphasize;
                }
                field("Account Type"; Rec."Account Type")
                {
                    Style = Strong;
                    StyleExpr = NameEmphasize;
                }
                field(Totaling; Rec.Totaling)
                {
                    Style = Strong;
                    StyleExpr = NameEmphasize;
                }
                field("Debit Amount"; Rec."PCC Debit Amount")
                {
                    BlankZero = false;
                    DrillDown = true;
                    Style = Strong;
                    StyleExpr = NameEmphasize;
                }
                field("Credit Amount"; Rec."PCC Credit Amount")
                {
                    BlankZero = false;
                    DrillDown = true;
                    Style = Strong;
                    StyleExpr = NameEmphasize;

                }
                field(Balance; Rec."PCC Balance")
                {
                    BlankZero = false;
                    DrillDown = true;
                    Style = Strong;
                    StyleExpr = NameEmphasize;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group(Functions)
            {
                action(IndentChartOfAccounts)
                {
                    Caption = 'Indent PCC Chart of Accounts';
                    Image = IndentChartOfAccounts;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin
                        UNILEOMgt.IndentPCC();
                    end;
                }
                action(CheckChart)
                {
                    Caption = 'Check PCC Chart of Accounts';
                    Image = Evaluate;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin
                        UNILEOMgt.CheckChartAccPCC();
                    end;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        NoEmphasize := Rec."Account Type" <> Rec."Account Type"::M;
        NameIndent := Rec.Indentation;
        NameEmphasize := Rec."Account Type" <> Rec."Account Type"::M;
    end;

    var
        [InDataSet]
        NoEmphasize: Boolean;
        [InDataSet]
        NameEmphasize: Boolean;
        [InDataSet]
        NameIndent: Integer;
        UNILEOMgt: Codeunit "UNILEO Management";
}

