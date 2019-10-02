.class public final Lcom/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1;
.super Ljava/lang/Object;
.source "PlayControllerFrame.kt"

# interfaces
.implements Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;-><init>(Landroid/content/Context;)V
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1",
        "Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;",
        "onDoubleTap",
        "",
        "region",
        "",
        "onTap",
        "onTouchMove",
        "movementX",
        "",
        "movementY",
        "onTouchUp",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->access$getCurrentControlView$p(Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;)Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->onDoubleTap(I)V

    return-void
.end method

.method public onTap(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->handleTapEvent(I)V

    return-void
.end method

.method public onTouchMove(IFF)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->access$getCurrentControlView$p(Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;)Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->onTouchMove(IFF)V

    return-void
.end method

.method public onTouchUp(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame$gestureListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->access$getCurrentControlView$p(Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;)Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->onTouchUp(I)V

    return-void
.end method
