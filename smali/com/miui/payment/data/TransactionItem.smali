.class public Lcom/miui/payment/data/TransactionItem;
.super Ljava/lang/Object;
.source "TransactionItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/data/TransactionItem$Builder;
    }
.end annotation


# instance fields
.field private amount:D

.field private amountEdit:D

.field private category:I

.field private categoryEdit:I

.field private comment:Ljava/lang/String;

.field private createSource:I

.field private currencyCode:Ljava/lang/String;

.field private deleted:Z

.field private deletedTime:J

.field private id:J

.field private method:I

.field private methodDesc:Ljava/lang/String;

.field private methodEdit:I

.field private transactionId:Ljava/lang/String;

.field private transactionTime:J

.field private transactionTimeEdit:J

.field private transactionType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JDDLjava/lang/String;IIIILjava/lang/String;JJILjava/lang/String;Ljava/lang/String;IZJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/miui/payment/data/TransactionItem;->id:J

    iput-wide p3, p0, Lcom/miui/payment/data/TransactionItem;->amount:D

    iput-wide p5, p0, Lcom/miui/payment/data/TransactionItem;->amountEdit:D

    iput-object p7, p0, Lcom/miui/payment/data/TransactionItem;->currencyCode:Ljava/lang/String;

    iput p8, p0, Lcom/miui/payment/data/TransactionItem;->category:I

    iput p9, p0, Lcom/miui/payment/data/TransactionItem;->categoryEdit:I

    iput p10, p0, Lcom/miui/payment/data/TransactionItem;->method:I

    iput p11, p0, Lcom/miui/payment/data/TransactionItem;->methodEdit:I

    iput-object p12, p0, Lcom/miui/payment/data/TransactionItem;->methodDesc:Ljava/lang/String;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->transactionTime:J

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->transactionTimeEdit:J

    move/from16 v0, p17

    iput v0, p0, Lcom/miui/payment/data/TransactionItem;->transactionType:I

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/miui/payment/data/TransactionItem;->transactionId:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/miui/payment/data/TransactionItem;->comment:Ljava/lang/String;

    move/from16 v0, p20

    iput v0, p0, Lcom/miui/payment/data/TransactionItem;->createSource:I

    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/miui/payment/data/TransactionItem;->deleted:Z

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->deletedTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/payment/data/TransactionItem;

    iget-wide v4, v0, Lcom/miui/payment/data/TransactionItem;->amount:D

    iget-wide v6, p0, Lcom/miui/payment/data/TransactionItem;->amount:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_0

    iget-wide v4, v0, Lcom/miui/payment/data/TransactionItem;->amountEdit:D

    iget-wide v6, p0, Lcom/miui/payment/data/TransactionItem;->amountEdit:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/miui/payment/data/TransactionItem;->category:I

    iget v4, v0, Lcom/miui/payment/data/TransactionItem;->category:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/miui/payment/data/TransactionItem;->categoryEdit:I

    iget v4, v0, Lcom/miui/payment/data/TransactionItem;->categoryEdit:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/miui/payment/data/TransactionItem;->method:I

    iget v4, v0, Lcom/miui/payment/data/TransactionItem;->method:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/miui/payment/data/TransactionItem;->methodEdit:I

    iget v4, v0, Lcom/miui/payment/data/TransactionItem;->methodEdit:I

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/miui/payment/data/TransactionItem;->transactionTime:J

    iget-wide v6, v0, Lcom/miui/payment/data/TransactionItem;->transactionTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget-wide v4, p0, Lcom/miui/payment/data/TransactionItem;->transactionTimeEdit:J

    iget-wide v6, v0, Lcom/miui/payment/data/TransactionItem;->transactionTimeEdit:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget v3, p0, Lcom/miui/payment/data/TransactionItem;->transactionType:I

    iget v4, v0, Lcom/miui/payment/data/TransactionItem;->transactionType:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/miui/payment/data/TransactionItem;->createSource:I

    iget v4, v0, Lcom/miui/payment/data/TransactionItem;->createSource:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/miui/payment/data/TransactionItem;->deleted:Z

    iget-boolean v4, v0, Lcom/miui/payment/data/TransactionItem;->deleted:Z

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/miui/payment/data/TransactionItem;->deletedTime:J

    iget-wide v6, v0, Lcom/miui/payment/data/TransactionItem;->deletedTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/payment/data/TransactionItem;->currencyCode:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/payment/data/TransactionItem;->currencyCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/payment/data/TransactionItem;->currencyCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/miui/payment/data/TransactionItem;->methodDesc:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/miui/payment/data/TransactionItem;->methodDesc:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/payment/data/TransactionItem;->methodDesc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/miui/payment/data/TransactionItem;->transactionId:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/miui/payment/data/TransactionItem;->transactionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/payment/data/TransactionItem;->transactionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    iget-object v3, p0, Lcom/miui/payment/data/TransactionItem;->comment:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v1, p0, Lcom/miui/payment/data/TransactionItem;->comment:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/payment/data/TransactionItem;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_5
    :goto_1
    move v2, v1

    goto/16 :goto_0

    :cond_6
    iget-object v3, v0, Lcom/miui/payment/data/TransactionItem;->currencyCode:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto/16 :goto_0

    :cond_7
    iget-object v3, v0, Lcom/miui/payment/data/TransactionItem;->methodDesc:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto/16 :goto_0

    :cond_8
    iget-object v3, v0, Lcom/miui/payment/data/TransactionItem;->transactionId:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto/16 :goto_0

    :cond_9
    iget-object v3, v0, Lcom/miui/payment/data/TransactionItem;->comment:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_1
.end method

.method public getAmount()D
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/miui/payment/data/TransactionItem;->amount:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->amount:D

    :cond_0
    return-wide v0
.end method

.method public getAmountEdit()D
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/miui/payment/data/TransactionItem;->amountEdit:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->amountEdit:D

    :cond_0
    return-wide v0
.end method

.method public getCategoryCode()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/data/TransactionItem;->category:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/payment/data/TransactionItem;->category:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCategoryEditCode()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/data/TransactionItem;->categoryEdit:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/payment/data/TransactionItem;->categoryEdit:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem;->comment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem;->comment:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCreateSource()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/data/TransactionItem;->createSource:I

    return v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem;->currencyCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/payment/utils/NumberFormatUtil;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem;->currencyCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeletedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->deletedTime:J

    return-wide v0
.end method

.method public getFormattedAmount()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->amount:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->amount:D

    invoke-static {v0, v1}, Lcom/miui/payment/utils/NumberFormatUtil;->getFormattedAmount(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0.00"

    goto :goto_0
.end method

.method public getFormattedAmountEdit()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->amountEdit:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->amountEdit:D

    invoke-static {v0, v1}, Lcom/miui/payment/utils/NumberFormatUtil;->getFormattedAmount(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0.00"

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->id:J

    return-wide v0
.end method

.method public getMethodCode()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/data/TransactionItem;->method:I

    if-gtz v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/payment/data/TransactionItem;->method:I

    goto :goto_0
.end method

.method public getMethodDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem;->methodDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem;->methodDesc:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMethodEditCode()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/data/TransactionItem;->methodEdit:I

    if-gtz v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/payment/data/TransactionItem;->methodEdit:I

    goto :goto_0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->transactionTime:J

    return-wide v0
.end method

.method public getTransactionTimeEdit()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionItem;->transactionTimeEdit:J

    return-wide v0
.end method

.method public getTransactionType()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/data/TransactionItem;->transactionType:I

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/payment/data/TransactionItem;->deleted:Z

    return v0
.end method

.method public setAmount(D)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/payment/data/TransactionItem;->amount:D

    return-void
.end method

.method public setAmountEdit(D)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/payment/data/TransactionItem;->amountEdit:D

    return-void
.end method

.method public setCategory(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/data/TransactionItem;->category:I

    return-void
.end method

.method public setCategoryEdit(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/data/TransactionItem;->categoryEdit:I

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/TransactionItem;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCreateSource(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/data/TransactionItem;->createSource:I

    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/TransactionItem;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public setDeleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/payment/data/TransactionItem;->deleted:Z

    return-void
.end method

.method public setDeletedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/payment/data/TransactionItem;->deletedTime:J

    return-void
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/payment/data/TransactionItem;->id:J

    return-void
.end method

.method public setMethod(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/data/TransactionItem;->method:I

    return-void
.end method

.method public setMethodDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/TransactionItem;->methodDesc:Ljava/lang/String;

    return-void
.end method

.method public setMethodEdit(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/data/TransactionItem;->methodEdit:I

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/TransactionItem;->transactionId:Ljava/lang/String;

    return-void
.end method

.method public setTransactionTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/payment/data/TransactionItem;->transactionTime:J

    return-void
.end method

.method public setTransactionTimeEdit(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/payment/data/TransactionItem;->transactionTimeEdit:J

    return-void
.end method

.method public setTransactionType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/data/TransactionItem;->transactionType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TransactionsItem{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/payment/data/TransactionItem;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/payment/data/TransactionItem;->amount:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", amountEdit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/payment/data/TransactionItem;->amountEdit:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", currencyCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/data/TransactionItem;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/payment/data/TransactionItem;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", categoryEdit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/payment/data/TransactionItem;->categoryEdit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/payment/data/TransactionItem;->method:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", methodEdit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/payment/data/TransactionItem;->methodEdit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", methodDesc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/data/TransactionItem;->methodDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", transactionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/payment/data/TransactionItem;->transactionTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", transactionTimeEdit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/payment/data/TransactionItem;->transactionTimeEdit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", transactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/payment/data/TransactionItem;->transactionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", transactionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/data/TransactionItem;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", comment=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/data/TransactionItem;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/payment/data/TransactionItem;->createSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/payment/data/TransactionItem;->deleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deletedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/payment/data/TransactionItem;->deletedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
