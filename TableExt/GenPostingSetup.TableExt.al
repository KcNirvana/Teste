tableextension 52005 GenPostingSetupTableExt extends "General Posting Setup"
{
    fields
    {
        field(52000; "Sales Deferement Account"; Code[20])
        {
            Caption = 'Sales Deferement Account';
            TableRelation = "G/L Account" where(Blocked = const(false));
        }
    }
    procedure GetSalesDeferAccount(): Code[20]
    begin
        if "Sales Deferement Account" = '' then
            PostingSetupMgt.LogGenPostingSetupFieldError(Rec, FieldNo("Sales Deferement Account"));

        exit("Sales Deferement Account");
    end;

    var
        PostingSetupMgt: Codeunit PostingSetupManagement;
}
