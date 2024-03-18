codeunit 50003 PostPreviewEvents
{
    SingleInstance = true;
    EventSubscriberInstance = Manual;

    var
        TempPurchaseDeferments: Record "Purch. Deferments Entry" temporary;
        PostingPreviewEventHandler: Codeunit "Posting Preview Event Handler";
        Developments: Codeunit Developments;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePostPurchaseDoc', '', false, false)]
    local procedure DeferementsOnBeforePostPurchaseDoc(var PurchaseHeader: Record "Purchase Header"; PreviewMode: Boolean; CommitIsSupressed: Boolean; var HideProgressWindow: Boolean; var ItemJnlPostLine: Codeunit "Item Jnl.-Post Line"; var IsHandled: Boolean)
    begin
        Clear(TempPurchaseDeferments);
        TempPurchaseDeferments.DeleteAll();
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Posting Preview Event Handler", 'OnGetEntries', '', false, false)]
    local procedure DeferementsOnGetEntries(TableNo: Integer; var RecRef: RecordRef)
    begin
        case TableNo of
            Database::"Purch. Deferments Entry":
                RecRef.GetTable(TempPurchaseDeferments);
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Posting Preview Event Handler", 'OnAfterShowEntries', '', false, false)]
    local procedure DeferementsOnAfterShowEntries(TableNo: Integer)
    begin
        case TableNo of
            Database::"Purch. Deferments Entry":
                Page.Run(Page::"Purchase Deferements", TempPurchaseDeferments);
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Posting Preview Event Handler", 'OnAfterFillDocumentEntry', '', false, false)]
    local procedure DeferementsOnAfterFillDocumentEntry(var DocumentEntry: Record "Document Entry")
    begin
        PostingPreviewEventHandler.InsertDocumentEntry(TempPurchaseDeferments, DocumentEntry);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Purch. Deferments Entry", 'OnAfterInsertEvent', '', false, false)]
    local procedure DeferementsOnInsertPurchaseDeferments(var Rec: Record "Purch. Deferments Entry"; RunTrigger: Boolean)
    begin
        if Rec.IsTemporary() then
            exit;

        PostingPreviewEventHandler.PreventCommit();
        TempPurchaseDeferments := Rec;
        TempPurchaseDeferments."Document No." := '***';
        TempPurchaseDeferments.Insert();
    end;

}