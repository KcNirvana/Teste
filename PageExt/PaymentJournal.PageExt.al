pageextension 50104 "Payment Journal Ext" extends "Payment Journal"
{
    actions
    {
        addlast("F&unctions")
        {
            action("Import Excel")
            {
                Caption = 'Import Excel';
                Image = Excel;
                trigger OnAction()
                var
                    ImportReport: Report "Import Payment Journal";
                begin
                    ImportReport.InitReport(Rec);
                    ImportReport.Run()
                end;
            }
        }
        addfirst("Electronic Payments")
        {

            action(ImportBankStatements)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Import Bank Statements';
                Ellipsis = true;
                Image = Import;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    Rec.ImportBankStatements();
                end;
            }
        }
    }
}