pageextension 50100 "FA Dep.Book Sub Ext." extends "FA Depreciation Books Subform"
{
    layout
    {
        addafter(BookValue)
        {
            field("Salvage Value"; Rec."Salvage Value")
            {

            }
        }
    }
}

