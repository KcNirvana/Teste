.class Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;
.super Ljava/lang/Object;
.source "FullScreenVideoController.java"

# interfaces
.implements Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsShowRecommend:Z

.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;->mIsShowRecommend:Z

    return-void
.end method


# virtual methods
.method public getVideoTitle()Ljava/lang/String;
    .locals 3

    const-string v0, "FullVC_Local"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplayCallback  getVideoTitle mVideoTitle =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getVideoTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowRecommendFragment()Z
    .locals 3

    const-string v0, "FullVC_Local"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplayCallback  isShowRecommendFragment mIsShowRecommend =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;->mIsShowRecommend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;->mIsShowRecommend:Z

    return v0
.end method

.method public onBack()Z
    .locals 2

    const-string v0, "FullVC_Local"

    const-string v1, "ReplayCallback  onBack"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onReplay()Z
    .locals 2

    const-string v0, "FullVC_Local"

    const-string v1, "ReplayCallback  onReplay"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->replay()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->access$100(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;->mIsShowRecommend:Z

    const/4 v0, 0x1

    return v0
.end method

.method public setIsShowRecommend(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;->mIsShowRecommend:Z

    const-string p1, "FullVC_Local"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplayCallback  setIsShowRecommend mIsShowRecommend =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;->mIsShowRecommend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
