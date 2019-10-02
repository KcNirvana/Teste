.class public Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;
.super Ljava/lang/Object;
.source "LocalSlideStatistic.java"


# static fields
.field private static mInstance:Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;


# instance fields
.field private aiMusicCount:I

.field private isAiMusic:Z

.field private linkCount:I

.field private mStatisticsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pauseCount:I

.field private saveCount:I

.field private settingCount:I

.field private slideCount:I

.field private supportSlide:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->mStatisticsMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->mInstance:Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->mInstance:Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    invoke-direct {v1}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;-><init>()V

    sput-object v1, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->mInstance:Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

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
    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->mInstance:Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    return-object v0
.end method


# virtual methods
.method public link()V
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->linkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->linkCount:I

    return-void
.end method

.method public matchAiMusic()V
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->aiMusicCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->aiMusicCount:I

    return-void
.end method

.method public pause()V
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->pauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->pauseCount:I

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->isAiMusic:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->supportSlide:Z

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->slideCount:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->linkCount:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->pauseCount:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->settingCount:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->saveCount:I

    return-void
.end method

.method public save()V
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->saveCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->saveCount:I

    return-void
.end method

.method public set()V
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->settingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->settingCount:I

    return-void
.end method

.method public setAiMusic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->isAiMusic:Z

    return-void
.end method

.method public setSupportSlide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->supportSlide:Z

    return-void
.end method

.method public slide()V
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->slideCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->slideCount:I

    return-void
.end method
