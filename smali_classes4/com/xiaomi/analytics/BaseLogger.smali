.class Lcom/xiaomi/analytics/BaseLogger;
.super Ljava/lang/Object;
.source "BaseLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/BaseLogger$PendingUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseLogger"

.field private static mOnPreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

.field private static volatile sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

.field private static sAppId:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/xiaomi/analytics/BaseLogger$PendingUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfigKey:Ljava/lang/String;

.field private mSession:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/xiaomi/analytics/BaseLogger$1;

    invoke-direct {v0}, Lcom/xiaomi/analytics/BaseLogger$1;-><init>()V

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->mOnPreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->mConfigKey:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/analytics/BaseLogger;->mConfigKey:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do you forget to do Logger.init ?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$002(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0

    sput-object p0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-object p0
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/analytics/BaseLogger;->drainPendingEvents()V

    return-void
.end method

.method private static drainPendingEvents()V
    .locals 7

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    if-eqz v0, :cond_2

    const-string v0, "BaseLogger"

    const-string v1, "drainPendingEvents "

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    sget-object v1, Lcom/xiaomi/analytics/BaseLogger;->sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/xiaomi/analytics/BaseLogger;->sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    iget-object v2, v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->mEvent:Lcom/xiaomi/analytics/LogEvent;

    iget-object v3, v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->mAppId:Ljava/lang/String;

    iget-object v4, v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->mConfigKey:Ljava/lang/String;

    iget-object v1, v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->mSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const-string v4, "BaseLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trackEvents "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    const-class v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/xiaomi/analytics/internal/util/Utils;->list2Array(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v4, v3}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->trackEvents([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/xiaomi/analytics/BaseLogger;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    sget-object p0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/analytics/BaseLogger;->sAppId:Ljava/lang/String;

    sget-object p0, Lcom/xiaomi/analytics/BaseLogger;->sAppId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/analytics/BaseLogger;->mOnPreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    invoke-virtual {p0, v1}, Lcom/xiaomi/analytics/internal/SdkManager;->setOnSdkPrepareListener(Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is not a application context."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public endSession()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    return-void
.end method

.method protected log(Lcom/xiaomi/analytics/LogEvent;)V
    .locals 5

    if-eqz p1, :cond_1

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    sget-object v1, Lcom/xiaomi/analytics/BaseLogger;->sAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->mConfigKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    sget-object v2, Lcom/xiaomi/analytics/BaseLogger;->sAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->mConfigKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    iget-object v1, p0, Lcom/xiaomi/analytics/BaseLogger;->mConfigKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v2}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->mConfigKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public startSession()V
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    const-string v0, "BaseLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
