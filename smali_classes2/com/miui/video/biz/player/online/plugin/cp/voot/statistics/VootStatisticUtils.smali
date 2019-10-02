.class public Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;
.super Ljava/lang/Object;
.source "VootStatisticUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = "VootStatisticUtils"

.field private static hasBegin:Z

.field private static mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

.field private static mMediaReadyTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isInvalidAppInfo(Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->episodeID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mixpanelTrackAdEnd(Landroid/content/Context;Lcom/kaltura/playkit/plugins/ads/AdInfo;JJLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kaltura/playkit/plugins/ads/AdInfo;",
            "JJ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Action"

    const-string v2, "End"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad title"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad ID"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad Sequence"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdIndexInPod()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad Server"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdSystem()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad type"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPodTimeOffset()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "Mid-Roll"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPodTimeOffset()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const-string v2, "Post-Roll"

    goto :goto_0

    :cond_2
    const-string v2, "Pre-Roll"

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x3e8

    if-eqz p6, :cond_3

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getPodIndex()I

    move-result v4

    if-lt v3, v4, :cond_3

    const-string v3, "Cue Point"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getPodIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-interface {v0, v3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p6, "Cue Point Position"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getPodIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Time From Ad-start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 p6, 0x0

    sub-long/2addr v3, p2

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Time From TapPlay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const/4 p6, 0x0

    sub-long/2addr p2, p4

    div-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->isInvalidAppInfo(Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Device"

    const-string p2, "MiPhone"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Media ID"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->episodeID:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Show Name"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->title:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Content Name"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->seriesTitle:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Show Duration"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->duration:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SBU"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->sbu:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Language"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->language:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Genre"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->genre:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Content Type"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->contentType:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mixpanelTrackAdEnd, map: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Ad Action"

    invoke-static {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static mixpanelTrackAdForceQuit(Landroid/content/Context;Lcom/kaltura/playkit/plugins/ads/AdInfo;JJLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kaltura/playkit/plugins/ads/AdInfo;",
            "JJ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Action"

    const-string v2, "Force Quit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad title"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad ID"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad Sequence"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdIndexInPod()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad Server"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdSystem()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad type"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPodTimeOffset()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "Mid-Roll"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPodTimeOffset()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const-string v2, "Post-Roll"

    goto :goto_0

    :cond_1
    const-string v2, "Pre-Roll"

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x3e8

    if-eqz p6, :cond_2

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getPodIndex()I

    move-result v4

    if-lt v3, v4, :cond_2

    const-string v3, "Cue Point"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getPodIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-interface {v0, v3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p6, "Cue Point Position"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getPodIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Time From Ad-start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 p6, 0x0

    sub-long/2addr v3, p2

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Time From TapPlay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const/4 p6, 0x0

    sub-long/2addr p2, p4

    div-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->isInvalidAppInfo(Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Device"

    const-string p2, "MiPhone"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Media ID"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->episodeID:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Show Name"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->title:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Content Name"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->seriesTitle:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Show Duration"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->duration:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SBU"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->sbu:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Language"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->language:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Genre"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->genre:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Content Type"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->contentType:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mixpanelTrackAdForceQuit, map: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Ad Action"

    invoke-static {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static mixpanelTrackAdRequest(Landroid/content/Context;J)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Action"

    const-string v2, "Request"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Time From TapPlay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long/2addr v2, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->isInvalidAppInfo(Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Device"

    const-string p2, "MiPhone"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Media ID"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->episodeID:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Show Name"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->title:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Content Name"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->seriesTitle:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Show Duration"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->duration:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SBU"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->sbu:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Language"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->language:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Genre"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->genre:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Content Type"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->contentType:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mixpanelTrackAdRequest, map: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Ad Action"

    invoke-static {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static mixpanelTrackAdStart(Landroid/content/Context;Lcom/kaltura/playkit/plugins/ads/AdInfo;JLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kaltura/playkit/plugins/ads/AdInfo;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Action"

    const-string v2, "Start"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad title"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad ID"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad Sequence"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdIndexInPod()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad Server"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdSystem()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Ad type"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPodTimeOffset()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "Mid-Roll"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPodTimeOffset()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const-string v2, "Post-Roll"

    goto :goto_0

    :cond_2
    const-string v2, "Pre-Roll"

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x3e8

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getPodIndex()I

    move-result v4

    if-lt v3, v4, :cond_3

    const-string v3, "Cue Point"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getPodIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {v0, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p4, "Cue Point Position"

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getPodIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Time From TapPlay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 p4, 0x0

    sub-long/2addr v3, p2

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->isInvalidAppInfo(Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Device"

    const-string p2, "MiPhone"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Media ID"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->episodeID:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Show Name"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->title:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Content Name"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->seriesTitle:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Show Duration"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->duration:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SBU"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->sbu:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Language"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->language:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Genre"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->genre:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Content Type"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->contentType:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mixpanelTrackAdStart, map: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Ad Action"

    invoke-static {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static mixpanelTrackAdTimeout(Landroid/content/Context;J)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Action"

    const-string v2, "Timeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Time From TapPlay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long/2addr v2, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->isInvalidAppInfo(Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Device"

    const-string p2, "MiPhone"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Media ID"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->episodeID:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Show Name"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->title:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Content Name"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->seriesTitle:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Show Duration"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->duration:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SBU"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->sbu:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Language"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->language:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Genre"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->genre:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Content Type"

    sget-object p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->contentType:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mixpanelTrackAdTimeout, map: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Ad Action"

    invoke-static {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static mixpanelTrackPlayBegin(Landroid/content/Context;Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;)V
    .locals 3

    sget-boolean v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->hasBegin:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mixpanelTrackPlayEnd(Landroid/content/Context;)V

    :cond_0
    :try_start_0
    sput-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    sget-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->isInvalidAppInfo(Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Device"

    const-string v1, "MiPhone"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Media ID"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->episodeID:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Show Name"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->title:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content Name"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->seriesTitle:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Show Duration"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->duration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SBU"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->sbu:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Language"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->language:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Genre"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->genre:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content Type"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->contentType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mixpanelTrackPlayBegin, map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "tapPlay"

    invoke-static {p0, v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->hasBegin:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static mixpanelTrackPlayEnd(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->isInvalidAppInfo(Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mMediaReadyTime:J

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Device"

    const-string v4, "MiPhone"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Media ID"

    sget-object v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v4, v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->episodeID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Show Name"

    sget-object v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v4, v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->title:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Content Name"

    sget-object v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v4, v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->seriesTitle:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Show Duration"

    sget-object v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget v4, v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->duration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "SBU"

    sget-object v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v4, v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->sbu:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Language"

    sget-object v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v4, v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->language:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Genre"

    sget-object v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v4, v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->genre:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Content Type"

    sget-object v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v4, v4, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->contentType:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mixpanelTrackPlayEnd, map: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Video Watched"

    invoke-static {p0, v0, v2}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->hasBegin:Z

    const/4 p0, 0x0

    sput-object p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mMediaReadyTime:J

    return-void
.end method

.method public static mixpanelTrackPlayErro(Landroid/content/Context;II)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->isInvalidAppInfo(Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Device"

    const-string v1, "MiPhone"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Media ID"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->episodeID:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Show Name"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->title:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content Name"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->seriesTitle:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Genre"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->genre:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content Type"

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->contentType:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Error Description"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mixpanelTrackPlayErro, map: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Player Error"

    invoke-static {p0, p1, p2}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    sput-object p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->hasBegin:Z

    return-void
.end method

.method public static mixpanelTrackPlayReady(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->isInvalidAppInfo(Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mMediaReadyTime:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Device"

    const-string v2, "MiPhone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Media ID"

    sget-object v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v2, v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->episodeID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Show Name"

    sget-object v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v2, v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->title:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content Name"

    sget-object v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v2, v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->seriesTitle:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Show Duration"

    sget-object v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget v2, v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->duration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SBU"

    sget-object v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v2, v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->sbu:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Language"

    sget-object v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v2, v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->language:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Genre"

    sget-object v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v2, v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->genre:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content Type"

    sget-object v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mCpExtraInfo:Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;

    iget-object v2, v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/StatisticAppInfo;->contentType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mixpanelTrackPlayReady, map: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mediaReady"

    invoke-static {p0, v1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
