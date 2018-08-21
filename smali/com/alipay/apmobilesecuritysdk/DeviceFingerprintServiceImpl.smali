.class public Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;
.super Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;
.source "DeviceFingerprintServiceImpl.java"


# instance fields
.field private logger:Lcom/alipay/android/phone/inside/log/api/c/a;

.field private mContext:Landroid/content/Context;

.field private mDefaultSceneInitializeCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFirstInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mDefaultSceneInitializeCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mFirstInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Lcom/alipay/android/phone/inside/log/api/c/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->getVKeySecretIndex(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mDefaultSceneInitializeCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mFirstInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private clearLocalCacheIfEnvChanges()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/commonbiz/d;->a()Lcom/alipay/apmobilesecuritysdk/commonbiz/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/commonbiz/d;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initToken(), LAST DEV = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initToken(), NOW  DEV = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/e/d;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/e/g;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->g()V

    :cond_0
    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/e/h;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getVKeySecretIndex(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isApkDebugable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/commonbiz/d;->a()Lcom/alipay/apmobilesecuritysdk/commonbiz/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/apmobilesecuritysdk/commonbiz/d;->a(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reGenApdidTokenIfEmpty(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mDefaultSceneInitializeCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mFirstInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "reGenApdidTokenIfEmpty() regenerate now!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "reGenApdidTokenIfEmpty() others working, dont regenerate!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private scheduleGenerateApdid(Ljava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;->getInstance()Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;

    move-result-object v0

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/apmobilesecuritysdk/a;-><init>(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;Ljava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getApdidToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/e/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;->DEFAULT:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->reGenApdidTokenIfEmpty(Ljava/lang/String;)V

    return-object v0
.end method

.method public getApdidToken(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/e/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->reGenApdidTokenIfEmpty(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSdkName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "security-sdk-token"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "3.6.5-20161229"

    return-object v0
.end method

.method public getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    .locals 4

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/apdidgen/c;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;->DEFAULT:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;->getDesc()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->reGenApdidTokenIfEmpty(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTokenResult(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    .locals 4

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/apdidgen/c;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;->getDesc()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->reGenApdidTokenIfEmpty(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UtdidWrapper;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mDefaultSceneInitializeCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isApkDebugable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->clearLocalCacheIfEnvChanges()V

    :cond_0
    const-string/jumbo v0, "utdid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "tid"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "userId"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :cond_2
    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    :cond_3
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UtdidWrapper;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v1, ""

    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "utdid"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "tid"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "userId"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "appName"

    const-string/jumbo v2, ""

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "appKeyClient"

    const-string/jumbo v2, ""

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "appchannel"

    const-string/jumbo v2, ""

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "rpcVersion"

    const-string/jumbo v2, "5"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isApkDebugable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initToken() utdid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->runEdge()V

    invoke-direct {p0, v3, p3}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->scheduleGenerateApdid(Ljava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    return-void
.end method

.method public runEdge()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "Edge Sdk Sync Valve start running..."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isAlipayWallet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/b;

    invoke-direct {v2, p0, v0}, Lcom/alipay/apmobilesecuritysdk/b;-><init>(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->mContext:Landroid/content/Context;

    return-void
.end method
