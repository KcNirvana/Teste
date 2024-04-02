tableextension 50104 GnlJournalLineTableExt extends "Gen. Journal Line"
{
    fields
    {
    }

    procedure ImportJournalLines()
    var
        ImpJournalLines: Report "Import Journal Lines";
    begin
        Clear(ImpJournalLines);
        ImpJournalLines.SetParam("Journal Template Name", "Journal Batch Name");
        ImpJournalLines.Run();
    end;

    procedure ImportBankStatements()
    var
        ImpBankStatements: Report "Import Bank Statements";
    begin
        Clear(ImpBankStatements);
        ImpBankStatements.SetParam("Journal Template Name", "Journal Batch Name");
        ImpBankStatements.Run();
    end;
}
