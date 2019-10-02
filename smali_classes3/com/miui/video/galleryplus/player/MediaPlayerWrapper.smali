.class public Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;
.implements Lcom/miui/video/galleryplus/subtitle/interfaces/ISubtitleTrack;
.implements Lcom/miui/video/galleryplus/subtitle/interfaces/IAudioTrack;


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

.field private mExBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

.field private mExCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

.field private mExErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

.field private mExInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

.field private mExPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

.field private mExSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

.field private mExVideoSizeChangedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

.field private mInnerBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

.field private mInnerCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

.field private mInnerErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

.field private mInnerInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

.field private mInnerPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

.field private mInnerSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

.field private mInnerVideoSizeListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

.field private mIsActivityBackPress:Z

.field private mIsActivityReopen:Z

.field private mMediaDuration:I

.field private mMediaPlayerListener:Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;

.field private mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;


# direct methods
.method public constructor <init>(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mIsActivityBackPress:Z

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mIsActivityReopen:Z

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mTargetState:I

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mBufferUpdated:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mUri:Landroid/net/Uri;

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mMediaDuration:I

    new-instance v0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$1;-><init>(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

    new-instance v0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$2;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$2;-><init>(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$3;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$3;-><init>(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$4;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$4;-><init>(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    new-instance v0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;-><init>(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$6;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$6;-><init>(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$7;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$7;-><init>(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerVideoSizeListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setOnInfoListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setOnErrorListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setOnCompletionListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setOnPreparedListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setOnSeekCompleteListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerVideoSizeListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setOnVideoSizeChangedListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mInnerBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setOnBufferingUpdateListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;)V

    new-instance p1, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;-><init>(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mMediaPlayerListener:Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExVideoSizeChangedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mBufferUpdated:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mTargetState:I

    return p0
.end method

.method static synthetic access$502(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mTargetState:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->handleError(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mIsActivityReopen:Z

    return p0
.end method

.method static synthetic access$900(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method private handleError(II)Z
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mTargetState:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mMediaPlayerListener:Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mMediaPlayerListener:Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;->getOnErrorListener()Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;II)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;II)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public accurateSeekTo(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->isInPlaybackState()Z

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

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->accurateSeekTo(I)V

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

.method public addAndChangeSubtitleTrack(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->addExtraSubtitleFile(Ljava/lang/String;)V

    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/galleryplus/player/OnAddTimedTextListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/galleryplus/player/OnAddTimedTextListener;)V

    return-void
.end method

.method public changeDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->changeDataSource(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public closeSubtitle()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->closeSubtitle()V

    return-void
.end method

.method public deselectTrack(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->deselectTrack(I)V

    return-void
.end method

.method public getAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/galleryplus/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->getAudioTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mBufferUpdated:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentRatio()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->getCurrentRatio()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    return v0
.end method

.method public getCurrentSubtitleTimeOffset()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->getCurrentSubtitleTimeOffset()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaPlayerListener()Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mMediaPlayerListener:Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;

    return-object v0
.end method

.method public getSelectedAudioTrack()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->getSelectedAudioTrack()I

    move-result v0

    return v0
.end method

.method public getSelectedSubtitleTrack()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->getSelectedSubtitleTrack()I

    move-result v0

    return v0
.end method

.method public getSelectedTrack(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->getSelectedTrack(I)I

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
            "Lcom/miui/video/galleryplus/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->getSubtitleTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->getVolume()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initSub(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->initSub(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public isIdle()Z
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

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

    iget v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->isPlaying()Z

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

    iget v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mTargetState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

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

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    return v0
.end method

.method public isReleased()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityBackPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mIsActivityBackPress:Z

    return-void
.end method

.method public onActivityReopen()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mIsActivityReopen:Z

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

    const-string v2, "MediaPlayer#pause mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->pause()V

    iput v1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    :cond_0
    iput v1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mTargetState:I

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

    iget-object v2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->prepare()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

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

    iget-object v2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

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

    iget-object v2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mIsActivityBackPress:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->release()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mTargetState:I

    iput-object v1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mUri:Landroid/net/Uri;

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

    iget-object v2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mTargetState:I

    iget-object v1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->reset()V

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    :cond_0
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

    iget-object v2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->isInPlaybackState()Z

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

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->seekTo(I)V

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

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->selectAudioTrack(I)V

    return-void
.end method

.method public selectSubtitleTrack(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->selectSubtitleTrack(I)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->selectTrack(I)V

    :cond_0
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

    iget-object v2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

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

    iget-object v2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

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
    iget-object v1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {p3, p1, p2}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    iput-object p2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mUri:Landroid/net/Uri;

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mBufferUpdated:I

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-direct {p0, v0, v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->handleError(II)Z

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

    iget-object v2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

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

    iget-object v2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->handleError(II)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {p2, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mUri:Landroid/net/Uri;

    iput v1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mBufferUpdated:I

    :cond_2
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public setMediaPlayerListener(Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mMediaPlayerListener:Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnSubtitleTextListener(Lcom/miui/video/galleryplus/subtitle/interfaces/ISubtitleTextListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->setOnSubtitleTextListener(Lcom/miui/video/galleryplus/subtitle/interfaces/ISubtitleTextListener;)V

    return-void
.end method

.method public setOnSubtitleTrackListener(Lcom/miui/video/galleryplus/subtitle/interfaces/ISubtitleTrackListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->setOnSubtitleTrackListener(Lcom/miui/video/galleryplus/subtitle/interfaces/ISubtitleTrackListener;)V

    return-void
.end method

.method public setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mExVideoSizeChangedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlayRatio(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setPlayRatio(F)V

    :cond_0
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setPlaySpeed(F)V

    :cond_0
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setScreenOnWhilePlaying(Z)V

    :cond_0
    return-void
.end method

.method public setSlowMotionTime(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setSlowMotionTime(JJ)V

    :cond_0
    return-void
.end method

.method public setSubtitleTimeOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mVideoTrack:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->setSubtitleTimeOffset(I)V

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

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setTimedTextView(Landroid/view/SurfaceView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setTimedTextView(Landroid/view/SurfaceView;)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->setVolume(FF)V

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

    const-string v2, "MediaPlayer#start  mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const-string v0, "MediaPlayerWrapper"

    const-string v2, "do start "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->start()V

    iput v1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mMediaDuration:I

    :cond_0
    iput v1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mTargetState:I

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

    iget-object v2, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mTargetState:I

    iput v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->mPlayer:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->stop()V

    :cond_0
    return-void
.end method
