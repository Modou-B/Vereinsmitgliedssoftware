/// <summary>
/// The table "CLUB Member" stores the informations about Member of the club.
/// </summary>
table 50000 "CLUB Member"
{
    Caption = 'CLUB Member';
    DataClassification = CustomerContent;
    LookupPageId = "CLUB Members";
    DrillDownPageId = "CLUB Members";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.', Comment = 'Nr.';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name', Comment = 'Name';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
