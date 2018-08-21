.class public Lcom/alipay/apmobilesecuritysdk/apdidgen/f;
.super Ljava/lang/Object;
.source "ApdidRequestServerProcessor.java"

# interfaces
.implements Lcom/alipay/apmobilesecuritysdk/apdidgen/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/alipay/android/phone/inside/log/api/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->b:I

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/rpc/a/d;)Lcom/alipay/apmobilesecuritysdk/rpc/a/c;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->a(Lcom/alipay/apmobilesecuritysdk/rpc/a/d;)Lcom/alipay/apmobilesecuritysdk/rpc/a/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "collectAndSendStaticData throwable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/b/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "utdid"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "onIllegalRequest(), illegal appName and appKey composition!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->b:I

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/rpc/a/c;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alipay/apmobilesecuritysdk/rpc/a/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "onSuccess(), data upload successfully, are you crazy!!!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/apmobilesecuritysdk/rpc/a/c;Ljava/util/Map;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->b:I

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/apmobilesecuritysdk/rpc/a/c;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alipay/apmobilesecuritysdk/rpc/a/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isApkDebugable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveToStorage(), log switch   = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveToStorage(), agent switch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveToStorage(), webrtc url   = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveToStorage(), timeinterval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveToStorage(), sensor config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->k()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveToStorage(), apdid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveToStorage(), token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveToStorage(), edge switch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->c()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Z)V

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "devicehash"

    const-string/jumbo v1, ""

    invoke-static {p4, v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/c/c;->a()Lcom/alipay/apmobilesecuritysdk/c/c;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Lcom/alipay/apmobilesecuritysdk/c/c;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveToStorage(), calculate deviceinfo hash, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->c(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->b(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->f(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->b(Ljava/util/Map;)Ljava/lang/String;

    invoke-direct {p0, p4}, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->a(Ljava/util/Map;)Ljava/lang/String;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->h()V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->f()Lcom/alipay/apmobilesecuritysdk/e/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/e/d;->a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/e/c;)V

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/e/b;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/apmobilesecuritysdk/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/e/b;)V

    invoke-static {p2}, Lcom/alipay/apmobilesecuritysdk/e/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/alipay/apmobilesecuritysdk/e/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->e(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->f(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->k()Lorg/json/JSONObject;

    const-string/jumbo v0, "0"

    iget-object v1, p3, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/alipay/edge/impl/c;->a(Landroid/content/Context;)Lcom/alipay/edge/impl/c;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/edge/impl/c;->b(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveToStorage(), use cached deviceinfo hash, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "1"

    iget-object v1, p3, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/alipay/edge/impl/c;->a(Landroid/content/Context;)Lcom/alipay/edge/impl/c;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/edge/impl/c;->b(Z)V

    goto :goto_1
.end method

.method private a(Lcom/alipay/apmobilesecuritysdk/rpc/a/c;)V
    .locals 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->b:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNetworkFailure(), Server error, result code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/b/e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNetworkFailure(), rpc failed. result code :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "onNetworkFailure(), Server error, rreturn null."

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/b/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "onNetworkFailure(), responseModel = null."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "tid"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->d(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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

    move-result-wide v2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ApdidRequestServerProcessor() start :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "appName"

    const-string/jumbo v1, ""

    invoke-static {p2, v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->a:Ljava/lang/String;

    const-string/jumbo v0, "rpc_quest"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "rpc_quest"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/rpc/a/d;)Lcom/alipay/apmobilesecuritysdk/rpc/a/c;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->b()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->a(Lcom/alipay/apmobilesecuritysdk/rpc/a/c;)V

    :goto_2
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isAlipayWallet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alipay/apmobilesecuritysdk/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "resultcode"

    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->b:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ApdidRequestServerProcessor() cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/edge/impl/c;->a(Landroid/content/Context;)Lcom/alipay/edge/impl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/edge/impl/c;->a()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, v1, p2}, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/rpc/a/c;Ljava/util/Map;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;->a()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
