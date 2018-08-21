.class public final Lcom/ali/user/mobile/info/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field private static final GET_RESULT_TIMEOUT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AppInfo"

.field private static sInstance:Lcom/ali/user/mobile/info/AppInfo;


# instance fields
.field callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApSecuritySdk:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

.field private mApdid:Ljava/lang/String;

.field private mApdidToken:Ljava/lang/String;

.field private mAppDataProvider:Lcom/ali/user/mobile/b/a;

.field private mContext:Landroid/content/Context;

.field private mCurrentApdidToken:Ljava/lang/String;

.field private final mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mTidInfo:Lcom/ali/user/mobile/info/g;

.field private mUmidToken:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mApdid:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mApdidToken:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mUmidToken:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mCurrentApdidToken:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mSemaphore:Ljava/util/concurrent/Semaphore;

    new-instance v0, Lcom/ali/user/mobile/info/c;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/info/c;-><init>(Lcom/ali/user/mobile/info/AppInfo;)V

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->callable:Ljava/util/concurrent/Callable;

    return-void
.end method

.method static synthetic access$002(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->mApdid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/info/AppInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mApdidToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->mApdidToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->mUmidToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ali/user/mobile/info/AppInfo;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ali/user/mobile/info/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/info/AppInfo;->setCookieDelayed()V

    return-void
.end method

.method static synthetic access$500(Lcom/ali/user/mobile/info/AppInfo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ali/user/mobile/info/AppInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/info/AppInfo;->initUmidToken(Landroid/content/Context;)V

    return-void
.end method

.method private defaultTidInfo()Lcom/ali/user/mobile/info/g;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mTidInfo:Lcom/ali/user/mobile/info/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/info/g;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/g;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mTidInfo:Lcom/ali/user/mobile/info/g;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mTidInfo:Lcom/ali/user/mobile/info/g;

    return-object v0
.end method

.method private getAPSecuritySdk(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mApSecuritySdk:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mApSecuritySdk:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mApSecuritySdk:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    return-object v0
.end method

.method private getAppKeyInternal()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/alipay/android/phone/inside/security/a/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/security/a/a;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/android/phone/inside/security/a/a;->a:I

    new-instance v1, Lcom/alipay/android/phone/inside/security/f;

    new-instance v2, Landroid/content/ContextWrapper;

    iget-object v3, p0, Lcom/ali/user/mobile/info/AppInfo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/alipay/android/phone/inside/security/f;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/security/f;->a(Lcom/alipay/android/phone/inside/security/a/a;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AppInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppKeyInternal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/ali/user/mobile/info/AppInfo;
    .locals 2

    const-class v1, Lcom/ali/user/mobile/info/AppInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/info/AppInfo;->sInstance:Lcom/ali/user/mobile/info/AppInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/info/AppInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/AppInfo;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/AppInfo;->sInstance:Lcom/ali/user/mobile/info/AppInfo;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/ali/user/mobile/info/AppInfo;->sInstance:Lcom/ali/user/mobile/info/AppInfo;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initUmidToken(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/ali/user/mobile/info/a;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/info/a;-><init>(Lcom/ali/user/mobile/info/AppInfo;Landroid/content/Context;)V

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "initUmidToken in thread"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setCookieDelayed()V
    .locals 3

    new-instance v0, Lcom/ali/user/mobile/info/d;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/info/d;-><init>(Lcom/ali/user/mobile/info/AppInfo;)V

    const/4 v1, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;ILjava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/info/AppInfo;->getAPSecuritySdk(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tokenResult == null, return mApdid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->mApdid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mApdid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApdidToken()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/info/AppInfo;->getAPSecuritySdk(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tokenResult == null, return mApdidToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->mApdidToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mApdidToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApdidtokenResultTimeout()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/FutureTask;

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->callable:Ljava/util/concurrent/Callable;

    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v3, "AppInfo"

    const-string/jumbo v4, "getResultTimeout executed"

    invoke-interface {v0, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x5

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v2, "AppInfo"

    const-string/jumbo v3, "getResultTimeout Exception"

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0
.end method

.method public getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/b/a;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AppInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AppDataProvider return appKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "exception getAppKey, AppDataProvider = null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/info/AppInfo;->getAppKeyInternal()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/b/a;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getAuthApdidToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mCurrentApdidToken:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/b/a;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getDeviceKeySet()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "apdidToken"

    invoke-virtual {p0}, Lcom/ali/user/mobile/info/AppInfo;->getApdidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/b/a;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/b/a;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSdkId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "aliusersdk"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2.0.0.0"

    return-object v0
.end method

.method public getTidInfo()Lcom/ali/user/mobile/info/g;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/b/a;->b()Lcom/ali/user/mobile/info/g;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/ali/user/mobile/info/AppInfo;->defaultTidInfo()Lcom/ali/user/mobile/info/g;

    move-result-object v0

    goto :goto_0
.end method

.method public getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/info/AppInfo;->getAPSecuritySdk(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    return-object v0
.end method

.method public getUmid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/info/AppInfo;->getAPSecuritySdk(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tokenResult == null, return mUmidToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->mUmidToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mUmidToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/b/a;->a(Landroid/content/Context;)Lcom/alipay/mobile/common/b/a;

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/info/AppInfo;->getAPSecuritySdk(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/info/AppInfo;->initUmidToken(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public isAlipayApp()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/b/a;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseSso()Z
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/b/a;->g()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuthApdidToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->mCurrentApdidToken:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDataProvider(Lcom/ali/user/mobile/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->mAppDataProvider:Lcom/ali/user/mobile/b/a;

    return-void
.end method
