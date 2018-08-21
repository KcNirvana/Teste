.class public Lcom/miui/payment/captor/CaptorTask;
.super Ljava/lang/Object;
.source "CaptorTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptorTask"


# instance fields
.field mPaymentFactory:Lcom/miui/payment/captor/PaymentCaptor;


# direct methods
.method public constructor <init>(Lcom/miui/payment/captor/PaymentCaptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/payment/captor/CaptorTask;->mPaymentFactory:Lcom/miui/payment/captor/PaymentCaptor;

    return-void
.end method

.method public static parseInternalResult(Ljava/lang/String;Lcom/miui/payment/captor/PaymentRawDesc;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/payment/captor/CaptorToken;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/miui/payment/captor/CaptorToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/miui/payment/captor/PaymentCaptor;

    new-instance v2, Lcom/miui/payment/captor/parser/InternalRawDataParserImpl;

    invoke-direct {v2, p1}, Lcom/miui/payment/captor/parser/InternalRawDataParserImpl;-><init>(Lcom/miui/payment/captor/PaymentRawDesc;)V

    invoke-direct {v1, v0, v2}, Lcom/miui/payment/captor/PaymentCaptor;-><init>(Lcom/miui/payment/captor/CaptorToken;Lcom/miui/payment/captor/parser/RawDataParser;)V

    invoke-static {v1}, Lcom/miui/payment/captor/CaptorTask;->submitTask(Lcom/miui/payment/captor/PaymentCaptor;)V

    return-void
.end method

.method public static parseSmsExtra(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/payment/captor/PaymentCaptor;

    sget-object v1, Lcom/miui/payment/captor/parser/SmsConstants;->M_SMS_CAPTOR_TOKEN:Lcom/miui/payment/captor/CaptorToken;

    new-instance v2, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;

    invoke-direct {v2, p0}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/payment/captor/PaymentCaptor;-><init>(Lcom/miui/payment/captor/CaptorToken;Lcom/miui/payment/captor/parser/RawDataParser;)V

    invoke-static {v0}, Lcom/miui/payment/captor/CaptorTask;->submitTask(Lcom/miui/payment/captor/PaymentCaptor;)V

    goto :goto_0
.end method

.method public static parseThirdTextContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/miui/payment/captor/CaptorToken;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/payment/captor/CaptorToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/miui/payment/captor/PaymentCaptor;

    new-instance v2, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;

    invoke-direct {v2, v0, p4}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;-><init>(Lcom/miui/payment/captor/CaptorToken;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lcom/miui/payment/captor/PaymentCaptor;-><init>(Lcom/miui/payment/captor/CaptorToken;Lcom/miui/payment/captor/parser/RawDataParser;)V

    invoke-static {v1}, Lcom/miui/payment/captor/CaptorTask;->submitTask(Lcom/miui/payment/captor/PaymentCaptor;)V

    return-void
.end method

.method private runRealTask()V
    .locals 4

    iget-object v2, p0, Lcom/miui/payment/captor/CaptorTask;->mPaymentFactory:Lcom/miui/payment/captor/PaymentCaptor;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/payment/captor/CaptorTask;->mPaymentFactory:Lcom/miui/payment/captor/PaymentCaptor;

    invoke-virtual {v2}, Lcom/miui/payment/captor/PaymentCaptor;->tryParsePaymentRawData()Lcom/miui/payment/data/TransactionItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/payment/captor/CaptorTask;->mPaymentFactory:Lcom/miui/payment/captor/PaymentCaptor;

    invoke-virtual {v2}, Lcom/miui/payment/captor/PaymentCaptor;->getCaptorToken()Lcom/miui/payment/captor/CaptorToken;

    move-result-object v0

    if-nez v1, :cond_1

    const-string/jumbo v2, "CaptorTask"

    const-string/jumbo v3, "parse transaction result is null"

    invoke-static {v2, v3}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lcom/miui/payment/captor/AggregatorTask;->submitAggregatorTask(Lcom/miui/payment/data/TransactionItem;Lcom/miui/payment/captor/CaptorToken;)V

    goto :goto_0
.end method

.method public static submitTask(Lcom/miui/payment/captor/PaymentCaptor;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/payment/captor/CaptorTask;

    invoke-direct {v0, p0}, Lcom/miui/payment/captor/CaptorTask;-><init>(Lcom/miui/payment/captor/PaymentCaptor;)V

    invoke-static {v0}, Lcom/miui/payment/async/AsyncExecutor;->submitAsyncTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    invoke-direct {p0}, Lcom/miui/payment/captor/CaptorTask;->runRealTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "CaptorTask run "

    invoke-static {v1, v2, v3}, Lcom/miui/payment/log/Logger;->pref(Ljava/lang/String;J)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CaptorTask"

    const-string/jumbo v4, "run error "

    invoke-static {v1, v0, v4}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
