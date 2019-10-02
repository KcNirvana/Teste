.class public final Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1$1;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->onPrepared(Lcom/miui/video/player/service/media/IMediaPlayer;)V
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
        "com/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1$1",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;",
        "onDuration",
        "",
        "duration",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/model/VideoObject;->setCurEpisodeDuration(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getSeekPos()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getSeekPos()I

    move-result v0

    sub-int/2addr p1, v0

    const/16 v0, 0x1388

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getSeekPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->seekTo(I)V

    :cond_1
    return-void
.end method
