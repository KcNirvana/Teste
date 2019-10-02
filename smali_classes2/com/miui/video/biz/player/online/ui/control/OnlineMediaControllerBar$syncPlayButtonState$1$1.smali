.class final Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1$1;
.super Ljava/lang/Object;
.source "OnlineMediaControllerBar.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1;->run()V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "isPlaying",
        "",
        "onGetIsPlayingResult"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetIsPlayingResult(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$syncPlayButtonState$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$setPauseButtonStateToView(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;Z)V

    return-void
.end method
