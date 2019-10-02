.class public final Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;
.super Ljava/lang/Object;
.source "MiniVideoControllerView.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "miniControllerCurrentPositionCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;",
        "miniVideoControllerView",
        "Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;",
        "(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;)V",
        "ref",
        "Ljava/lang/ref/WeakReference;",
        "getRef",
        "()Ljava/lang/ref/WeakReference;",
        "onCurrentPosition",
        "",
        "currentPosition",
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
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "miniVideoControllerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;->ref:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public onCurrentPosition(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->access$getMDuration$p(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->access$getMDuration$p(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, p1, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->getMPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    new-instance v0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback$onCurrentPosition$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback$onCurrentPosition$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;I)V

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getVideoDuration(Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$miniControllerCurrentPositionCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->setProgressToView(I)V

    :cond_7
    :goto_2
    return-void
.end method
