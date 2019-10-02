.class public Lcom/miui/video/player/service/recommend/RecommendReport;
.super Ljava/lang/Object;
.source "RecommendReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportLocalDiversionCardClose()V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;

    const-string v1, "local_diversion_card_close"

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->reportEvent()Z

    return-void
.end method

.method public static reportLocalDiversionCardExpose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;

    const-string v1, "local_diversion_card_expose"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->reportEvent()Z

    return-void
.end method

.method public static reportLocalDiversionCardPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;

    const-string v1, "local_diversion_card_play"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->reportEvent()Z

    return-void
.end method

.method public static reportLocalDiversionExpose(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;

    const-string v1, "local_diversion_expose"

    invoke-direct {v0, v1, p0}, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->reportEvent()Z

    return-void
.end method

.method public static reportLocalDiversionSettingOff()V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;

    const-string v1, "local_diversion_setting_off"

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->reportEvent()Z

    return-void
.end method

.method public static reportLocalDiversionSettingOn()V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;

    const-string v1, "local_diversion_setting_on"

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->reportEvent()Z

    return-void
.end method
