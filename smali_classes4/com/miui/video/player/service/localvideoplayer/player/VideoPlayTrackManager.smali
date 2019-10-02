.class public Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;
.super Ljava/lang/Object;
.source "VideoPlayTrackManager.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrack;
.implements Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/IAudioTrack;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayTrackManager"


# instance fields
.field private hasInitted:Z

.field private mAddSubtitle:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

.field private mAllSubtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

.field private mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mDelayPlay:Ljava/lang/Runnable;

.field private mDrainTimedText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;

.field private mExtraSubtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mInterSubtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

.field private mPauseHere:Z

.field private mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

.field private mSelectedAudioTrack:I

.field private mSelectedSubtitleTrack:I

.field private mSubtitleTimeoffsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtitleTrackListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;

.field private mTextIdx:J

.field private mTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mTextIdx:J

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mExtraSubtitleTracks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mInterSubtitleTracks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAudioTracks:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSubtitleTrackListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSubtitleTimeoffsets:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSelectedSubtitleTrack:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mPauseHere:Z

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mDelayPlay:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$4;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$4;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-direct {p1, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;Lcom/miui/video/base/common/task/WeakHandler;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mDrainTimedText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mPauseHere:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSubtitleTrackListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;Ltv/danmaku/ijk/media/player/misc/ITimedText;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->buildDrainSubText(Ltv/danmaku/ijk/media/player/misc/ITimedText;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method private buildDrainSubText(Ltv/danmaku/ijk/media/player/misc/ITimedText;)V
    .locals 5

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;

    invoke-direct {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;-><init>()V

    iget-wide v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mTextIdx:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mTextIdx:J

    iget-wide v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mTextIdx:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->setIdx(J)V

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/misc/ITimedText;->getStartTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->setStartTime(J)V

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/misc/ITimedText;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->setDuration(J)V

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;

    invoke-direct {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;-><init>()V

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/misc/ITimedText;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;->setText(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;->setType(I)V

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->setSubData(Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mDrainTimedText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->drainTimedText(Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;)V

    return-void
.end method

.method private clearSub()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mDrainTimedText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mDrainTimedText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->clearTimedText()V

    return-void
.end method

.method private posInTracks(II)I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "posInTracks : return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getPosInTrack()I

    move-result p1

    return p1

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v3

    if-ne v3, p2, :cond_4

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private selectTrack(II)V
    .locals 6

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->posInTracks(II)I

    move-result v0

    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", position is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_5

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v2, p2, :cond_0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSelectedAudioTrack:I

    sget-object p1, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSelectedAudioTrack:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-ne v1, p2, :cond_1

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSelectedSubtitleTrack:I

    sget-object v3, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subtitle index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSelectedSubtitleTrack:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->setSelectedSubtitleTrack(I)V

    :cond_1
    :goto_0
    sget-object p1, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectTrack "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->selectTrack(I)V

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->hasInitted:Z

    if-eqz p1, :cond_4

    if-ne v2, p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    iget p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSelectedAudioTrack:I

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->onAudioTrackSelectedCallback(I)V

    goto :goto_1

    :cond_2
    if-ne v1, p2, :cond_6

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSelectedSubtitleTrack()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSelectedSubtitleTrack()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getCurrentSubtitleTimeOffset()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->onSubtitleTrackSelectedCallback(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->hasInitted:Z

    goto :goto_1

    :cond_5
    const/4 p1, -0x1

    if-ne v0, p1, :cond_6

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSelectedSubtitleTrack:I

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    const-string p2, "-1"

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getCurrentSubtitleTimeOffset()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->onSubtitleTrackSelectedCallback(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p2, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectTrack: e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method private setSelectedSubtitleTrack(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    if-ne p1, v1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setSelected(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addExtraSubtitleFile(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->selectSubtitleTrack(I)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;Ljava/lang/String;Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ILoadSubtitleFinishedListener;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAddSubtitle:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAddSubtitle:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->postJob(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public closeSubtitle()V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    const-string v1, "closeSubtitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->clearSub()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSubtitleTrackListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;->onSubTrackClose(Z)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAddSubtitle:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAddSubtitle:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->removeJob(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAddSubtitle:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    :cond_0
    return-void
.end method

.method public getAllSubtitleTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    return-object v0
.end method

.method public getAllTracks()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    return-object v0
.end method

.method public getAudioTracks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAudioTracks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentSubtitleTimeOffset()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSelectedSubtitleTrack()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSubtitleTimeoffsets:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSubtitleTimeoffsets:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExtraSubtitleTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mExtraSubtitleTracks:Ljava/util/List;

    return-object v0
.end method

.method public getInterSubtitleTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mInterSubtitleTracks:Ljava/util/List;

    return-object v0
.end method

.method public getPlayer()Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    return-object v0
.end method

.method public getSelectedAudioTrack()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSelectedAudioTrack:I

    return v0
.end method

.method public getSelectedSubtitleTrack()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSelectedSubtitleTrack:I

    return v0
.end method

.method public getSubtitleTimeOffsets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSubtitleTimeoffsets:Ljava/util/Map;

    return-object v0
.end method

.method public getSubtitleTracks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mInterSubtitleTracks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mExtraSubtitleTracks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public initSub(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    const-string v1, "initSub"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mVideoPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    invoke-direct {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-interface {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    :try_start_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    array-length p2, p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    aget-object p2, p2, p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    aget-object p2, p2, p1

    invoke-interface {p2}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    aget-object p2, p2, p1

    invoke-interface {p2}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-direct {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setLanguageAndType(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setPosInTrack(I)V

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mInterSubtitleTracks:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->loadAudioTracks(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)V

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->postJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTrackInfo exception.e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public loadAudioTracks(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/video/player/service/R$array;->lang_detect:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    new-instance v3, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;

    invoke-direct {v3}, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;-><init>()V

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->setId(I)V

    sget-object v4, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio language: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    aget-object v6, v6, v2

    invoke-interface {v6}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/subtitle/LanguageDetector;->getInstance()Lcom/miui/video/player/service/localvideoplayer/subtitle/LanguageDetector;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    aget-object v5, v5, v2

    invoke-interface {v5}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/video/player/service/localvideoplayer/subtitle/LanguageDetector;->detectLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    aget-object v4, p1, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v3, v4}, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->setLanguage(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAudioTracks:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    const-string v1, "getAudioTracks : "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public notifyAudioReady()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$3;

    invoke-direct {v1, p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifySubtrackReady()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$2;

    invoke-direct {v1, p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->hasInitted:Z

    return-void
.end method

.method public selectAudioTrack(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->selectTrack(II)V

    return-void
.end method

.method public selectSubtitleTrack(I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->closeSubtitle()V

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->selectTrack(II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSubtitleTrackListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSubtitleTrackListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;->onSubTrackClose(Z)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->clearSub()V

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->selectTrack(II)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    const-string v0, "selectSubtitleTrack: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setOnSubtitleTextListener(Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mDrainTimedText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->setSubtitleTextListener(Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;)V

    return-void
.end method

.method public setOnSubtitleTrackListener(Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSubtitleTrackListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;

    return-void
.end method

.method public setSubtitleTimeOffset(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSelectedSubtitleTrack()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSubtitleTimeoffsets:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mAllSubtitleTracks:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSelectedSubtitleTrack()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSelectedSubtitleTrack()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getCurrentSubtitleTimeOffset()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->onSubtitleTrackSelectedCallback(Ljava/lang/String;I)V

    return-void
.end method

.method public setSubtitleTimeOffsets(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    const-string v0, "setSubtitleTimeOffsets, offsets is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubtitleTimeOffsets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->mSubtitleTimeoffsets:Ljava/util/Map;

    return-void
.end method
