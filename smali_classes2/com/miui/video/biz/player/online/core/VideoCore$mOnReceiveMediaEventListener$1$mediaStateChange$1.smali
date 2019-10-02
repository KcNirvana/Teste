.class final Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1$mediaStateChange$1;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;->mediaStateChange(Z)V
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1$mediaStateChange$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetIsPlayingResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1$mediaStateChange$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/player/service/media/IVideoView;->canPause()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1$mediaStateChange$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, " togglePlayerRunner pause"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1$mediaStateChange$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->pause(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1$mediaStateChange$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoPlayControllerView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->syncPlayButtonState()V

    :cond_0
    return-void
.end method
