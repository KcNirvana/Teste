pageextension 57008 PurchaseQuotePageExt extends "Purchase Quote"
{
    PromotedActionCategories = ',,,,,,,,,,,,,,,,,,,Budget Management';
    layout
    {
        addafter(General)
        {
            group(Consultation)
            {
                Caption = 'Consultation';
                field("Created by"; Rec."Created By")
                {
                    Applicationarea = all;
                }
                field("Employee No."; Rec."Employee No.")
                {
                    Applicationarea = all;
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    Applicationarea = all;
                }
                field("Consultation Code"; Rec."Consultation Code")
                {
                    Applicationarea = all;
                }
                field("Associated Orders"; Rec."Associated Orders")
                {
                    Applicationarea = all;
                    Caption = 'Orders';
                    DrillDown = true;
                    DrillDownPageId = "Purchase Order List";
                }

            }
        }
        modify("Shortcut Dimension 1 Code")
        {
            Enabled = false;
        }
        modify("Shortcut Dimension 2 Code")
        {
            Enabled = false;
        }
    }
    actions
    {
        modify("Make Order")
        {
            Visible = false;
        }
        modify(Dimensions)
        {
            Visible = false;
        }
        addafter("Make Order")
        {
            group(Consultation2)
            {

                Caption = 'Consultation';

                action(Dimensions2)
                {
                    AccessByPermission = TableData Dimension = R;
                    ApplicationArea = Dimensions;
                    Caption = 'Dimensions';
                    Enabled = Rec."No." <> '';
                    Image = Dimensions;
                    Promoted = true;
                    PromotedCategory = Category20;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ShortCutKey = 'Alt+D';

                    trigger OnAction()
                    var
                        DimMgt: Codeunit DimensionManagement;
                    begin
                        DimMgt.ShowDimensionSet(Rec."Dimension Set ID", STRSUBSTNO('%1 %2', Rec.TABLECAPTION, Rec."No."));
                    end;
                }

                action("Select All Lines")
                {
                    ApplicationArea = All;
                    Caption = 'Select All Lines';
                    Image = SelectEntries;
                    Promoted = true;
                    PromotedCategory = Category20;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        Rec.SelectAllQuoteLines;
                    end;
                }
                action("Reject All Lines")
                {
                    ApplicationArea = All;
                    Caption = 'Reject All Lines';
                    Image = Reject;
                    Promoted = true;
                    PromotedCategory = Category20;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        Rec.RejectAllQuoteLines();
                    end;
                }
                action("Adjust Avays/Adjudications")
                {
                    ApplicationArea = All;
                    Caption = 'Adjust Avays/Adjudications';
                    Image = SelectEntries;
                    Promoted = true;
                    PromotedCategory = Category20;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        AdjustQuoteAvayPAQ(Rec);
                    end;
                }

                action(MakeOrder2)
                {
                    ApplicationArea = All;
                    Caption = 'Make &Order';
                    Image = MakeOrder;
                    Promoted = true;
                    PromotedCategory = Category20;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        if ApprovalsMgmt.PrePostApprovalCheckPurch(Rec) then
                            CODEUNIT.Run(CODEUNIT::"Purch.-Quote to Order (Yes/No)", Rec);
                    end;
                }

            }
        }
    }
    local procedure AdjustQuoteAvayPAQ(PurchaseHeader: Record "Purchase Header")
    var
        Consultation: Record Consultation;
        CduConsultation: Codeunit Consultation;
        ContractQuoteAdjustments: Page "Contract Quote Adjustments";
        Selection: Integer;
        SelectionType: Enum "Contract Quote Adjustments";
        Text001: Label 'Avaylable Budgets,Adjudications';
        Text002: Label 'Adjust Contract Avays/Adjudications';
    begin
        Consultation.Get(PurchaseHeader."Consultation Code");
        If Consultation.IsContract then begin
            Selection := StrMenu(Text001, 0, Text002);
            case Selection of
                1:
                    SelectionType := SelectionType::"Avaylable Budgets";
                2:
                    SelectionType := SelectionType::Adjudications;
                else
                    exit;
            end;
            Clear(ContractQuoteAdjustments);
            ContractQuoteAdjustments.LookupMode(true);
            ContractQuoteAdjustments.Editable(true);
            ContractQuoteAdjustments.SetParams(Consultation."Consultation Code", SelectionType);
            If ContractQuoteAdjustments.RunModal() = Action::LookupOK then
                CduConsultation.CreateContractAdjustAvayPAQ(Rec, SelectionType)
            else
                PurchaseHeader.ClearContractAmountsToAdjust();
        end else
            CduConsultation.CreateAdjustAvayPAQ(Rec);
    end;
}


