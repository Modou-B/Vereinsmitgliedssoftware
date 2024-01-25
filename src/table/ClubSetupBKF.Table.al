table 50002 "Club SetupBKF"
{
    Caption = 'Club Setup', Comment = 'Verein Einrichtung';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key', Comment = 'Primärschlüssel';
        }
        field(10; "Club Member Nos."; Code[20])
        {
            Caption = 'Club Member Nos.', Comment = 'Vereinsmitglied Nummernserie';
            TableRelation = "No. Series";
        }
        field(11; "Copy Club Member Name to Entry"; Boolean)
        {
            Caption = 'Copy Club Member Name to Entry', Comment = 'Vereinsmitgliedsname in Posten kopieren';

        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }


}

