.class public Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;
.implements Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrack;
.implements Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/IAudioTrack;


# static fields
.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlayerWrapper"


# instance fields
.field private mBufferUpdated:I

.field private mCurrentState:I

.field private mExBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

.field private mExCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

.field private mExErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field private mExInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

.field private mExPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

.field private mExSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

.field private mExVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

.field private mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

.field private mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

.field private mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field private mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

.field private mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

.field private mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

.field private mInnerVideoSizeListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

.field private mMediaPlayerListener:Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

.field private mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;


# direct methods
.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mTargetState:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mBufferUpdated:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mUri:Landroid/net/Uri;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$2;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$3;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$4;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$4;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$5;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$5;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$6;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$6;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$7;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$7;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerVideoSizeListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerVideoSizeListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mMediaPlayerListener:Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mBufferUpdated:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mTargetState:I

    return p0
.end method

.method static synthetic access$502(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mTargetState:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->handleError(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method private handleError(II)Z
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mTargetState:I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mMediaPlayerListener:Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mMediaPlayerListener:Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;->getOnErrorListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addAndChangeSubtitleTrack(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->addExtraSubtitleFile(Ljava/lang/String;)V

    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;)V

    return-void
.end method

.method public closeSubtitle()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->closeSubtitle()V

    return-void
.end method

.method public deselectTrack(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->deselectTrack(I)V

    return-void
.end method

.method public getAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getAudioTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mBufferUpdated:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    return v0
.end method

.method public getCurrentSubtitleTimeOffset()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getCurrentSubtitleTimeOffset()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaPlayerListener()Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mMediaPlayerListener:Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

    return-object v0
.end method

.method public getPlaySpeed()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getPlaySpeed()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getPlayer()Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    return-object v0
.end method

.method public getSelectedAudioTrack()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSelectedAudioTrack()I

    move-result v0

    return v0
.end method

.method public getSelectedSubtitleTrack()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSelectedSubtitleTrack()I

    move-result v0

    return v0
.end method

.method public getSelectedTrack(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getSelectedTrack(I)I

    move-result p1

    return p1
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

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSubtitleTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getVolume()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initSub(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->initSub(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public isIdle()Z
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInPlaybackState()Z
    .locals 3

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isPlayingState()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mTargetState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    return v0
.end method

.method public isReleased()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->destroy()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayerWrapper  #pause mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->pause()V

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    :cond_0
    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mTargetState:I

    :cond_1
    return-void
.end method

.method public prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#prepare mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->prepare()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    :cond_0
    return-void
.end method

.method public prepareAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#prepareAsync mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#release mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mTargetState:I

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#reset mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mTargetState:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->reset()V

    :cond_1
    return-void
.end method

.method public seekTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->seekTo(I)V

    goto :goto_0

    :cond_0
    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not in playback state, give up seek to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public selectAudioTrack(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->selectAudioTrack(I)V

    return-void
.end method

.method public selectSubtitleTrack(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->selectSubtitleTrack(I)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->selectTrack(I)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#setDataSource : uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#setDataSource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {p3, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mUri:Landroid/net/Uri;

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mBufferUpdated:I

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-direct {p0, v0, v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->handleError(II)Z

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#setDataSource : path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#setDataSource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->handleError(II)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {p2, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mUri:Landroid/net/Uri;

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mBufferUpdated:I

    :cond_2
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    return-void
.end method

.method public setMediaPlayerListener(Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mMediaPlayerListener:Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnSubtitleTextListener(Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->setOnSubtitleTextListener(Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;)V

    return-void
.end method

.method public setOnSubtitleTrackListener(Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->setOnSubtitleTrackListener(Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;)V

    return-void
.end method

.method public setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mExVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setPlaySpeed(F)V

    :cond_0
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setScreenOnWhilePlaying(Z)V

    :cond_0
    return-void
.end method

.method public setSlowMotionTime(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setSlowMotionTime(JJ)V

    :cond_0
    return-void
.end method

.method public setSubtitleTimeOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->setSubtitleTimeOffset(I)V

    return-void
.end method

.method public setSubtitleTimeOffsets(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setSubtitleTimedTextDelay(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setSubtitleTimedTextDelay(J)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setTimedTextView(Landroid/view/SurfaceView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setTimedTextView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setTimedTextView(Landroid/view/TextureView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setTimedTextView(Landroid/view/TextureView;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayerWrapper  #start  mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const-string v0, "MediaPlayerWrapper"

    const-string v2, "do start "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->start()V

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    :cond_0
    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mTargetState:I

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#stop mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mTargetState:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->stop()V

    :cond_0
    return-void
.end method
