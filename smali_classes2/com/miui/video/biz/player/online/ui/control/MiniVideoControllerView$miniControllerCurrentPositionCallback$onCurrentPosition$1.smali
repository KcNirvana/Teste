.class public final Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback$onCurrentPosition$1;
.super Ljava/lang/Object;
.source "MiniVideoControllerView.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;->onCurrentPosition(I)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback$onCurrentPosition$1",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;",
        "onDuration",
        "",
        "playerDuration",
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
.field final synthetic $currentPosition:I

.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback$onCurrentPosition$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;

    iput p2, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback$onCurrentPosition$1;->$currentPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDuration(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback$onCurrentPosition$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;->getRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->access$setMDuration$p(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback$onCurrentPosition$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;->getRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->getMPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/model/VideoObject;->setCurEpisodeDuration(I)V

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback$onCurrentPosition$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;->getRef()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->getMPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget p1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback$onCurrentPosition$1;->$currentPosition:I

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->syncVideoObjPosition(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback$onCurrentPosition$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;->getRef()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    if-eqz p1, :cond_6

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback$onCurrentPosition$1;->$currentPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->setProgressToView(I)V

    :cond_6
    return-void
.end method
