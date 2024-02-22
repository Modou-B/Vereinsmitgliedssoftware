page 50000 "Club MembersBKF"
{
    ApplicationArea = All;
    Caption = 'Club Members', Comment = 'Vereinsmitglieder';
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "Club MemberBKF";
    CardPageId = "Club MemberBKF";
    Editable = false;

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
                    ToolTip = 'Specifies the name of the club member.', Comment = 'Gibt den Namen des Vereinsmitglieds an.';
                }
                field("Income Status"; Rec."Income Status")
                {
                    ToolTip = 'Specifies the value of the Income Status field.', Comment = 'Gibt den Einkommenstatus des Vereinsmitglieds an.';
                    Visible = false;
                }
                field("Birth Day"; Rec."Birth Day")
                {
                    ToolTip = 'Specifies the value of the Birth Day field.', Comment = 'Gibt den Geburtstag des Vereinsmitglieds an.';
                }
                field(Adress; Rec.Adress)
                {
                    ToolTip = 'Specifies the value of the Adress field.', Comment = 'Gibt die Adresse des Vereinsmitglieds an.';
                    Visible = false;
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.', Comment = 'Gibt den Ort des Vereinsmitglieds an.';
                    Visible = false;
                }
                field("Post Code"; Rec."Post Code")
                {
                    ToolTip = 'Specifies the value of the Post Code field.', Comment = 'Gibt die Postleitzahl des Vereinsmitglieds an.';
                    Visible = false;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.', Comment = 'Gibt die Telefonnummer des Vereinsmitglieds an.';
                    Visible = false;
                }
                field("Mobile No."; Rec."Mobile No.")
                {
                    ToolTip = 'Specifies the value of the Mobile No. field.', Comment = 'Gibt die Handynummer des Vereinsmitglieds an.';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the value of the E-Mail field.', Comment = 'Gibt die E-Mail des Vereinsmitglieds an.';
                }
                field(Active; Rec.Active)
                {
                    ToolTip = 'Specifies the value of the active field.', Comment = 'Gibt an, ob das Vereinsmitglied aktiv ist.';
                }
            }
        }
    }

}
