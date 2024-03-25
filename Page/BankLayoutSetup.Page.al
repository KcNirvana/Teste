page 50002 "Bank Layout Setup"
{
    Caption = 'Bank Layout Setup';
    PageType = Card;
    SourceTable = "Bank Layout Setup";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }

                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                }
                field("Excel Header End"; Rec."Excel Header End")
                {
                    ApplicationArea = All;
                }
            }
            part("Subform"; "Bank Layouts Set. Subform")
            {
                Caption = 'Excel Configuration';
                SubPageLink = "Layout No." = field("No.");
            }
        }
    }

    trigger OnOpenPage()
    begin
        Update;
    end;

    procedure Update()
    var
        SField: Record Field;
        LFields: Record "Field Selection";
    begin
        SField.Reset();
        SField.SetFilter(TableNo, '81');
        if SField.FindFirst() then begin
            if (SField.Count <> LFields.Count) or (LFields.IsEmpty) then begin
                repeat
                    LFields."Table No." := SField.TableNo;
                    LFields."Field No." := SField."No.";
                    LFields."Field Name" := SField."Field Caption";
                    if not LFields.Insert() then
                        LFields.Modify;
                until SField.Next() = 0;
            end;
        end;
    end;
}
