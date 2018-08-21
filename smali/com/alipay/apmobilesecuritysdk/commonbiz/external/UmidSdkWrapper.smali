.class public Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;
.super Ljava/lang/Object;
.source "UmidSdkWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "APSecuritySdk"

.field private static final UMIDTOKEN_FILE_NAME:Ljava/lang/String; = "xxxwww_v2"

.field private static final UMIDTOKEN_KEY_NAME:Ljava/lang/String; = "umidtk"

.field private static volatile cachedUmidToken:Ljava/lang/String;

.field private static volatile initUmidFinished:Z

.field private static final logger:Lcom/alipay/android/phone/inside/log/api/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->initUmidFinished:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->cachedUmidToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->initUmidFinished:Z

    return p0
.end method

.method static synthetic access$100()Lcom/alipay/android/phone/inside/log/api/c/a;
    .locals 1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    return-object v0
.end method

.method private static compatUmidBug(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "000000000000000000000000"

    invoke-static {p1, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UtdidWrapper;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, ""

    :cond_1
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, ""

    :cond_2
    move-object p1, v0

    :cond_3
    return-object p1
.end method

.method private static convert2UMIDEnv(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "convert2UMIDEnv(), umid env: online!!!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "convert2UMIDEnv(), umid env: daily!!!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "convert2UMIDEnv(), umid env: pre!!!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLocalUmidToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->cachedUmidToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "xxxwww_v2"

    const-string/jumbo v1, "umidtk"

    invoke-static {p0, v0, v1}, Lcom/alipay/security/mobile/module/localstorage/SecurityStorageUtils;->readFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->cachedUmidToken:Ljava/lang/String;

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->cachedUmidToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->compatUmidBug(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->cachedUmidToken:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->cachedUmidToken:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static intializeSyncAndGetUmidToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->initUmidFinished:Z

    :try_start_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/commonbiz/d;->a()Lcom/alipay/apmobilesecuritysdk/commonbiz/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/d;->a(Landroid/content/Context;)I

    move-result v0

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startUmidTaskSync, wallet env mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->convert2UMIDEnv(I)I

    move-result v0

    invoke-static {p0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v2

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    new-instance v5, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper$1;

    invoke-direct {v5}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper$1;-><init>()V

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/taobao/dp/DeviceSecuritySDK;->initAsync(Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V

    const/16 v0, 0xbb8

    const/16 v2, 0xa

    :goto_0
    sget-boolean v3, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->initUmidFinished:Z

    if-nez v3, :cond_0

    if-lez v0, :cond_0

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->compatUmidBug(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->updateLocalUmidToken(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    const-string/jumbo v3, "[-] Umid request error."

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static declared-synchronized updateLocalUmidToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "xxxwww_v2"

    const-string/jumbo v2, "umidtk"

    invoke-static {p0, v0, v2, p1}, Lcom/alipay/security/mobile/module/localstorage/SecurityStorageUtils;->writeToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->cachedUmidToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
