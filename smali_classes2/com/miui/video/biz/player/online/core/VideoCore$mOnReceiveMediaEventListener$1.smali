.class public final Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;
.super Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;
.source "VideoCore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;-><init>(Landroid/support/v4/app/FragmentActivity;)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "com/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1",
        "Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;",
        "checkResult",
        "",
        "isMediaButtonValid",
        "",
        "mediaStateChange",
        "isDisconnected",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoCore;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-direct {p0}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->togglePlayState()V

    :cond_0
    return-void
.end method

.method protected mediaStateChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/miui/video/player/service/media/IAsyncVideoView;

    new-instance v0, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1$mediaStateChange$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1$mediaStateChange$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;)V

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IAsyncVideoView;->isPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.player.service.media.IAsyncVideoView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/player/service/media/IVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$mOnReceiveMediaEventListener$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->togglePlayState()V

    :cond_2
    :goto_0
    return-void
.end method
