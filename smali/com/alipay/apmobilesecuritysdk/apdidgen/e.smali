.class public Lcom/alipay/apmobilesecuritysdk/apdidgen/e;
.super Ljava/lang/Object;
.source "ApdidRequestDataProcessor.java"

# interfaces
.implements Lcom/alipay/apmobilesecuritysdk/apdidgen/d;


# instance fields
.field private a:Lcom/alipay/android/phone/inside/log/api/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/e;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/rpc/a/d;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alipay/apmobilesecuritysdk/rpc/a/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->intializeSyncAndGetUmidToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Ljava/lang/String;)V

    const-string/jumbo v3, "rpcVersion"

    const-string/jumbo v4, ""

    invoke-static {p2, v3, v4}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "appName"

    const-string/jumbo v5, ""

    invoke-static {p2, v4, v5}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/alipay/apmobilesecuritysdk/e/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/d;->c(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/c;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/alipay/apmobilesecuritysdk/e/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/alipay/apmobilesecuritysdk/e/c;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/a;->c(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/alipay/apmobilesecuritysdk/e/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/alipay/apmobilesecuritysdk/e/b;->c()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/d;->d(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/c;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/alipay/apmobilesecuritysdk/e/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/alipay/apmobilesecuritysdk/e/c;->c()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/a;->d(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/alipay/apmobilesecuritysdk/e/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/alipay/apmobilesecuritysdk/e/b;->c()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string/jumbo v6, "android"

    invoke-virtual {p1, v6}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->c(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->d(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->e(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->g(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->f(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/e;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ApdidRequestDataProcessor() start : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;

    invoke-direct {v2}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;-><init>()V

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/d/c;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/d/c;->b()V

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/e;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v4, "APSecuritySdk"

    const-string/jumbo v5, "stun initialized async successfully."

    invoke-interface {v3, v4, v5}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v2, p2}, Lcom/alipay/apmobilesecuritysdk/apdidgen/e;->a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/rpc/a/d;Ljava/util/Map;)V

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/e;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v4, "APSecuritySdk"

    const-string/jumbo v5, "initialize request headers successfully."

    invoke-interface {v3, v4, v5}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/c/c;->a()Lcom/alipay/apmobilesecuritysdk/c/c;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/alipay/apmobilesecuritysdk/c/c;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->a(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/e;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v4, "APSecuritySdk"

    const-string/jumbo v5, "set request model datamap successfully."

    invoke-interface {v3, v4, v5}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "rpc_quest"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/e;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    const-string/jumbo v4, "put datamap to request model successfully."

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/e;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ApdidRequestDataProcessor() cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
