.class public final Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$seekToCachedPosition$1;
.super Ljava/lang/Object;
.source "OnlineMediaControllerBar.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->seekToCachedPosition()V
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
        "com/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$seekToCachedPosition$1",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;",
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
.field final synthetic $seekToPosition:I

.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$seekToCachedPosition$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    iput p2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$seekToCachedPosition$1;->$seekToPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPosition(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$seekToCachedPosition$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$seekToCachedPosition$1;->$seekToPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->reportSeekBehavior(II)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$seekToCachedPosition$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getMLastAsyncCurrentPosition()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$seekToCachedPosition$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->setMCachedSeekPosition(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$seekToCachedPosition$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->setMLastAsyncCurrentPosition(I)V

    return-void
.end method
