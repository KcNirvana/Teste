.class public Lcom/miui/video/base/statistics/StatisticsUtils2;
.super Ljava/lang/Object;
.source "StatisticsUtils2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/statistics/StatisticsUtils2$IStatisticsListener;,
        Lcom/miui/video/base/statistics/StatisticsUtils2$IStatisticsConstant;,
        Lcom/miui/video/base/statistics/StatisticsUtils2$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatisticsUtils2"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatisticsUtils2"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/video/base/statistics/StatisticsUtils2;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsUtils2;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/miui/video/base/statistics/StatisticsUtils2$1;

    iget-object v1, p0, Lcom/miui/video/base/statistics/StatisticsUtils2;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/video/base/statistics/StatisticsUtils2$1;-><init>(Lcom/miui/video/base/statistics/StatisticsUtils2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/base/statistics/StatisticsUtils2;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/base/statistics/StatisticsUtils2;Lcom/miui/video/base/statistics/StatisticsEntity;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->runStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/StatisticsUtils2$SingletonHolder;->sInstance:Lcom/miui/video/base/statistics/StatisticsUtils2;

    return-object v0
.end method

.method private reportStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->getType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/video/base/statistics/StatisticsUtils2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private runStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->getEventKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "event"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "module"

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->getModule()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "source"

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "StatisticsUtils2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runStatistics : eventKey =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " params = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v1

    invoke-static {p1, v2, v0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "StatisticsUtils2"

    const-string v1, "runStatistics failed"

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method


# virtual methods
.method public reportClickStatistics(Lcom/miui/video/base/statistics/BaseStatistics;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/BaseStatistics;->getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/statistics/BaseStatistics;->getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->setType(I)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public reportClickStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->setType(I)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    move-result p1

    return p1
.end method

.method public reportEventStatistics(Lcom/miui/video/base/statistics/BaseStatistics;)Z
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/BaseStatistics;->getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "StatisticsUtils2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportEventStatistics "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/BaseStatistics;->getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->getEventKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/BaseStatistics;->getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/BaseStatistics;->getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->setType(I)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z
    .locals 3

    const-string v0, "StatisticsUtils2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportEventStatistics "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->getEventKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->setType(I)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    move-result p1

    return p1
.end method

.method public reportViewStatistics(Lcom/miui/video/base/statistics/BaseStatistics;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/BaseStatistics;->getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/statistics/BaseStatistics;->getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->setType(I)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public reportViewStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->setType(I)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    move-result p1

    return p1
.end method
