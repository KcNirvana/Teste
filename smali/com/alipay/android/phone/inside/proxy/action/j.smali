.class public Lcom/alipay/android/phone/inside/proxy/action/j;
.super Ljava/lang/Object;
.source "PayAction.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/commonbiz/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, ""

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/inside/proxy/action/j;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/proxy/action/j;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/inside/proxy/action/j;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/proxy/action/j;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p1

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "inside"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "isOutTrade"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "is_out_trade"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "order_info"

    const-string/jumbo v2, "payStr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/alipay/android/phone/inside/commonbiz/model/a;
    .locals 4

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    const-string/jumbo v1, "com.alipay.android.phone.inside.PHONE_CASHIER_PAY"

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/proxy/action/j;->b(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/phone/inside/proxy/action/k;

    invoke-direct {v3, p0, v0}, Lcom/alipay/android/phone/inside/proxy/action/k;-><init>(Lcom/alipay/android/phone/inside/proxy/action/j;Lcom/alipay/android/phone/inside/commonbiz/model/a;)V

    invoke-static {v1, v2, v3}, Lcom/alipay/android/phone/inside/framework/service/c;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/alipay/android/phone/inside/framework/service/b;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/proxy/action/j;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->PAY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
