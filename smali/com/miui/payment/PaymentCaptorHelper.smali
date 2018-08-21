.class public Lcom/miui/payment/PaymentCaptorHelper;
.super Ljava/lang/Object;
.source "PaymentCaptorHelper.java"


# static fields
.field private static final CATCHER_KEY_CONTENT:Ljava/lang/String; = "content"

.field private static final TAG:Ljava/lang/String; = "PaymentCaptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static needParseSourceData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->isPaymentCardEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/payment/PaymentPrefs;->isSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized parseCatcherResult(Lmiui/contentcatcher/sdk/Token;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/contentcatcher/sdk/Token;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v4, Lcom/miui/payment/PaymentCaptorHelper;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "PaymentCaptor"

    const-string/jumbo v5, "parse catcher result"

    invoke-static {v3, v5}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/Token;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/payment/PaymentCaptorHelper;->needParseSourceData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "PaymentCaptor"

    const-string/jumbo v5, "not enabled payment assistant: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/Token;->getPkgName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    :try_start_2
    const-string/jumbo v3, "content"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "PaymentCaptor"

    const-string/jumbo v5, "content is null"

    invoke-static {v3, v5}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/miui/payment/utils/StatUtil;->recordFailedEvent(I)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/miui/payment/utils/NotificationUtil;->showNotification(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "activityidentity"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/Token;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/Token;->getActivityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/Token;->getVersionCode()I

    move-result v6

    invoke-static {v3, v5, v0, v6, v1}, Lcom/miui/payment/captor/CaptorTask;->parseThirdTextContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static parseInternalAlipayResult(Landroid/content/Context;Lcom/miui/payment/captor/PaymentRawDesc;)V
    .locals 6

    const-string/jumbo v1, "PaymentCaptor"

    const-string/jumbo v2, "parse internal alipay"

    invoke-static {v1, v2}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "com.miui.personalassistant"

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-static {p0, v1}, Lcom/miui/payment/PaymentCaptorHelper;->needParseSourceData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "PaymentCaptor"

    const-string/jumbo v2, "not enabled payment assistant: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "com.eg.android.AlipayGphone"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v1, "PaymentCaptor"

    const-string/jumbo v2, "raw desc is null"

    invoke-static {v1, v2}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/miui/payment/utils/StatUtil;->recordFailedEvent(I)V

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Lcom/miui/payment/captor/CaptorTask;->parseInternalResult(Ljava/lang/String;Lcom/miui/payment/captor/PaymentRawDesc;)V

    goto :goto_0
.end method

.method public static parseSmsBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v2, "PaymentCaptor"

    const-string/jumbo v3, "parse sms"

    invoke-static {v2, v3}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.miui.smsextra"

    invoke-static {p0, v2}, Lcom/miui/payment/PaymentCaptorHelper;->needParseSourceData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "PaymentCaptor"

    const-string/jumbo v3, "not enabled payment assistant: mms"

    invoke-static {v2, v3}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "com.miui.smsextra"

    invoke-static {p0, v2}, Lcom/miui/payment/PaymentPrefs;->isSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v2, "PaymentCaptor"

    const-string/jumbo v3, "sms extra is null"

    invoke-static {v2, v3}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/miui/payment/utils/StatUtil;->recordFailedEvent(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "extra_result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/payment/captor/CaptorTask;->parseSmsExtra(Ljava/lang/String;)V

    goto :goto_0
.end method
