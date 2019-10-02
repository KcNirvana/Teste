.class public Lcom/miui/video/framework/utils/statistics/StatisticsUtils;
.super Ljava/lang/Object;
.source "StatisticsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;
    }
.end annotation


# static fields
.field public static final STATISTICS_TYPE_APPEND:I = 0x0

.field public static final STATISTICS_TYPE_UNIQUE:I = 0x1

.field protected static mInstance:Lcom/miui/video/framework/utils/statistics/StatisticsUtils;


# instance fields
.field private isStatistics:Z

.field private mListener:Lcom/miui/video/framework/utils/statistics/IStatisticsListener;

.field private statisticsType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->isStatistics:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->statisticsType:I

    return-void
.end method

.method public static getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;
    .locals 2

    sget-object v0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->mInstance:Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->mInstance:Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    invoke-direct {v1}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;-><init>()V

    sput-object v1, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->mInstance:Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->mInstance:Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    return-object v0
.end method


# virtual methods
.method public addStatistics(Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->addStatistics(Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public addStatistics(Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "addStatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATISTICS_ACTION= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  obj= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->isStatistics()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->mListener:Lcom/miui/video/framework/utils/statistics/IStatisticsListener;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;->ACTION_SHOW:Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->mListener:Lcom/miui/video/framework/utils/statistics/IStatisticsListener;

    check-cast p2, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-interface {p1, p2, p3, p4}, Lcom/miui/video/framework/utils/statistics/IStatisticsListener;->onViewStatistics(Lcom/miui/video/framework/base/ui/BaseUIEntity;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p4, Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;->ACTION_CLICK:Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;

    if-ne p1, p4, :cond_2

    iget-object p1, p0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->mListener:Lcom/miui/video/framework/utils/statistics/IStatisticsListener;

    invoke-interface {p1, p2, p3}, Lcom/miui/video/framework/utils/statistics/IStatisticsListener;->onClickStatistics(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;->ACTION_VIDEO:Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->mListener:Lcom/miui/video/framework/utils/statistics/IStatisticsListener;

    invoke-interface {p1, p3}, Lcom/miui/video/framework/utils/statistics/IStatisticsListener;->onVideoStatistics(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public init(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->isStatistics:Z

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->statisticsType:I

    return-void
.end method

.method public isStatistics()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->isStatistics:Z

    return v0
.end method

.method public setListener(Lcom/miui/video/framework/utils/statistics/IStatisticsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->mListener:Lcom/miui/video/framework/utils/statistics/IStatisticsListener;

    return-void
.end method
