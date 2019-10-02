.class public Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;
.super Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;
.source "OriginalVideoView.java"


# static fields
.field public static final ERROR_CODE_PLUGIN_ORIGINAL_ERROR:I = 0x2af8

.field protected static final VIDEO_PLAY_URL:Ljava/lang/String; = "url"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;-><init>(Landroid/content/Context;)V

    const-string p1, "OriginalVideoView"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->pluginId:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OriginalVideoView 20190517 :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected addMark(Landroid/widget/RelativeLayout;)V
    .locals 0

    return-void
.end method

.method public getIsSupportChangeSpeed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "url"

    return-object v0
.end method

.method protected handleOnError(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 v1, 0x0

    const/16 v2, 0x2af8

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    return-void
.end method

.method protected onBufferEndStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onBufferEndStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onBufferStartStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onBufferStartStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onCompletedStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onCompletedStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onErrorStatsEvent(II)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    const-string p2, "onErrorStatsEvent"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onPauseStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onPauseStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onPrepareStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onPrepareStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreparedStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onPreparedStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onResumeStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onResumeStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onSeekCompletedStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onSeekCompletedStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onSeekStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onSeekStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onStartStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onStartStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onStopStatsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onStopStatsEvent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
