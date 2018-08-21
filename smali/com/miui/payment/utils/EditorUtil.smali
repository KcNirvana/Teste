.class public Lcom/miui/payment/utils/EditorUtil;
.super Ljava/lang/Object;
.source "EditorUtil.java"


# static fields
.field public static final ACTION_RECORD_EDIT:Ljava/lang/String; = "paymentassistant.intent.action.edit_record"

.field private static final EXTRA_AMOUNT:Ljava/lang/String; = "key_amount"

.field private static final EXTRA_AMOUNT_UNIT:Ljava/lang/String; = "key_amount_unit"

.field private static final EXTRA_CATEGORY_CODE:Ljava/lang/String; = "key_category"

.field private static final EXTRA_COMMENT:Ljava/lang/String; = "key_comment"

.field public static final EXTRA_EDITOR_RECORD_BUNDLE:Ljava/lang/String; = "extra_editor_record_bundle"

.field private static final EXTRA_EDIT_TIME:Ljava/lang/String; = "key_time"

.field private static final EXTRA_ID:Ljava/lang/String; = "key_id"

.field private static final EXTRA_METHOD_CODE:Ljava/lang/String; = "key_method_code"

.field private static final EXTRA_METHOD_DESC:Ljava/lang/String; = "key_method_desc"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExtraFromItemModel(Lcom/miui/payment/data/TransactionItem;)Landroid/os/Bundle;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "key_id"

    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "key_amount"

    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getAmountEdit()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v1, "key_amount_unit"

    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "key_time"

    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getTransactionTimeEdit()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "key_method_code"

    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getMethodEditCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "key_method_desc"

    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getMethodDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "key_comment"

    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "key_category"

    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getCategoryEditCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static parseExtraForEdit(Landroid/os/Bundle;)Lcom/miui/payment/ui/edit/EditData;
    .locals 14

    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    const-string/jumbo v11, "key_id"

    const-wide/16 v12, -0x1

    invoke-virtual {p0, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string/jumbo v11, "key_amount"

    const-wide/16 v12, 0x0

    invoke-virtual {p0, v11, v12, v13}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string/jumbo v11, "key_amount_unit"

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v11, "key_time"

    const-wide/16 v12, 0x0

    invoke-virtual {p0, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v11, "key_method_code"

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v11, "key_method_desc"

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "key_category"

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "key_comment"

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/payment/ui/edit/EditData;

    invoke-direct {v5}, Lcom/miui/payment/ui/edit/EditData;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/miui/payment/ui/edit/EditData;->setRecordId(J)V

    invoke-virtual {v5, v0, v1}, Lcom/miui/payment/ui/edit/EditData;->setAmount(D)V

    invoke-virtual {v5, v6, v7}, Lcom/miui/payment/ui/edit/EditData;->setEditTime(J)V

    invoke-virtual {v5, v9}, Lcom/miui/payment/ui/edit/EditData;->setMethodCode(I)V

    invoke-virtual {v5, v10}, Lcom/miui/payment/ui/edit/EditData;->setMethodDesc(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/miui/payment/ui/edit/EditData;->setCategoryCode(I)V

    invoke-virtual {v5, v4}, Lcom/miui/payment/ui/edit/EditData;->setComment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startEditRecordActivtiy(Landroid/content/Context;Lcom/miui/payment/data/TransactionItem;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/payment/ui/edit/RecordEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "paymentassistant.intent.action.edit_record"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_editor_record_bundle"

    invoke-static {p1}, Lcom/miui/payment/utils/EditorUtil;->createExtraFromItemModel(Lcom/miui/payment/data/TransactionItem;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
