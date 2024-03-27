tableextension 57011 GLAccountTableExt extends "G/L Account"
{
    fields
    {
        field(50003; "Need Budget"; Boolean)
        {
            Caption = 'Need Budget';
        }
        field(60002; "Shortcut Dim3"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("Analysis View Entry".Amount WHERE("Account No." = FIELD("No."),
                                                                  "Dimension 1 Value Code" = FIELD("Shortcut Filter"),
                                                                  "Dimension 2 Value Code" = FIELD("Shortcut Filter2"),
                                                                  "Dimension 3 Value Code" = FIELD("Shortcut Filter3"),
                                                                  "Dimension 4 Value Code" = FIELD("Shortcut Filter4"),
                                                                  "Analysis View Code" = FIELD("Analisys View Filter"),
                                                                  "Posting Date" = FIELD("Date Filter")));
            Caption = 'Avaylable Endowment';
            DecimalPlaces = 0 : 0;

        }
        field(60003; "Shortcut Filter"; Code[20])
        {
            CaptionClass = '1,2,1,' + Text001;
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(60004; "Shortcut Filter2"; Code[20])
        {
            CaptionClass = '1,2,2,' + Text001;
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(60005; "Shortcut Filter3"; Code[20])
        {
            CaptionClass = '1,2,3,' + Text001;
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(3));
        }
        field(60006; "Shortcut Filter4"; Code[20])
        {
            CaptionClass = '1,2,4,' + Text001;
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(4));
        }
        field(60007; "Analisys View Filter"; Code[10])
        {
            Caption = 'Analisys View Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(60008; DotationDim1; Code[20])
        {
            Caption = 'DotationDim1';
        }
        field(60009; DotationDim2; Code[20])
        {
            Caption = 'DotationDim2';
        }
        field(60010; DotationDim3; Code[20])
        {
            Caption = 'DotationDim3';
        }
        field(60011; DotationDim4; Code[20])
        {
            Caption = 'DotationDim4';
        }
        field(60012; DotationAmount; Decimal)
        {
            Caption = 'DotationAmount';
        }
        field(60013; DotationDate; Date)
        {
            Caption = 'DotationDate';
        }
        field(50023; CodeDot_PCC; Text[30])
        {
            Caption = 'PCC No.';
            TableRelation = "UNILEO G/L Account UNILEO-PCC"."No." WHERE("G/L Account Type" = const(PCC));

            trigger OnValidate()
            begin
                UpdatePCCAccount(Rec);
            end;
        }
        field(50024; "PCC Description"; Text[200])
        {
            Caption = 'PCC Description';
            FieldClass = FlowField;
            CalcFormula = lookup("UNILEO G/L Account UNILEO-PCC".Name WHERE("G/L Account Type" = const(PCC), "No." = field(CodeDot_PCC)));
            Editable = false;
        }
    }
    var
        Text001: Label 'Endowment Filter - ';

    procedure CalcEndowment(): Decimal
    var
        BudgetConfig: Record "Budget Configuration";
        AnalysisViewEntry: Record "Analysis View Entry";
        DateFilter: Text;
        ShortcutFilter1: Text;
        ShortcutFilter2: Text;
        ShortcutFilter3: Text;
        ShortcutFilter4: Text;
    begin
        BudgetConfig.GET;
        IF NOT (BudgetConfig."Avaylable Endowment Account" = "No.") THEN
            exit;

        Clear(AnalysisViewEntry);
        AnalysisViewEntry.SETRANGE("Account No.", "No.");
        AnalysisViewEntry.SETRANGE("Analysis View Code", BudgetConfig."Analysis Code");
        DateFilter := GETFILTER("Date Filter");
        ShortcutFilter1 := GETFILTER("Shortcut Filter");
        ShortcutFilter2 := GETFILTER("Shortcut Filter2");
        ShortcutFilter3 := GETFILTER("Shortcut Filter3");
        ShortcutFilter4 := GETFILTER("Shortcut Filter4");
        AnalysisViewEntry.SETFILTER("Posting Date", DateFilter);
        AnalysisViewEntry.SETFILTER("Dimension 1 Value Code", ShortcutFilter1);
        AnalysisViewEntry.SETFILTER("Dimension 2 Value Code", ShortcutFilter2);
        AnalysisViewEntry.SETFILTER("Dimension 3 Value Code", ShortcutFilter3);
        AnalysisViewEntry.SETFILTER("Dimension 4 Value Code", ShortcutFilter4);
        AnalysisViewEntry.CALCSUMS(Amount);
        EXIT(AnalysisViewEntry.Amount);
    end;

    procedure DrillDownEndowment()
    var
        BudgetConfig: Record "Budget Configuration";
        AnalysisViewEntry: Record "Analysis View Entry";
        AnalysisViewEntries: Page "Analysis View Entries";
        DateFilter: Text;
        ShortcutFilter1: Text;
        ShortcutFilter2: Text;
        ShortcutFilter3: Text;
        ShortcutFilter4: Text;
    begin
        BudgetConfig.GET;
        IF NOT (BudgetConfig."Avaylable Endowment Account" = "No.") THEN
            EXIT;

        Clear(AnalysisViewEntry);
        AnalysisViewEntry.FILTERGROUP(2);
        AnalysisViewEntry.SETRANGE("Account No.", "No.");
        AnalysisViewEntry.SETRANGE("Analysis View Code", BudgetConfig."Analysis Code");
        AnalysisViewEntry.FILTERGROUP(0);
        DateFilter := GETFILTER("Date Filter");
        ShortcutFilter1 := GETFILTER("Shortcut Filter");
        ShortcutFilter2 := GETFILTER("Shortcut Filter2");
        ShortcutFilter3 := GETFILTER("Shortcut Filter3");
        ShortcutFilter4 := GETFILTER("Shortcut Filter4");
        AnalysisViewEntry.SETFILTER("Posting Date", DateFilter);
        AnalysisViewEntry.SETFILTER("Dimension 1 Value Code", ShortcutFilter1);
        AnalysisViewEntry.SETFILTER("Dimension 2 Value Code", ShortcutFilter2);
        AnalysisViewEntry.SETFILTER("Dimension 3 Value Code", ShortcutFilter3);
        AnalysisViewEntry.SETFILTER("Dimension 4 Value Code", ShortcutFilter4);
        CLEAR(AnalysisViewEntries);
        AnalysisViewEntries.EDITABLE(FALSE);
        AnalysisViewEntries.SETRECORD(AnalysisViewEntry);
        AnalysisViewEntries.SETTABLEVIEW(AnalysisViewEntry);
        AnalysisViewEntries.RUNMODAL;
    end;

    local procedure UpdatePCCAccount(GLAccount: Record "G/L Account")
    var
        PCCUnileo: Record "UNILEO G/L Account PCC-UNILEO";
    begin
        GLAccount.TESTFIELD("Account Type", GLAccount."Account Type"::Posting);
        IF PCCUnileo.GET(PCCUnileo.Type::Nav2PCC, GLAccount."No.") THEN BEGIN
            PCCUnileo."Account UNILEO" := GLAccount.CodeDot_PCC;
            PCCUnileo.MODIFY;
        END ELSE BEGIN
            PCCUnileo.INIT;
            PCCUnileo.Type := PCCUnileo.Type::Nav2PCC;
            PCCUnileo."Account PCC" := GLAccount."No.";
            PCCUnileo."Account UNILEO" := GLAccount.CodeDot_PCC;
            PCCUnileo.INSERT;
        END;
    end;
}