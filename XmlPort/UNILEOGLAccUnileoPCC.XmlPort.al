xmlport 57013 "UNILEO GL Account Unileo/PCC"
{
    Caption = 'UNILEO GL Account UNILEO/PCC';
    Encoding = UTF8;
    Direction = Import;

    schema
    {
        textelement(PlanoContasCentral)
        {
            tableelement("G/L Account UNILEO-PCC"; "UNILEO G/L Account UNILEO-PCC")
            {
                SourceTableView = SORTING("G/L Account Type", "No.");
                XmlName = 'Registo';
                fieldelement(CodConta; "G/L Account UNILEO-PCC"."No.")
                {
                }
                fieldelement(Descricao; "G/L Account UNILEO-PCC".Name)
                {
                }
                fieldelement(Tipo; "G/L Account UNILEO-PCC"."Account Type")
                {
                }

                trigger OnBeforeInsertRecord()
                begin
                    "G/L Account UNILEO-PCC"."G/L Account Type" := gGLAccountType
                end;
            }
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(gGLAccountType; gGLAccountType)
                {
                    Caption = 'Chart of Accounts';
                }
            }
        }

        actions
        {
        }
    }

    var
        gGLAccountType: Enum "UNILEO PCC GLAccount Type";
}

