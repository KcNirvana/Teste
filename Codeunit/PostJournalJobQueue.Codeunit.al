codeunit 50000 "Post Journal Job Queue"
{
    trigger OnRun()
    var
        GenJnlPost: Codeunit "Gen. Jnl.-Post Line";
    begin
        SalesSetup.Get();
        If NOT SalesSetup."Execute Sales Jnl Job Queue" then
            exit;
        GenJnlLine.Reset();
        If SalesSetup."Last Line Used" <> 0 then begin
            SalesSetup."Last Line Used" += 1000;
            SalesSetup.Modify();
            Commit();
            GenJnlLine.SetFilter("Line No.", '%1..', SalesSetup."Last Line Used");
        end;
        GenJnlLine.SetRange("Journal Batch Name", 'SALES');
        GenJnlLine.SetRange("Journal Template Name", 'VENDAS');
        If GenJnlLine.FindSet() then begin
            repeat
                SalesSetup."Last Line Used" := GenJnlLine."Line No.";
                SalesSetup.Modify();
                Commit();
                FGenJnlLine.Reset();
                FGenJnlLine.SetRange("Journal Batch Name", 'SALES');
                FGenJnlLine.SetRange("Journal Template Name", 'VENDAS');
                FGenJnlLine.SetRange("Line No.", GenJnlLine."Line No.");
                If not FGenJnlLine.FindFirst() then
                    Error('Não conseguiu encontrar a linha: %1', GenJnlLine."Line No.");
                FGenJnlLine.SendToPosting(Codeunit::"Gen. Jnl.-Post");
                Commit();
            until GenJnlLine.Next() = 0;
        end;

        GenJnlLine.Reset();
        GenJnlLine.SetRange("Journal Batch Name", 'SALES');
        GenJnlLine.SetRange("Journal Template Name", 'VENDAS');

        iF (GenJnlLine.FindLast()) and (GenJnlLine."Account No." <> '') then
            Error('Ainda existem linhas por registar');

        SalesSetup."Last Line Used" := 0;
        SalesSetup."Execute Sales Jnl Job Queue" := false;
        SalesSetup.Modify();
    end;

    var
        FGenJnlLine: Record "Gen. Journal Line";
        GenJnlLine: Record "Gen. Journal Line";
        SalesSetup: Record "Sales & Receivables Setup";
}
