.class public final Lcom/miui/video/biz/player/online/fake/FakeVideoView;
.super Landroid/widget/FrameLayout;
.source "FakeVideoView.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IVideoView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFakeVideoView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FakeVideoView.kt\ncom/miui/video/biz/player/online/fake/FakeVideoView\n*L\n1#1,812:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00b1\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u001d*\u0001\'\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0096\u0001B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010=\u001a\u00020>H\u0002J\u000e\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020\u000bJ\u0008\u0010A\u001a\u00020BH\u0016J0\u0010C\u001a\u00020>2\u0008\u0010D\u001a\u0004\u0018\u00010:2\u0006\u0010E\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u000b2\u0006\u0010H\u001a\u00020\u000bJ\u000e\u0010C\u001a\u00020>2\u0006\u0010E\u001a\u00020\u000eJ\u0008\u0010I\u001a\u00020\u000eH\u0016J\u0008\u0010J\u001a\u00020\u000eH\u0016J\u0008\u0010K\u001a\u00020\u000eH\u0016J\u0008\u0010L\u001a\u00020\u000eH\u0016J\u0008\u0010M\u001a\u00020>H\u0016J\u0010\u0010N\u001a\u00020>2\u0006\u0010O\u001a\u00020\u000bH\u0016J\u0008\u0010P\u001a\u00020%H\u0002J\u0008\u0010Q\u001a\u00020\u000bH\u0016J\u0008\u0010R\u001a\u00020\u000bH\u0016J\u0008\u0010S\u001a\u00020\u0007H\u0016J\u0008\u0010T\u001a\u00020\u000bH\u0016J\u0008\u0010U\u001a\u00020\u0007H\u0016J\u0008\u0010V\u001a\u00020\u000eH\u0016J\u0006\u0010W\u001a\u00020\u000bJ\u0008\u0010X\u001a\u00020YH\u0016J\u0014\u0010Z\u001a\u0004\u0018\u00010:2\u0008\u0010D\u001a\u0004\u0018\u00010:H\u0002J\u0006\u0010[\u001a\u00020\u000bJ\u000e\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\u00070]H\u0016J\n\u0010^\u001a\u0004\u0018\u00010:H\u0016J\u0008\u0010_\u001a\u00020\u000bH\u0016J\u0008\u0010`\u001a\u00020\u000bH\u0016J\u0008\u0010a\u001a\u00020>H\u0002J\u0008\u0010b\u001a\u00020\u000eH\u0016J\u0008\u0010c\u001a\u00020>H\u0002J\u0008\u0010d\u001a\u00020\u000eH\u0016J\u0008\u0010e\u001a\u00020\u000eH\u0016J\u0008\u0010f\u001a\u00020\u000eH\u0016J\u0008\u0010g\u001a\u00020\u000eH\u0016J\u0006\u0010h\u001a\u00020\u000eJ\u0008\u0010i\u001a\u00020\u000eH\u0002J\u0008\u0010j\u001a\u00020>H\u0016J\u0008\u0010k\u001a\u00020>H\u0016J\u0008\u0010l\u001a\u00020>H\u0016J\u0008\u0010m\u001a\u00020>H\u0002J2\u0010n\u001a\u00020>2\u0008\u0010D\u001a\u0004\u0018\u00010:2\u0006\u0010E\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u000b2\u0006\u0010H\u001a\u00020\u000bH\u0004J\u0008\u0010o\u001a\u00020>H\u0016J\u001c\u0010p\u001a\u00020>2\u0008\u0010q\u001a\u0004\u0018\u00010%2\u0008\u0010D\u001a\u0004\u0018\u00010:H\u0002J\u0008\u0010r\u001a\u00020>H\u0004J\u0008\u0010s\u001a\u00020>H\u0016J\u0008\u0010t\u001a\u00020>H\u0002J\u0008\u0010u\u001a\u00020>H\u0002J\u0010\u0010v\u001a\u00020>2\u0006\u0010w\u001a\u00020\u000bH\u0016J\u0012\u0010x\u001a\u00020>2\u0008\u0010y\u001a\u0004\u0018\u00010zH\u0016J\u0010\u0010{\u001a\u00020>2\u0006\u0010D\u001a\u00020\u0007H\u0016J,\u0010{\u001a\u00020>2\u0006\u0010D\u001a\u00020\u00072\u0006\u0010|\u001a\u00020\u000b2\u0012\u0010}\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0014H\u0016J$\u0010{\u001a\u00020>2\u0006\u0010D\u001a\u00020\u00072\u0012\u0010}\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0014H\u0016J\u0010\u0010~\u001a\u00020>2\u0006\u0010\u007f\u001a\u00020\u000eH\u0016J\u0014\u0010\u0080\u0001\u001a\u00020>2\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0016H\u0016J\u0014\u0010\u0082\u0001\u001a\u00020>2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0018H\u0016J\u0014\u0010\u0084\u0001\u001a\u00020>2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u001aH\u0016J\u0014\u0010\u0085\u0001\u001a\u00020>2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u001cH\u0016J\u0014\u0010\u0087\u0001\u001a\u00020>2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u001eH\u0016J\u0014\u0010\u0088\u0001\u001a\u00020>2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010 H\u0016J\u0014\u0010\u0089\u0001\u001a\u00020>2\t\u0010\u008a\u0001\u001a\u0004\u0018\u000100H\u0016J\u0014\u0010\u008b\u0001\u001a\u00020>2\t\u0010\u008c\u0001\u001a\u0004\u0018\u00010\"H\u0016J\u000f\u0010\u008d\u0001\u001a\u00020>2\u0006\u0010|\u001a\u00020\u000bJ\u0012\u0010\u008e\u0001\u001a\u00020>2\u0007\u0010\u008f\u0001\u001a\u00020YH\u0016J\u0014\u0010\u0090\u0001\u001a\u00020>2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0007H\u0016J\u0011\u0010\u0092\u0001\u001a\u00020>2\u0006\u0010D\u001a\u00020:H\u0002J)\u0010\u0092\u0001\u001a\u00020>2\u0008\u0010D\u001a\u0004\u0018\u00010:2\u0014\u0010}\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014H\u0002J\t\u0010\u0093\u0001\u001a\u00020>H\u0016J\u0007\u0010\u0094\u0001\u001a\u00020>J\t\u0010\u0095\u0001\u001a\u00020\u000eH\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010(R\u0010\u0010)\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u000100X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00109\u001a\u0004\u0018\u00010:X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0097\u0001"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/fake/FakeVideoView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/miui/video/player/service/media/IVideoView;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "mAdjustHeight",
        "",
        "mAdjustWidth",
        "mCanPause",
        "",
        "mCanSeekBack",
        "mCanSeekForward",
        "mCurrentState",
        "mForceFullScreen",
        "mHeaders",
        "",
        "mInnerBufferingUpdateListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;",
        "mInnerCompletionListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;",
        "mInnerErrorListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;",
        "mInnerInfoListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;",
        "mInnerPreparedListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;",
        "mInnerSeekCompleteListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;",
        "mInnerSizeChangedListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;",
        "mIsActivityPaused",
        "mMediaPlayer",
        "Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;",
        "mMediaPlayerListener",
        "com/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1",
        "Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;",
        "mOnBufferingUpdateListener",
        "mOnCompletionListener",
        "mOnErrorListener",
        "mOnInfoListener",
        "mOnPreparedListener",
        "mOnSeekCompleteListener",
        "mOnVideoLoadingListener",
        "Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;",
        "mOnVideoSizeChangedListener",
        "mPlayHistoryPosition",
        "mPlayOffset",
        "mSeekWhenPrepared",
        "mSurfaceHolder",
        "Landroid/view/SurfaceHolder;",
        "mSurfaceView",
        "Landroid/view/SurfaceView;",
        "mUri",
        "Landroid/net/Uri;",
        "mUseAdjustSize",
        "mVideoDuration",
        "addSurfaceView",
        "",
        "adjustVideoPlayViewSize",
        "videoSizeStyle",
        "asView",
        "Landroid/view/View;",
        "asyncSaveHistory",
        "uri",
        "playCompleted",
        "duration",
        "position",
        "audioTrack",
        "canBuffering",
        "canPause",
        "canSeekBackward",
        "canSeekForward",
        "close",
        "continuePlay",
        "posistion",
        "createMediaPlayer",
        "getBufferPercentage",
        "getCurrentPosition",
        "getCurrentResolution",
        "getDuration",
        "getInitResolution",
        "getIsSupportChangeSpeed",
        "getPlayOffset",
        "getPlaySpeed",
        "",
        "getRealUri",
        "getSeekWhenPrepared",
        "getSupportedResolutions",
        "",
        "getUri",
        "getVideoHeight",
        "getVideoWidth",
        "handleOnError",
        "hasLoadingAfterAd",
        "initVideoView",
        "isAdsPlaying",
        "isAirkanEnable",
        "isInPlaybackState",
        "isPlaying",
        "isPlayingState",
        "isSurfaceCreated",
        "onActivityDestroy",
        "onActivityPause",
        "onActivityResume",
        "onMPPreparedAndSVCreated",
        "onSavePlayHistory",
        "pause",
        "prepareMediaPlayer",
        "player",
        "release",
        "requestVideoLayout",
        "resetOrCreateMediaPlayer",
        "resetState",
        "seekTo",
        "msec",
        "setAdsPlayListener",
        "adPlayListener",
        "Lcom/miui/video/player/service/media/AdsPlayListener;",
        "setDataSource",
        "offset",
        "headers",
        "setForceFullScreen",
        "forceFullScreen",
        "setOnBufferingUpdateListener",
        "onBufferingUpdateListener",
        "setOnCompletionListener",
        "l",
        "setOnErrorListener",
        "setOnInfoListener",
        "listener",
        "setOnPreparedListener",
        "setOnSeekCompleteListener",
        "setOnVideoLoadingListener",
        "loadingListener",
        "setOnVideoSizeChangedListener",
        "onVideoSizeChangedListener",
        "setPlayOffset",
        "setPlaySpeed",
        "speed",
        "setResolution",
        "resolution",
        "setVideoUri",
        "start",
        "stop",
        "supportPrepare",
        "InnerSurfaceView",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _$_findViewCache:Ljava/util/HashMap;

.field private mAdjustHeight:I

.field private mAdjustWidth:I

.field private final mCanPause:Z

.field private final mCanSeekBack:Z

.field private final mCanSeekForward:Z

.field private mCurrentState:I

.field private mForceFullScreen:Z

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

.field private final mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

.field private final mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field private final mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

.field private final mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

.field private final mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

.field private final mInnerSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

.field private mIsActivityPaused:Z

.field private mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

.field private final mMediaPlayerListener:Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;

.field private mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

.field private mOnVideoLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

.field private mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

.field private mPlayHistoryPosition:I

.field private mPlayOffset:I

.field private mSeekWhenPrepared:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mUri:Landroid/net/Uri;

.field private mUseAdjustSize:Z

.field private mVideoDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "MiVideoView"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mCanPause:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mCanSeekBack:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mCanSeekForward:Z

    sget-object p1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;->getSTATE_IDLE()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mCurrentState:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mPlayOffset:I

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->initVideoView()V

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayerListener:Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerSizeChangedListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerSizeChangedListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerPreparedListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerPreparedListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerCompletionListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerCompletionListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerInfoListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerInfoListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerSeekCompleteListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerSeekCompleteListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerErrorListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerErrorListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerBufferingUpdateListener$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerBufferingUpdateListener$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public static final synthetic access$createMediaPlayer(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->createMediaPlayer()Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAdjustHeight$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mAdjustHeight:I

    return p0
.end method

.method public static final synthetic access$getMAdjustWidth$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mAdjustWidth:I

    return p0
.end method

.method public static final synthetic access$getMForceFullScreen$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mForceFullScreen:Z

    return p0
.end method

.method public static final synthetic access$getMInnerBufferingUpdateListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method public static final synthetic access$getMInnerCompletionListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method public static final synthetic access$getMInnerErrorListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method public static final synthetic access$getMInnerInfoListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method public static final synthetic access$getMInnerPreparedListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method public static final synthetic access$getMInnerSeekCompleteListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method public static final synthetic access$getMInnerSizeChangedListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method public static final synthetic access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    return-object p0
.end method

.method public static final synthetic access$getMOnBufferingUpdateListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method public static final synthetic access$getMOnCompletionListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method public static final synthetic access$getMOnErrorListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method public static final synthetic access$getMOnInfoListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method public static final synthetic access$getMOnSeekCompleteListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method public static final synthetic access$getMOnVideoSizeChangedListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method public static final synthetic access$getMSurfaceHolder$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public static final synthetic access$getMSurfaceView$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static final synthetic access$getMUri$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static final synthetic access$getMUseAdjustSize$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mUseAdjustSize:Z

    return p0
.end method

.method public static final synthetic access$handleOnError(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->handleOnError()V

    return-void
.end method

.method public static final synthetic access$onMPPreparedAndSVCreated(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->onMPPreparedAndSVCreated()V

    return-void
.end method

.method public static final synthetic access$prepareMediaPlayer(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->prepareMediaPlayer(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic access$setMAdjustHeight$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mAdjustHeight:I

    return-void
.end method

.method public static final synthetic access$setMAdjustWidth$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mAdjustWidth:I

    return-void
.end method

.method public static final synthetic access$setMForceFullScreen$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mForceFullScreen:Z

    return-void
.end method

.method public static final synthetic access$setMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    return-void
.end method

.method public static final synthetic access$setMOnBufferingUpdateListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public static final synthetic access$setMOnCompletionListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public static final synthetic access$setMOnErrorListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public static final synthetic access$setMOnInfoListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public static final synthetic access$setMOnSeekCompleteListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public static final synthetic access$setMOnVideoSizeChangedListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public static final synthetic access$setMSurfaceHolder$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public static final synthetic access$setMSurfaceView$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/view/SurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method public static final synthetic access$setMUri$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public static final synthetic access$setMUseAdjustSize$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mUseAdjustSize:Z

    return-void
.end method

.method private final addSurfaceView()V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/content/Context;)V

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final createMediaPlayer()Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;
    .locals 4

    new-instance v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    new-instance v1, Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;-><init>(Landroid/content/Context;)V

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;-><init>(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayerListener:Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;

    check-cast v1, Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->setMediaPlayerListener(Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-object v0
.end method

.method private final getRealUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "file:///content"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "/"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    return-object p1
.end method

.method private final handleOnError()V
    .locals 0

    return-void
.end method

.method private final initVideoView()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->requestFocus()Z

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->addSurfaceView()V

    return-void
.end method

.method private final isSurfaceCreated()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final onMPPreparedAndSVCreated()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMPPreparedAndSVCreated with prepare_seek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MediaPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->start()V

    :cond_2
    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSeekWhenPrepared:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSeekWhenPrepared:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->seekTo(I)V

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSeekWhenPrepared:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v0}, Landroid/view/SurfaceView;->invalidate()V

    :cond_6
    return-void
.end method

.method private final prepareMediaPlayer(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mHeaders:Ljava/util/Map;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1, v1, p2, v2}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->prepareAsync()V

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSeekWhenPrepared:I

    const-string p2, "PlayHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " prepareMediaPlayer mSeekWhenPrepared == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnVideoLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnVideoLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    if-nez p2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    move-object v1, p0

    check-cast v1, Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {p2, v1}, Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;->onVideoLoading(Lcom/miui/video/player/service/media/IVideoView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/miui/video/player/service/media/IMediaPlayer;

    const/4 v1, 0x1

    invoke-interface {p2, p1, v1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private final resetOrCreateMediaPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->reset()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->createMediaPlayer()Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    :goto_0
    return-void
.end method

.method private final resetState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSeekWhenPrepared:I

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;->getSTATE_IDLE()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mCurrentState:I

    return-void
.end method

.method private final setVideoUri(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method private final setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getRealUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mUri:Landroid/net/Uri;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mHeaders:Ljava/util/Map;

    :cond_0
    iget-object p2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mHeaders:Ljava/util/Map;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v0, "enable-fullcodec"

    const-string v1, "1"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSeekWhenPrepared:I

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->resetOrCreateMediaPlayer()V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-direct {p0, p2, p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->prepareMediaPlayer(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->requestLayout()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->invalidate()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uri can not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final adjustVideoPlayViewSize(I)V
    .locals 2

    iget-boolean p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mUseAdjustSize:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mAdjustWidth:I

    iget v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mAdjustHeight:I

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mAdjustWidth:I

    iget v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mAdjustHeight:I

    invoke-interface {p1, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public asView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final asyncSaveHistory(Landroid/net/Uri;ZIII)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final asyncSaveHistory(Z)V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getDuration()I

    move-result v4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getCurrentPosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->asyncSaveHistory(Landroid/net/Uri;ZIII)V

    :cond_2
    return-void
.end method

.method public canBuffering()Z
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->TAG:Ljava/lang/String;

    const-string v2, "check network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canPause()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getDuration()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mCanPause:Z

    :goto_0
    return v0
.end method

.method public canSeekBackward()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getDuration()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mCanSeekBack:Z

    :goto_0
    return v0
.end method

.method public canSeekForward()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getDuration()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mCanSeekForward:Z

    :goto_0
    return v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->resetState()V

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    iput-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    move-object v1, v0

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    iput-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    move-object v1, v0

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    iput-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    move-object v1, v0

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    iput-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    check-cast v0, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->TAG:Ljava/lang/String;

    const-string v1, "close VideoView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->release()V

    :cond_1
    return-void
.end method

.method public continuePlay(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continuePlay :  position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", playOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mPlayOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mPlayOffset:I

    if-ltz v0, :cond_0

    iget p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mPlayOffset:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->seekTo(I)V

    return-void

    :cond_0
    const/16 v0, 0x1388

    if-le p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mIsActivityPaused:Z

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->seekTo(I)V

    :cond_1
    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getBufferPercentage()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mPlayHistoryPosition:I

    :goto_0
    return v0
.end method

.method public getCurrentResolution()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "0"

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mVideoDuration:I

    :goto_0
    return v0
.end method

.method public getInitResolution()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "0"

    return-object v0
.end method

.method public getIsSupportChangeSpeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getPlayOffset()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mPlayOffset:I

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final getSeekWhenPrepared()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method public getSupportedResolutions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mUri:Landroid/net/Uri;

    :goto_0
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getVideoHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getVideoWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLoadingAfterAd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAdsPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAirkanEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isInPlaybackState()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPlayingState()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mCurrentState:I

    sget-object v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;->getSTATE_PLAYING()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onActivityDestroy()V
    .locals 0

    return-void
.end method

.method public onActivityPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->onActivityPause()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mIsActivityPaused:Z

    return-void
.end method

.method public onActivityResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->onActivityResume()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mIsActivityPaused:Z

    return-void
.end method

.method protected final onSavePlayHistory(Landroid/net/Uri;ZIII)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;->getSTATE_PAUSED()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mCurrentState:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->isSurfaceCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->pause()V

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->asyncSaveHistory(Z)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->setKeepScreenOn(Z)V

    return-void
.end method

.method protected final release()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mPlayHistoryPosition:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mVideoDuration:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->TAG:Ljava/lang/String;

    const-string v1, "release enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->reset()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->release()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->TAG:Ljava/lang/String;

    const-string v1, "release exit."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    check-cast v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    return-void
.end method

.method public requestVideoLayout()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MiVideoView#seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ; seekWhenPrepared = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; MediaPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSeekWhenPrepared:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSeekWhenPrepared:I

    :cond_2
    return-void
.end method

.method public setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/AdsPlayListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Uri.parse(uri)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->setVideoUri(Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mPlayOffset:I

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mForceFullScreen:Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnVideoLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public final setPlayOffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mPlayOffset:I

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 0

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiVideoView#start mMediaPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; surfaceCreated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->isSurfaceCreated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;->getSTATE_PLAYING()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mCurrentState:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->isSurfaceCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->mMediaPlayer:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->stop()V

    :cond_1
    return-void
.end method

.method public supportPrepare()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
