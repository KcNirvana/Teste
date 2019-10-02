.class public Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;
.super Lcom/miui/video/base/statistics/BaseStatistics;
.source "RecommendReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/recommend/RecommendReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalDiversionStatistics"
.end annotation


# static fields
.field private static final DIVERSION_MODULE:Ljava/lang/String; = "local_diversion"

.field private static final FROM:Ljava/lang/String; = "source"

.field private static final ITEM_ID:Ljava/lang/String; = "item_id"

.field private static final LOCAL_DIVERSION_CARD_CLOSE:Ljava/lang/String; = "local_diversion_card_close"

.field private static final LOCAL_DIVERSION_CARD_EXPOSE:Ljava/lang/String; = "local_diversion_card_expose"

.field private static final LOCAL_DIVERSION_CARD_PLAY:Ljava/lang/String; = "local_diversion_card_play"

.field private static final LOCAL_DIVERSION_EXPOSE:Ljava/lang/String; = "local_diversion_expose"

.field private static final LOCAL_DIVERSION_SETTING_OFF:Ljava/lang/String; = "local_diversion_setting_off"

.field private static final LOCAL_DIVERSION_SETTING_ON:Ljava/lang/String; = "local_diversion_setting_on"

.field private static final PLAYLIST_ID:Ljava/lang/String; = "playlist_id"

.field private static final POSITION:Ljava/lang/String; = "position"


# instance fields
.field private mEventKey:Ljava/lang/String;

.field private mFrom:Ljava/lang/String;

.field private mItemId:Ljava/lang/String;

.field private mPlaylisId:Ljava/lang/String;

.field private mPosition:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/statistics/BaseStatistics;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mEventKey:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/statistics/BaseStatistics;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mEventKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mFrom:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/statistics/BaseStatistics;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mEventKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mItemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mPlaylisId:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mPosition:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    const-string v1, "local_diversion"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setModule(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setSource(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    :cond_0
    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mItemId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "item_id"

    iget-object v2, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    :cond_1
    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mPlaylisId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "playlist_id"

    iget-object v2, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mPlaylisId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    :cond_2
    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mPosition:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "position"

    iget-object v2, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mPosition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    :cond_3
    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendReport$LocalDiversionStatistics;->mEventKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    return-object v0
.end method
