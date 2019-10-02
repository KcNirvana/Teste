.class public interface abstract Lcom/miui/video/base/statistics/StatisticsUtils2$IStatisticsListener;
.super Ljava/lang/Object;
.source "StatisticsUtils2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/statistics/StatisticsUtils2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStatisticsListener"
.end annotation


# virtual methods
.method public abstract parseClickStatisticsEntity(Lcom/miui/video/base/statistics/StatisticsEntity;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/statistics/StatisticsEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/base/statistics/StatisticsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parseEventStatisticsEntity(Lcom/miui/video/base/statistics/StatisticsEntity;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/statistics/StatisticsEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/base/statistics/StatisticsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parseViewStatisticsEntity(Lcom/miui/video/base/statistics/StatisticsEntity;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/statistics/StatisticsEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/base/statistics/StatisticsEntity;",
            ">;"
        }
    .end annotation
.end method
