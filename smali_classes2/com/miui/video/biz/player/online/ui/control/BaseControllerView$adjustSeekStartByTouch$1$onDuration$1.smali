.class public final Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1;
.super Ljava/lang/Object;
.source "BaseControllerView.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;->onDuration(I)V
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
        "com/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;",
        "onCurrentPosition",
        "",
        "videoViewDurationPosition",
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
.field final synthetic $videoViewDuration:I

.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;

    iput p2, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1;->$videoViewDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPosition(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1;->$videoViewDuration:I

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->access$setDuration$p(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getCurrentPosition(Z)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;

    iget v1, v1, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;->$movementX:F

    invoke-static {p1, v0, v1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->access$adjustSeekStartByTouch(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;IF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1$onDuration$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;

    iget v1, v1, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$adjustSeekStartByTouch$1;->$movementX:F

    invoke-static {v0, p1, v1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->access$adjustSeekStartByTouch(Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;IF)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.biz.player.online.ui.control.OnlineMediaControllerBar"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
