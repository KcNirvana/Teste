enum 57039 "Bank Account Application Type"
{
    Extensible = true;

    value(0; " ")
    {
        Caption = ' ';
    }
    value(1; CO)
    {
        Caption = 'Current Accounts';
    }
    value(2; DP)
    {
        Caption = 'Time Deposits';
    }
    value(3; CEDICS)
    {
        Caption = 'CEDICS';
    }
    value(4; EBM)
    {
        Caption = 'Bank Loans (Mutual)';
    }
    value(5; EO)
    {
        Caption = 'Bond Loans';
    }
    value(6; PC)
    {
        Caption = 'Commercial Paper';
    }
    value(7; OEE)
    {
        Caption = 'Other Loans (Government)';
    }
    value(8; FDM)
    {
        Caption = 'Working Capital';
    }
}
