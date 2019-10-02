.class public Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;
.super Ljava/lang/Object;
.source "FlickStats.java"


# static fields
.field public static final AD_COMPLETED:Ljava/lang/String; = "ad_completed"

.field public static final AD_FAILED:Ljava/lang/String; = "ad_failed"

.field public static final AD_INITIATED:Ljava/lang/String; = "ad_initiated"

.field public static final AD_PROGRESS:Ljava/lang/String; = "ad_progress"

.field public static final AD_SKIPPED:Ljava/lang/String; = "ad_skipped"

.field public static final AD_STARTED:Ljava/lang/String; = "ad_started"

.field public static final BUFFERING_COMPLETED:Ljava/lang/String; = "buffering_completed"

.field public static final BUFFERING_STARTED:Ljava/lang/String; = "buffering_started"

.field public static final LOADING_COMPLETED:Ljava/lang/String; = "loading_completed"

.field public static final LOADING_STARTED:Ljava/lang/String; = "loading_started"

.field public static final PLAY_COMPLETED:Ljava/lang/String; = "play_completed"

.field public static final PLAY_ERROR:Ljava/lang/String; = "play_error"

.field public static final PLAY_INITIATED:Ljava/lang/String; = "play_initiated"

.field public static final PLAY_PAUSED:Ljava/lang/String; = "play_paused"

.field public static final PLAY_PROGRESS:Ljava/lang/String; = "play_progress"

.field public static final PLAY_QUALITY_CHANGED:Ljava/lang/String; = "play_quality_changed"

.field public static final PLAY_RESUMED:Ljava/lang/String; = "play_resumed"

.field public static final PLAY_STARTED:Ljava/lang/String; = "play_started"

.field public static final PLAY_STOPPED:Ljava/lang/String; = "play_stopped"

.field public static final SEEK_COMPLETED:Ljava/lang/String; = "seek_completed"

.field public static final SEEK_STARTED:Ljava/lang/String; = "seek_started"

.field private static final TAG:Ljava/lang/String; = "FlickStats"

.field private static volatile sInstance:Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;


# instance fields
.field private mLastADEventTs:J

.field private mLastEventTs:J

.field private mPlayInitTs:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;
    .locals 2

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;->sInstance:Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;->sInstance:Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;

    invoke-direct {v1}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;-><init>()V

    sput-object v1, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;->sInstance:Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;

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
    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;->sInstance:Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStats;

    return-object v0
.end method
