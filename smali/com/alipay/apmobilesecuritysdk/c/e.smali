.class public Lcom/alipay/apmobilesecuritysdk/c/e;
.super Ljava/lang/Object;
.source "EnvironmentInfoModel.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
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

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "AE1"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getOSName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE2"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isRooted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/b;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE3"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isEmulator(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/b;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE4"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBoard()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE5"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBrand()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE6"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductDevice()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE7"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildDisplayId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE8"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionIncremental()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE9"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE10"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductModel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE11"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE12"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionRelease()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE13"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionSDK()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE14"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildTags()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AE15"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getKernelQemu()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string/jumbo v0, "AE20"

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-static {p0}, Lcom/alipay/mobile/security/senative/APSE;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/senative/APSE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/security/senative/APSE;->isX86Machine()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/apmobilesecuritysdk/f/b;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
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

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "why_update"

    sget-object v3, Lcom/alipay/apmobilesecuritysdk/a/a;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getIntegerFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "AE16"

    new-instance v4, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/d/c;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/d/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "AE18"

    new-instance v4, Lcom/alipay/apmobilesecuritysdk/f/d;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/alipay/apmobilesecuritysdk/f/d;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isAlipayWallet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AE19"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSecGuardWuaForDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v2, "AE21"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE22"

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/f/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
