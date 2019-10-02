.class final Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;


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
        "onInfo"
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

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnInfoListener MEDIA_INFO_BUFFERING_END"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->endStep(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoLoadingPresenter$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoHideLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$canShowController(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$isFirstFrameBuffer$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->onVideoBufferingEnd()V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$setFirstFrameBuffer$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnInfoListener MEDIA_INFO_BUFFERING_START"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoLoadingPresenter$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$isFirstFrameBuffer$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->onVideoBufferingStart()V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$hideController(Lcom/miui/video/biz/player/online/core/VideoCore;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
