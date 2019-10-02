.class final Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/AdsPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PluginAdListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;",
        "Lcom/miui/video/player/service/media/AdsPlayListener;",
        "(Lcom/miui/video/biz/player/online/core/VideoCore;)V",
        "onAdsDuration",
        "",
        "duration",
        "",
        "onAdsPlayEnd",
        "onAdsPlayStart",
        "onAdsTimeUpdate",
        "leftSeconds",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoCore;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsDuration(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnInfoListener onAdsDuration\u3000duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoLoadingPresenter$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$hideController(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    :cond_0
    return-void
.end method

.method public onAdsPlayEnd()V
    .locals 2

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->getCpAdsPrepareEnd()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->endStep(I)V

    :cond_0
    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->endStep(I)V

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->startStep(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->onAdEnd()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$canShowController(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getHandleContinueWhileAdsPlaying$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getFirstInvokeOnPrepare$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->handleContinuePlay()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdsPlayEnd"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAdsPlayStart()V
    .locals 2

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->setCpAdsPrepareEnd(Z)V

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->endStep(I)V

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->startStep(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoLoadingPresenter$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoHideLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$hideController(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->onAdBegin()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdsPlayStart"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAdsTimeUpdate(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnInfoListener onAdsTimeUpdate\u3000leftSeconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoLoadingPresenter$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$PluginAdListener;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$hideController(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    :cond_0
    return-void
.end method
