.class public Lcom/alipay/apmobilesecuritysdk/c/d;
.super Ljava/lang/Object;
.source "DeviceInfoModel.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/apmobilesecuritysdk/f/a",
            "<*>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/e;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/f;

    move-result-object v9

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getBluMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/e/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/e/f;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/e/f;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/e/f;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/e/f;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-eqz v9, :cond_6

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/e/f;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/e/f;->b()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/e/f;->c()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/e/f;->d()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v4}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v9}, Lcom/alipay/apmobilesecuritysdk/e/f;->e()Ljava/lang/String;

    move-result-object v4

    :cond_4
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_1
    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->convertMacAddressFromStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v4}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->convertMacAddressFromStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    if-eqz v6, :cond_5

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/e/f;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/apmobilesecuritysdk/e/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/e/e;->a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/e/f;)V

    :cond_5
    const-string/jumbo v0, "AD1"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-direct {v3, v1}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD2"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD3"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSensorDigest(Landroid/content/Context;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD6"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/d;

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/d;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD7"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/d;

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/d;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD8"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-direct {v1, v9}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD9"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSIMSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD10"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-direct {v1, v5}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD11"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCPUSerial()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD12"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/d;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/d;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD13"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuFrequent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD14"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/e;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getMemorySize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/e;-><init>(Ljava/lang/Long;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD15"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/e;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getTotalInternalMemorySize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/e;-><init>(Ljava/lang/Long;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD16"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/e;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSDCardSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/e;-><init>(Ljava/lang/Long;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD18"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-direct {v1, v10}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD20"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getBandVer()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD21"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD23"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD24"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSensorInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->gzipCompress(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD26"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD27"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getEmulatorFilesExistFeature(Landroid/content/Context;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD28"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getEmulatorFilesContentFeature()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD29"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getEmulatorSystemPropertiesFeature()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD30"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getEmulatorSdkClassFeature()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD31"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getEmulatorBuildClassFeature()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD34"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSystemLockScreenStatus(Landroid/content/Context;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD37"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD38"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v7}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD39"

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v7, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getAirplaneMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8

    :cond_6
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_1

    :cond_7
    move v6, v5

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
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

    const-string/jumbo v2, "AD19"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD32"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/e;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSystemBootTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/e;-><init>(Ljava/lang/Long;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD33"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/e;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSystemBootTimeLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/e;-><init>(Ljava/lang/Long;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD35"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getBatteryLevelAndStatus(Landroid/content/Context;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD36"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getNetworkTypeAndIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD40"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSystemVolumeSetting(Landroid/content/Context;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD41"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/e;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getAvailableInternalMemorySize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/e;-><init>(Ljava/lang/Long;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD42"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/e;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getAvailableSDCardSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/e;-><init>(Ljava/lang/Long;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD43"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSupportedInstructionSets()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/c;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/commonbiz/c$a;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "AD48"

    new-instance v4, Lcom/alipay/apmobilesecuritysdk/f/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/c$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/c$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->isAllowMockLocation(Landroid/content/Context;)Z

    move-result v2

    const-string/jumbo v3, "AD49"

    new-instance v4, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AL3"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/c;

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getWifiBssid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->convertMacAddressFromStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/c;-><init>([B)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD100"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCPUHardware()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, ""

    sget v2, Lcom/alipay/apmobilesecuritysdk/apdidgen/c;->a:I

    invoke-static {v0, v2}, Lcom/alipay/apmobilesecuritysdk/apdidgen/ApdidNativeBridge;->getDeviceInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "taDeviceInfo len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "AD101"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-direct {v3, v0}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/c/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/alipay/apmobilesecuritysdk/apdidgen/c;->a:I

    invoke-static {v0, v2}, Lcom/alipay/apmobilesecuritysdk/apdidgen/ApdidNativeBridge;->getFileStat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "taFileStat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "AD50"

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-direct {v3, v0}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/sc_edge/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "DATA0.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DATA1.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipayclient.db"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkFileNames "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
