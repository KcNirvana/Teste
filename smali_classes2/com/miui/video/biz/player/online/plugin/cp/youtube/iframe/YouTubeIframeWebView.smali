.class public Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;
.super Lcom/miui/video/player/service/webview/MiVideoWebview;
.source "YouTubeIframeWebView.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$GetCurrentPlaybackQualityStatusCallback;,
        Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$GetCurrentStateCallback;,
        Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;
    }
.end annotation


# static fields
.field private static final DEFAULT_URL:Ljava/lang/String; = "https://video.in.intl.xiaomi.com/resolve/global_v/global_share?branch=frontend_youtube&seg=%2Fyoutube"

.field private static final TAG:Ljava/lang/String; = "YouTubeIframeWebView"


# instance fields
.field private mAdsPlayListener:Lcom/miui/video/player/service/media/AdsPlayListener;

.field private mCurrentState:Ljava/lang/String;

.field private mIsPageFinished:Z

.field private mIsWebViewLoaded:Z

.field private mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

.field private mOnLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

.field private mOnPlaybackResolutionListener:Lcom/miui/video/player/service/media/IAsyncVideoView$OnPlaybackResolutionListener;

.field private mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

.field private mRatePlaybackChangedListener:Lcom/miui/video/player/service/media/IAsyncVideoView$RatePlaybackChangedListener;

.field private mUri:Landroid/net/Uri;

.field private mVideoId:Ljava/lang/String;

.field private mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/webview/MiVideoWebview;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mIsPageFinished:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mIsWebViewLoaded:Z

    const-string p1, "state_idle"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mCurrentState:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/webview/MiVideoWebview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mIsPageFinished:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mIsWebViewLoaded:Z

    const-string p1, "state_idle"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mCurrentState:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/webview/MiVideoWebview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mIsPageFinished:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mIsWebViewLoaded:Z

    const-string p1, "state_idle"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mCurrentState:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mIsPageFinished:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mIsPageFinished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mVideoId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)Lcom/miui/video/player/service/media/IAsyncVideoView$RatePlaybackChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mRatePlaybackChangedListener:Lcom/miui/video/player/service/media/IAsyncVideoView$RatePlaybackChangedListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mCurrentState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)Lcom/miui/video/player/service/media/IAsyncVideoView$OnPlaybackResolutionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnPlaybackResolutionListener:Lcom/miui/video/player/service/media/IAsyncVideoView$OnPlaybackResolutionListener;

    return-object p0
.end method

.method private initJSBridge()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->inject()V

    return-void
.end method

.method private releaseConfigCallback()V
    .locals 2

    :try_start_0
    const-string v0, "android.webkit.BrowserFrame"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sConfigCallback"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public canBuffering()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->releasePlayer()V

    return-void
.end method

.method public continuePlay(I)V
    .locals 3

    const-string v0, "YouTubeIframeWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continuePlay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsSeekTo(I)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "YouTubeIframeWebView"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->removeAllViews()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->releaseConfigCallback()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->access$1100(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->access$1100(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->access$1102(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;Landroid/os/Handler;)Landroid/os/Handler;

    iput-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->clearHistory()V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->releaseConfigCallback()V

    invoke-super {p0}, Lcom/miui/video/player/service/webview/MiVideoWebview;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public forbidAllScrollEvent()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$3;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPlaybackRate(Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsGetCurrentPlaybackRate(Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;)V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    const-string v0, "YouTubeIframeWebView"

    const-string v1, "Not Support getCurrentPosition"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "YouTubeIframeWebView"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsGetCurrentPosition(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;)V

    :cond_0
    return-void
.end method

.method public getCurrentResolution()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method public getCurrentResolution(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentResolutionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsGetSupportedResolutions(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentResolutionCallback;)V

    :cond_0
    return-void
.end method

.method public getDuration()I
    .locals 2

    const-string v0, "YouTubeIframeWebView"

    const-string v1, "Not Support getDuration"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "YouTubeIframeWebView"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration(Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsGetDuration(Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;)V

    :cond_0
    return-void
.end method

.method public getInitResolution()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method public getIsSupportChangeSpeed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSupportedPlaybackRateList(Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsGetSupportedPlaybackRateList(Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;)V

    :cond_0
    return-void
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedResolutions(Lcom/miui/video/player/service/media/IAsyncVideoView$GetSupportedResolutionsCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsGetCurrentResolution(Lcom/miui/video/player/service/media/IAsyncVideoView$GetSupportedResolutionsCallback;)V

    :cond_0
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri(Lcom/miui/video/player/service/media/IAsyncVideoView$GetUriCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mUri:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IAsyncVideoView$GetUriCallback;->onGetUriCallback(Landroid/net/Uri;)V

    return-void
.end method

.method public getVideoHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasLoadingAfterAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/player/online/R$color;->c_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->resumePlayer()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->initJSBridge()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->forbidAllScrollEvent()V

    return-void
.end method

.method protected initWebChromeClient()V
    .locals 2

    const-string v0, "YouTubeIframeWebView"

    const-string v1, "initWebChromeClient"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$2;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method protected initWebViewClient()V
    .locals 2

    const-string v0, "YouTubeIframeWebView"

    const-string v1, "initWebViewClient"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public isAdsPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsAdPlayingCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsAdPlayingCallback;->onGetIsAdPlayingResult(Z)V

    return-void
.end method

.method public isAdsPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAirkanEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInPlaybackState(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsInPlaybackStateCallback;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    new-instance v1, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$4;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$4;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsInPlaybackStateCallback;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsGetCurrentState(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$GetCurrentStateCallback;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public isInPlaybackState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsIsPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V

    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 2

    const-string v0, "YouTubeIframeWebView"

    const-string v1, "Not Support isPlaying"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "YouTubeIframeWebView"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->destroy()V

    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 2

    const-string v0, "YouTubeIframeWebView"

    const-string v1, "onActivityPause"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->pausePlayer()V

    return-void
.end method

.method public onActivityResume()V
    .locals 2

    const-string v0, "YouTubeIframeWebView"

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->resumePlayer()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->start()V

    return-void
.end method

.method public onWebViewLoadedAndPlay()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsCue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsPause()V

    :cond_0
    return-void
.end method

.method public pausePlayer()V
    .locals 2

    const-string v0, "YouTubeIframeWebView"

    const-string v1, "pausePlayer"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->onPause()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->pauseTimers()V

    return-void
.end method

.method public releasePlayer()V
    .locals 2

    const-string v0, "YouTubeIframeWebView"

    const-string v1, "releasePlayer"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->destroy()V

    return-void
.end method

.method public requestVideoLayout()V
    .locals 0

    return-void
.end method

.method public resumePlayer()V
    .locals 2

    const-string v0, "YouTubeIframeWebView"

    const-string v1, "resumePlayer"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->onResume()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->resumeTimers()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsSeekTo(I)V

    :cond_0
    return-void
.end method

.method public setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mAdsPlayListener:Lcom/miui/video/player/service/media/AdsPlayListener;

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    .locals 3
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

    const-string p2, "YouTubeIframeWebView"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDataSource "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "contentId"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "iframe_url"

    const-string v1, "https://video.in.intl.xiaomi.com/resolve/global_v/global_share?branch=frontend_youtube&seg=%2Fyoutube"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mIsWebViewLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "YouTubeIframeWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mIsWebViewLoaded:Z

    :cond_0
    invoke-virtual {p0, p3}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->setVideoIdAndPlay(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "YouTubeIframeWebView"

    const-string v0, "setDataSource Fail"

    invoke-static {p3, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mUri:Landroid/net/Uri;

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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 0

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPlaybackResolutionListener(Lcom/miui/video/player/service/media/IAsyncVideoView$OnPlaybackResolutionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnPlaybackResolutionListener:Lcom/miui/video/player/service/media/IAsyncVideoView$OnPlaybackResolutionListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->setPlaybackRate(F)V

    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsSetPlaybackRate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPlaybackRateChanged(Lcom/miui/video/player/service/media/IAsyncVideoView$RatePlaybackChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mRatePlaybackChangedListener:Lcom/miui/video/player/service/media/IAsyncVideoView$RatePlaybackChangedListener;

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsSetResolution(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVideoIdAndPlay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mVideoId:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mIsPageFinished:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->onWebViewLoadedAndPlay()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->mYouTubeJSBridge:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsStart()V

    :cond_0
    return-void
.end method

.method public supportPrepare()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
