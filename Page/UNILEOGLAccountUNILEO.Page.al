page 57225 "UNILEO G/L Account UNILEO"
{
    Caption = 'UNILEO G/L Account UNILEO';
    PageType = List;
    SourceTable = "UNILEO G/L Account UNILEO-PCC";
    SourceTableView = SORTING("G/L Account Type", "No.")
                      ORDER(Ascending)
                      WHERE("G/L Account Type" = CONST(UNILEO));
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
                field("Debit Amount"; Rec."UNILEO Debit Amount")
                {
                    BlankZero = false;
                    DrillDown = true;
                    Style = Strong;
                    StyleExpr = NameEmphasize;
                }
                field("Credit Amount"; Rec."UNILEO Credit Amount")
                {
                    BlankZero = false;
                    DrillDown = true;
                    Style = Strong;
                    StyleExpr = NameEmphasize;

                }
                field(Balance; Rec."UNILEO Balance")
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
                    Caption = 'Indent UNILEO Chart of Accounts';
                    Image = IndentChartOfAccounts;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin
                        UNILEOMgt.IndentUNILEO();
                    end;
                }
                action(CheckChart)
                {
                    Caption = 'Check UNILEO Chart of Accounts';
                    Image = Evaluate;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin
                        UNILEOMgt.CheckChartAccUNILEO();
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

