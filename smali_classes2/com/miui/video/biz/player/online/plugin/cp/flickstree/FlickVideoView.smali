.class public Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;
.super Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;
.source "FlickVideoView.java"


# static fields
.field public static final ERROR_GET_AUTHTOKEN:I = 0x1

.field public static final ERROR_GET_PLAYTOKEN:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContentId:Ljava/lang/String;

.field private mErrorAuthTokenRunnable:Ljava/lang/Runnable;

.field private mErrorPlayTokenRunnable:Ljava/lang/Runnable;

.field private mPlayRunnable:Ljava/lang/Runnable;

.field private mProgressEventRunnable:Ljava/lang/Runnable;

.field private mUIHandler:Landroid/os/Handler;

.field private mUri:Ljava/lang/String;

.field private network:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;-><init>(Landroid/content/Context;)V

    const-string p1, "FlickVideoView"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mPlayRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView$2;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mProgressEventRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v0, "FlickVideoView 20190415"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "flickstree"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->pluginId:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/util/NetUtil;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->network:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->doNetConnectPlay()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->onInitiatedStatsEvent()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mContentId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->realPlay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->onPlayProgressStatsEvent()V

    return-void
.end method

.method private doNetConnectPlay()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUri:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->playFlick(Ljava/lang/String;)V

    return-void
.end method

.method private getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    invoke-direct {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mContentId:Ljava/lang/String;

    iput-object p1, v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->cid:Ljava/lang/String;

    return-object v0
.end method

.method private onAdProgressStatsEvent()V
    .locals 1

    const-string v0, "ad_progress"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->startProgressEvent()V

    return-void
.end method

.method private onInitiatedStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onInitiatedStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "play_initiated"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->network:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->network:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->duration:I

    return-void
.end method

.method private onPlayProgressStatsEvent()V
    .locals 1

    const-string v0, "play_progress"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->startProgressEvent()V

    return-void
.end method

.method private realPlay(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "play_url"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "id"

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mOffset:I

    invoke-super {p0, p1, v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/16 v0, 0x1f4

    const/4 v2, 0x2

    invoke-interface {p1, v1, v0, v2}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    return-void
.end method

.method private startProgressEvent()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mProgressEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mProgressEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopProgressEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mProgressEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addMark(Landroid/widget/RelativeLayout;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->close()V

    return-void
.end method

.method public getIsSupportChangeSpeed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getLogo()I
    .locals 1

    sget v0, Lcom/miui/video/biz/player/online/R$drawable;->flickstree_watermark_logo:I

    return v0
.end method

.method protected handleOnError(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    return-void
.end method

.method public onActivityDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onActivityDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onActivityDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public onActivityPause()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onActivityPause()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mErrorAuthTokenRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mErrorAuthTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mErrorPlayTokenRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mErrorPlayTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mProgressEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method protected onBufferEndStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onBufferEndStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "buffering_completed"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onBufferStartStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onBufferStartStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "buffering_started"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onCompletedStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onCompletedStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "play_completed"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->stopProgressEvent()V

    return-void
.end method

.method protected onErrorStatsEvent(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onErrorStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "play_error"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->error_code:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->error_msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getCurrentPosition()I

    move-result p1

    iput p1, v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->play_pos:I

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->stopProgressEvent()V

    return-void
.end method

.method protected onPauseStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onPauseStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "play_paused"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->play_pos:I

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onPrepareStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onPrepareStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "loading_started"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    return-void
.end method

.method protected onPreparedStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onPreparedStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "loading_completed"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onResumeStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onResumeStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "play_resumed"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onSeekCompletedStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onSeekCompletedStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "seek_completed"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->play_pos:I

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onSeekStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onSeekStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "seek_started"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->play_pos:I

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onStartStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onStartStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "play_started"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mOffset:I

    iput v1, v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->play_pos:I

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onStopStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onStopStatsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "play_stopped"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->stopProgressEvent()V

    return-void
.end method

.method playFlick(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playFlick mOffset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "isForceRemote"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "isForceRemote"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->isForceRemote:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->isForceRemote:Z

    :goto_0
    const-string p1, "contentId"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mContentId:Ljava/lang/String;

    const-string p1, "item_id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->item_id:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-interface {p1, v1, v2, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_1
    :goto_1
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->playFlick(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
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

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mOffset:I

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUri:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mUri:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->playFlick(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->playFlick(Ljava/lang/String;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/InnerErrorRunnable;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/16 v1, 0x1f4

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/InnerErrorRunnable;-><init>(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;II)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mErrorPlayTokenRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/InnerErrorRunnable;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/InnerErrorRunnable;-><init>(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;II)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->mErrorAuthTokenRunnable:Ljava/lang/Runnable;

    return-void
.end method
