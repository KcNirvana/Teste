.class public Lcom/miui/payment/captor/AggregatorTask;
.super Ljava/lang/Object;
.source "AggregatorTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AggregatorTask"


# instance fields
.field public mPaymentAggregator:Lcom/miui/payment/captor/PaymentAggregator;


# direct methods
.method public constructor <init>(Lcom/miui/payment/captor/PaymentAggregator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/payment/captor/AggregatorTask;->mPaymentAggregator:Lcom/miui/payment/captor/PaymentAggregator;

    return-void
.end method

.method public static submitAggregatorTask(Lcom/miui/payment/data/TransactionItem;Lcom/miui/payment/captor/CaptorToken;)V
    .locals 2

    new-instance v0, Lcom/miui/payment/captor/AggregatorTask;

    new-instance v1, Lcom/miui/payment/captor/PaymentAggregator;

    invoke-direct {v1, p0, p1}, Lcom/miui/payment/captor/PaymentAggregator;-><init>(Lcom/miui/payment/data/TransactionItem;Lcom/miui/payment/captor/CaptorToken;)V

    invoke-direct {v0, v1}, Lcom/miui/payment/captor/AggregatorTask;-><init>(Lcom/miui/payment/captor/PaymentAggregator;)V

    sget-object v1, Lcom/miui/payment/async/AsyncExecutor;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/miui/payment/async/AsyncExecutor;->submitAsyncTask(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/miui/payment/captor/AggregatorTask;->mPaymentAggregator:Lcom/miui/payment/captor/PaymentAggregator;

    invoke-virtual {v1}, Lcom/miui/payment/captor/PaymentAggregator;->aggregateTransactionItem()J

    move-result-wide v2

    const-string/jumbo v1, "AggregatorTask"

    const-string/jumbo v6, "AggregatorTask result: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "AggregatorTask "

    invoke-static {v1, v4, v5}, Lcom/miui/payment/log/Logger;->pref(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AggregatorTask"

    const-string/jumbo v6, "Exception"

    invoke-static {v1, v0, v6}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
