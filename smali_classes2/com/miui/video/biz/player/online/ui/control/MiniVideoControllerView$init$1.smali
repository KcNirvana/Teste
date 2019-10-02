.class public final Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$1;
.super Ljava/lang/Object;
.source "MiniVideoControllerView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->init()V
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->access$getVProgressBar$p(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->getMPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->isAsyncMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->getMPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    new-instance v2, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-direct {v2, v3}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;-><init>(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;)V

    check-cast v2, Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingPosition(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v2}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->getMPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v2}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getVideoDuration()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->access$setMDuration$p(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;I)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->getMPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingPosition()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v2}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->getMPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v2, v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->syncVideoObjPosition(I)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v2, v1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->setProgressToView(I)V

    :goto_0
    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;J)V

    return-void
.end method
