.class public final Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;
.super Ljava/lang/Object;
.source "FakeMediaPlayer.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0018\u0000 j2\u00020\u0001:\u0001jB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0003J\u0008\u00107\u001a\u00020\u0005H\u0016J\u0008\u00108\u001a\u00020\u0005H\u0016J\u0008\u00109\u001a\u00020\u0005H\u0016J\u0008\u0010:\u001a\u00020\u0005H\u0016J\u0008\u0010;\u001a\u00020\u0005H\u0016J\u0008\u0010<\u001a\u00020\u0005H\u0016J\u0018\u0010=\u001a\u00020\u000c2\u0006\u0010>\u001a\u00020\u00052\u0006\u0010?\u001a\u00020\u0005H\u0002J\u0008\u0010@\u001a\u00020\u000cH\u0016J\u0006\u0010A\u001a\u00020BJ\u0006\u0010C\u001a\u00020BJ\u0008\u0010D\u001a\u00020BH\u0016J\u0008\u0010E\u001a\u00020BH\u0016J\u0008\u0010F\u001a\u00020BH\u0016J\u0008\u0010G\u001a\u00020BH\u0016J\u0008\u0010H\u001a\u00020BH\u0016J\u0010\u0010I\u001a\u00020B2\u0006\u0010J\u001a\u00020\u0005H\u0016J\u0018\u0010K\u001a\u00020B2\u0006\u0010L\u001a\u00020M2\u0006\u00104\u001a\u000203H\u0016J0\u0010K\u001a\u00020B2\u0006\u0010L\u001a\u00020M2\u0008\u00104\u001a\u0004\u0018\u0001032\u0014\u0010N\u001a\u0010\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020P\u0018\u00010OH\u0016J\u0010\u0010K\u001a\u00020B2\u0006\u0010Q\u001a\u00020PH\u0016J&\u0010K\u001a\u00020B2\u0006\u0010Q\u001a\u00020P2\u0014\u0010N\u001a\u0010\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020P\u0018\u00010OH\u0016J\u0010\u0010R\u001a\u00020B2\u0006\u0010S\u001a\u00020TH\u0016J\u0010\u0010U\u001a\u00020B2\u0006\u0010V\u001a\u00020\u000cH\u0016J\u0010\u0010W\u001a\u00020B2\u0006\u0010X\u001a\u00020\u0015H\u0016J\u0010\u0010Y\u001a\u00020B2\u0006\u0010X\u001a\u00020\u0017H\u0016J\u0010\u0010Z\u001a\u00020B2\u0006\u0010X\u001a\u00020\u0019H\u0016J\u0010\u0010[\u001a\u00020B2\u0006\u0010X\u001a\u00020\u001bH\u0016J\u0010\u0010\\\u001a\u00020B2\u0006\u0010X\u001a\u00020\u001dH\u0016J\u0010\u0010]\u001a\u00020B2\u0006\u0010X\u001a\u00020\u001fH\u0016J\u0010\u0010^\u001a\u00020B2\u0006\u0010X\u001a\u00020!H\u0016J\u0010\u0010_\u001a\u00020B2\u0006\u0010`\u001a\u00020\u000cH\u0016J\u0010\u0010a\u001a\u00020B2\u0006\u0010b\u001a\u00020cH\u0016J\u0018\u0010d\u001a\u00020B2\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020fH\u0016J\u0008\u0010h\u001a\u00020BH\u0016J\u0008\u0010i\u001a\u00020BH\u0016R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u000f\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0010\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0011\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\rR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\"\u00104\u001a\u0004\u0018\u0001032\u0008\u0010\u0004\u001a\u0004\u0018\u000103@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106\u00a8\u0006k"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;",
        "Lcom/miui/video/player/service/media/IMediaPlayer;",
        "mPlayer",
        "(Lcom/miui/video/player/service/media/IMediaPlayer;)V",
        "<set-?>",
        "",
        "bufferPercentage",
        "getBufferPercentage",
        "()I",
        "currentState",
        "getCurrentState",
        "isIdle",
        "",
        "()Z",
        "isInPlaybackState",
        "isPlayingState",
        "isPrepared",
        "isReleased",
        "mActivityResumeTime",
        "",
        "mExBufferingUpdateListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;",
        "mExCompletionListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;",
        "mExErrorListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;",
        "mExInfoListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;",
        "mExPreparedListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;",
        "mExSeekCompleteListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;",
        "mExVideoSizeChangedListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;",
        "mInnerBufferingUpdateListener",
        "mInnerCompletionListener",
        "mInnerErrorListener",
        "mInnerInfoListener",
        "mInnerPreparedListener",
        "mInnerSeekCompleteListener",
        "mInnerVideoSizeListener",
        "mIsActivityPaused",
        "mTargetState",
        "mVideoHeight",
        "mVideoWidth",
        "mediaPlayerListener",
        "Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;",
        "getMediaPlayerListener",
        "()Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;",
        "setMediaPlayerListener",
        "(Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;)V",
        "Landroid/net/Uri;",
        "uri",
        "getUri",
        "()Landroid/net/Uri;",
        "getCurrentPosition",
        "getDuration",
        "getVideoHeight",
        "getVideoSarDen",
        "getVideoSarNum",
        "getVideoWidth",
        "handleError",
        "what",
        "extra",
        "isPlaying",
        "onActivityPause",
        "",
        "onActivityResume",
        "pause",
        "prepare",
        "prepareAsync",
        "release",
        "reset",
        "seekTo",
        "ms",
        "setDataSource",
        "context",
        "Landroid/content/Context;",
        "headers",
        "",
        "",
        "path",
        "setDisplay",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "setLooping",
        "looping",
        "setOnBufferingUpdateListener",
        "listener",
        "setOnCompletionListener",
        "setOnErrorListener",
        "setOnInfoListener",
        "setOnPreparedListener",
        "setOnSeekCompleteListener",
        "setOnVideoSizeChangedListener",
        "setScreenOnWhilePlaying",
        "screenOn",
        "setSurface",
        "surface",
        "Landroid/view/Surface;",
        "setVolume",
        "leftVolume",
        "",
        "rightVolume",
        "start",
        "stop",
        "Companion",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

# The value of this static final field might be set in the static constructor
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

# The value of this static final field might be set in the static constructor
.field private static final STATE_PAUSED:I = 0x4

# The value of this static final field might be set in the static constructor
.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

# The value of this static final field might be set in the static constructor
.field private static final STATE_PLAYING:I = 0x3

# The value of this static final field might be set in the static constructor
.field private static final STATE_PREPARED:I = 0x2

# The value of this static final field might be set in the static constructor
.field private static final STATE_PREPARING:I = 0x1

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "MediaPlayerWrapper"


# instance fields
.field private bufferPercentage:I

.field private currentState:I

.field private mActivityResumeTime:J

.field private mExBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

.field private mExCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

.field private mExErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field private mExInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

.field private mExPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

.field private mExSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

.field private mExVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

.field private final mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

.field private final mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

.field private final mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field private final mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

.field private final mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

.field private final mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

.field private final mInnerVideoSizeListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

.field private mIsActivityPaused:Z

.field private mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

.field private mTargetState:I

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mediaPlayerListener:Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private uri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    const-string v0, "MediaPlayerWrapper"

    sput-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_ERROR:I

    const/4 v0, 0x1

    sput v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PREPARING:I

    const/4 v0, 0x2

    sput v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PREPARED:I

    const/4 v0, 0x3

    sput v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PLAYING:I

    const/4 v0, 0x4

    sput v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PAUSED:I

    const/4 v0, 0x5

    sput v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PLAYBACK_COMPLETED:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/player/service/media/IMediaPlayer;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    sget p1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_IDLE:I

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    sget p1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_IDLE:I

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mTargetState:I

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerInfoListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerInfoListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerBufferingUpdateListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerBufferingUpdateListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerCompletionListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerCompletionListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerErrorListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerErrorListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerSeekCompleteListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerSeekCompleteListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerVideoSizeListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerVideoSizeListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerVideoSizeListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerVideoSizeListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public static final synthetic access$getBufferPercentage$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->bufferPercentage:I

    return p0
.end method

.method public static final synthetic access$getCurrentState$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    return p0
.end method

.method public static final synthetic access$getMExBufferingUpdateListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method public static final synthetic access$getMExCompletionListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method public static final synthetic access$getMExInfoListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method public static final synthetic access$getMExPreparedListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method public static final synthetic access$getMExSeekCompleteListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method public static final synthetic access$getMExVideoSizeChangedListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method public static final synthetic access$getMPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    return-object p0
.end method

.method public static final synthetic access$getMTargetState$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mTargetState:I

    return p0
.end method

.method public static final synthetic access$getMVideoHeight$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mVideoHeight:I

    return p0
.end method

.method public static final synthetic access$getMVideoWidth$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mVideoWidth:I

    return p0
.end method

.method public static final synthetic access$getSTATE_ERROR$cp()I
    .locals 1

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_ERROR:I

    return v0
.end method

.method public static final synthetic access$getSTATE_IDLE$cp()I
    .locals 1

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_IDLE:I

    return v0
.end method

.method public static final synthetic access$getSTATE_PAUSED$cp()I
    .locals 1

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PAUSED:I

    return v0
.end method

.method public static final synthetic access$getSTATE_PLAYBACK_COMPLETED$cp()I
    .locals 1

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PLAYBACK_COMPLETED:I

    return v0
.end method

.method public static final synthetic access$getSTATE_PLAYING$cp()I
    .locals 1

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PLAYING:I

    return v0
.end method

.method public static final synthetic access$getSTATE_PREPARED$cp()I
    .locals 1

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PREPARED:I

    return v0
.end method

.method public static final synthetic access$getSTATE_PREPARING$cp()I
    .locals 1

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PREPARING:I

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$handleError(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->handleError(II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setBufferPercentage$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->bufferPercentage:I

    return-void
.end method

.method public static final synthetic access$setCurrentState$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    return-void
.end method

.method public static final synthetic access$setMExBufferingUpdateListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public static final synthetic access$setMExCompletionListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public static final synthetic access$setMExInfoListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public static final synthetic access$setMExPreparedListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public static final synthetic access$setMExSeekCompleteListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public static final synthetic access$setMExVideoSizeChangedListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public static final synthetic access$setMPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;Lcom/miui/video/player/service/media/IMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    return-void
.end method

.method public static final synthetic access$setMTargetState$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mTargetState:I

    return-void
.end method

.method public static final synthetic access$setMVideoHeight$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mVideoHeight:I

    return-void
.end method

.method public static final synthetic access$setMVideoWidth$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mVideoWidth:I

    return-void
.end method

.method private final handleError(II)Z
    .locals 2

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_ERROR:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_ERROR:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mTargetState:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mediaPlayerListener:Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mediaPlayerListener:Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;->getOnErrorListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {v0, v1, p1, p2}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    move-object v1, p0

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {v0, v1, p1, p2}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final getBufferPercentage()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->bufferPercentage:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getMediaPlayerListener()Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mediaPlayerListener:Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public final isIdle()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    sget v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_IDLE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInPlaybackState()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    sget v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_ERROR:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    sget v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_IDLE:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    sget v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PREPARING:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final isPlayingState()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mTargetState:I

    sget v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PLAYING:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    sget v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PLAYING:I

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

.method public final isPrepared()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isInPlaybackState()Z

    move-result v0

    return v0
.end method

.method public final isReleased()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onActivityPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mIsActivityPaused:Z

    return-void
.end method

.method public final onActivityResume()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mIsActivityPaused:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mActivityResumeTime:J

    return-void
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#pause mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->pause()V

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PAUSED:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    :cond_1
    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PAUSED:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mTargetState:I

    :cond_2
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

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#prepare mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PREPARING:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->prepare()V

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PREPARED:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    :cond_1
    return-void
.end method

.method public prepareAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#prepareAsync mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->prepareAsync()V

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PREPARING:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#release mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->release()V

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer;

    iput-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    sget v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_IDLE:I

    iput v1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    sget v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_IDLE:I

    iput v1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mTargetState:I

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->uri:Landroid/net/Uri;

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#reset mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_IDLE:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mTargetState:I

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_IDLE:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->reset()V

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

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IMediaPlayer;->seekTo(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not in playback state, give up seek to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#setDataSource : uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#setDataSource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v1, :cond_4

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v1, p1, p2, p3}, Lcom/miui/video/player/service/media/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez p3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {p3, p1, p2}, Lcom/miui/video/player/service/media/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    iput-object p2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->uri:Landroid/net/Uri;

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->bufferPercentage:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mVideoHeight:I

    iget p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mVideoHeight:I

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mVideoWidth:I

    :cond_4
    return-void

    :cond_5
    :goto_1
    invoke-direct {p0, v0, v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->handleError(II)Z

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#setDataSource : path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#setDataSource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v2, v2}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->handleError(II)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/miui/video/player/service/media/IMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {p2, p1}, Lcom/miui/video/player/service/media/IMediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->uri:Landroid/net/Uri;

    iput v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->bufferPercentage:I

    iput v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mVideoHeight:I

    iget p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mVideoHeight:I

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mVideoWidth:I

    :cond_4
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public setLooping(Z)V
    .locals 3

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#setLooping mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IMediaPlayer;->setLooping(Z)V

    :cond_1
    return-void
.end method

.method public final setMediaPlayerListener(Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mediaPlayerListener:Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mExVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/miui/video/player/service/media/IMediaPlayer;->setVolume(FF)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#start  mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mIsActivityPaused:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mActivityResumeTime:J

    sub-long/2addr v0, v2

    const/16 v2, 0x1f4

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "delay start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$start$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$start$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "do start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->start()V

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PLAYING:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    :cond_2
    :goto_0
    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_PLAYING:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mTargetState:I

    :cond_3
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer#stop mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-eqz v0, :cond_1

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_IDLE:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mTargetState:I

    sget v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->STATE_IDLE:I

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->currentState:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->mPlayer:Lcom/miui/video/player/service/media/IMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->stop()V

    :cond_1
    return-void
.end method
