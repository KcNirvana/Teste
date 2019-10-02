.class public final Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;
.super Ljava/lang/Object;
.source "BaseControllerView.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->adjustSeekStartByTouch(F)V
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
        "com/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;",
        "onDuration",
        "",
        "videoViewDuration",
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
.field final synthetic $movementX:F

.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    iput p2, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;->$movementX:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDuration(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->getMPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;I)V

    check-cast v1, Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingPosition(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;)V

    :cond_0
    return-void
.end method
