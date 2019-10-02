.class public Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;
.super Ljava/lang/Object;
.source "OriginMediaPlayer.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;


# instance fields
.field private mBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

.field private final mContext:Landroid/content/Context;

.field private mErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

.field private mInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

.field private mInnerBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mInnerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mInnerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mInnerInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mInnerPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mInnerSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mInnerVideoSizeListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

.field private mRatio:F

.field private mSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

.field private mVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mRatio:F

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$1;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$2;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$3;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$4;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$4;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$5;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$5;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$6;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$6;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$7;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$7;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerVideoSizeListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method


# virtual methods
.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/biz/videoplus/player/mediaplayer/OnAddTimedTextListener;)V
    .locals 0

    return-void
.end method

.method public deselectTrack(I)V
    .locals 0

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentRatio()F
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mRatio:F

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getSelectedTrack(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->fromMediaPlayer(Landroid/media/MediaPlayer;)[Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :goto_0
    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :goto_0
    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    :goto_0
    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :goto_0
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    :goto_0
    return-void
.end method

.method public setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mInnerVideoSizeListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    :goto_0
    return-void
.end method

.method public setPlayRatio(F)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    :cond_0
    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mRatio:F

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 0

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setSlowMotionTime(JJ)V
    .locals 0

    return-void
.end method

.method public setSubtitleTimedTextDelay(J)V
    .locals 0

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setTimedTextView(Landroid/view/SurfaceView;)V
    .locals 0

    return-void
.end method

.method public setTimedTextView(Landroid/view/TextureView;)V
    .locals 0

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method
