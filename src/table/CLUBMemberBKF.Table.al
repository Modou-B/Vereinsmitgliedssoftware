/// <summary>
/// The table "CLUB MemberBKF" stores the informations about Member of the club.
/// </summary>
table 50000 "Club MemberBKF"
{
    Caption = 'Club Member', Comment = 'Vereinsmitglied';
    DataCaptionFields = "No.", Name;
    DataClassification = CustomerContent;
    LookupPageId = "Club MemberBKF";
    DrillDownPageId = "Club MembersBKF";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.', Comment = 'Nr.';

            trigger OnValidate()
            begin
                TestNoSeries();
            end;
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
            TableRelation = "Post Code".City;
            ValidateTableRelation = false;
        }
        field(7; "Post Code"; Code[20])
        {
            Caption = 'Post Code', Comment = 'Postleitzahl';
            TableRelation = "Post Code".Code;

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
        field(12; Active; Boolean)
        {
            Caption = 'Active', Comment = 'Aktiv';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Key50000; Name)
        { }
    }

    fieldgroups
    {
        fieldgroup(Dropdown; "No.", Name, "Income Status", Adress, City, "Post Code", Active)
        { }
        fieldgroup(Brick; "No.", Name, "Income Status", Adress, City, "Post Code", Active)
        { }
    }

    trigger OnInsert()
    var
        ClubSetupBKF: Record "Club SetupBKF";
        NoSeriesManagement: Codeunit "NoSeriesManagement";
    begin
        if "No." = '' then begin
            ClubSetupBKF.Get();
            ClubSetupBKF.TestField("Club Member Nos.");
            NoSeriesManagement.InitSeries(ClubSetupBKF."Club Member Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

    local procedure TestNoSeries()
    var
        ClubMemberBKF: Record "Club MemberBKF";
        ClubSetupBKF: Record "Club SetupBKF";
        NoSeriesManagement: Codeunit "NoSeriesManagement";
    begin
        if "No." <> xRec."No." then
            if not ClubMemberBKF.Get(Rec."No.") then begin
                ClubSetupBKF.Get();
                NoSeriesManagement.TestManual(ClubSetupBKF."Club Member Nos.");
                "No. Series" := '';
            end;
    end;

    procedure AssistEdit(OldClubMemberBKF: Record "Club MemberBKF"): Boolean
    var
        ClubMemberBKF: Record "Club MemberBKF";
        ClubSetupBKF: Record "Club SetupBKF";
        NoSeriesManagement: Codeunit "NoSeriesManagement";
    begin
        ClubMemberBKF := Rec;
        ClubSetupBKF.Get();
        ClubSetupBKF.TestField("Club Member Nos.");
        if NoSeriesManagement.SelectSeries(ClubSetupBKF."Club Member Nos.", OldClubMemberBKF."No. Series", "No. Series") then begin
            NoSeriesManagement.SetSeries("No.");
            Rec := ClubMemberBKF;
            exit(true);
        end;
    end;
}
