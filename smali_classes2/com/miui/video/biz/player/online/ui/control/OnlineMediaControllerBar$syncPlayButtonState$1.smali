.class final Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1;
.super Ljava/lang/Object;
.source "OnlineMediaControllerBar.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->syncPlayButtonState()V
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1;)V

    check-cast v1, Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getIsPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V

    return-void
.end method
