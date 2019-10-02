.class public Lorg/videolan/libvlc/VlcMediaPlayer;
.super Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;
.source "VlcMediaPlayer.java"

# interfaces
.implements Lorg/videolan/libvlc/IVLCVout$Callback;
.implements Lorg/videolan/libvlc/IVLCVout$OnNewVideoLayoutListener;
.implements Lorg/videolan/libvlc/MediaPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;,
        Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;
    }
.end annotation


# static fields
.field public static final SOURCE_TYPE_FILE:I = 0x3

.field public static final SOURCE_TYPE_PATH:I = 0x2

.field public static final SOURCE_TYPE_UNKNOWN:I = 0x0

.field public static final SOURCE_TYPE_URI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VlcMediaPlayer"


# instance fields
.field private mAOpensles:Z

.field private mAiSlowMotion:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentMedia:Lorg/videolan/libvlc/Media;

.field private mCurrentPosition:J

.field private mDuration:J

.field private mEofPaused:Z

.field private mFd:I

.field private mFile:Landroid/os/ParcelFileDescriptor;

.field private mInputSlave:Ljava/lang/String;

.field private mIsBuffering:Z

.field private mIsReseting:Z

.field private mIsprepareing:Z

.field private mLength:J

.field private mLibVLC:Lorg/videolan/libvlc/LibVLC;

.field private mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

.field private mNeedseek:Z

.field private mOffset:J

.field private mOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Ljava/lang/String;

.field private mPreferSoftDecoder:Z

.field private mSarDen:I

.field private mSarNum:I

.field private mSlowEndTime:J

.field private mSlowStartTime:J

.field private mSourceType:I

.field private mSubtitlesTextureView:Landroid/view/TextureView;

.field private mSubtitlesView:Landroid/view/SurfaceView;

.field private mSurface:Landroid/view/Surface;

.field private mUri:Landroid/net/Uri;

.field private mVOpengl:Z

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsReseting:Z

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsprepareing:Z

    sget-object v1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "VlcMediaPlayer {"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mContext:Landroid/content/Context;

    iput v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSourceType:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mDuration:J

    iput-wide v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentPosition:J

    iput-wide v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOffset:J

    iput-wide v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLength:J

    const/4 p1, -0x1

    iput p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVideoWidth:I

    iput p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVideoHeight:I

    iput p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSarNum:I

    iput p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSarDen:I

    iput p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFd:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVolume:F

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mAiSlowMotion:Z

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsReseting:Z

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsprepareing:Z

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsBuffering:Z

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "VlcMediaPlayer }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initMediaPlayer(Z)V
    .locals 7

    invoke-direct {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->releaseMediaPlayer()V

    new-instance p1, Lorg/videolan/libvlc/LibVLC;

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    new-instance p1, Lorg/videolan/libvlc/MediaPlayer;

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1, p0}, Lorg/videolan/libvlc/MediaPlayer;->setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V

    iget p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSourceType:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "do not have a valid data source, please call setDataSource"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    new-instance p1, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iget v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFd:I

    iget-wide v3, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOffset:J

    iget-wide v5, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLength:J

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;IJJ)V

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    goto :goto_0

    :pswitch_1
    new-instance p1, Lorg/videolan/libvlc/Media;

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iget-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mPath:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    goto :goto_0

    :pswitch_2
    new-instance p1, Lorg/videolan/libvlc/Media;

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iget-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    :goto_0
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    const-string v0, ":network-caching=2000"

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    const-string v0, ":file-caching=6000"

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    iget-boolean p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mPreferSoftDecoder:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    const-string v0, ":codec=avcodec,all"

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    const-string v0, ":codec=mediacodec_jni,all"

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    iget-boolean p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mAOpensles:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const-string v0, "opensles"

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setAudioOutput(Ljava/lang/String;)Z

    :cond_1
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSubtitlesView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object p1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSubtitlesView:Landroid/view/SurfaceView;

    invoke-interface {p1, v0}, Lorg/videolan/libvlc/IVLCVout;->setSubtitlesView(Landroid/view/SurfaceView;)V

    :cond_2
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSubtitlesTextureView:Landroid/view/TextureView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object p1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSubtitlesTextureView:Landroid/view/TextureView;

    invoke-interface {p1, v0}, Lorg/videolan/libvlc/IVLCVout;->setSubtitlesView(Landroid/view/TextureView;)V

    :cond_3
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object p1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/videolan/libvlc/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/videolan/libvlc/IVLCVout;->addCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/videolan/libvlc/IVLCVout;->attachViews(Lorg/videolan/libvlc/IVLCVout$OnNewVideoLayoutListener;)V

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setSurface(Z)Z

    :cond_4
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseHeader(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVOpengl:Z

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mAOpensles:Z

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mPreferSoftDecoder:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSlowStartTime:J

    iput-wide v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSlowEndTime:J

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mAiSlowMotion:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_a

    const-string v5, "prefer-soft-decoder"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    iput-boolean v4, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mPreferSoftDecoder:Z

    :cond_0
    const-string v5, "codec-level"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const-string v6, "disable-codec-name"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v3

    :goto_1
    const-string v7, "adsave"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v7, "start-time"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentPosition:J

    goto :goto_2

    :cond_4
    move-wide v7, v1

    :goto_2
    const-string v9, "prepare-paused"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    const-string v10, "slow-start-time"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSlowStartTime:J

    :cond_6
    const-string v10, "slow-end-time"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSlowEndTime:J

    :cond_7
    const-string v10, "ai-slow-motion"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_8

    iput-boolean v4, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mAiSlowMotion:Z

    :cond_8
    const-string v10, "input-slave"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mInputSlave:Ljava/lang/String;

    :cond_9
    const-string v10, "pause-after-eof"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v10, "1"

    invoke-virtual {p1, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    move-wide v7, v1

    move-object v6, v3

    const/4 v5, 0x0

    const/4 v9, 0x0

    :cond_b
    :goto_4
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    if-nez p1, :cond_c

    new-instance p1, Ljava/util/ArrayList;

    const/16 v4, 0x32

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    :cond_c
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_d
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "-vv"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--network-caching=2000"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--file-caching=6000"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--audio-time-stretch"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--no-volume-save"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--android-display-chroma"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "YV12"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--sub-notify"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--demux"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "avformat,any"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "avcodec-hurry-up"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--codec"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mPreferSoftDecoder:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "avcodec,all"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "mediacodec_jni,all"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    iget-boolean p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mAOpensles:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--aout=opensles,none"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--aout=android_audiotrack,none"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    iget-boolean p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVOpengl:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--vout=gles2,none"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--vout=android_display,none"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    if-lez v5, :cond_11

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--codec-level="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    if-eqz v6, :cond_12

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v4, "--disable-codec-name"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    cmp-long p1, v7, v1

    const/high16 v4, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_13

    long-to-float p1, v7

    div-float/2addr p1, v4

    iget-object v5, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--start-time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    if-eqz v3, :cond_14

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--avio-options={http-dumpstream-filename="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz v9, :cond_15

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--start-paused"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-wide v5, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSlowStartTime:J

    cmp-long p1, v5, v1

    if-eqz p1, :cond_16

    iget-wide v5, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSlowStartTime:J

    long-to-float p1, v5

    div-float/2addr p1, v4

    iget-object v3, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--slow-start-time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-wide v5, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSlowEndTime:J

    cmp-long p1, v5, v1

    if-eqz p1, :cond_17

    iget-wide v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSlowEndTime:J

    long-to-float p1, v1

    div-float/2addr p1, v4

    iget-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--slow-end-time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-boolean p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mAiSlowMotion:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v1, "--ai-slow-motion"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mInputSlave:Ljava/lang/String;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--input-slave="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mInputSlave:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    if-eqz v0, :cond_1a

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v0, "--play-and-pause"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 2

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->areViewsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout;->removeCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->detachViews()V

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    iput-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    iput-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    :cond_2
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->release()V

    iput-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    :cond_3
    return-void
.end method


# virtual methods
.method public accurateSeekTo(J)V
    .locals 4

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accurateSeekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mDuration:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mDuration:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-wide p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mDuration:J

    :cond_1
    :goto_0
    iput-wide p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentPosition:J

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/videolan/libvlc/MediaPlayer;->setTime(JZ)J

    :cond_2
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "accurateSeekTo }"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "addTimedTextSource {"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->addSlave(ILjava/lang/String;Z)Z

    :cond_0
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "addTimedTextSource }"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public changeDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
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

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDataSource path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    const-string v2, "start-time"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentPosition:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/videolan/libvlc/Media;

    iget-object v4, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {p1, v4, p2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V

    const/4 v4, 0x1

    iput v4, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSourceType:I

    iput-object p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mUri:Landroid/net/Uri;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p2, Lorg/videolan/libvlc/Media;

    iget-object v4, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {p2, v4, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    const/4 v4, 0x2

    iput v4, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSourceType:I

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mPath:Ljava/lang/String;

    move-object p1, p2

    :goto_2
    const-string p2, ":network-caching=2000"

    invoke-virtual {p1, p2}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    const-string p2, ":file-caching=6000"

    invoke-virtual {p1, p2}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    iget-boolean p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mPreferSoftDecoder:Z

    if-eqz p2, :cond_3

    const-string p2, ":codec=avcodec,all"

    invoke-virtual {p1, p2}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p2, ":codec=mediacodec_jni,all"

    invoke-virtual {p1, p2}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    :goto_3
    cmp-long p2, v2, v0

    if-eqz p2, :cond_4

    long-to-float p2, v2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":start-time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p2, p1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    iget-object p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p2}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    iget-object p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->release()V

    :cond_5
    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    :cond_6
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "changeDataSource }"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deselectTrack(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "deselectTrack {"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "deselectTrack }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected finalize()V
    .locals 2

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "finalize {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsReseting:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->releaseMediaPlayer()V

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->resetListeners()V

    iput-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSurface:Landroid/view/Surface;

    iput-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSubtitlesView:Landroid/view/SurfaceView;

    iput-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSubtitlesTextureView:Landroid/view/TextureView;

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFd:I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsprepareing:Z

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "finalize }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAudioSessionId()I
    .locals 2

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getAudioSessionId {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getAudioSessionId }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 5

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentPosition:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    iget-wide v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentPosition:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getTime()J

    move-result-wide v1

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getDataSource {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iget v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSourceType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFd:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "getDataSource }"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDuration()J
    .locals 4

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getDuration {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mDuration:J

    :cond_0
    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDuration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mDuration:J

    return-wide v0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 2

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getMediaInfo {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getMediaInfo }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getSelectedTrack {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getSpuTrack()I

    move-result p1

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getAudioTrack()I

    move-result p1

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTrack()I

    move-result p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedTrack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSpeed()F
    .locals 3

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getSpeed {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getRate()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "getSpeed }"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getTimedTextDelay()J
    .locals 4

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getTimedTextDelay {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getSpuDelay()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    sget-object v2, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "getTimedTextDelay }"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getTrackInfo {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTracksCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    iget v6, v5, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;

    invoke-direct {v6}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;-><init>()V

    iget-object v7, v5, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->setLanguage(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->setTrackType(I)V

    sget-object v7, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getAudioTracksCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getAudioTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    iget v6, v5, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    if-gez v6, :cond_2

    goto :goto_3

    :cond_2
    new-instance v6, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;

    invoke-direct {v6}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;-><init>()V

    iget-object v7, v5, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->setLanguage(Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->setTrackType(I)V

    sget-object v7, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getSpuTracksCount()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getSpuTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    move-result-object v1

    array-length v3, v1

    :goto_4
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    iget v5, v4, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    if-gez v5, :cond_4

    goto :goto_5

    :cond_4
    new-instance v5, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;

    invoke-direct {v5}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;-><init>()V

    iget-object v6, v4, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->setLanguage(Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->setTrackType(I)V

    sget-object v6, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    sget-object v1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "getTrackInfo success }"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    return-object v0

    :cond_6
    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getTrackInfo failed }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 3

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 3

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoSarDen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSarDen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSarDen:I

    return v0
.end method

.method public getVideoSarNum()I
    .locals 3

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoSarNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSarNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSarNum:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 3

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public getVolume()I
    .locals 3

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getVolume {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVolume()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    sget-object v1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "getVolume }"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isLooping()Z
    .locals 3

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "isLooping {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isLooping()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "isLooping }"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isPlayable()Z
    .locals 2

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "isPlayable {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "isPlayable }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onEvent(Lorg/videolan/libvlc/MediaPlayer$Event;)V
    .locals 8

    iget v0, p1, Lorg/videolan/libvlc/MediaPlayer$Event;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent unhandled event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/videolan/libvlc/MediaPlayer$Event;->type:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive Reload"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/videolan/libvlc/VlcMediaPlayer;->seekTo(J)V

    goto/16 :goto_0

    :cond_0
    iput-boolean v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mNeedseek:Z

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive EofPaused"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mEofPaused:Z

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnCompletion()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getCacheChanged()J

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent receive AudioTrackCreated mVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVolume:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVolume:F

    iget v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVolume:F

    invoke-virtual {p0, p1, v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->setVolume(FF)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent receive SubtitleLoad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getSubtitleLoadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x186a4

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getSubtitleLoadStatus()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_0

    :pswitch_6
    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent receive Subtitle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getSubtitleStart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getSubtitleDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getSubtitleText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getSubtitleText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getSubtitleStart()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getSubtitleDuration()I

    move-result p1

    int-to-long v6, p1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnTimedText(Ltv/danmaku/ijk/media/player/misc/ITimedText;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive Prepared"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsprepareing:Z

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnPrepared()V

    goto/16 :goto_0

    :pswitch_8
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive Unsupported"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x3f2

    invoke-virtual {p0, p1, v2}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnError(II)Z

    goto/16 :goto_0

    :pswitch_9
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive LosePicSerious"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x186a2

    invoke-virtual {p0, p1, v2}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVideoWidth:I

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVideoHeight:I

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getVideoSarNum()I

    move-result v0

    iput v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSarNum:I

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getVideoSarDen()I

    move-result p1

    iput p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSarDen:I

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent receive VideoSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSarNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSarDen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVideoWidth:I

    iget v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVideoHeight:I

    iget v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSarNum:I

    iget v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSarDen:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    goto/16 :goto_0

    :pswitch_b
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive FirstPicDisplay"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x186a1

    invoke-virtual {p0, p1, v2}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getEsChangedType()I

    move-result v0

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getEsChangedID()I

    move-result p1

    sget-object v1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent receive ES "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getVoutCount()I

    move-result p1

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent receive Vout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getLengthChanged()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mDuration:J

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent receive LengthChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getPausable()Z

    move-result p1

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent receive PausableChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getSeekable()Z

    move-result p1

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent receive SeekableChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getPositionChanged()F

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getTimeChanged()J

    iget-wide v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentPosition:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentPosition:J

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnSeekComplete()V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getErrorCode()I

    move-result p1

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent receive EncounteredError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p1}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnError(II)Z

    goto/16 :goto_0

    :pswitch_14
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive EndReached"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnCompletion()V

    goto/16 :goto_0

    :pswitch_15
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive Stopped"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_16
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive Paused"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_17
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive playing"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_18
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getBuffering()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive End Buffering"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsBuffering:Z

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsBuffering:Z

    const/16 p1, 0x2be

    invoke-virtual {p0, p1, v2}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnInfo(II)Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsBuffering:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "onEvent receive Start Buffering"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsBuffering:Z

    const/16 v0, 0x2bd

    invoke-virtual {p0, v0, v2}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnInfo(II)Z

    :cond_2
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x186a3

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lorg/videolan/libvlc/VlcMediaPlayer;->notifyOnInfo(II)Z

    goto :goto_0

    :pswitch_19
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive Opening"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1a
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent receive MediaChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onEvent(Lorg/videolan/libvlc/VLCEvent;)V
    .locals 0

    check-cast p1, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/VlcMediaPlayer;->onEvent(Lorg/videolan/libvlc/MediaPlayer$Event;)V

    return-void
.end method

.method public onNewVideoLayout(Lorg/videolan/libvlc/IVLCVout;IIIIII)V
    .locals 0

    return-void
.end method

.method public onSurfacesCreated(Lorg/videolan/libvlc/IVLCVout;)V
    .locals 0

    return-void
.end method

.method public onSurfacesDestroyed(Lorg/videolan/libvlc/IVLCVout;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "pause {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    :cond_0
    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "pause }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "prepare {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsprepareing:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->initMediaPlayer(Z)V

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "prepare }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "prepareAsync {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsprepareing:Z

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->initMediaPlayer(Z)V

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "prepareAsync }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release()V
    .locals 5

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "release {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsprepareing:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsprepareing:Z

    :cond_0
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v3, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "not Prepared"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->releaseMediaPlayer()V

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->resetListeners()V

    iput-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSurface:Landroid/view/Surface;

    iput-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSubtitlesView:Landroid/view/SurfaceView;

    iput-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSubtitlesTextureView:Landroid/view/TextureView;

    :cond_2
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-object v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFd:I

    :cond_3
    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "release }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 4

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "reset {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsReseting:Z

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsprepareing:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    if-le v0, v2, :cond_0

    iput-boolean v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsprepareing:Z

    :cond_0
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v2, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "not Prepared"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->releaseMediaPlayer()V

    :cond_2
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFd:I

    :cond_3
    iput-boolean v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mIsReseting:Z

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "reset }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public seekTo(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mDuration:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mDuration:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-wide p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mDuration:J

    :cond_1
    :goto_0
    iput-wide p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mCurrentPosition:J

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/videolan/libvlc/MediaPlayer;->setTime(JZ)J

    :cond_2
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "seekTo }"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public selectTrack(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "selectTrack {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTracksCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v2}, Lorg/videolan/libvlc/MediaPlayer;->getAudioTracksCount()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v3}, Lorg/videolan/libvlc/MediaPlayer;->getSpuTracksCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrack(I)Z

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    add-int v4, v0, v2

    if-ge p1, v4, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setAudioTrack(I)Z

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    add-int/2addr v0, v3

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setSpuTrack(I)Z

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "unknown track index"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/videolan/libvlc/VlcMediaPlayer;->seekTo(J)V

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mNeedseek:Z

    :cond_4
    :goto_1
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "selectTrack }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setAudioAttributes {"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setAudioAttributes }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setAudioSessionId {"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setAudioSessionId }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setAudioStreamType {"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setAudioStreamType }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 7
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

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/videolan/libvlc/VlcMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "settings"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result p2

    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Failed to resolve default ringtone"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "r"

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/videolan/libvlc/VlcMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/videolan/libvlc/VlcMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJLjava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_6
    return-void

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_7
    throw p2

    :catch_0
    move-object p1, v0

    :catch_1
    if-eqz p1, :cond_8

    goto :goto_3

    :catch_2
    move-object p1, v0

    :catch_3
    if-eqz p1, :cond_8

    :goto_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_8
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/videolan/libvlc/VlcMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/videolan/libvlc/VlcMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJLjava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "JJ",
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
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0, p1, p6}, Lorg/videolan/libvlc/VlcMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;Ljava/util/Map;)V

    iput-wide p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mOffset:J

    iput-wide p4, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mLength:J

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
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
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource fd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lorg/videolan/libvlc/VlcMediaPlayer;->parseHeader(Ljava/util/Map;)V

    const/4 p2, 0x3

    iput p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSourceType:I

    iget-object p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    const/4 p2, -0x1

    iput p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFd:I

    :cond_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    iget-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p1

    iput p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mFd:I

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "setDataSource }"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

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

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lorg/videolan/libvlc/VlcMediaPlayer;->parseHeader(Ljava/util/Map;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSourceType:I

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mUri:Landroid/net/Uri;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x2

    iput p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSourceType:I

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mPath:Ljava/lang/String;

    :goto_1
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "setDataSource }"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "interface setDataSource with IMediaDataSource is not implement, please use other setDataSource instead"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setDisplay {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->areViewsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout;->removeCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->detachViews()V

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/videolan/libvlc/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout;->addCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout;->attachViews(Lorg/videolan/libvlc/IVLCVout$OnNewVideoLayoutListener;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setSurface(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout;->removeCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->detachViews()V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSurface:Landroid/view/Surface;

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setDisplay }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 1

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setKeepInBackground {"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setKeepInBackground }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 1

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setLogEnabled {"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setLogEnabled }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLooping(Z)V
    .locals 2

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setLooping {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setLooping(Z)Z

    :cond_0
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setLooping }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setScreenOnWhilePlaying {"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setScreenOnWhilePlaying }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSlowMotionTime(JJ)V
    .locals 2

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setSlowMotionTime {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/videolan/libvlc/MediaPlayer;->setSlowMotionTime(JJ)Z

    :cond_0
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "setSlowMotionTime }"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSpeed(F)V
    .locals 3

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setRate(F)V

    :cond_0
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setSpeed }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setSurface {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->areViewsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout;->removeCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->detachViews()V

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/videolan/libvlc/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout;->addCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout;->attachViews(Lorg/videolan/libvlc/IVLCVout$OnNewVideoLayoutListener;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setSurface(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout;->removeCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->detachViews()V

    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSurface:Landroid/view/Surface;

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setSurface }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTimedTextDelay(J)V
    .locals 2

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setTimedTextDelay {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->setSpuDelay(J)Z

    :cond_0
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "setTimedTextDelay }"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTimedTextView(Landroid/view/SurfaceView;)V
    .locals 2

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setTimedTextView {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSubtitlesView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/videolan/libvlc/IVLCVout;->setSubtitlesView(Landroid/view/SurfaceView;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSubtitlesView:Landroid/view/SurfaceView;

    :cond_1
    :goto_0
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setTimedTextView }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTimedTextView(Landroid/view/TextureView;)V
    .locals 2

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setTimedTextView {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSubtitlesTextureView:Landroid/view/TextureView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/videolan/libvlc/IVLCVout;->setSubtitlesView(Landroid/view/TextureView;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mSubtitlesTextureView:Landroid/view/TextureView;

    :cond_1
    :goto_0
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setTimedTextView }"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVolume(FF)V
    .locals 4

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    div-float/2addr p1, v2

    iput p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mVolume:F

    :cond_0
    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "setVolume }"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "setWakeMode {"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "setWakeMode }"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "start {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mEofPaused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mEofPaused:Z

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/videolan/libvlc/VlcMediaPlayer;->seekTo(J)V

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    iget-boolean v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mNeedseek:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mNeedseek:Z

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/videolan/libvlc/VlcMediaPlayer;->seekTo(J)V

    :cond_1
    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "start }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stop {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    :cond_0
    sget-object v0, Lorg/videolan/libvlc/VlcMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stop }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
