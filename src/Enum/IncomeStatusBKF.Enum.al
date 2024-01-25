enum 50000 "Income StatusBKF"
{
    Extensible = true;

    value(0; " ")
    { }
    value(1; Employed)
    {
        Caption = 'Employed';
    }
    value(2; Unemployed)
    {
        Caption = 'Unemployed';
    }
    value(3; Retired)
    {
        Caption = 'Retired';
    }
    value(4; Student)
    {
        Caption = 'Student';
    }
}