.class Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$1;
.super Ljava/lang/Object;
.source "ViuVideoViewContainer.java"

# interfaces
.implements Lcom/miui/video/player/service/media/AdsPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->playAdAndVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Lcom/miui/video/player/service/media/AdsPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Lcom/miui/video/player/service/media/AdsPlayListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/AdsPlayListener;->onAdsDuration(I)V

    :cond_0
    return-void
.end method

.method public onAdsPlayEnd()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Lcom/miui/video/player/service/media/AdsPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Lcom/miui/video/player/service/media/AdsPlayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/AdsPlayListener;->onAdsPlayEnd()V

    :cond_0
    return-void
.end method

.method public onAdsPlayStart()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Lcom/miui/video/player/service/media/AdsPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Lcom/miui/video/player/service/media/AdsPlayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/AdsPlayListener;->onAdsPlayStart()V

    :cond_0
    return-void
.end method

.method public onAdsTimeUpdate(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Lcom/miui/video/player/service/media/AdsPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Lcom/miui/video/player/service/media/AdsPlayListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/AdsPlayListener;->onAdsTimeUpdate(I)V

    :cond_0
    return-void
.end method
