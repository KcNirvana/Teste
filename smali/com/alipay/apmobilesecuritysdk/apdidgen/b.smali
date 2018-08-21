.class public Lcom/alipay/apmobilesecuritysdk/apdidgen/b;
.super Ljava/lang/Object;
.source "ApdidInitializeProcessor.java"

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

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preLoadCache(), appName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/e/i;->a(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/alipay/apmobilesecuritysdk/e/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "preLoadCache(), TokenStorage\u7f13\u5b58\u52a0\u8f7d\u5b8c\u6bd5"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->h()V

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

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ApdidInitializeProcessor() start:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "appName"

    const-string/jumbo v3, ""

    invoke-static {p2, v2, v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tid"

    const-string/jumbo v4, ""

    invoke-static {p2, v3, v4}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "utdid"

    const-string/jumbo v5, ""

    invoke-static {p2, v4, v5}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/e/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v2}, Lcom/alipay/apmobilesecuritysdk/apdidgen/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v3, v4, v5}, Lcom/alipay/apmobilesecuritysdk/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isAlipayWallet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/commonbiz/a;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ApdidInitializeProcessor() cost "

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
