.class public abstract Lcom/miui/video/base/statistics/StatisticsClient;
.super Ljava/lang/Object;
.source "StatisticsClient.java"


# static fields
.field public static final TYPE_CLICK:I = 0x2

.field public static final TYPE_EVENT:I = 0x4

.field public static final TYPE_HOST:I = 0x8

.field public static final TYPE_UNKOWN:I = 0x0

.field public static final TYPE_VIEW:I = 0x1


# instance fields
.field private final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/video/base/statistics/StatisticsClient;->type:I

    return-void
.end method


# virtual methods
.method public abstract getStatisticsHost()Ljava/lang/String;
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/statistics/StatisticsClient;->type:I

    return v0
.end method

.method public abstract onClickStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;Lcom/miui/video/framework/uri/LinkEntity;)Z
.end method

.method public abstract onEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;Lcom/miui/video/framework/uri/LinkEntity;)Z
.end method

.method public abstract onViewStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;Lcom/miui/video/framework/uri/LinkEntity;)Z
.end method
