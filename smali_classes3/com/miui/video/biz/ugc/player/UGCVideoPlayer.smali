.class public Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UGCVideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$ReleasePlayerTask;,
        Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;
    }
.end annotation


# static fields
.field private static final COUNT_INTERVAL:J = 0x1f4L

.field private static final ONE_DAY:J = 0x5265c00L

.field public static final PLAY_LEAVE:I = 0x3

.field public static final PLAY_LOOP_END:I = 0x1

.field public static final PLAY_NEXT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UGCVideoPlayer"

.field private static mMiAudioManager:Lcom/miui/video/biz/ugc/player/MiAudioManager;


# instance fields
.field private buffered:Z

.field private devId:Ljava/lang/String;

.field private isPrepared:Z

.field private isShowLoading:Z

.field private lastEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

.field private loadingTracked:Z

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mInitCallState:Z

.field private mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

.field private mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayUrl:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;

.field private mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

.field private progressEnd:Z

.field private progressStart:Z

.field private startLoading:J

.field private startSucceed:Z

.field private vCover:Landroid/widget/ImageView;

.field private vErrorText:Landroid/widget/TextView;

.field private vLoading:Landroid/widget/ImageView;

.field private vPlay:Landroid/widget/ImageView;

.field private vRetryText:Landroid/widget/TextView;

.field private vTextureView:Landroid/view/TextureView;

.field private vmateTrack:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;

    const-wide/32 v3, 0x5265c00

    const-wide/16 v5, 0x1f4

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;-><init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;JJ)V

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    new-instance p1, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$2;-><init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;

    const-wide/32 v3, 0x5265c00

    const-wide/16 v5, 0x1f4

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;-><init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;JJ)V

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    new-instance p1, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$2;-><init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;

    const-wide/32 v2, 0x5265c00

    const-wide/16 v4, 0x1f4

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$1;-><init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;JJ)V

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    new-instance p1, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$2;-><init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lorg/videolan/libvlc/VlcMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->startSucceed:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vRetryText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->startSucceed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->play()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->buffered:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->buffered:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->showAnimation(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->loadingTracked:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->loadingTracked:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->trackStartLoadingTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/data/UGCEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->progressStart:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->progressStart:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->progressEnd:Z

    return p0
.end method

.method static synthetic access$502(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->progressEnd:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vmateTrack:Z

    return p0
.end method

.method static synthetic access$602(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vmateTrack:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->callStateChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vPlay:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method private callStateChanged(I)V
    .locals 3

    const-string v0, "UGCVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mInitCallState:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mInitCallState:Z

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "UGCVideoPlayer"

    const-string v0, "restore"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onCallStateChange(Z)V

    goto :goto_0

    :pswitch_1
    const-string p1, "UGCVideoPlayer"

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    invoke-interface {p1, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onCallStateChange(Z)V

    :cond_1
    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initMediaPlayer()V
    .locals 4

    const-string v0, "timeShowed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMediaPlayer---start--="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/videolan/libvlc/VlcMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/VlcMediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0, p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0, p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0, p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0, p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0, p0}, Lorg/videolan/libvlc/VlcMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vErrorText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vRetryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "timeShowed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMediaPlayer----end-="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private openMediaPlayer(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->buffered:Z

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "prefer-soft-decoder"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enable-fullcodec"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->getInstance()Lcom/miui/video/biz/ugc/player/UGCCacheManager;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v1, v1, Lcom/miui/video/biz/ugc/data/UGCEntity;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v2, v2, Lcom/miui/video/biz/ugc/data/UGCEntity;->media_url:Ljava/lang/String;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->cacheVideo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mPlayUrl:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object p1, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->media_url:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mPlayUrl:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/VlcMediaPlayer;->prepareAsync()V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vLoading:Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$6;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$6;-><init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "timeShowed"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open-----="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "UGCVideoPlayer"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private play()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onCardShowTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->startSucceed:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->isPrepared:Z

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->initMediaPlayer()V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->openMediaPlayer(Z)V

    return-void
.end method

.method private registerCallStateListener()V
    .locals 2

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMiAudioManager:Lcom/miui/video/biz/ugc/player/MiAudioManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mInitCallState:Z

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMiAudioManager:Lcom/miui/video/biz/ugc/player/MiAudioManager;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/player/MiAudioManager;->startListenCallState(Landroid/telephony/PhoneStateListener;)V

    :cond_0
    return-void
.end method

.method private showAnimation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->isShowLoading:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vLoading:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vLoading:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private trackStartLoadingTime()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "play_id"

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v2, v2, Lcom/miui/video/biz/ugc/data/UGCEntity;->play_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_id"

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v2, v2, Lcom/miui/video/biz/ugc/data/UGCEntity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_type"

    const-string v2, "ugc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->startLoading:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cp"

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v2, v2, Lcom/miui/video/biz/ugc/data/UGCEntity;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "small_video"

    const-string v3, ""

    const-string v4, "small_video_loading_time"

    invoke-static {v2, v3, v4}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method private unRegisterCallStateListener()V
    .locals 2

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMiAudioManager:Lcom/miui/video/biz/ugc/player/MiAudioManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMiAudioManager:Lcom/miui/video/biz/ugc/player/MiAudioManager;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/player/MiAudioManager;->stopListenCallState(Landroid/telephony/PhoneStateListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPlayPosition()J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public initFindViews()V
    .locals 3

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->devId:Ljava/lang/String;

    sget v0, Lcom/miui/video/biz/ugc/R$layout;->ui_ugc_videoplayer:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->inflateView(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->isShowLoading:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/ugc/R$color;->c_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->setBackgroundColor(I)V

    sget v1, Lcom/miui/video/biz/ugc/R$id;->v_play:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vPlay:Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/ugc/R$id;->v_textureview:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    sget v1, Lcom/miui/video/biz/ugc/R$id;->v_img:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vCover:Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/ugc/R$id;->v_loading:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vLoading:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/ugc/R$drawable;->video_loading_gif:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    sget v1, Lcom/miui/video/biz/ugc/R$id;->v_error_text:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vErrorText:Landroid/widget/TextView;

    sget v1, Lcom/miui/video/biz/ugc/R$id;->v_retry_text:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vRetryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vErrorText:Landroid/widget/TextView;

    sget v2, Lcom/miui/video/biz/ugc/R$string;->t_network_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vRetryText:Landroid/widget/TextView;

    sget v2, Lcom/miui/video/biz/ugc/R$string;->click_to_retry:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$3;-><init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/miui/video/biz/ugc/player/MiAudioManager;

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/video/biz/ugc/player/MiAudioManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMiAudioManager:Lcom/miui/video/biz/ugc/player/MiAudioManager;

    sget-object v1, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMiAudioManager:Lcom/miui/video/biz/ugc/player/MiAudioManager;

    invoke-virtual {v1, v0, p0}, Lcom/miui/video/biz/ugc/player/MiAudioManager;->requestAudioFocus(ZLandroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$4;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$4;-><init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->registerCallStateListener()V

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$5;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$5;-><init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vErrorText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vRetryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    const-string p1, "UGCVideoPlayer"

    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const-string p1, "UGCVideoPlayer"

    const-string v1, "restore"

    invoke-static {p1, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    invoke-interface {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onAudioFocusChange(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "UGCVideoPlayer"

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onAudioFocusChange(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 2

    const-string p1, "UGCVideoPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBufferingUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    invoke-interface {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onCompleteTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    :cond_0
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    const-string p1, "UGCVideoPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError, What: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Extra: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->getInstance()Lcom/miui/video/biz/ugc/player/UGCCacheManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->isCacheUrl(Landroid/net/Uri;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->openMediaPlayer(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vRetryText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    const-string p1, "UGCVideoPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo: What: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p1, 0x2be

    if-ne p2, p1, :cond_1

    const-string p1, "timeShowed"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buffer---end--="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    invoke-interface {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onBufferingEnd()V

    :cond_0
    new-instance p1, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$7;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$7;-><init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/16 p1, 0x3eb

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->refreshPlayID()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onInternetAvailable(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "onInternetAvailable true"

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    const-string p1, "small_video_continue_net"

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->resume(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->showRetry(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "onInternetAvailable false"

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    const-string p1, "small_video_pause_net"

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->pause(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->showRetry(Z)V

    :goto_0
    return-void
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 9

    const-string v0, "timeShowed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared-----="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "UGCVideoPlayer"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->isPrepared:Z

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    invoke-interface {v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onStart()V

    :cond_0
    :try_start_0
    const-string v1, "UGCVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media Width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v3}, Lorg/videolan/libvlc/VlcMediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Media Height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v3}, Lorg/videolan/libvlc/VlcMediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v2}, Lorg/videolan/libvlc/VlcMediaPlayer;->getVideoWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v3}, Lorg/videolan/libvlc/VlcMediaPlayer;->getVideoHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v3

    const/4 v4, -0x1

    if-lez v3, :cond_1

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-double v5, v3

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    cmpl-double v3, v5, v7

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v2}, Lorg/videolan/libvlc/VlcMediaPlayer;->getVideoHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v3}, Lorg/videolan/libvlc/VlcMediaPlayer;->getVideoWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_1
    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v3}, Lorg/videolan/libvlc/VlcMediaPlayer;->getVideoWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    iget-object v5, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v5}, Lorg/videolan/libvlc/VlcMediaPlayer;->getVideoHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v5, v5

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_1
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v3}, Lorg/videolan/libvlc/VlcMediaPlayer;->getVideoWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v3}, Lorg/videolan/libvlc/VlcMediaPlayer;->getVideoWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v3

    sub-int/2addr v1, v3

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "UGCVideoPlayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->refreshPlayID()V

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    invoke-interface {v1, v2}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onStartTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    :cond_3
    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    const-string p1, "timeShowed"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared---end--="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    const-string v0, "UGCVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mSurface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    iget-object p2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lorg/videolan/libvlc/VlcMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "UGCVideoPlayer"

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string p1, "UGCVideoPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureSizeChanged width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->pause()V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vPlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->reset()V

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMiAudioManager:Lcom/miui/video/biz/ugc/player/MiAudioManager;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/player/MiAudioManager;->destroyListen()V

    invoke-direct {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->unRegisterCallStateListener()V

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->trackPauseResumeEvent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public refreshPlayID()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v2, v2, Lcom/miui/video/biz/ugc/data/UGCEntity;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->devId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/biz/ugc/data/UGCEntity;->play_id:Ljava/lang/String;

    return-void
.end method

.method public release()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->release(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMiAudioManager:Lcom/miui/video/biz/ugc/player/MiAudioManager;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/player/MiAudioManager;->destroyListen()V

    invoke-direct {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->unRegisterCallStateListener()V

    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->isPrepared:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->startSucceed:Z

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/VlcMediaPlayer;->reset()V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/VlcMediaPlayer;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->isPrepared:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->startSucceed:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "small_video_play_end"

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vmateTrack:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->trackPlay(Ljava/lang/String;IZ)V

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    new-instance v2, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$ReleasePlayerTask;

    invoke-direct {v2}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$ReleasePlayerTask;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/videolan/libvlc/VlcMediaPlayer;

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$ReleasePlayerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMiAudioManager:Lcom/miui/video/biz/ugc/player/MiAudioManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMiAudioManager:Lcom/miui/video/biz/ugc/player/MiAudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/miui/video/biz/ugc/player/MiAudioManager;->requestAudioFocus(ZLandroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vPlay:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->isPrepared:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->start()V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->play()V

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->trackPauseResumeEvent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/videolan/libvlc/VlcMediaPlayer;->accurateSeekTo(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOnStatusChangeListener(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    return-void
.end method

.method public setUGCEntity(Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->lastEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->lastEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vmateTrack:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->lastEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onCompleteTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->loadingTracked:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->startLoading:J

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->poster:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v3, Lcom/miui/video/biz/ugc/R$drawable;->bg_ugc:I

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    sget v3, Lcom/miui/video/biz/ugc/R$drawable;->bg_ugc:I

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget v2, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->poster_width:I

    iget v3, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->poster_height:I

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vmateTrack:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->progressEnd:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->progressStart:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->buffered:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->isShowLoading:Z

    return-void
.end method

.method public showRetry(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->showAnimation(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vRetryText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->showAnimation(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vErrorText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->vRetryText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/VlcMediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public trackPauseResumeEvent(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "play_id"

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v2, v2, Lcom/miui/video/biz/ugc/data/UGCEntity;->play_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_id"

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v2, v2, Lcom/miui/video/biz/ugc/data/UGCEntity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "small_video"

    const-string v3, ""

    invoke-static {v2, v3, p1}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v1, p1, v0, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    :cond_0
    return-void
.end method

.method public trackPlay(Ljava/lang/String;IZ)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "play_id"

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v2, v2, Lcom/miui/video/biz/ugc/data/UGCEntity;->play_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_id"

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v2, v2, Lcom/miui/video/biz/ugc/data/UGCEntity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_type"

    const-string v2, "ugc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "duration"

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-wide v2, v2, Lcom/miui/video/biz/ugc/data/UGCEntity;->length:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cp"

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v2, v2, Lcom/miui/video/biz/ugc/data/UGCEntity;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "repeat"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "small_video_play_end"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "played"

    iget-object v1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-wide v1, v1, Lcom/miui/video/biz/ugc/data/UGCEntity;->duration:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "end_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "small_video"

    const-string v1, ""

    invoke-static {p3, v1, p1}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 p3, 0x2

    invoke-static {p2, p1, v0, p3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method
