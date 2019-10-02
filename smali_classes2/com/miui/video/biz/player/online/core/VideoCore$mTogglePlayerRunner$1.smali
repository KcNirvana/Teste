.class final Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;-><init>(Landroid/support/v4/app/FragmentActivity;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoCore;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, " togglePlayerRunner "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->isAdsPlaying()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/base/utils/AndroidUtils;->isInCallingState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;)V

    check-cast v1, Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IAsyncVideoView;->isPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.player.service.media.IAsyncVideoView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->isPlaying()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, " togglePlayerRunner pause"

    invoke-static {v0, v2}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->pause(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, " togglePlayerRunner start"

    invoke-static {v0, v2}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->resume(I)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mTogglePlayerRunner$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoPlayControllerView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->syncPlayButtonState()V

    return-void

    :cond_5
    :goto_1
    return-void
.end method
