.class public Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;
.super Ljava/lang/Object;
.source "VideoPlusMediaPlayer.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlusMediaPlayer"


# instance fields
.field private addTimedTextListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/OnAddTimedTextListener;

.field private innerOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private innerOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private innerOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private innerOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private innerOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private innerOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private innerOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private lastSeekTime:J

.field private lastSeekToPos:J

.field private mVolume:F

.field private mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private onBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

.field private onCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

.field private onErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

.field private onInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

.field private onPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

.field private onSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

.field private onVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->lastSeekTime:J

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->lastSeekToPos:J

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$1;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$2;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$3;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$4;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$4;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$5;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$5;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$6;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$6;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$7;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$7;-><init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mVolume:F

    :try_start_0
    new-instance v0, Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-direct {v0, p1}, Lorg/videolan/libvlc/VlcMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const-string p1, "VideoPlusMediaPlayer"

    const-string v0, "VideoPlusMediaPlayer: create success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "VideoPlusMediaPlayer"

    const-string v1, "VideoPlusMediaPlayer: create failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/OnAddTimedTextListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->addTimedTextListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/OnAddTimedTextListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;Lcom/miui/video/biz/videoplus/player/mediaplayer/OnAddTimedTextListener;)Lcom/miui/video/biz/videoplus/player/mediaplayer/OnAddTimedTextListener;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->addTimedTextListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/OnAddTimedTextListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)F
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mVolume:F

    return p0
.end method

.method static synthetic access$800(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method


# virtual methods
.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/biz/videoplus/player/mediaplayer/OnAddTimedTextListener;)V
    .locals 0

    :try_start_0
    iput-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->addTimedTextListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/OnAddTimedTextListener;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p3, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deselectTrack(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->deselectTrack(I)V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrentRatio()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSelectedTrack(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getSelectedTrack(I)I

    move-result p1

    return p1
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mVolume:F

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepare()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    return-void
.end method

.method public seekTo(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->lastSeekTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    int-to-long v2, p1

    iget-wide v4, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->lastSeekToPos:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v3, p1

    invoke-interface {v2, v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->accurateSeekTo(J)V

    :cond_1
    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->lastSeekTime:J

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->lastSeekToPos:J

    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->selectTrack(I)V

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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->onVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->innerOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method public setPlayRatio(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSpeed(F)V

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSpeed(F)V

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setSlowMotionTime(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2, p3, p4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSlowMotionTime(JJ)V

    return-void
.end method

.method public setSubtitleTimedTextDelay(J)V
    .locals 3

    const-string v0, "VideoPlusMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setSubtitleTimedTextDelay :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setTimedTextDelay(J)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setTimedTextView(Landroid/view/SurfaceView;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v0, v0, Lorg/videolan/libvlc/VlcMediaPlayer;

    if-eqz v0, :cond_0

    const-string v0, "VideoPlusMediaPlayer"

    const-string v1, "VideoPlusMediaPlayer: setTimedTextView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/VlcMediaPlayer;->setTimedTextView(Landroid/view/SurfaceView;)V

    :cond_0
    return-void
.end method

.method public setTimedTextView(Landroid/view/TextureView;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v0, v0, Lorg/videolan/libvlc/VlcMediaPlayer;

    if-eqz v0, :cond_0

    const-string v0, "VideoPlusMediaPlayer"

    const-string v1, "VideoPlusMediaPlayer: setTimedTextView textureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/VlcMediaPlayer;->setTimedTextView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mVolume:F

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mVolume:F

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->mediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    return-void
.end method
