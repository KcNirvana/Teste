.class public Lcom/alipay/rdssecuritysdk/v3/impl/a;
.super Ljava/lang/Object;
.source "RDSDataBuilder.java"


# instance fields
.field private a:Lcom/alipay/android/phone/inside/log/api/c/a;

.field private b:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;

.field private c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

.field private d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

.field private e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

.field private f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

.field private g:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->b:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->g:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->h:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/alipay/rdssecuritysdk/v3/impl/a;
    .locals 1

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/impl/a;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/v3/impl/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/alipay/rdssecuritysdk/v3/impl/a;
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->b(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    move-result-object v1

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/commonbiz/c;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/commonbiz/c$a;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "_os"

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "_root"

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isRooted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "_appListVer"

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "_appList"

    if-nez v1, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "_injectListVer"

    if-nez v2, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "_injectList"

    if-nez v2, :cond_3

    const-string/jumbo v0, ""

    :goto_3
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "_mockLoc"

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    invoke-static {p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->isAllowMockLocation(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSensorDigest(Landroid/content/Context;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/crypto/Hex;->encode([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v2, "sensorDigest"

    invoke-interface {v0, v2, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "_sensorDigest"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->h:Ljava/lang/String;

    :goto_5
    return-object p0

    :cond_0
    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/c$a;->a:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/c$a;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/rdssecuritysdk/v3/impl/a;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iput-object p2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->appver:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iput-object p3, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->user:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iput-object p4, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->appname:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    const-string/jumbo v1, "APRdsSdk"

    iput-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->sdkname:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    const-string/jumbo v1, "1.1.2.161229"

    iput-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->sdkver:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p6}, Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;->getPublicKey(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/crypto/DigestUtil;->digestWithSha1([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->pubkey:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iput-object p5, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->appkey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RDSDataBuilder::buildUsrInfo error happened, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/rdssecuritysdk/v3/impl/a;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    iput-object p2, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->apdid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    iput-object p3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->umid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    iput-object p4, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->utdid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    iput-object p5, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->tid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->imei:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->imsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->mac:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->px:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    const-string/jumbo v2, ""

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->idfa:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getGsmSimState()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->gss:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getGsmSimState2()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->gss2:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getUsbState()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->usb:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getWifiInterface()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->wi:Ljava/lang/String;

    if-eqz p6, :cond_0

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;

    invoke-direct {v0, p1}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->b:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->b:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->a()V

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;-><init>()V

    new-instance v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    invoke-direct {v1}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;-><init>()V

    iput-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->t:Ljava/lang/Long;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    iput-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->sensor:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RDSDataBuilder::buildLocationInfo error happened, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;)Lcom/alipay/rdssecuritysdk/v3/impl/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iput-object p1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->ua:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/alipay/rdssecuritysdk/v3/impl/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iput-object p1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->user:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;
    .locals 8

    new-instance v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;

    invoke-direct {v1}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;-><init>()V

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;-><init>()V

    iput-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->_native:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->_native:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    new-instance v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;

    invoke-direct {v2}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;-><init>()V

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;-><init>()V

    iput-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->e:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->dev:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->loc:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->g:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    iput-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->taobao:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    new-instance v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    invoke-direct {v2}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;-><init>()V

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->appver:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->appkey:Ljava/lang/String;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->appname:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->appname:Ljava/lang/String;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->appver:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->appver:Ljava/lang/String;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->pubkey:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->pubkey:Ljava/lang/String;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->sdkname:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->sdkname:Ljava/lang/String;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->sdkver:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->sdkver:Ljava/lang/String;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v2, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->user:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->user:Ljava/lang/String;

    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->dev:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    iget-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->sensor:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->b:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    iget-object v0, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->b:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->c()Ljava/util/Map;

    move-result-object v3

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->ACCELEROMETER:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v4, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->ACCELEROMETER:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;->Accelerometer:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->GRAVITY:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->GRAVITY:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;->Gravity:Ljava/util/List;

    :cond_1
    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->GYROSCOPE:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v4, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->GYROSCOPE:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;->Gyroscope:Ljava/util/List;

    :cond_2
    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->MAGNETIC:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->MAGNETIC:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;->Magnetometer:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->b:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->b()V

    :cond_4
    new-instance v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;

    invoke-direct {v2}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;->action:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->ua:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->ua:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;->num:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;->num:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->ua:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;->t:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->ua:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;->action:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->ua:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;->action:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    new-instance v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    invoke-direct {v4}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->ad:Ljava/util/List;

    iget-object v5, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->cn:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->cn:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->et:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->et:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->num:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->num:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->pn:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->pn:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->seq:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->seq:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->type:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->type:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->t:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->t:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->ad:Ljava/util/List;

    if-eqz v5, :cond_5

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;

    new-instance v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;

    invoke-direct {v6}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;-><init>()V

    iget-object v7, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->pr:Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->pr:Ljava/lang/String;

    iget-object v7, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->t:Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->t:Ljava/lang/String;

    iget-object v7, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->r:Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->r:Ljava/lang/String;

    iget-object v7, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->f:Ljava/lang/Boolean;

    iput-object v7, v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->f:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->key:Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->key:Ljava/lang/String;

    iget-object v7, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->x:Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->x:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->y:Ljava/lang/String;

    iput-object v0, v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->y:Ljava/lang/String;

    iget-object v0, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->ad:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v0, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;->action:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->ua:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;

    :cond_7
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->h:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra1:Ljava/lang/String;

    return-object v1
.end method

.method public b(Landroid/content/Context;)Lcom/alipay/rdssecuritysdk/v3/impl/a;
    .locals 6

    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLocationInfo(Landroid/content/Context;)Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;

    move-result-object v0

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v1

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    const-string/jumbo v4, "true"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getIsWifiActive()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->active:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getBssid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->bssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getCellId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->cid:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->acc:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLac()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->lac:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->omac:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLatitude()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->la:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLongitude()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->lo:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getMnc()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->mnc:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getMcc()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->mcc:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getSsid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getWifiStrength()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->strength:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {v1, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->carrier:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {v2, p1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getNetworkConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->nettpye:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->t:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RDSDataBuilder::buildLocationInfo error happened, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)Lcom/alipay/rdssecuritysdk/v3/impl/a;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v0

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionSDK()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->asdk:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBoard()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->board:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBrand()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->brand:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductDevice()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->device:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildDisplayId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->displayid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isEmulator(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->em:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductManufacturer()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->manufacturer:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductModel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->model:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionIncremental()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->incremental:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    const-string/jumbo v3, "android"

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->os:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getKernelQemu()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->qemu:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionRelease()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->osRelease:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getKernelVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->kerver:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isRooted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->root:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildTags()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->tags:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->processor:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuFrequent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pf:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pn:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->f:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCPUHardware()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->pm:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RDSDataBuilder::buildEnvironmentInfo error happened, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)Lcom/alipay/rdssecuritysdk/v3/impl/a;
    .locals 5

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSecGuardWuaForRDS(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    const-string/jumbo v0, "appKey"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "version"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "t"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "wua"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->g:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    iput-object v2, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->g:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    iput-object v0, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;->appKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->g:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    iput-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;->version:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->g:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    iput-object v3, v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;->wua:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/a;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RDSDataBuilder::buildWuaInfo error happened, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
