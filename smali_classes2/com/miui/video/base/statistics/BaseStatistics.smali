.class public abstract Lcom/miui/video/base/statistics/BaseStatistics;
.super Ljava/lang/Object;
.source "BaseStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/statistics/BaseStatistics$IStatistics;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;
.end method

.method public reportClick()Z
    .locals 1

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportClickStatistics(Lcom/miui/video/base/statistics/BaseStatistics;)Z

    move-result v0

    return v0
.end method

.method public reportEvent()Z
    .locals 1

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/BaseStatistics;)Z

    move-result v0

    return v0
.end method

.method public reportView()Z
    .locals 1

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportViewStatistics(Lcom/miui/video/base/statistics/BaseStatistics;)Z

    move-result v0

    return v0
.end method
