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
        field(2; Name; Text[100])
        {
            Caption = 'Name', Comment = 'Name';
        }
        field(3; "Income Status"; Enum "Income StatusBKF")
        {
            Caption = 'Income Status', Comment = 'Einkommensstatus';
        }
        field(4; "Birth Day"; Date)
        {
            Caption = 'Birth Day', Comment = 'Geburtstag';
        }
        field(5; Adress; Text[100])
        {
            Caption = 'Adress', Comment = 'Adresse';
        }
        field(6; City; Text[30])
        {
            Caption = 'City', Comment = 'Ort';
        }
        field(7; "Post Code"; Code[20])
        {
            Caption = 'Post Code', Comment = 'Postleitzahl';
        }
        field(8; "Phone No."; Text[30])
        {
            Caption = 'Phone No.', Comment = 'Telefonnummer';
        }
        field(9; "Mobile No."; Text[30])
        {
            Caption = 'Mobile No.', Comment = 'Handynummer';
        }
        field(10; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail', Comment = 'E-Mail';
        }
        field(11; "No. Series"; Code[20])
        {
            Caption = 'No. Series', Comment = 'Nummerserie';
            Tablerelation = "No. Series";
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
