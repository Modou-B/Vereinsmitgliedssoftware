/// <summary>
/// The table "CLUB MemberBKF" stores the informations about Member of the club.
/// </summary>
table 50000 "Club MemberBKF"
{
    Caption = 'Club Member', Comment = 'Vereinsmitglied';
    DataClassification = CustomerContent;
    LookupPageId = "Club MembersBKF";
    DrillDownPageId = "Club MembersBKF";

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
