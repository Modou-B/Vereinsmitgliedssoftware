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
                field("Income Status"; Rec."Income Status")
                {
                    ToolTip = 'Specifies the value of the Income Status field.', Comment = 'Einkommensstatus';
                }
                field("Birth Day"; Rec."Birth Day")
                {
                    ToolTip = 'Specifies the value of the Birth Day field.', Comment = 'Geburtstag';
                }
                field(Adress; Rec.Adress)
                {
                    ToolTip = 'Specifies the value of the Adress field.', Comment = 'Adresse';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.', Comment = 'Ort';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ToolTip = 'Specifies the value of the Post Code field.', Comment = 'Postleitzahl';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.', Comment = 'Telefonnummer';
                }
                field("Mobile No."; Rec."Mobile No.")
                {
                    ToolTip = 'Specifies the value of the Mobile No. field.', Comment = 'Handynummer';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the value of the E-Mail field.', Comment = 'E-Mail';
                }
                field("No. Series"; Rec."No. Series")
                {
                    ToolTip = 'Specifies the value of the No. Series field.', Comment = 'Nummerserie';
                    Visible = false;
                }
            }
        }
    }

}
