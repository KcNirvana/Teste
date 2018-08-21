.class public Lcom/miui/payment/captor/PaymentAggregator;
.super Ljava/lang/Object;
.source "PaymentAggregator.java"


# static fields
.field private static final MINIMUM_TIME_INTERVAL:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "RecordAggregatorImpl"

.field private static sLastRecordTime:J


# instance fields
.field private mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

.field private mTransactionItem:Lcom/miui/payment/data/TransactionItem;


# direct methods
.method public constructor <init>(Lcom/miui/payment/data/TransactionItem;Lcom/miui/payment/captor/CaptorToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    iput-object p2, p0, Lcom/miui/payment/captor/PaymentAggregator;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    return-void
.end method

.method private filterAndSavePaymentRecord()J
    .locals 5

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentAggregator;->findDupPaymentRecord()Lcom/miui/payment/data/TransactionItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentAggregator;->savePaymentRecord()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-string/jumbo v1, "RecordAggregatorImpl"

    const-string/jumbo v4, "dup cases"

    invoke-static {v1, v4}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/payment/data/TransactionItem;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "RecordAggregatorImpl"

    const-string/jumbo v4, "dup is deleted"

    invoke-static {v1, v4}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/payment/captor/PaymentAggregator;->updatePaymentRecord(Lcom/miui/payment/data/TransactionItem;)V

    invoke-virtual {v0}, Lcom/miui/payment/data/TransactionItem;->getId()J

    move-result-wide v2

    goto :goto_0
.end method

.method private filterAndUpdatePaymentRecord()J
    .locals 12

    const-wide/16 v10, -0x1

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v1}, Lcom/miui/payment/data/TransactionItem;->getAmount()D

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v1

    const-wide/16 v6, 0x1388

    invoke-virtual/range {v1 .. v7}, Lcom/miui/payment/data/source/TransactionRepository;->queryTransactionItems(DJJ)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/data/TransactionItem;

    invoke-direct {p0, v0}, Lcom/miui/payment/captor/PaymentAggregator;->updatePaymentRecord(Lcom/miui/payment/data/TransactionItem;)V

    invoke-virtual {v0}, Lcom/miui/payment/data/TransactionItem;->getId()J

    move-result-wide v10

    :cond_0
    return-wide v10
.end method

.method private findDupPaymentRecord()Lcom/miui/payment/data/TransactionItem;
    .locals 13

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v1}, Lcom/miui/payment/data/TransactionItem;->getAmount()D

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v1}, Lcom/miui/payment/data/TransactionItem;->getTransactionTime()J

    move-result-wide v4

    const-string/jumbo v1, "RecordAggregatorImpl"

    const-string/jumbo v9, "time: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v9, v10}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-gtz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_0
    const-wide/32 v6, 0x1d4c0

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/miui/payment/data/source/TransactionRepository;->queryTransactionItems(DJJ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/payment/data/TransactionItem;

    iget-object v9, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    invoke-static {v8, v9}, Lcom/miui/payment/captor/TransactionItemDupRules;->transactionItemDup(Lcom/miui/payment/data/TransactionItem;Lcom/miui/payment/data/TransactionItem;)Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_0
    return-object v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private isNewActivity()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/PaymentAggregator;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v0}, Lcom/miui/payment/captor/CaptorToken;->isNewActivity()Z

    move-result v0

    return v0
.end method

.method private isValidTimeInterval()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/payment/captor/PaymentAggregator;->sLastRecordTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private savePaymentRecord()J
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v1, "RecordAggregatorImpl"

    const-string/jumbo v2, "=========== save record ==========="

    invoke-static {v1, v2}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "AggregatorTask"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/miui/payment/log/Logger;->debugPrivacy(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v1}, Lcom/miui/payment/data/TransactionItem;->getTransactionTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/payment/data/TransactionItem;->setTransactionTime(J)V

    const-string/jumbo v1, "RecordAggregatorImpl"

    const-string/jumbo v2, "save time %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    iget-object v2, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v2}, Lcom/miui/payment/data/TransactionItem;->getTransactionTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/payment/data/TransactionItem;->setTransactionTimeEdit(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/miui/payment/captor/PaymentAggregator;->sLastRecordTime:J

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    iget-object v2, p0, Lcom/miui/payment/captor/PaymentAggregator;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-static {v1, v2}, Lcom/miui/payment/utils/StatUtil;->recordSuccessEvent(Lcom/miui/payment/data/TransactionItem;Lcom/miui/payment/captor/CaptorToken;)V

    const-string/jumbo v1, "finance_user"

    invoke-static {v1}, Lcom/miui/payment/utils/StatUtil;->recordCountEvent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v1}, Lcom/miui/payment/data/TransactionItem;->getMethodDesc()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v2}, Lcom/miui/payment/data/TransactionItem;->getFormattedAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/miui/payment/utils/NotificationUtil;->showNotification(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v1, v2}, Lcom/miui/payment/data/source/TransactionRepository;->saveTransactionItem(Lcom/miui/payment/data/TransactionItem;)J

    move-result-wide v2

    return-wide v2
.end method

.method private updatePaymentRecord(Lcom/miui/payment/data/TransactionItem;)V
    .locals 6

    iget-object v2, p0, Lcom/miui/payment/captor/PaymentAggregator;->mTransactionItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v2}, Lcom/miui/payment/data/TransactionItem;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "update empty comment"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getCategoryCode()I

    move-result v3

    invoke-virtual {v2, v4, v5, v3, v0}, Lcom/miui/payment/data/source/TransactionRepository;->updateTransactionItem(JILjava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public aggregateTransactionItem()J
    .locals 5

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lcom/miui/payment/captor/PaymentAggregator;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v3}, Lcom/miui/payment/captor/CaptorToken;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "internal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentAggregator;->savePaymentRecord()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-string/jumbo v3, "mms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentAggregator;->filterAndSavePaymentRecord()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "catcher"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentAggregator;->isNewActivity()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentAggregator;->isValidTimeInterval()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentAggregator;->filterAndSavePaymentRecord()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentAggregator;->isValidTimeInterval()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "RecordAggregatorImpl"

    const-string/jumbo v4, "ignore as not new activity"

    invoke-static {v3, v4}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentAggregator;->isNewActivity()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "RecordAggregatorImpl"

    const-string/jumbo v4, "ignore as too short time interval"

    invoke-static {v3, v4}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentAggregator;->filterAndUpdatePaymentRecord()J

    move-result-wide v0

    goto :goto_0
.end method
