.class public Lcom/xiaomi/analytics/internal/SdkManager;
.super Ljava/lang/Object;
.source "SdkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SdkManager"

.field private static sFileLock:Ljava/lang/Object;

.field private static volatile sInstance:Lcom/xiaomi/analytics/internal/SdkManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeavyWorker:Ljava/lang/Runnable;

.field private volatile mInitialized:Z

.field private mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

.field private mSdkCorePreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

.field private mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mInitialized:Z

    new-instance v0, Lcom/xiaomi/analytics/internal/SdkManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/SdkManager$1;-><init>(Lcom/xiaomi/analytics/internal/SdkManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHeavyWorker:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    const-string p1, "connectivity"

    sput-object p1, Lcom/xiaomi/analytics/internal/SdkManager;->sFileLock:Ljava/lang/Object;

    new-instance p1, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    sget-object p1, Lcom/xiaomi/analytics/internal/util/TaskRunner;->SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHeavyWorker:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/xiaomi/analytics/internal/SdkManager;->sFileLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->loadSysAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/SysAnalytics;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSdkCorePreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/PolicyConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    return-object p0
.end method

.method static synthetic access$502(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mInitialized:Z

    return p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;
    .locals 2

    const-class v0, Lcom/xiaomi/analytics/internal/SdkManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/analytics/internal/SdkManager;->sInstance:Lcom/xiaomi/analytics/internal/SdkManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-direct {v1, p0}, Lcom/xiaomi/analytics/internal/SdkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/analytics/internal/SdkManager;->sInstance:Lcom/xiaomi/analytics/internal/SdkManager;

    :cond_0
    sget-object p0, Lcom/xiaomi/analytics/internal/SdkManager;->sInstance:Lcom/xiaomi/analytics/internal/SdkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private loadSysAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->waitForConnected()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    return-object v0
.end method


# virtual methods
.method public getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    return-object v0
.end method

.method public getVersion()Lcom/xiaomi/analytics/internal/Version;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/analytics/internal/Version;

    const-string v1, "0.0.0"

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setOnSdkPrepareListener(Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSdkCorePreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    return-void
.end method

.method public setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-virtual {p1, v0}, Lcom/xiaomi/analytics/PolicyConfiguration;->apply(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    :cond_0
    return-void
.end method
