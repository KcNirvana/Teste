codeunit 57004 "Approval Management"
{
    var

    procedure CopyApprovalEntry(TableId: Integer; DocType: Enum "Approval Entry Document Type"; DocCode: Code[20]; NewTableId: Integer; NewDocCode: Code[20])
    var
        AprovalEntry: Record "Aproval Entry";
        NewAprovalEntry: Record "Aproval Entry";
    begin
        AprovalEntry.Reset();
        AprovalEntry.SetRange("Table ID", TableId);
        AprovalEntry.SetRange("Document Type", DocType);
        AprovalEntry.SetRange("Document No.", DocCode);
        if AprovalEntry.FindFirst() then
            repeat
                NewAprovalEntry.Reset();
                NewAprovalEntry.Init();
                NewAprovalEntry.TransferFields(AprovalEntry);
                NewAprovalEntry.Validate("Original Doc. Code", AprovalEntry."Document No.");
                NewAprovalEntry.Validate("Table ID", NewTableId);
                NewAprovalEntry.Validate("Document No.", NewDocCode);
                NewAprovalEntry.Insert(true);
            until AprovalEntry.Next = 0;
    end;

    procedure InsertApprovalRequest(DocumentType: Enum "Approval Entry Document Type"; TempRecordID: RecordId; TempDocCode: Code[20]; TempSectionCode: Code[20]; TempAmount: Decimal; TempDate: Date; SourceCode: code[10])
    var
        ApprovalEntry: Record "Aproval Entry";
        DocumentsApprovalSetup: Record "Documents Approval Setup";
        Text001: Label 'There is no approval setup for document type %1 with amount %2 on date %3.';
    begin
        if not HasApprovalSetup(DocumentType, TempDate, TempSectionCode, SourceCode, TempAmount) then
            Error(Text001, DocumentType, TempAmount, TempDate);

        DocumentsApprovalSetup.Reset();
        DocumentsApprovalSetup.SetRange("Document Type", DocumentType);
        DocumentsApprovalSetup.SetRange("Source Code", SourceCode);
        DocumentsApprovalSetup.SetFilter("Start Date", '<=%1', TempDate);
        DocumentsApprovalSetup.SetFilter("End Date", '>=%1', TempDate);
        DocumentsApprovalSetup.SetFilter("Inital Amount", '<=%1', TempAmount);
        DocumentsApprovalSetup.SetFilter("End Amount", '>=%1', TempAmount);
        DocumentsApprovalSetup.SetFilter("Section Code", '%1|%2', '', TempSectionCode);
        if DocumentsApprovalSetup.FindSet() then
            repeat
                Clear(ApprovalEntry);
                ApprovalEntry.Init();
                case DocumentsApprovalSetup."Document Type" of
                    "Approval Entry Document Type"::Requisition:
                        ApprovalEntry."Table ID" := DATABASE::Requisition;
                    "Approval Entry Document Type"::"Avaylable Budget":
                        ApprovalEntry."Table ID" := DATABASE::"Avaylable Budget";
                    "Approval Entry Document Type"::Adjudication:
                        ApprovalEntry."Table ID" := DATABASE::PAQ;
                    "Approval Entry Document Type"::Invoice:
                        ApprovalEntry."Table ID" := DATABASE::"Purch. Inv. Header";
                end;
                ApprovalEntry."Document Type" := DocumentType;
                ApprovalEntry."Document No." := TempDocCode;
                ApprovalEntry."Sequence No." := DocumentsApprovalSetup."Approval Level";
                ApprovalEntry."Status Description" := DocumentsApprovalSetup."Approval Level Description";
                ApprovalEntry."Sender ID" := UserId;
                ApprovalEntry."Record ID to Approve" := TempRecordID;
                ApprovalEntry.Validate("Source Code", SourceCode);
                if DocumentsApprovalSetup."Approver Type" = DocumentsApprovalSetup."Approver Type"::Charge then
                    ApprovalEntry."Approver Type" := ApprovalEntry."Approver Type"::Charge
                else
                    ApprovalEntry."Approver Type" := ApprovalEntry."Approver Type"::User;
                ApprovalEntry."Approver ID" := DocumentsApprovalSetup."Approver ID";
                ApprovalEntry.Status := ApprovalEntry.Status::Open;
                ApprovalEntry."Date-Time Sent for Approval" := CREATEDATETIME(TODAY, TIME);
                ApprovalEntry.Amount := TempAmount;
                ApprovalEntry."Amount (LCY)" := TempAmount;
                ApprovalEntry.Validate("Section Code", TempSectionCode);
                GetEmployee(ApprovalEntry);
                ApprovalEntry.Insert(true);
            until DocumentsApprovalSetup.Next = 0;
    end;

    procedure FinishApprovalEntry(RecRef: RecordRef; var DocReleased: Boolean)
    var
        IsOpenStatusSet: Boolean;
        ApprovalEntry: Record "Aproval Entry";
    begin
        DocReleased := false;
        with ApprovalEntry do begin
            Clear(IsOpenStatusSet);
            SetRange("Table ID", RecRef.Number);
            SetRange("Record ID to Approve", RecRef.RecordId);
            SetRange(Status, Status::Open);
            if FindSet(true, false) then
                repeat
                    if ApprovalEntry."Approver Type" = ApprovalEntry."Approver Type"::User then begin
                        if "Sender ID" = "Approver ID" then begin
                            Status := Status::Approved;
                            Modify;
                        end else begin
                            if not IsOpenStatusSet then begin
                                Status := Status::Open;
                                Modify;
                                IsOpenStatusSet := true;
                            end;
                        end;
                    end else begin
                        if GetApprover(UpperCase("Sender ID"), DT2Date(ApprovalEntry."Date-Time Sent for Approval"),
                        ApprovalEntry."Approver ID") = "Approver ID" then begin
                            Status := Status::Approved;
                            Modify;
                        end else begin
                            if not IsOpenStatusSet then begin
                                Status := Status::Open;
                                Modify;
                                IsOpenStatusSet := true;
                            end;
                        end;
                    end;
                until Next = 0;

            if not IsOpenStatusSet then begin
                SetRange(Status);
                FindLast;
                DocReleased := ApproveDocument(ApprovalEntry);
            end;
        end;
    end;

    procedure GetEmployee(var ApprovalEntry: Record "Aproval Entry")
    var
        Requisition: Record Requisition;
        AvaylableLines: Record "Avaylable Budget Line";
        PAQLines: Record "PAQ Lines";
        PurchInvLines: Record "Purch. Inv. Line";
    begin
        case ApprovalEntry."Document Type" of
            "Approval Entry Document Type"::Requisition:
                begin
                    Requisition.Get(ApprovalEntry."Document No.");
                end;
            "Approval Entry Document Type"::"Avaylable Budget":
                begin
                    AvaylableLines.Reset;
                    AvaylableLines.SetRange("avay code", ApprovalEntry."Document No.");
                    AvaylableLines.SetFilter("Requisition Code", '<>%1', '');
                    if AvaylableLines.FindFirst then
                        Requisition.Get(AvaylableLines."Requisition Code");
                end;
            "Approval Entry Document Type"::Adjudication:
                begin
                    PAQLines.Reset;
                    PAQLines.SetRange("Paq code", ApprovalEntry."Document No.");
                    PAQLines.SetFilter("Requisition Code", '<>%1', '');
                    if PAQLines.FindFirst then
                        Requisition.Get(PAQLines."Requisition Code");
                end;
        end;
        ApprovalEntry."Req. Employee" := Requisition."Requisition Employee";
        ApprovalEntry."Req. Name" := Requisition."Employee Name";
    end;

    procedure HasApprovalSetup(DocumentType: enum "Approval Entry Document Type"; TempDate: Date;
                                                 TempSectionCode: Code[20]; SourceCode: Code[10];
                                                 TempAmount: Decimal): Boolean
    var
        DocumentsApprovalSetup: Record "Documents Approval Setup";
    begin
        DocumentsApprovalSetup.Reset();
        DocumentsApprovalSetup.SetRange("Document Type", DocumentType);
        DocumentsApprovalSetup.SetRange("Source Code", SourceCode);
        DocumentsApprovalSetup.SetFilter("Start Date", '<%1', TempDate);
        DocumentsApprovalSetup.SetFilter("End Date", '>%1', TempDate);
        DocumentsApprovalSetup.SetFilter("Section Code", '%1|%2', '', TempSectionCode);
        DocumentsApprovalSetup.SetFilter("Inital Amount", '<=%1', TempAmount);
        DocumentsApprovalSetup.SetFilter("End Amount", '>=%1', TempAmount);
        DocumentsApprovalSetup.SetFilter("Approver ID", '<>%1', '');
        exit(not DocumentsApprovalSetup.IsEmpty);
    end;

    procedure GetApprover(TempUser: Code[50]; TempDate: Date; TempCharge: Code[20]): Code[20]
    var
        UserApprovalSetup: Record "User Approval Setup";
    begin
        UserApprovalSetup.Reset();
        UserApprovalSetup.SetRange("User ID", TempUser);
        UserApprovalSetup.SetFilter("Start Date", '<%1', TempDate);
        UserApprovalSetup.SetFilter("End date", '>%1', TempDate);
        UserApprovalSetup.SetRange(Charge, TempCharge);
        if UserApprovalSetup.FindFirst() then
            exit(UserApprovalSetup.Charge);
    end;

    procedure CanApprove(ApprovalEntry: Record "Aproval Entry"): Boolean
    begin
        case ApprovalEntry."Approver Type" of
            "Approver Type"::User:
                if ApprovalEntry."Approver ID" <> UserId then
                    exit(false);
            "Approver Type"::Charge:
                if ApprovalEntry."Approver ID" <> GetApprover(UserId, DT2Date(ApprovalEntry."Date-Time Sent for Approval"), ApprovalEntry."Approver ID") then
                    exit(false);
        end;
        exit(true);
    end;

    procedure OpenApprovals(RecordIDInput: RecordID; TableId: Integer; DocumentType: Enum "Approval Entry Document Type"; DocumentNo: Code[20])
    var
        ApprovalEntry: Record "Aproval Entry";
        ApprovalEntries: Page "Approval Entry";
    begin

        if DocumentNo <> '' then begin
            ApprovalEntry.SetRange("Record ID to Approve", RecordIDInput);
            if not ApprovalEntry.IsEmpty() then begin
                ApprovalEntries.Setfilters(RecordIDInput);
                ApprovalEntries.Run();
            end else begin
                if ApprovalEntry.IsEmpty() then begin
                    ApprovalEntries.SetRecordFilters(TableId, DocumentType, DocumentNo);
                    ApprovalEntries.Run();
                    exit;
                end;
                ApprovalEntries.Setfilters(RecordIDInput);
                ApprovalEntries.Run();
            end
        end else
            ApprovalEntries.Run();
    end;

    procedure FindAndDeleteApprovalForRecord(RecID: RecordID)
    var
        ApprovalEntry: Record "Aproval Entry";
    begin
        ApprovalEntry.SetRange("Table ID", RecID.TableNo);
        ApprovalEntry.SetRange("Record ID to Approve", RecID);
        ApprovalEntry.DeleteAll(true);
    end;

    procedure CanCancelApprovalForRecord(RecID: RecordID) Result: Boolean
    var
        ApprovalEntry: Record "Aproval Entry";
    begin
        ApprovalEntry.SetRange("Table ID", RecID.TableNo);
        ApprovalEntry.SetRange("Record ID to Approve", RecID);
        ApprovalEntry.SetFilter(Status, '%1|%2', ApprovalEntry.Status::Created, ApprovalEntry.Status::Open);
        ApprovalEntry.SetRange("Sender ID", UserId);

        Result := ApprovalEntry.FindFirst();
    end;

    procedure HasOpenApprovalEntriesForCurrentUser(RecordID: RecordID): Boolean
    var
        ApprovalEntry: Record "Aproval Entry";
    begin
        ApprovalEntry.SetRange("Table ID", RecordID.TableNo);
        ApprovalEntry.SetRange("Record ID to Approve", RecordID);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        if not ApprovalEntry.FindFirst() then
            exit(false);

        case ApprovalEntry."Approver Type" of
            "Approver Type"::User:
                if ApprovalEntry."Approver ID" <> UserId then
                    exit(false);
            "Approver Type"::Charge:
                if ApprovalEntry."Approver ID" <> GetApprover(UserId, DT2Date(ApprovalEntry."Date-Time Sent for Approval"), ApprovalEntry."Approver ID") then
                    exit(false);
        end;
        exit(true);
    end;

    procedure HasOpenApprovalEntries(RecordID: RecordID) Result: Boolean
    var
        ApprovalEntry: Record "Aproval Entry";
    begin

        ApprovalEntry.SetRange("Table ID", RecordID.TableNo);
        ApprovalEntry.SetRange("Record ID to Approve", RecordID);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        if ApprovalEntry.IsEmpty() then
            exit(false);
        exit(not ApprovalEntry.IsEmpty);
    end;

    procedure ApproveDocument(ApprovalEntry: Record "Aproval Entry"): Boolean
    var
        SourceCodeSetup: Record "Source Code Setup";
        Requisition: Record Requisition;
        AvaylableBudget: Record "Avaylable Budget";
        PAQ: Record PAQ;
        NextApprovalEntry: Record "Aproval Entry";
        CduAvay: Codeunit AvaylableBudget;
        CduPAQ: Codeunit PAQ;
        Text001: Label 'User %1 dont have permission to approve %2';
    begin
        SourceCodeSetup.Get();
        case ApprovalEntry."Approver Type" of
            "Approver Type"::User:
                begin
                    if not ApprovalEntry."System-Approved Entry" then
                        if ApprovalEntry."Approver ID" <> UserId then
                            Error(Text001, UserId, ApprovalEntry."Document Type");

                    ApprovalEntry.Validate(Status, ApprovalEntry.Status::Approved);
                    ApprovalEntry.Modify(true);

                    NextApprovalEntry.SetCurrentKey("Table ID", "Document Type", "Document No.");
                    NextApprovalEntry.SetRange("Table ID", ApprovalEntry."Table ID");
                    NextApprovalEntry.SetRange("Document Type", ApprovalEntry."Document Type");
                    NextApprovalEntry.SetRange("Document No.", ApprovalEntry."Document No.");
                    NextApprovalEntry.SetFilter(Status, '%1|%2', NextApprovalEntry.Status::Created, NextApprovalEntry.Status::Open);
                    if NextApprovalEntry.FindFirst() then begin
                        if NextApprovalEntry.Status = NextApprovalEntry.Status::Open then
                            exit(false)
                        else begin
                            NextApprovalEntry.Status := NextApprovalEntry.Status::Open;
                            NextApprovalEntry."Date-Time Sent for Approval" := CreateDateTime(Today, Time);
                            NextApprovalEntry."Last Date-Time Modified" := CreateDateTime(Today, Time);
                            NextApprovalEntry."Last Modified By User ID" := UserId;
                            NextApprovalEntry.Modify;
                            exit(false);
                        end;
                    end else begin
                        case ApprovalEntry."Document Type" of
                            "Approval Entry Document Type"::Requisition:
                                begin
                                    Requisition.Get(ApprovalEntry."Document No.");
                                    exit(true);
                                end;
                            "Approval Entry Document Type"::"Avaylable Budget":
                                begin
                                    AvaylableBudget.Get(ApprovalEntry."Document No.");
                                    exit(true);
                                end;
                            "Approval Entry Document Type"::Adjudication:
                                begin
                                    PAQ.Get(ApprovalEntry."Document No.");
                                    exit(true);
                                end;
                        end;
                    end;
                end;

            ApprovalEntry."Approver Type"::Charge:
                begin
                    if not ApprovalEntry."System-Approved Entry" then begin
                        if ApprovalEntry."Approver ID" <> GetApprover(UserId, DT2Date(ApprovalEntry."Date-Time Sent for Approval"), ApprovalEntry."Approver ID") then
                            Error(Text001, UserId, ApprovalEntry."Document Type");

                        ApprovalEntry.Validate(Status, ApprovalEntry.Status::Approved);
                        ApprovalEntry.Modify(true);
                    end;

                    NextApprovalEntry.SetCurrentKey("Table ID", "Document Type", "Document No.");
                    NextApprovalEntry.SetRange("Table ID", ApprovalEntry."Table ID");
                    NextApprovalEntry.SetRange("Document Type", ApprovalEntry."Document Type");
                    NextApprovalEntry.SetRange("Document No.", ApprovalEntry."Document No.");
                    NextApprovalEntry.SetFilter(Status, '%1|%2', NextApprovalEntry.Status::Created, NextApprovalEntry.Status::Open);
                    if NextApprovalEntry.FindFirst() then begin
                        if NextApprovalEntry.Status = NextApprovalEntry.Status::Open then
                            exit(false)
                        else begin
                            NextApprovalEntry.Status := NextApprovalEntry.Status::Open;
                            NextApprovalEntry."Date-Time Sent for Approval" := CreateDateTime(Today, Time);
                            NextApprovalEntry."Last Date-Time Modified" := CreateDateTime(Today, Time);
                            NextApprovalEntry."Last Modified By User ID" := USERID;
                            NextApprovalEntry.Modify;
                            exit(false);
                        end;
                    end else begin
                        case ApprovalEntry."Document Type" of
                            "Approval Entry Document Type"::Requisition:
                                begin
                                    Requisition.Get(ApprovalEntry."Document No.");
                                    exit(true);
                                end;
                            "Approval Entry Document Type"::"Avaylable Budget":
                                begin
                                    AvaylableBudget.Get(ApprovalEntry."Document No.");
                                    exit(true);
                                end;
                            "Approval Entry Document Type"::Adjudication:
                                begin
                                    PAQ.Get(ApprovalEntry."Document No.");
                                    exit(true);
                                end;
                        end;
                    end;
                end;
        end;
    end;

    procedure RejectDocument(ApprovalEntry: Record "Aproval Entry"): Boolean
    var
        SourceCodeSetup: Record "Source Code Setup";
        Requisition: Record Requisition;
        AvaylableBudget: Record "Avaylable Budget";
        PAQ: Record PAQ;
        NextApprovalEntry: Record "Aproval Entry";
        CduAvay: Codeunit AvaylableBudget;
        CduPAQ: Codeunit PAQ;
        NeedApproval: Boolean;
        Text001: Label 'User %1 dont have permission to approve %2';
    begin
        case ApprovalEntry."Approver Type" of
            "Approver Type"::User:
                begin
                    if not ApprovalEntry."System-Approved Entry" then
                        if ApprovalEntry."Approver ID" <> UserId then
                            Error(Text001, UserId, ApprovalEntry."Document Type");

                    ApprovalEntry.Validate(Status, ApprovalEntry.Status::Rejected);
                    ApprovalEntry.Modify(true);
                    NextApprovalEntry.SetCurrentKey("Table ID", "Document Type", "Document No.");
                    NextApprovalEntry.SetRange("Table ID", ApprovalEntry."Table ID");
                    NextApprovalEntry.SetRange("Document Type", ApprovalEntry."Document Type");
                    NextApprovalEntry.SetRange("Document No.", ApprovalEntry."Document No.");
                    NextApprovalEntry.SetFilter(Status, '%1|%2', NextApprovalEntry.Status::Created, NextApprovalEntry.Status::Open);
                    if NextApprovalEntry.Find('-') then begin
                        if NextApprovalEntry.Status = NextApprovalEntry.Status::Open then
                            exit(false)
                        else begin
                            NextApprovalEntry.Status := NextApprovalEntry.Status::Open;
                            NextApprovalEntry."Date-Time Sent for Approval" := CreateDateTime(Today, Time);
                            NextApprovalEntry."Last Date-Time Modified" := CreateDateTime(Today, Time);
                            NextApprovalEntry."Last Modified By User ID" := UserId;
                            NextApprovalEntry.Modify;
                            exit(false);
                        end;
                    end else begin
                        case ApprovalEntry."Document Type" of
                            "Approval Entry Document Type"::Requisition:
                                begin
                                    Requisition.Get(ApprovalEntry."Document No.");
                                    exit(true);
                                end;
                            "Approval Entry Document Type"::"Avaylable Budget":
                                begin
                                    AvaylableBudget.Get(ApprovalEntry."Document No.");
                                    exit(true);
                                end;
                            "Approval Entry Document Type"::Adjudication:
                                begin
                                    PAQ.Get(ApprovalEntry."Document No.");
                                    exit(true);
                                end;
                        end;
                    end;
                end;
            "Approver Type"::Charge:
                begin
                    Clear(NeedApproval);
                    case ApprovalEntry."Document Type" of
                        "Approval Entry Document Type"::"Avaylable Budget":
                            begin
                                AvaylableBudget.Get(ApprovalEntry."Document No.");
                                NeedApproval := AvaylableBudget.Type <> AvaylableBudget.Type::Decrease;
                            end;
                        "Approval Entry Document Type"::Adjudication:
                            begin
                                PAQ.Get(ApprovalEntry."Document No.");
                                NeedApproval := PAQ.Type <> PAQ.Type::Decrease;
                            end;
                    end;
                    if NeedApproval then
                        if not ApprovalEntry."System-Approved Entry" then
                            if ApprovalEntry."Approver ID" <> GetApprover(UserId, DT2Date(ApprovalEntry."Date-Time Sent for Approval"),
                                                                             ApprovalEntry."Approver ID") then
                                Error(Text001, UserId, ApprovalEntry."Document Type");
                    ApprovalEntry.Validate(Status, ApprovalEntry.Status::Rejected);
                    ApprovalEntry.Modify(true);
                    NextApprovalEntry.SetCurrentKey("Table ID", "Document Type", "Document No.");
                    NextApprovalEntry.SetRange("Table ID", ApprovalEntry."Table ID");
                    NextApprovalEntry.SetRange("Document Type", ApprovalEntry."Document Type");
                    NextApprovalEntry.SetRange("Document No.", ApprovalEntry."Document No.");
                    NextApprovalEntry.SetFilter(Status, '%1|%2', NextApprovalEntry.Status::Created, NextApprovalEntry.Status::Open);
                    if NextApprovalEntry.Find('-') then begin
                        if NextApprovalEntry.Status = NextApprovalEntry.Status::Open then
                            exit(false)
                        else begin
                            NextApprovalEntry.Status := NextApprovalEntry.Status::Open;
                            NextApprovalEntry."Date-Time Sent for Approval" := CreateDateTime(Today, Time);
                            NextApprovalEntry."Last Date-Time Modified" := CreateDateTime(Today, Time);
                            NextApprovalEntry."Last Modified By User ID" := UserId;
                            NextApprovalEntry.Modify;
                            exit(false);
                        end;
                    end else begin
                        case ApprovalEntry."Document Type" of
                            "Approval Entry Document Type"::Requisition:
                                begin
                                    Requisition.Get(ApprovalEntry."Document No.");
                                    exit(true);
                                end;
                            "Approval Entry Document Type"::"Avaylable Budget":
                                begin
                                    AvaylableBudget.Get(ApprovalEntry."Document No.");
                                    exit(true);
                                end;
                            "Approval Entry Document Type"::Adjudication:
                                begin
                                    PAQ.Get(ApprovalEntry."Document No.");
                                    exit(true);
                                end;
                        end;
                    end;

                end;
        end;

    end;

    procedure LookupDocument(ApprovalEntry: Record "Aproval Entry")
    var
        Requisition: Record Requisition;
        AvaylableBudget: Record "Avaylable Budget";
        PAQ: Record PAQ;
        CduReq: Codeunit Requisition;
        CduAvay: Codeunit AvaylableBudget;
        CduPAQ: Codeunit PAQ;
    begin
        case ApprovalEntry."Document Type" of
            "Approval Entry Document Type"::Requisition:
                begin
                    Requisition.Get(ApprovalEntry."Document No.");
                    CduReq.LookupRequisition(Requisition);
                end;
            "Approval Entry Document Type"::"Avaylable Budget":
                begin
                    AvaylableBudget.Get(ApprovalEntry."Document No.");
                    CduAvay.LookupAvaylableBudget(AvaylableBudget);
                end;

            "Approval Entry Document Type"::Adjudication:
                begin
                    PAQ.Get(ApprovalEntry."Document No.");
                    CduPAQ.LookupPAQ(PAQ);
                end;
        end;
    end;

}