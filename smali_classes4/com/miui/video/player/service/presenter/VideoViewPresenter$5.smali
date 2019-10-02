.class Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;
.super Ljava/lang/Object;
.source "VideoViewPresenter.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/presenter/VideoViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/miui/video/player/service/media/IMediaPlayer;)V
    .locals 4

    sget-object p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    const-string v0, "OnCompletionListener onCompletion :  "

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const-string v0, "play_complete"

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendPlayActionBroadcast(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->onComplete()V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->isNeedStayComplete()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {p1, v0, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->pause(ZZ)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->showController()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->asyncSaveHistory(Z)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->playNext(Z)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v1, "LAST_RECOMMEND_VIDEO_SHOW_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const-string v1, "mivideo"

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$600(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$502(Lcom/miui/video/player/service/presenter/VideoViewPresenter;Z)Z

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$500(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Z

    move-result p1

    invoke-static {p1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->isOpenRecommendPage(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/miui/video/player/service/recommend/RecommendDataUtils;->getInstance()Lcom/miui/video/player/service/recommend/RecommendDataUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$700(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$500(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/player/service/recommend/RecommendDataUtils;->getRecommendData(Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;Z)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    :goto_0
    return-void
.end method
