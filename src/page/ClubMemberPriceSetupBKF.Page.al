page 50003 "Club Member Price SetupBKF"
{
    ApplicationArea = All;
    Caption = 'Club Member Price Setup', Comment = 'Vereinsmitglied Preismatrix';
    Editable = true;
    PageType = List;
    SourceTable = "Club Member Price SetupBKF";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Income Status"; Rec."Income Status")
                {
                    ToolTip = 'Specifies the income status of the club member.', Comment = 'Gibt den Einkommensstatus des Vereinsmitglieds an.';
                }
                field("From Age"; Rec."From Age")
                {
                    ToolTip = 'Specifies the age from which this price applies.', Comment = 'Gibt das Alter an, ab dem dieser Preis gilt.';
                }
                field("To Age"; Rec."To Age")
                {
                    ToolTip = 'Specifies the age up to which this price applies.', Comment = 'Gibt das Alter an, bis zu dem dieser Preis gilt.';
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the price for the club member', Comment = 'Gibt den Preis für das Vereinsmitglied an.';
                }
            }
        }
    }
}
