report 57038 "UNILEO Validate Nav - PCC"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/RDL/UNILEOValidateNavPCC.rdl';
    ApplicationArea = All;

    dataset
    {
        dataitem(ContaNavisionPCC; "G/L Account")
        {
            DataItemTableView = SORTING("No.");
            column(Conta_NAV; ContaNavisionPCC."No.")
            {
            }
            column(Conta_PCC; ContaNavisionPCC.CodeDot_PCC)
            {
            }
            column(MensagemERRO; MensagemErro)
            {
            }

            trigger OnAfterGetRecord()
            begin
                ContaNavisionPCC.CALCFIELDS(ContaNavisionPCC."Balance at Date");
                IF ContaNavisionPCC."Balance at Date" = 0 THEN BEGIN
                    CurrReport.SKIP;
                END ELSE BEGIN
                    IF ContaNavisionPCC."Account Type" = ContaNavisionPCC."Account Type"::Total THEN BEGIN
                        IF ContaNavisionPCC.CodeDot_PCC <> '' THEN
                            MensagemErro := Text001;
                    END ELSE BEGIN
                        IF ContaNavisionPCC.CodeDot_PCC <> '' THEN BEGIN
                            IF GLAccountUNILEOPCC.GET(GLAccountUNILEOPCC."G/L Account Type"::PCC, ContaNavisionPCC.CodeDot_PCC) THEN BEGIN
                                IF GLAccountUNILEOPCC."Account Type" = GLAccountUNILEOPCC."Account Type"::A THEN
                                    MensagemErro := Text003;
                            END ELSE
                                MensagemErro := Text004;
                        END ELSE
                            MensagemErro := Text002;
                    END;
                END;
            end;

            trigger OnPreDataItem()
            begin
                ContaNavisionPCC.SETFILTER(ContaNavisionPCC."Date Filter", '..%1', FiltroData);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(FiltroData; FiltroData)
                {
                    Caption = 'Balance At Date';
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        FiltroData := WORKDATE;
    end;

    var
        GLAccountUNILEOPCC: Record "UNILEO G/L Account UNILEO-PCC";
        MensagemErro: Text;
        FiltroData: Date;
        Text001: Label 'Total Account. It cant have PCC corresponding.';
        Text002: Label 'Posting Account. Must have PCC corresponding.';
        Text003: Label 'PCC Account cant be total.';
        Text004: Label 'There is no PCC Chart of Accounts.';
}

