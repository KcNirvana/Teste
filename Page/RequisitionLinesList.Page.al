page 57022 "Requisition Lines List"
{
    Caption = 'Requisition Lines List';
    Editable = false;
    PageType = List;
    SourceTable = "Requisition Lines";
    SourceTableView = SORTING("Requisition Code")
                      WHERE(Status = const(Released));

    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field("Contract Year"; Rec."Contract Year")
                {
                    Visible = IsCtrVisible;
                }
                field("Requisition Code"; Rec."Requisition Code")
                {
                }
                field(RequisitionDate; Rec."Requisition Date")
                {
                    Visible = false;
                }
                field(Type; Rec.Type)
                {
                }
                field("No."; Rec."No.")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Requisition Quantity"; Rec."Requisition Quantity")
                {
                }
                field("Cost Amount"; Rec."Cost Amount")
                {
                }
                field(ShortcutDimCode1; ShortcutDimCode[1])
                {
                    CaptionClass = '1,2,1';
                    Importance = Additional;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(1, ShortcutDimCode[1]);
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(1, ShortcutDimCode[1]);
                    end;
                }
                field(ShortcutDimCode2; ShortcutDimCode[2])
                {
                    CaptionClass = '1,2,2';
                    Importance = Additional;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(2, ShortcutDimCode[2]);
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(2, ShortcutDimCode[2]);
                    end;
                }
                field(ShortcutDimCode3; ShortcutDimCode[3])
                {
                    CaptionClass = '1,2,3';

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(3, ShortcutDimCode[3]);
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(3, ShortcutDimCode[3]);
                    end;
                }
                field(ShortcutDimCode4; ShortcutDimCode[4])
                {
                    CaptionClass = '1,2,4';

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(4, ShortcutDimCode[4]);
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(4, ShortcutDimCode[4]);
                    end;
                }
                field(ShortcutDimCode5; ShortcutDimCode[5])
                {
                    CaptionClass = '1,2,5';
                    Importance = Additional;
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(5, ShortcutDimCode[5]);
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(5, ShortcutDimCode[5]);
                    end;
                }
                field(ShortcutDimCode6; ShortcutDimCode[6])
                {
                    CaptionClass = '1,2,6';
                    Importance = Additional;
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(6, ShortcutDimCode[6]);
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(6, ShortcutDimCode[6]);
                    end;
                }
                field(ShortcutDimCode7; ShortcutDimCode[7])
                {
                    CaptionClass = '1,2,7';
                    Importance = Additional;
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(7, ShortcutDimCode[7]);
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(7, ShortcutDimCode[7]);
                    end;
                }
                field(ShortcutDimCode8; ShortcutDimCode[8])
                {
                    CaptionClass = '1,2,8';
                    Importance = Additional;
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Rec.LookupShortcutDimCode(8, ShortcutDimCode[8]);
                        Rec.ShowShortcutDimCode(ShortcutDimCode);
                    end;

                    trigger OnValidate()
                    begin
                        Rec.ValidateShortcutDimCode(8, ShortcutDimCode[8]);
                    end;
                }
            }
        }
        area(factboxes)
        {
            systempart(Control1102629026; Notes)
            {
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Requisition)
            {
                Caption = 'Requisition';
                action(Card)
                {
                    Caption = 'Card';
                    Image = Document;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    Enabled = Rec."Requisition Code" <> '';
                    RunPageMode = View;
                    ShortCutKey = 'Shift+F7';

                    trigger OnAction()
                    var
                        Requisition: Record Requisition;
                    begin
                        Clear(Requisition);
                        Requisition.Get(Rec."Requisition Code");
                        if Requisition.IsContract then
                            PAGE.Run(PAGE::"Req. Contract Posted Card", Requisition)
                        else
                            PAGE.Run(PAGE::"Requisition Posted Card", Requisition);
                    end;
                }
            }
        }
        area(Processing)
        {
            group(Consultation)
            {
                Caption = 'Consultation';
                action("Insert Requisition Lines")
                {
                    Caption = 'Insert Requisition Lines';
                    Image = CopyDocument;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    Visible = ConsultationCode <> '';
                    RunPageMode = View;
                    ShortCutKey = 'Shift+F7';

                    trigger OnAction()
                    var
                        Consultation: Record Consultation;
                        RequisitionLines: Record "Requisition Lines";
                        Text001: Label 'Lines inserted with success.';
                        Text002: Label 'You didnt select any line.';
                    begin
                        Clear(RequisitionLines);
                        CurrPage.SETSELECTIONFILTER(RequisitionLines);
                        IF RequisitionLines.COUNT = 0 THEN
                            ERROR(Text002);
                        Consultation.get(ConsultationCode);
                        CduConsultation.InsertRequisitionLines(Consultation, RequisitionLines);
                        MESSAGE(Text001);
                        CurrPage.CLOSE;
                    end;
                }
            }
        }
    }



    var
        ShortcutDimCode: array[8] of Code[20];
        [InDataSet]
        IsCtrVisible: Boolean;
        CduConsultation: Codeunit Consultation;
        ConsultationCode: Code[20];


    trigger OnAfterGetRecord()
    begin
        SetContractFieldsVisible();
        Rec.ShowShortcutDimCode(ShortcutDimCode);
    end;

    trigger OnOpenPage()
    begin
        ApplyFilters;
    end;

    local procedure ApplyFilters()
    var
        BudgetPermissions: Record "Budget Permissions";
    begin
        Rec.FILTERGROUP(2);
        IF BudgetPermissions.GET(USERID, BudgetPermissions.Type::User) THEN BEGIN
            BudgetPermissions.CALCFIELDS("Employee Section", "Employee Department");
            IF BudgetPermissions."Filter Requisition By User" THEN
                Rec.SETRANGE("Requisition User", UPPERCASE(USERID))
            ELSE
                Rec.SETRANGE("Requisition User");
            IF BudgetPermissions."Filter Requisition By Section" THEN BEGIN
                IF BudgetPermissions."Employee Section" <> '' THEN
                    Rec.SETRANGE("Requisition Section", BudgetPermissions."Employee Section")
            END ELSE
                Rec.SETRANGE("Requisition Section");
            IF BudgetPermissions."Filter Requisition By Dep." THEN BEGIN
                IF BudgetPermissions."Employee Department" <> '' THEN
                    Rec.SETRANGE("Requisition Department", BudgetPermissions."Employee Department")
            END ELSE
                Rec.SETRANGE("Requisition Department");
        END;
    end;

    local procedure SetContractFieldsVisible()
    var
        Requisition: Record Requisition;
    begin
        Clear(Requisition);
        Requisition.Get(Rec."Requisition Code");
        IsCtrVisible := Requisition.IsContract;
    end;

    procedure SetConsultationCode(pConsultationCode: Code[20])
    begin
        ConsultationCode := pConsultationCode;
    end;
}

