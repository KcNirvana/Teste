.class public final Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;
.super Ljava/lang/Object;
.source "MiAdsView.kt"

# interfaces
.implements Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ad/MiAdsView;->loadAndShow(Ljava/lang/String;Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;)V
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0012\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\u0012\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1",
        "Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;",
        "adClicked",
        "",
        "nativeAd",
        "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
        "adDisliked",
        "p0",
        "p1",
        "",
        "adFailedToLoad",
        "errorCode",
        "adImpression",
        "adLoaded",
        "onAdVideoComplete",
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
.field final synthetic $outCallback:Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;

.field final synthetic this$0:Lcom/miui/video/biz/player/online/ad/MiAdsView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ad/MiAdsView;Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->this$0:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->$outCallback:Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->$outCallback:Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;->adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
    .locals 0
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->this$0:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->release()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->$outCallback:Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;->adFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 2
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->this$0:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->getInstreamAdManager()Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->getAdType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "gis"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->$outCallback:Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;->hideLoading()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->$outCallback:Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;->adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_2
    return-void
.end method

.method public adLoaded()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->this$0:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    sget v1, Lcom/miui/video/biz/player/online/R$id;->v_instream_ad_root:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->this$0:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/player/online/R$color;->c_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->endStep(I)V

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->startStep(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->this$0:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->getInstreamAdManager()Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->showAd()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->this$0:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->getInstreamAdManager()Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->getAdType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "gis"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->$outCallback:Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;->showLoading()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->$outCallback:Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;->adLoaded()V

    :cond_3
    return-void
.end method

.method public onAdVideoComplete(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->this$0:Lcom/miui/video/biz/player/online/ad/MiAdsView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->release()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;->$outCallback:Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;->onAdVideoComplete(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method
