pageextension 50103 MovsRecon extends "General Ledger Entries"
{
    layout
    {
        addafter("External Document No.")
        {
            field(Reconciled; Rec.Reconciled)
            {
                ApplicationArea = All;
                Editable = false;
            }

            field("User ID Recon"; rec."User ID Recon")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
    actions
    {
        addafter(IncomingDocument)
        {
            group(Reconciliations)
            {
                Image = BankAccountRec;
                action(Mark)
                {
                    Caption = 'Mark';
                    Image = SelectEntries;
                    trigger OnAction();
                    begin
                        MarkRecon();
                    end;
                }
                action(Unmark)
                {
                    Caption = 'UnMark';
                    Image = ReverseLines;
                    trigger OnAction();
                    begin
                        UnMarkRecon();
                    end;
                }
            }
        }
    }

    var
        GlEntry: Record "G/L Entry";
        Text50001: Label 'Do you want to mark the entries?';
        Text50002: Label 'Do you want to unmark the entries?';
        Text50003: Label 'Entries marked with success.';
        Text50004: Label 'You didnt select any entry.';
        Text50005: Label 'Entries unmarked with success.';
        DevCU: Codeunit Developments;

    local procedure MarkRecon()
    begin
        Clear(GlEntry);
        CurrPage.SETSELECTIONFILTER(GLEntry);
        IF GLEntry.COUNT = 0 THEN
            ERROR(Text50004);
        IF NOT CONFIRM(Text50001) THEN
            EXIT;

        IF GLEntry.FINDSET THEN
            REPEAT
                DevCU.MarkUnmarkGLEntry(GlEntry."Entry No.", true);
            UNTIL GLEntry.NEXT = 0;

        MESSAGE(Text50003);
        CurrPage.UPDATE(FALSE);
    end;

    local procedure UnMarkRecon()
    begin
        Clear(GlEntry);
        CurrPage.SETSELECTIONFILTER(GLEntry);
        IF GLEntry.COUNT = 0 THEN
            ERROR(Text50004);
        IF NOT CONFIRM(Text50002) THEN
            EXIT;

        IF GLEntry.FINDSET THEN
            REPEAT
                DevCU.MarkUnmarkGLEntry(GlEntry."Entry No.", false);
            UNTIL GLEntry.NEXT = 0;

        MESSAGE(Text50005);
        CurrPage.UPDATE(FALSE);
    end;

}
