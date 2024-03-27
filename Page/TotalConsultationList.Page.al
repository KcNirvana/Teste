page 57069 "Total Consultation List"
{

    Caption = 'Total Consultation List';
    Editable = false;
    PageType = List;
    SourceTable = "PTSS Temporary Table";
    SourceTableTemporary = true;
    SourceTableView = sorting(Code1);
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;

    layout
    {
        area(content)
        {
            repeater(group)
            {
                ShowCaption = false;
                field(Boolean1; Rec.Boolean1)
                {
                    Caption = 'Contract';
                }
                field(Code1; Rec.Code1)
                {
                    Caption = 'Consultation Code';
                }
                field(Text1; Rec.Text1)
                {
                    Caption = 'Description';
                }
                field(Decimal1; Rec.Decimal1)
                {
                    Caption = 'Amount';
                }
                field(Text2; Rec.Text2)
                {
                    Caption = 'Department';
                }
                field(Code2; Rec.Code2)
                {
                    Caption = 'Avay Code';
                }
                field(Decimal2; Rec.Decimal2)
                {
                    Caption = 'Avaylable Amount';
                }
                field(Code3; Rec.Code3)
                {
                    Caption = 'Adjudication Code';
                }
                field(Decimal3; Rec.Decimal3)
                {
                    Caption = 'Adjudication Amount';
                }
                field(Code4; Rec.Code4)
                {
                    Caption = 'Order No.';
                }
                field(Decimal4; Rec.Decimal4)
                {
                    Caption = 'Order Amount';
                }
                field(Code5; Rec.Code5)
                {
                    Caption = 'Purch Rcpt No.';
                }
                field(Code6; Rec.Code6)
                {
                    Caption = 'Invoice No.';
                }
                field(Decimal6; Rec.Decimal6)
                {
                    Caption = 'Invoice Amount';
                }
            }
        }
    }

    actions
    {
    }

    trigger OnInit()
    begin
        FillTempTable;
    end;

    var
        Text0001: Label 'Calculating...\\';

    local procedure FillTempTable()
    var
        TempConsultation: Record Consultation temporary;
        Consultation: Record Consultation;
        DepartmentCode: Record "Departments";
        PostedAvaylableBudgets: Record "Posted Avaylable Budget";
        PostedPAQs: Record "Posted PAQ";
        Orders: Record "Purchase Header";
        PurchRcpts: Record "Purch. Rcpt. Header";
        Invoices: Record "Purch. Inv. Header";
        ConsultationCode: Code[20];
        OldConsultationCode: Code[20];
        AvayCode: Code[20];
        PAQCode: Code[20];
        OrderNo: Code[20];
        PurchRcptNo: Code[20];
        InvoiceNo: Code[20];
        AvaylableAmount: Decimal;
        PAQAmount: Decimal;
        OrderAmount: Decimal;
        InvoiceAmount: Decimal;
        EntryNo: Integer;
        ControlNo: Integer;
        i: Integer;
        Window: Dialog;
        TotalRecNo: Integer;
        RecNo: Integer;
    begin
        Clear(Rec);
        Clear(TempConsultation);
        Clear(Window);
        Clear(EntryNo);
        Clear(ControlNo);
        Window.Open(Text0001 + '#1#################################################\', Consultation."Consultation code");
        Clear(Rec);
        Clear(TempConsultation);
        EntryNo := 1;
        ControlNo := 1;
        Rec.DeleteAll();
        TempConsultation.DeleteAll;
        Consultation.Reset;
        Consultation.SetFilter("Consultation Status", '<>%1&<>%2', Consultation."Consultation Status"::Canceled, Consultation."Consultation Status"::Closed);
        if Consultation.FindSet then
            repeat
                TempConsultation.Init;
                TempConsultation."Consultation code" := Consultation."Consultation code";
                TempConsultation.Insert;
                If DepartmentCode.Get(Consultation."Department Code") then;

                Window.Update;

                ControlNo := 1;
                PostedAvaylableBudgets.Reset;
                PostedAvaylableBudgets.SetRange("Consultation Code", Consultation."Consultation code");
                PostedAvaylableBudgets.SetRange(Reversed, false);
                if PostedAvaylableBudgets.FindSet then
                    repeat
                        Rec.Init();
                        Rec."Entry No." := EntryNo;
                        Rec.Boolean1 := Consultation.IsContract;
                        Rec.Code1 := Consultation."Consultation Code";
                        Rec.Text2 := DepartmentCode.Description;
                        Rec.Text1 := Consultation.Description;
                        Rec.Decimal1 := Consultation.GetTotalConsultation();
                        Rec.Code2 := PostedAvaylableBudgets."Avay Code";
                        Rec.Decimal2 := PostedAvaylableBudgets.GetAvayBudgetAmount();
                        Rec.Integer1 := ControlNo;
                        Rec.Insert;
                        EntryNo += 1;
                        ControlNo += 1;
                    until PostedAvaylableBudgets.Next = 0;

                ControlNo := 1;
                PostedPAQs.Reset;
                PostedPAQs.SetRange("Consultation Code", Consultation."Consultation code");
                PostedPAQs.SetRange(Reversed, false);
                if PostedPAQs.FindSet then
                    repeat
                        Rec.Reset();
                        Rec.SetRange(Code1, Consultation."Consultation Code");
                        Rec.SetRange(Integer1, ControlNo);
                        If Rec.FindFirst() then begin
                            Rec.Code3 := PostedPAQs."PAQ Code";
                            Rec.Decimal3 := PostedPAQs.GetPAQAmount();
                            Rec.Modify();
                        end else begin
                            Rec.Init();
                            Rec."Entry No." := EntryNo;
                            Rec.Boolean1 := Consultation.IsContract;
                            Rec.Code1 := Consultation."Consultation Code";
                            Rec.Text2 := DepartmentCode.Description;
                            Rec.Text1 := Consultation.Description;
                            Rec.Decimal1 := Consultation.GetTotalConsultation();
                            Rec.Code3 := PostedPAQs."PAQ Code";
                            Rec.Decimal3 := PostedPAQs.GetPAQAmount();
                            Rec.Integer1 := ControlNo;
                            Rec.Insert;
                        end;
                        EntryNo += 1;
                        ControlNo += 1;
                    until PostedPAQs.Next = 0;

                ControlNo := 1;
                Orders.Reset;
                Orders.SetRange("Consultation Code", Consultation."Consultation code");
                Orders.SetRange("Document Type", Orders."Document Type"::Order);
                if Orders.FindSet then
                    repeat
                        Rec.Reset();
                        Rec.SetRange(Code1, Consultation."Consultation Code");
                        Rec.SetRange(Integer1, ControlNo);
                        If Rec.FindFirst() then begin
                            Rec.Code4 := Orders."No.";
                            Rec.Decimal4 := Orders.GetPurchHeaderAmount();
                            Rec.Modify();
                        end else begin
                            Rec.Init();
                            Rec."Entry No." := EntryNo;
                            Rec.Boolean1 := Consultation.IsContract;
                            Rec.Code1 := Consultation."Consultation Code";
                            Rec.Text2 := DepartmentCode.Description;
                            Rec.Text1 := Consultation.Description;
                            Rec.Decimal1 := Consultation.GetTotalConsultation();
                            Rec.Code4 := Orders."No.";
                            Rec.Decimal4 := Orders.GetPurchHeaderAmount();
                            Rec.Integer1 := ControlNo;
                            Rec.Insert;
                        end;
                        EntryNo += 1;
                        ControlNo += 1;
                    until Orders.Next = 0;

                ControlNo := 1;
                PurchRcpts.Reset;
                PurchRcpts.SetRange("Consultation Code", Consultation."Consultation code");
                if PurchRcpts.FindSet then
                    repeat
                        Rec.Reset();
                        Rec.SetRange(Code1, Consultation."Consultation Code");
                        Rec.SetRange(Integer1, ControlNo);
                        If Rec.FindFirst() then begin
                            Rec.Code5 := PurchRcpts."No.";
                            Rec.Modify();
                        end else begin
                            Rec.Init();
                            Rec."Entry No." := EntryNo;
                            Rec.Boolean1 := Consultation.IsContract;
                            Rec.Code1 := Consultation."Consultation Code";
                            Rec.Text2 := DepartmentCode.Description;
                            Rec.Text1 := Consultation.Description;
                            Rec.Decimal1 := Consultation.GetTotalConsultation();
                            Rec.Code5 := PurchRcpts."No.";
                            Rec.Integer1 := ControlNo;
                            Rec.Insert;
                        end;
                        EntryNo += 1;
                        ControlNo += 1;
                    until PurchRcpts.Next = 0;

                ControlNo := 1;
                Invoices.Reset;
                Invoices.SetRange("Consultation Code", Consultation."Consultation Code");
                if Invoices.FindSet then
                    repeat
                        Rec.Reset();
                        Rec.SetRange(Code1, Consultation."Consultation Code");
                        Rec.SetRange(Integer1, ControlNo);
                        If Rec.FindFirst() then begin
                            Rec.Code6 := Invoices."No.";
                            Rec.Decimal6 := Invoices.GetPurchInvHeaderAmount();
                            Rec.Modify();
                        end else begin
                            Rec.Init();
                            Rec."Entry No." := EntryNo;
                            Rec.Boolean1 := Consultation.IsContract;
                            Rec.Code1 := Consultation."Consultation Code";
                            Rec.Text2 := DepartmentCode.Description;
                            Rec.Text1 := Consultation.Description;
                            Rec.Decimal1 := Consultation.GetTotalConsultation();
                            Rec.Code6 := Invoices."No.";
                            Rec.Decimal6 := Invoices.GetPurchInvHeaderAmount();
                            Rec.Integer1 := ControlNo;
                            Rec.Insert;
                        end;
                        EntryNo += 1;
                        ControlNo += 1;
                    until Invoices.Next = 0;
            until Consultation.Next = 0;

        Window.Close;

        TempConsultation.Reset;
        if TempConsultation.FindSet then
            repeat
                Clear(AvayCode);
                Clear(PAQCode);
                Clear(OrderNo);
                Clear(PurchRcptNo);
                Clear(InvoiceNo);
                Rec.Reset();
                Rec.SetRange(Code1, TempConsultation."Consultation Code");
                Rec.SetRange(Integer1, 1);
                If Rec.FindFirst() then begin
                    AvayCode := Rec.Code2;
                    PAQCode := Rec.Code3;
                    OrderNo := Rec.Code4;
                    PurchRcptNo := Rec.Code5;
                    InvoiceNo := Rec.Code6;
                    AvaylableAmount := Rec.Decimal2;
                    PAQAmount := Rec.Decimal3;
                    OrderAmount := Rec.Decimal4;
                    InvoiceAmount := Rec.Decimal6;
                    Rec.Reset();
                    Rec.SetRange(Code1, TempConsultation."Consultation code");
                    Rec.SetFilter(Integer1, '<>1');
                    if Rec.FindSet then
                        repeat
                            if (Rec.Code2 = '') and (AvayCode <> '') then begin
                                Rec.Code2 := AvayCode;
                                Rec.Decimal2 := AvaylableAmount;
                            end;
                            if (Rec.Code3 = '') and (PAQCode <> '') then begin
                                Rec.Code3 := PAQCode;
                                Rec.Decimal3 := PAQAmount;
                            end;
                            if (Rec.Code4 = '') and (OrderNo <> '') then begin
                                Rec.Code4 := OrderNo;
                                Rec.Decimal4 := OrderAmount;
                            end;
                            if (Rec.Code5 = '') and (PurchRcptNo <> '') then
                                Rec.Code5 := PurchRcptNo;
                            if (Rec.Code6 = '') and (InvoiceNo <> '') then begin
                                Rec.Code6 := InvoiceNo;
                                Rec.Decimal6 := InvoiceAmount;
                            end;
                            Rec.Modify();
                        until Rec.Next = 0;
                end;
            until TempConsultation.Next = 0;
        Rec.Reset;
        if Rec.FindFirst() then;
    end;
}

