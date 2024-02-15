table 50004 "Club Member Price SetupBKF"
{
    Caption = 'Club Member Price Setup', Comment = 'Vereinsmitglied Preismatrix';
    DataClassification = CustomerContent;
    // DrillDownPageId 
    // LookupPageId

    fields
    {
        field(1; "Income Status"; Enum "Income StatusBKF")
        {
            Caption = 'Income Status', Comment = 'Einkommensstatus';
        }
        field(2; "From Age"; Integer)
        {
            Caption = 'From Age', Comment = 'Von Alter';
        }
        field(3; "To Age"; Integer)
        {
            Caption = 'To Age', Comment = 'Bis Alter';
        }
        field(4; Price; Decimal)
        {
            Caption = 'Price', Comment = 'Preis';
        }
    }
    keys
    {
        key(PK; "Income Status", "From Age", "To Age")
        {
            Clustered = true;
        }
    }
}
