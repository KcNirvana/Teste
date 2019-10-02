.class final Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;->registerOnListeners()V
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "mp",
        "Lcom/miui/video/player/service/media/IMediaPlayer;",
        "kotlin.jvm.PlatformType",
        "what",
        "",
        "extra",
        "onError"
    }
    k = 0x3
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

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1, p2, p3}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$handleError(Lcom/miui/video/biz/player/online/core/VideoCore;II)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoPlayControllerView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->stopProgressRunnerUpdate()V

    const/4 p1, 0x2

    const/4 v0, 0x1

    const v1, 0x15f94

    if-ne p3, v1, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/video/player/service/media/IVideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p2, p1, p3, v1}, Lcom/miui/video/onlineplayer/core/VideoContext;->onError(ILjava/lang/Integer;I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$setFirstInvokeOnPrepare$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$setShouldInit$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getPlayerMode()Lcom/miui/video/base/IPlayer$playerMode;

    move-result-object p1

    sget-object p2, Lcom/miui/video/base/IPlayer$playerMode;->inline:Lcom/miui/video/base/IPlayer$playerMode;

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$insertHistory(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    goto/16 :goto_0

    :cond_0
    const v1, 0x15f95

    if-ne p3, v1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getCurrentVideo$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/model/VideoObject;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1, p2, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->corePlay(Lcom/miui/video/player/service/model/VideoObject;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p2

    invoke-interface {p2}, Lcom/miui/video/player/service/media/IVideoView;->getCurrentPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->seekTo(I)V

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x65

    if-ne p2, v1, :cond_5

    if-eq p3, p1, :cond_4

    const/16 p2, 0x96

    if-eq p3, p2, :cond_3

    packed-switch p3, :pswitch_data_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p3}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p3

    invoke-interface {p3}, Lcom/miui/video/player/service/media/IVideoView;->getCurrentPosition()I

    move-result p3

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/video/onlineplayer/core/VideoContext;->onError(ILjava/lang/Integer;I)V

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p3}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p3

    invoke-interface {p3}, Lcom/miui/video/player/service/media/IVideoView;->getCurrentPosition()I

    move-result p3

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/video/onlineplayer/core/VideoContext;->onError(ILjava/lang/Integer;I)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p3}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p3

    invoke-interface {p3}, Lcom/miui/video/player/service/media/IVideoView;->getCurrentPosition()I

    move-result p3

    invoke-virtual {p2, v0, p1, p3}, Lcom/miui/video/onlineplayer/core/VideoContext;->onError(ILjava/lang/Integer;I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p3}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p3

    invoke-interface {p3}, Lcom/miui/video/player/service/media/IVideoView;->getCurrentPosition()I

    move-result p3

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/video/onlineplayer/core/VideoContext;->onError(ILjava/lang/Integer;I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p3}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p3

    invoke-interface {p3}, Lcom/miui/video/player/service/media/IVideoView;->getCurrentPosition()I

    move-result p3

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/video/onlineplayer/core/VideoContext;->onError(ILjava/lang/Integer;I)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$6;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p3}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p3

    invoke-interface {p3}, Lcom/miui/video/player/service/media/IVideoView;->getCurrentPosition()I

    move-result p3

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/video/onlineplayer/core/VideoContext;->onError(ILjava/lang/Integer;I)V

    :cond_6
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
