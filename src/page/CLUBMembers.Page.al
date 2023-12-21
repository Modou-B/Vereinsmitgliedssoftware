page 50000 "CLUB Members"
{
    ApplicationArea = All;
    Caption = 'Members';
    PageType = List;
    SourceTable = "CLUB Member";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = 'Nr.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = 'Name';
                }
            }
        }
    }

}
