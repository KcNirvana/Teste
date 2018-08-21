.class public Lcom/alipay/security/mobile/cache/AuthenticatorCache;
.super Ljava/lang/Object;
.source "AuthenticatorCache.java"


# static fields
.field public static final INVALID_CACHE:I = -0x64

.field public static final MAX_CACHE_TIME:J = 0xa4cb800L

.field public static final MIN_CACHE_TIME:J = 0x1388L

.field private static sInstance:Lcom/alipay/security/mobile/cache/AuthenticatorCache;


# instance fields
.field private mBraceletDeviceIDCache:Ljava/lang/String;

.field private mBraceletUserStatusCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBraceletUserStatusValid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheTime:J

.field private mCachedContext:Landroid/content/Context;

.field private mCachedUserID:Ljava/lang/String;

.field private mFingerprintDeviceIDCache:Ljava/lang/String;

.field private mFingerprintNumberCache:I

.field private mFingerprintNumberValid:J

.field private mFingerprintUserStatusCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerprintUserStatusValid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    invoke-direct {v0}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->sInstance:Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCacheTime:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusValid:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusCache:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintNumberValid:J

    const/16 v0, -0x64

    iput v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintNumberCache:I

    iput-object v2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintDeviceIDCache:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusValid:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusCache:Ljava/util/Map;

    iput-object v2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletDeviceIDCache:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCachedUserID:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCachedContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/cache/AuthenticatorCache;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCacheTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/cache/AuthenticatorCache;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCachedContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/security/mobile/cache/AuthenticatorCache;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->refreshFingerprintCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/security/mobile/cache/AuthenticatorCache;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->refreshBraceletCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 2

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/security/mobile/cache/AuthenticatorCache;
    .locals 2

    const-class v0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->sInstance:Lcom/alipay/security/mobile/cache/AuthenticatorCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private refreshBraceletCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCachedUserID:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v2, 0x2

    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v2

    new-instance v3, Lcom/alipay/security/mobile/cache/AuthenticatorCache$2;

    invoke-direct {v3, p0}, Lcom/alipay/security/mobile/cache/AuthenticatorCache$2;-><init>(Lcom/alipay/security/mobile/cache/AuthenticatorCache;)V

    invoke-interface {v2, v0, v3, p2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/16 v3, 0x6f

    if-eq v0, v3, :cond_1

    const/16 v3, 0x69

    if-eq v0, v3, :cond_1

    const/16 v3, 0x6a

    if-eq v0, v3, :cond_1

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_2

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->clearBraceletCacheAll()V

    invoke-interface {v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletDeviceIDCache:Ljava/lang/String;

    invoke-static {p2}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2, p2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->checkUserStatus(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusValid:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCacheTime:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCachedUserID:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    :try_start_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private refreshFingerprintCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCachedUserID:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v2

    new-instance v3, Lcom/alipay/security/mobile/cache/AuthenticatorCache$1;

    invoke-direct {v3, p0}, Lcom/alipay/security/mobile/cache/AuthenticatorCache$1;-><init>(Lcom/alipay/security/mobile/cache/AuthenticatorCache;)V

    invoke-interface {v2, v0, v3, p2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/16 v3, 0x6f

    if-eq v0, v3, :cond_1

    const/16 v3, 0x69

    if-eq v0, v3, :cond_1

    const/16 v3, 0x6a

    if-eq v0, v3, :cond_1

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_2

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->clearFingerprintCacheAll()V

    invoke-interface {v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->registedFingerPrintNumber()I

    move-result v0

    iput v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintNumberCache:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCacheTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintNumberValid:J

    invoke-interface {v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintDeviceIDCache:Ljava/lang/String;

    invoke-static {p2}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2, p2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->checkUserStatus(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusValid:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCacheTime:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCachedUserID:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    :try_start_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public clearBraceletCacheAll()V
    .locals 2

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusValid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearBraceletUserStatusCache()V
    .locals 2

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusValid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearFingerprintCacheAll()V
    .locals 4

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusValid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v0, -0x64

    iput v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintNumberCache:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintNumberValid:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearFingerprintUserStatusCache()V
    .locals 2

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusValid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBraceletDeviceIDCache()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletDeviceIDCache:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBraceletUserStatusCache(Ljava/lang/String;)I
    .locals 8

    const/16 v1, -0x64

    sget-object v2, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusValid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusValid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusValid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mBraceletUserStatusCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFingerprintDeviceIDCache()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintDeviceIDCache:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFingerprintNumberCache()I
    .locals 6

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintNumberValid:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/16 v0, -0x64

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintNumberCache:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFingerprintUserStatusCache(Ljava/lang/String;)I
    .locals 8

    const/16 v1, -0x64

    sget-object v2, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusValid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusValid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusValid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mFingerprintUserStatusCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public refreshCache(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCachedContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCachedContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCacheTime:J

    cmp-long v0, v0, p3

    if-lez v0, :cond_2

    iget-wide p3, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCacheTime:J

    :cond_2
    iput-wide p3, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->mCacheTime:J

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;

    invoke-direct {v1, p0, p2}, Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;-><init>(Lcom/alipay/security/mobile/cache/AuthenticatorCache;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
