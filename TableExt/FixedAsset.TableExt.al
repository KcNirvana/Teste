tableextension 57033 FixedAssetTableExt extends "Fixed Asset"
{
    fields
    {
        field(50201; "UNILEO Rubric"; Text[90])
        {
            Caption = 'UNILEO Rubric';

            trigger OnLookup()
            begin
                LookupUNILEORubric();
            end;

            trigger OnValidate()
            begin
                ValidateUNILEORubric();
            end;
        }
        modify("FA Class Code")
        {
            trigger OnBeforeValidate()
            var
                FAClass: Record "FA Class";
            begin
                if ("FA Class Code" <> '') and ("FA Class Code" <> xRec."FA Class Code") then begin
                    FAClass.Get("FA Class Code");
                    FAClass.TestField("UNILEO Type");
                end;
            end;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

    local procedure ValidateUNILEORubric()
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
        FAClass: Record "FA Class";
        Text001: Label 'The value entered is not valid.';
    begin
        IF "UNILEO Rubric" <> '' THEN begin
            TESTFIELD("FA Class Code");
            FAClass.GET("FA Class Code");

            UNILEOAuxTable.Reset();
            UNILEOAuxTable.SETCURRENTKEY("Report Type");
            CASE FAClass."UNILEO Type" OF
                FAClass."UNILEO Type"::Intangible:
                    UNILEOAuxTable.SETRANGE("Report Type", "UNILEO Report Type"::AI);
                FAClass."UNILEO Type"::Tangible:
                    BEGIN
                        UNILEOAuxTable.SETRANGE("Report Type", "UNILEO Report Type"::AFT);
                        UNILEOAuxTable.SETRANGE(GroupCode, FALSE);
                    END;
            END;
            UNILEOAuxTable.SetRange(Description1, "UNILEO Rubric");
            if UNILEOAuxTable.IsEmpty then
                Error(Text001);
        end;
    end;

    local procedure LookupUNILEORubric()
    var
        UNILEOAuxTable: Record "UNILEO Aux Table";
        FAClass: Record "FA Class";
        UNILEOFARubricPage: Page "UNILEO FA Rubric List";
    begin
        TESTFIELD("FA Class Code");
        FAClass.GET("FA Class Code");

        UNILEOAuxTable.Reset();
        UNILEOAuxTable.SETCURRENTKEY("Report Type");
        UNILEOAuxTable.FilterGroup(2);
        CASE FAClass."UNILEO Type" OF
            FAClass."UNILEO Type"::Intangible:
                UNILEOAuxTable.SETRANGE("Report Type", "UNILEO Report Type"::AI);
            FAClass."UNILEO Type"::Tangible:
                BEGIN
                    UNILEOAuxTable.SETRANGE("Report Type", "UNILEO Report Type"::AFT);
                    UNILEOAuxTable.SETRANGE(GroupCode, FALSE);
                END;
        END;

        Clear(UNILEOFARubricPage);
        UNILEOFARubricPage.SetTableView(UNILEOAuxTable);
        UNILEOFARubricPage.LookupMode(true);
        If UNILEOFARubricPage.RunModal() = Action::LookupOK then
            Validate("UNILEO Rubric", UNILEOAuxTable.Description1);
    end;
}

