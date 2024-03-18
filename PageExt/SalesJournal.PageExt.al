pageextension 50113 "Sales Journal Ext" extends "Sales Journal"
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
                    ImportReport: Report "Import Sales Journal";
                begin
                    ImportReport.InitReport(Rec);
                    ImportReport.Run();
                end;
            }
        }

        addlast("P&osting")
        {
            action("Post Background")
            {
                Caption = 'Post Background';
                Image = PostBatch;
                trigger OnAction()
                var
                    SalesSetup: Record "Sales & Receivables Setup";
                begin
                    SalesSetup.Get();
                    SalesSetup."Execute Sales Jnl Job Queue" := true;
                    SalesSetup.Modify();
                end;
            }
        }
    }
}

