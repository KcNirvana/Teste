.class public Lcom/miui/video/player/service/statistics/LocalStatisticsManager;
.super Ljava/lang/Object;
.source "LocalStatisticsManager.java"


# static fields
.field private static mID:Ljava/lang/String; = null

.field private static mIsPlaying:Z = false

.field private static mLastPause:J = 0x0L

.field private static mLastStart:J = 0x0L

.field private static mPath:Ljava/lang/String; = null

.field private static mSource:Ljava/lang/String; = null

.field private static mTimeCount:J = 0x0L

.field private static final mType:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static playEnd(JLjava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->videoPause()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_play_duration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mTimeCount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_duration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "error"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "play_end_local"

    sget-object p1, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mSource:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static playRePlay()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mSource:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sput-object p1, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mPath:Ljava/lang/String;

    :cond_1
    const-wide/16 p0, 0x0

    sput-wide p0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mTimeCount:J

    sput-wide p0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mLastStart:J

    sput-wide p0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mLastPause:J

    const/4 p0, 0x0

    sput-boolean p0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mIsPlaying:Z

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "play_id"

    sget-object v0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mID:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    const-string v0, "1"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "folder_path"

    sget-object v0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mPath:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "play_start_local"

    sget-object v0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mSource:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/miui/video/base/statistics/StaticRecommendReport;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static videoPause()V
    .locals 6

    sget-boolean v0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mIsPlaying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mIsPlaying:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mLastPause:J

    sget-wide v0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mTimeCount:J

    sget-wide v2, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mLastPause:J

    sget-wide v4, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mLastStart:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mTimeCount:J

    return-void
.end method

.method public static videoStart()V
    .locals 2

    sget-boolean v0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mIsPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mIsPlaying:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->mLastStart:J

    return-void
.end method
