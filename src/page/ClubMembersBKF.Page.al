page 50000 "Club MembersBKF"
{
    ApplicationArea = All;
    Caption = 'Club Members', Comment = 'Vereinsmitglieder';
    PageType = List;
    SourceTable = "Club MemberBKF";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the No. of the club member.', Comment = 'Gibt die Nr. des Vereinsmitglieds an.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the name of the club member.', Comment = 'Gibt den Name des Vereinsmitglieds an.';
                }
            }
        }
    }

}
