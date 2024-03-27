codeunit 57001 Requisition
{

    var
        DimMgt: Codeunit DimensionManagement;
        FileMgt: Codeunit "File Management";
        ApprovalsMgt: Codeunit "Approval Management";
        TotalsUpTodate: Boolean;
        RequisitionLineExist: Boolean;

    procedure CalcDotation(Requisition: Record Requisition)
    var
        CduBudget: Codeunit Budget;
    begin
        CduBudget.CalcDocumentsDotation("Budget Dotation Document Type"::Requisition, Requisition."Requisition Code");
    end;

    procedure ValidatePermissions(PermissionType: Enum "Requisition Permissions")
    var
        BudgetPermissions: Record "Budget Permissions";
        Requisition: Record Requisition;
        Text001: Label 'You dont have permission to %1 %2';
    begin
        BudgetPermissions.GET(USERID, BudgetPermissions.Type::User);
        case PermissionType of
            PermissionType::Create:
                If not BudgetPermissions."Create Requisition" then
                    Error(Text001, PermissionType, Requisition.TableCaption);
            PermissionType::Modify:
                If not BudgetPermissions."Modify Requisition" then
                    Error(Text001, PermissionType, Requisition.TableCaption);
            PermissionType::Delete:
                If not BudgetPermissions."Delete Requisition" then
                    Error(Text001, PermissionType, Requisition.TableCaption);
            PermissionType::View:
                If not BudgetPermissions."View Requisition" then
                    Error(Text001, PermissionType, Requisition.TableCaption);
            PermissionType::ReOpen:
                If not BudgetPermissions."Reopen Requisition" then
                    Error(Text001, PermissionType, Requisition.TableCaption)
        end;
    end;

    procedure CheckRequisitionApprovalPossible(Requisition: Record "Requisition"): Boolean
    begin
        CheckRequisitionHeader(Requisition);
        CheckRequisitionLines(Requisition);
        exit(true);
    end;

    procedure SendToApproval(pRequisition: Record Requisition): Boolean
    var
        BudgetConfig: Record "Budget Configuration";
        RequisitionLines: Record "Requisition Lines";
        ApprovalEntry: Record "Aproval Entry";
        Requisition: Record Requisition;
        CduBudget: Codeunit Budget;
        TotalAmount: Decimal;
        RecRef: RecordRef;
        DocIsReleased: Boolean;
        Text001: Label 'An approval request has been sent.';
        Text002: Label '%1 %2 has been approved.';
    begin
        CduBudget.CalcDocumentsDotation("Budget Dotation Document Type"::Requisition, pRequisition."Requisition Code");
        BudgetConfig.Get();
        Requisition.Get(pRequisition."Requisition Code");
        Clear(TotalAmount);
        TotalAmount := Requisition.GetTotalRequisition();

        ApprovalsMgt.InsertApprovalRequest("Approval Entry Document type"::Requisition, Requisition.RecordId, Requisition."Requisition Code",
                                            Requisition."Section Code", TotalAmount, Requisition."Requisition Date", Requisition."Source Code");

        Requisition.Status := Requisition.Status::"Pending Approval";
        Requisition.Modify();

        RecRef.Get(Requisition.RecordId);

        if (TotalAmount = 0) and BudgetConfig."Auto Approve Zero Value Req" then begin
            ApprovalEntry.Reset();
            ApprovalEntry.SetRange("Table ID", RecRef.Number);
            ApprovalEntry.SetRange("Record ID to Approve", RecRef.RecordId);
            ApprovalEntry.ModifyAll(Status, "Approval Entry Status"::Approved, true);
            DocIsReleased := true;
        end else
            ApprovalsMgt.FinishApprovalEntry(RecRef, DocIsReleased);

        If DocIsReleased then begin
            RequisitionLines.Reset;
            RequisitionLines.SetRange("Requisition Code", Requisition."Requisition Code");
            RequisitionLines.SetRange("No.", '');
            RequisitionLines.SetRange(Description, '');
            RequisitionLines.DeleteAll;

            Requisition.Validate(Status, "Requisition Status"::Released);
            Requisition.Modify();
            Message(Text002, Requisition.TableCaption, Requisition."Requisition Code");
        end else
            Message(Text001);
    end;

    procedure ApproveRequisition(Requisition: Record Requisition)
    var
        RequisitionLines: Record "Requisition Lines";
        ApprovalEntry: Record "Aproval Entry";
        ApprovalMgt: Codeunit "Approval Management";
        Text001: Label 'Requisition %1 approved with success.';
    begin
        if Requisition.Status = Requisition.Status::Released then
            exit;

        ApprovalEntry.Reset();
        ApprovalEntry.SetRange("Record ID to Approve", Requisition.RecordId);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        if ApprovalEntry.FindFirst() then
            If not ApprovalMgt.ApproveDocument(ApprovalEntry) then
                exit;

        RequisitionLines.Reset;
        RequisitionLines.SetRange("Requisition Code", Requisition."Requisition Code");
        RequisitionLines.SetRange("No.", '');
        RequisitionLines.SetRange(Description, '');
        RequisitionLines.DeleteAll;

        Requisition.Validate(Status, "Requisition Status"::Released);
        Requisition.Modify(true);
        Message(Text001, Requisition."Requisition Code");
    end;

    local procedure CheckRequisitionHeader(Requisition: Record "Requisition")
    var
        NothingToApproveErr: Label 'There is nothing to approve.';
        DimensionsEqualErr: Label 'The dimensions are not equal in every line.';
        CommentsMandatoryErr: Label 'Requisitions comments are mandatory.';
    begin
        if not (Requisition.Status in ["Requisition Status"::Open, "Requisition Status"::Reopened]) then
            Requisition.FieldError(Status);

        Requisition.TestField("Requisition Employee");

        if not ReqLinesExist(Requisition) then
            Error(NothingToApproveErr);

        If not ValidateRequisitionEqualDimensions(Requisition) then
            Error(DimensionsEqualErr);

        if not ValidateRequisitionComments(Requisition) then
            Error(CommentsMandatoryErr);
    end;

    local procedure CheckRequisitionLines(Requisition: Record "Requisition")
    var
        RequisitionLines: Record "Requisition Lines";
    begin
        RequisitionLines.Reset;
        RequisitionLines.SetRange("Requisition Code", Requisition."Requisition Code");
        RequisitionLines.SetFilter(Type, '<>%1', RequisitionLines.Type::" ");
        if RequisitionLines.FindSet then
            repeat
                RequisitionLines.TestField("No.");
                RequisitionLines.TestField("Requisition Quantity");
                ValidateReqDefaultDimensions(RequisitionLines);
                ValidateReqRequiredDim(RequisitionLines);
            until RequisitionLines.Next = 0;
    end;

    local procedure ReqLinesExist(Requisition: Record "Requisition"): Boolean
    var
        RequisitionLines: Record "Requisition Lines";
    begin
        RequisitionLines.Reset();
        RequisitionLines.SetRange("Requisition Code", Requisition."Requisition Code");
        exit(not RequisitionLines.IsEmpty());
    end;

    local procedure ValidateRequisitionEqualDimensions(var Requisition: Record "Requisition"): Boolean
    var
        BudgetConfig: Record "Budget Configuration";
        RequisitionLines: Record "Requisition Lines";
        DimSetEntry: Record "Dimension Set Entry";
        Dimension: array[4, 2] of Code[20];
        i: Integer;
        TempDimSetEntry: Record "Dimension Set Entry" temporary;
    begin
        Clear(i);
        BudgetConfig.Get;
        IF not BudgetConfig."Equal Dimensions By Document" then
            exit(true);
        if not ((BudgetConfig."Dim Validation 1" <> '') or (BudgetConfig."Dim Validation 2" <> '') or (BudgetConfig."Dim Validation 3" <> '') or (BudgetConfig."Dim Validation 4" <> '')) then
            exit(true);

        RequisitionLines.Reset();
        RequisitionLines.SetRange("Requisition Code", Requisition."Requisition Code");
        RequisitionLines.SetFilter(Amount, '<>%1', 0);
        if RequisitionLines.FindFirst then begin
            Clear(DimSetEntry);
            DimSetEntry.SetRange("Dimension Set ID", RequisitionLines."Dimension Set ID");
            if DimSetEntry.FindSet then
                repeat
                    i += 1;
                    if DimSetEntry."Dimension Code" in [BudgetConfig."Dim Validation 1", BudgetConfig."Dim Validation 2", BudgetConfig."Dim Validation 3", BudgetConfig."Dim Validation 4"] then begin
                        Dimension[i, 1] := DimSetEntry."Dimension Code";
                        Dimension[i, 2] := DimSetEntry."Dimension Value Code";
                    end;
                until DimSetEntry.Next = 0;
        end;

        RequisitionLines.Reset;
        RequisitionLines.SetRange("Requisition Code", Requisition."Requisition Code");
        RequisitionLines.SetFilter(Amount, '<>%1', 0);
        if RequisitionLines.FindSet then
            repeat
                for i := 1 to ArrayLen(Dimension, 1) do begin
                    if Dimension[i, 1] <> '' then begin
                        Clear(DimSetEntry);
                        DimSetEntry.SetRange("Dimension Set ID", RequisitionLines."Dimension Set ID");
                        DimSetEntry.SetRange("Dimension Code", Dimension[i, 1]);
                        if DimSetEntry.Findfirst then begin
                            if Dimension[i, 2] <> DimSetEntry."Dimension Value Code" then
                                exit(false)
                        end else
                            exit(false)
                    end;
                end;
            until RequisitionLines.Next = 0;

        TempDimSetEntry.DELETEALL;
        FOR i := 1 TO ARRAYLEN(Dimension, 1) DO BEGIN
            IF Dimension[i, 1] <> '' THEN BEGIN
                TempDimSetEntry.INIT;
                TempDimSetEntry.VALIDATE("Dimension Code", Dimension[i, 1]);
                TempDimSetEntry.VALIDATE("Dimension Value Code", Dimension[i, 2]);
                TempDimSetEntry.INSERT;
            END;
        END;
        Requisition."Dimension Set ID" := DimMgt.GetDimensionSetID(TempDimSetEntry);
        Requisition.MODIFY;

        exit(true);
    end;

    procedure ValidateRequisitionComments(Requisition: Record "Requisition"): Boolean
    var
        RequisitionLineComments: Record "Requisition Comments";
        BudgetConfig: Record "Budget Configuration";
    begin
        BudgetConfig.Get();
        if not BudgetConfig."Required Comments in Req" then
            exit(true);

        RequisitionLineComments.Reset();
        RequisitionLineComments.SetRange("Table ID", DATABASE::Requisition);
        RequisitionLineComments.SetRange(Code, Requisition."Requisition Code");
        exit(not RequisitionLineComments.IsEmpty);
    end;

    procedure ValidateReqRequiredDim(RequisitionLines: Record "Requisition Lines")
    var
        DimSetEntry: Record "Dimension Set Entry";
        BudgetConfig: Record "Budget Configuration";
        Requisition: Record "Requisition";
        Text001: Label 'The line %1 dont have mandatory dimension %2.';
    begin
        BudgetConfig.Get;
        If not BudgetConfig."Verify Req. Dim in Approval" then
            exit;

        BudgetConfig.TestField("Dim Code Required");

        DimSetEntry.Reset();
        DimSetEntry.SetRange("Dimension Set ID", RequisitionLines."Dimension Set ID");
        DimSetEntry.SetRange("Dimension Code", BudgetConfig."Dim Code Required");
        IF DimSetEntry.IsEmpty then
            Error(Text001, RequisitionLines."Line No.", BudgetConfig."Dim Code Required");
    end;

    local procedure ValidateReqDefaultDimensions(RequisitionLines: Record "Requisition Lines")
    var
        DimSetEntry: Record "Dimension Set Entry";
        BudgetConfig: Record "Budget Configuration";
        Requisition: Record "Requisition";
        Text001: Label 'The combination of dimensions used in %1 %2, line no. %3 is blocked. %4';
        Text002: Label 'The dimension value of dimension code %1 on line %2 of %3 %4 is mandatory.';
        Text003: Label 'The dimensions used in %1 %2, line no. %3 are invalid. %4.';
        TableID: array[10] of Integer;
        No: array[10] of Code[20];
        DimValue1: Code[20];
        DimValue2: Code[20];
        DimValue3: Code[20];
        DimValue4: Code[20];
    begin
        Clear(DimValue1);
        Clear(DimValue2);
        Clear(DimValue3);
        Clear(DimValue4);
        Clear(TableID);
        Clear(No);

        BudgetConfig.Get;
        Requisition.Get(RequisitionLines."Requisition Code");
        IF NOT DimMgt.CheckDimIDComb(RequisitionLines."Dimension Set ID") THEN
            ERROR(Text001, Requisition.TableCaption, Requisition."Requisition Code", RequisitionLines."Line No.", DimMgt.GetDimCombErr);

        DimSetEntry.Reset();
        DimSetEntry.SetRange("Dimension Set ID", RequisitionLines."Dimension Set ID");
        if DimSetEntry.FindSet then
            repeat
                if (DimSetEntry."Dimension Code" = BudgetConfig.dim1) and BudgetConfig.Sd1 then
                    DimValue1 := DimSetEntry."Dimension Value Code";
                if (DimSetEntry."Dimension Code" = BudgetConfig.dim2) and BudgetConfig.Sd2 then
                    DimValue2 := DimSetEntry."Dimension Value Code";
                if (DimSetEntry."Dimension Code" = BudgetConfig.dim3) and BudgetConfig.Sd3 then
                    DimValue3 := DimSetEntry."Dimension Value Code";
                if (DimSetEntry."Dimension Code" = BudgetConfig.dim4) and BudgetConfig.Sd4 then
                    DimValue4 := DimSetEntry."Dimension Value Code";
            until DimSetEntry.Next = 0;

        if BudgetConfig.Sd1 and (DimValue1 = '') then
            Error(Text002, BudgetConfig.dim1, RequisitionLines."Line No.", Requisition.TableCaption, Requisition."Requisition Code");
        if BudgetConfig.Sd2 and (DimValue2 = '') then
            Error(Text002, BudgetConfig.dim2, RequisitionLines."Line No.", Requisition.TableCaption, Requisition."Requisition Code");
        if BudgetConfig.Sd3 and (DimValue3 = '') then
            Error(Text002, BudgetConfig.dim3, RequisitionLines."Line No.", Requisition.TableCaption, Requisition."Requisition Code");
        if BudgetConfig.Sd4 and (DimValue4 = '') then
            Error(Text002, BudgetConfig.dim4, RequisitionLines."Line No.", Requisition.TableCaption, Requisition."Requisition Code");

        TableID[1] := DATABASE::"Requisition Lines";
        No[1] := Requisition."Requisition Code";

        if not DimMgt.CheckDimValuePosting(TableID, No, RequisitionLines."Dimension Set ID") then
            Error(Text003, Requisition.TableCaption, Requisition."Requisition Code", RequisitionLines."Line No.", DimMgt.GetDimValuePostingErr);

        case RequisitionLines.Type of
            "Documents Line Type"::Item:
                TableID[1] := DATABASE::Item;
            "Documents Line Type"::"Fixed Asset":
                TableID[1] := DATABASE::"Fixed Asset";
        end;
        No[1] := RequisitionLines."No.";
        if not DimMgt.CheckDimValuePosting(TableID, No, RequisitionLines."Dimension Set ID") then
            Error(Text003, Requisition.TableCaption, Requisition."Requisition Code", RequisitionLines."Line No.", DimMgt.GetDimValuePostingErr);

        if Requisition."Requisition Employee" <> '' then begin
            TableID[1] := DATABASE::Employee;
            No[1] := Requisition."Requisition Employee";
            if not DimMgt.CheckDimValuePosting(TableID, No, RequisitionLines."Dimension Set ID") then
                Error(Text003, Requisition.TableCaption, Requisition."Requisition Code", RequisitionLines."Line No.", DimMgt.GetDimValuePostingErr);
        end;
    end;

    procedure RequisitionTotalsNotUpToDate()
    begin
        TotalsUpToDate := false;
    end;

    procedure RequisitionCheckIfDocumentChanged(var RequisitionLine: Record "Requisition Lines"; var xRequisitionLine: Record "Requisition Lines")
    begin
        if (RequisitionLine."Requisition Code" <> xRequisitionLine."Requisition Code") or
           (RequisitionLine.Amount <> xRequisitionLine.Amount) or
           (RequisitionLine."Amount Including VAT" <> xRequisitionLine."Amount Including VAT") or
           (RequisitionLine."Cost Amount" <> xRequisitionLine."Cost Amount")
        then
            TotalsUpToDate := false;
    end;

    procedure GetTotalRequisition(var RequisitionLine: Record "Requisition Lines"; var TotalRequisitionHeader: Record "Requisition")
    begin
        if not RequisitionLineExist THEN
            RequisitionLineExist := not RequisitionLine.ISEMPTY;
        IF not RequisitionLineExist OR
           (TotalRequisitionHeader."Requisition Code" <> RequisitionLine."Requisition Code") then begin
            Clear(TotalRequisitionHeader);
            IF RequisitionLine."Requisition Code" <> '' then
                IF TotalRequisitionHeader.GET(RequisitionLine."Requisition Code") THEN;
        end;
    end;

    procedure CalculateRequisitionSubPageTotals(var TotalRequisitionHeader: Record "Requisition"; var TotalRequisitionLine: Record "Requisition Lines"; var VATAmount: Decimal)
    var
        RequisitionLine2: Record "Requisition Lines";
        TotalRequisitionLine2: Record "Requisition Lines";
    begin

        if TotalsUpToDate then
            exit;
        TotalsUpToDate := true;

        TotalRequisitionLine2.Copy(TotalRequisitionLine);
        TotalRequisitionLine2.Reset();
        TotalRequisitionLine2.SetRange("Requisition Code", TotalRequisitionHeader."Requisition Code");

        TotalRequisitionLine2.CalcSums(Amount, "Amount Including VAT", "Cost Amount");
        VATAmount := TotalRequisitionLine2."Amount Including VAT" - TotalRequisitionLine2.Amount;

        TotalRequisitionLine := TotalRequisitionLine2;
    end;

    procedure RequisitionDeltaUpdateTotals(var RequisitionLine: Record "Requisition Lines"; var xRequisitionLine: Record "Requisition Lines"; var TotalRequisitionLine: Record "Requisition Lines"; var VATAmount: Decimal)
    begin
        TotalRequisitionLine."Cost Amount" += RequisitionLine."Cost Amount" - xRequisitionLine."Cost Amount";
        TotalRequisitionLine."Amount Including VAT" += RequisitionLine."Amount Including VAT" - xRequisitionLine."Amount Including VAT";
        TotalRequisitionLine.Amount += RequisitionLine.Amount - xRequisitionLine.Amount;
        VATAmount := TotalRequisitionLine."Amount Including VAT" - TotalRequisitionLine.Amount;
    end;

    procedure LookupRequisition(Requisition: Record Requisition)
    begin
        Page.RunModal(Page::"Requisition Pending Card", Requisition, Requisition."Requisition Code");
    end;

    procedure OpenRequisitionApprovals(Requisition: Record Requisition)
    begin
        ApprovalsMgt.OpenApprovals(Requisition.RecordId, Database::Requisition, "Approval Entry Document Type"::Requisition, Requisition."Requisition Code");
    end;

    procedure RequisitionApprovals(Requisition: Record Requisition)
    begin
        ApprovalsMgt.OpenApprovals(Requisition.RecordId, Database::Requisition, "Approval Entry Document Type"::Requisition, Requisition."Requisition Code");
    end;

    procedure RejectRequisition(Requisition: Record Requisition)
    var
        ApprovalEntry: Record "Aproval Entry";
        ApprovalMgt: Codeunit "Approval Management";
        Text001: Label 'Requisition %1 rejected with success.';
    begin
        if Requisition.Status = Requisition.Status::Rejected then
            exit;

        ApprovalEntry.Reset();
        ApprovalEntry.SetRange("Record ID to Approve", Requisition.RecordId);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        if ApprovalEntry.FindFirst() then
            If not ApprovalMgt.RejectDocument(ApprovalEntry) then
                exit;

        Requisition.Validate(Status, "Requisition Status"::Released);
        Requisition.Modify(true);
        Message(Text001, Requisition."Requisition Code");
    end;

    procedure ReOpenRequisition(Requisition: Record Requisition)
    var
        RequisitionLines: Record "Requisition Lines";
        Text001: Label 'The requisition %1 is already associated to a consultation.';
        Text002: Label 'The requisition %1 was reopen.';
    begin
        ValidatePermissions("Requisition Permissions"::ReOpen);
        RequisitionLines.Reset();
        RequisitionLines.SetRange("Requisition Code", Requisition."Requisition Code");
        RequisitionLines.SetFilter("Consultation Code", '<>%1', '');
        if not RequisitionLines.IsEmpty then
            Error(Text001, Requisition."Requisition Code");

        Requisition.Status := "Requisition Status"::Reopened;
        Requisition.Modify();

        ApprovalsMgt.FindAndDeleteApprovalForRecord(Requisition.RecordId);
        Message(Text002, Requisition."Requisition Code");
    end;

    procedure CancelRequisitionApproval(Requisition: Record Requisition)
    var
        Text001: Label 'The approval request was canceled.';
    begin
        if ApprovalsMgt.CanCancelApprovalForRecord(Requisition.RecordId) then begin
            ApprovalsMgt.FindAndDeleteApprovalForRecord(Requisition.RecordId);

            Requisition.Status := "Requisition Status"::Open;
            Requisition.Modify();
            Message(Text001);
        end;
    end;
}

