.class public Lcom/alipay/apmobilesecuritysdk/c/a;
.super Ljava/lang/Object;
.source "ApplicationInfoModel.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/apmobilesecuritysdk/f/a",
            "<*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "AA1"

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "AA2"

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "AA3"

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/f/f;

    const-string/jumbo v3, "security-sdk-token"

    invoke-direct {v2, v3}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isAlipayWallet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AA4"

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/f/f;

    const-string/jumbo v3, "P3.6.5-20161229"

    invoke-direct {v2, v3}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "AA5"

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a(Landroid/content/Context;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const-string/jumbo v1, "AA4"

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/f/f;

    const-string/jumbo v3, "3.6.5-20161229"

    invoke-direct {v2, v3}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/apmobilesecuritysdk/f/a",
            "<*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "appchannel"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "AA6"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-direct {v3, v0}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->gzipCompress(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v2, "AA7"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-direct {v3, v0}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isAlipayWallet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->gzipCompress(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v2, "AA8"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-direct {v3, v0}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method
