.class public Lcom/alipay/apmobilesecuritysdk/c/b;
.super Ljava/lang/Object;
.source "CustomInfoModel.java"


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

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AC4"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-direct {v3, v1}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
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

    const-string/jumbo v1, "tid"

    const-string/jumbo v2, ""

    invoke-static {p1, v1, v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    const-string/jumbo v3, ""

    invoke-static {p1, v2, v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "appName"

    const-string/jumbo v4, ""

    invoke-static {p1, v3, v4}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "appKeyClient"

    const-string/jumbo v5, ""

    invoke-static {p1, v4, v5}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AC1"

    new-instance v6, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-direct {v6, v1}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "AC5"

    new-instance v5, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-direct {v5, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "AC8"

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-direct {v2, v3}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "AC9"

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-direct {v2, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
