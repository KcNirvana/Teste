.class public Lcom/miui/payment/captor/TransactionItemDupRules;
.super Ljava/lang/Object;
.source "TransactionItemDupRules.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAlipayOrWechat(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static transactionItemDup(Lcom/miui/payment/data/TransactionItem;Lcom/miui/payment/data/TransactionItem;)Z
    .locals 14

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getCreateSource()I

    move-result v10

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getCreateSource()I

    move-result v11

    if-ne v10, v11, :cond_3

    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getCreateSource()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getTransactionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getAmount()D

    move-result-wide v10

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getAmount()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getCurrencyCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getCurrencyCode()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x1

    :goto_2
    or-int/2addr v10, v11

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getCategoryCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getCategoryCode()I

    move-result v2

    const/4 v10, 0x1

    if-eq v0, v10, :cond_9

    const/4 v10, 0x1

    if-eq v2, v10, :cond_9

    if-eq v0, v2, :cond_9

    const/4 v10, 0x0

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getMethodCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getMethodCode()I

    move-result v3

    invoke-static {v1}, Lcom/miui/payment/captor/TransactionItemDupRules;->isAlipayOrWechat(I)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {v3}, Lcom/miui/payment/captor/TransactionItemDupRules;->isAlipayOrWechat(I)Z

    move-result v10

    if-eqz v10, :cond_a

    if-eq v1, v3, :cond_a

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getTransactionTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getTransactionTime()J

    move-result-wide v6

    const-wide/16 v10, 0x2710

    rem-long v10, v6, v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_c

    const-wide/16 v10, 0x7530

    add-long/2addr v6, v10

    sub-long v10, v4, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    cmp-long v10, v10, v12

    if-gez v10, :cond_b

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_c
    cmp-long v10, v4, v6

    if-nez v10, :cond_d

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_0
.end method
