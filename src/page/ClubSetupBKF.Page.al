page 50001 "Club SetupBKF"
{
    ApplicationArea = All;
    Caption = 'Club Setup', Comment = 'Verein Einrichtung';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Card;
    SourceTable = "Club SetupBKF";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General', Comment = 'Allgemein';

                field("Copy Club Member Name to Entry"; Rec."Copy Club Member Name to Entry")
                {
                    ToolTip = 'Specifies whether the name of the club member should be transferred to the ledger entries.', Comment = 'Gibt an, ob der Name vom Vereinsmitglied in die Posten übernommen werden soll.';
                }
            }
            group("Number Series")
            {
                Caption = 'Number Series', Comment = 'Nummernserien';

                field("Club Member Nos."; Rec."Club Member Nos.")
                {
                    ToolTip = 'Specifies the number serie of the club member.', Comment = 'Gibt die Nummernserie des Vereinsmitglieds an.';
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
