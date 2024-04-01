page 50050 "CM WebServices Log"
{
    ApplicationArea = All;
    Caption = 'CM WebServices Log';
    PageType = List;
    SourceTable = "CM WebServices Log";
    SourceTableView = sorting("Entry No.") order(descending);
    UsageCategory = Lists;
    Editable = false;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field("WebService Type"; Rec."WebService Type")
                {
                    ApplicationArea = All;
                }
                field("Entry Date"; Rec."Entry Date")
                {
                    ApplicationArea = All;
                }
                field("Entry Time"; Rec."Entry Time")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Error Message"; Rec."Error Message")
                {
                    ApplicationArea = All;
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                }
                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Posted Document No.")
                {
                    ApplicationArea = All;
                }
                field("CM UII"; Rec."CM UII")
                {
                    ApplicationArea = All;
                }
                field("CM Document Type"; Rec."CM Document Type")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(navigation)
        {
            group("&Line")
            {
                Caption = '&Line';
                Image = Line;
                action("Show Document")
                {
                    Caption = 'Show Document';
                    Image = View;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;
                    ShortCutKey = 'Shift+F7';

                    trigger OnAction()
                    var
                        SalesInvHeader: Record "Sales Invoice Header";
                        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
                    begin
                        if Rec."Posted Document No." <> '' then begin
                            case Rec."CM Document Type" of
                                Rec."CM Document Type"::Invoice:
                                    begin
                                        SalesInvHeader.Get(Rec."Posted Document No.");
                                        PAGE.Run(PAGE::"Posted Sales Invoice", SalesInvHeader);
                                    end;
                                Rec."CM Document Type"::CrMemo:
                                    begin
                                        SalesCrMemoHeader.Get(Rec."Posted Document No.");
                                        PAGE.Run(PAGE::"Posted Sales Credit Memo", SalesCrMemoHeader);
                                    end;
                            end;

                        end;

                    end;
                }
                action("Show Original Message")
                {
                    Image = ExportMessage;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;
                    trigger OnAction()
                    var
                        TempBlob: Codeunit "Temp Blob";
                        FileName: Text;
                        Instr: InStream;
                    begin
                        if Rec."WebService Type" <> "WebService Type"::CreateSalesDocument then
                            exit;
                        Clear(TempBlob);
                        FileName := Format(CreateGuid()) + '.xml';
                        TempBlob.FromRecord(Rec, Rec.FieldNo("Message Received"));
                        TempBLOB.CreateInStream(Instr);
                        DownloadFromStream(Instr, '', '', '', FileName);
                    end;
                }
                action(ImportInvoices)
                {
                    Caption = 'ImportInvoices';
                    Image = UpdateDescription;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction();
                    begin
                        ImportXMLInvoices;
                    end;
                }
            }
        }
    }
}