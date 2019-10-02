.class public Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;
.super Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;
.source "HungamaNewVideoView.java"


# static fields
.field protected static final VIDEO_PLAY_URL:Ljava/lang/String; = "url"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContentId:Ljava/lang/String;

.field private mErrorRunnable:Ljava/lang/Runnable;

.field private mPlayRunnable:Ljava/lang/Runnable;

.field private mSetSrcRunnable:Ljava/lang/Runnable;

.field private mUIHandler:Landroid/os/Handler;

.field private trueUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;-><init>(Landroid/content/Context;)V

    const-string p1, "HungamaNewVideoView"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mUIHandler:Landroid/os/Handler;

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mErrorRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$2;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mSetSrcRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mPlayRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string v0, "HungamaNewVideoView 20190517 :"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->trueUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->trueUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mOffset:I

    return p0
.end method

.method static synthetic access$201(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;Ljava/lang/String;ILjava/util/Map;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mContentId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mErrorRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mSetSrcRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method protected addMark(Landroid/widget/RelativeLayout;)V
    .locals 0

    return-void
.end method

.method public getIsSupportChangeSpeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "url"

    return-object v0
.end method

.method protected handleOnError(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 v1, 0x0

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    return-void
.end method

.method protected onBufferEndStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onBufferEndStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onBufferStartStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onBufferStartStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onCompletedStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onCompletedStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onErrorStatsEvent(II)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string p2, "onErrorStatsEvent"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onPauseStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onPauseStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onPrepareStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onPrepareStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreparedStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onPreparedStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onResumeStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onResumeStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onSeekCompletedStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onSeekCompletedStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onSeekStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onSeekStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onStartStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onStartStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onStopStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onStopStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method playHungama(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playCms mOffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "contentId"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mContentId:Ljava/lang/String;

    const-string p1, "item_id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->item_id:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 v0, 0x0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    :goto_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

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

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->mOffset:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->playHungama(Ljava/lang/String;)V

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

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method
