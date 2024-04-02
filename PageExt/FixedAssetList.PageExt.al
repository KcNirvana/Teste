pageextension 50101 "Fixed Asset List Ext" extends "Fixed Asset List"
{
    layout
    {
        addafter("No.")
        {
            field("Serial No."; Rec."Serial No.")
            {
            }
        }
    }

    actions
    {
        addlast(reporting)
        {
            action(ExportInfo)
            {
                Caption = 'Export FA Registration';
                Image = Report;
                trigger OnAction()
                var
                    Export: Report "Export Fixed Assests";
                begin
                    Export.Run();
                end;
            }

            action(Import)
            {
                Image = ImportExcel;
                Caption = 'Import FA Data';
                trigger OnAction()
                var
                    SelectedOption: Integer;
                    ImportFixedAssetsPage: Report "Import Fixed Assets";
                    ImportFixedAssetsLines: Report "Import FA Depreciation Book";
                begin
                    SelectedOption := Dialog.StrMenu(Choices, 1, ImpMessage);
                    case SelectedOption of
                        1:
                            ImportFixedAssetsPage.Run();
                        2:
                            ImportFixedAssetsLines.Run();
                        else
                            Error('');
                    end;
                end;
            }
        }
    }


    var
        Choices: Label 'Fixed Asset Page,Fixed Asset List';
        ImpMessage: Label 'Which do you wish to import?';

}
