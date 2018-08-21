.class public Lcom/miui/payment/data/TransactionTotal$CategoryTotal;
.super Ljava/lang/Object;
.source "TransactionTotal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/data/TransactionTotal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryTotal"
.end annotation


# instance fields
.field private amountCNYTotal:D

.field private category:I


# direct methods
.method public constructor <init>(ID)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->category:I

    iput-wide p2, p0, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->amountCNYTotal:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;

    iget v3, p0, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->category:I

    iget v4, v0, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->category:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-wide v4, v0, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->amountCNYTotal:D

    iget-wide v6, p0, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->amountCNYTotal:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAmountCNYTotal()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->amountCNYTotal:D

    return-wide v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->category:I

    return v0
.end method

.method public getFormattedAmountTotal()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->amountCNYTotal:D

    invoke-static {v0, v1}, Lcom/miui/payment/utils/NumberFormatUtil;->getFormattedAmount(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
