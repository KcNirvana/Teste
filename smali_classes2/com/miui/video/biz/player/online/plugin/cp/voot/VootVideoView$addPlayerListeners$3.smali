.class final Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;
.super Ljava/lang/Object;
.source "VootVideoView.kt"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->addPlayerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/kaltura/playkit/PKEvent;",
        "kotlin.jvm.PlatformType",
        "onEvent"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/kaltura/playkit/PKEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "voot  AdEvent.Type.STARTED"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getMOnAdsPlayListener()Lcom/miui/video/player/service/media/AdsPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/AdsPlayListener;->onAdsPlayStart()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->access$hideMark(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->access$setMAdsPlaying$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->access$setMAdStartTime$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;J)V

    instance-of v0, p1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdStartedEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    check-cast p1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdStartedEvent;

    iget-object v1, p1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdStartedEvent;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->access$setMPlayingAdInfo$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;Lcom/kaltura/playkit/plugins/ads/AdInfo;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getMContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdStartedEvent;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->access$getMTapPlayTime$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-static {v3}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->access$getMAdCuePointList$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/VootStatisticUtils;->mixpanelTrackAdStart(Landroid/content/Context;Lcom/kaltura/playkit/plugins/ads/AdInfo;JLjava/util/List;)V

    :cond_1
    return-void
.end method
