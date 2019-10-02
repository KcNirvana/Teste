.class public final Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;->playAd(Ljava/lang/String;Lcom/miui/video/player/service/model/VideoObject;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0008H\u0016J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/miui/video/biz/player/online/core/VideoCore$playAd$1",
        "Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;",
        "adClicked",
        "",
        "p0",
        "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
        "adDisliked",
        "p1",
        "",
        "adFailedToLoad",
        "adImpression",
        "adLoaded",
        "hideLoading",
        "onAdVideoComplete",
        "showLoading",
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
.field final synthetic $after:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoCore;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;->$after:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
    .locals 0
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Ad is dislike "

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ad is End "

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onAdPlayStart(Z)V

    sget-object p1, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->endStep(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;->$after:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public adLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad is loaded "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onAdPlayStart(Z)V

    return-void
.end method

.method public hideLoading()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoLoadingPresenter$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoHideLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    return-void
.end method

.method public onAdVideoComplete(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ad is End "

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->endStep(I)V

    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onAdPlayClose()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;->$after:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public showLoading()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoLoadingPresenter$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$playAd$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    return-void
.end method
