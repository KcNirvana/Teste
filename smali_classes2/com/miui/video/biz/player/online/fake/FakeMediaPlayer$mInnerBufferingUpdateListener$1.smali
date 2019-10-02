.class final Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerBufferingUpdateListener$1;
.super Ljava/lang/Object;
.source "FakeMediaPlayer.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;-><init>(Lcom/miui/video/player/service/media/IMediaPlayer;)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "mp",
        "Lcom/miui/video/player/service/media/IMediaPlayer;",
        "kotlin.jvm.PlatformType",
        "percent",
        "",
        "onBufferingUpdate"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerBufferingUpdateListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Lcom/miui/video/player/service/media/IMediaPlayer;I)V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer#onBufferingUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerBufferingUpdateListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-static {p1, p2}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$setBufferPercentage$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerBufferingUpdateListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getMediaPlayerListener()Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerBufferingUpdateListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getMediaPlayerListener()Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1}, Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;->getOnBufferingUpdateListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerBufferingUpdateListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    check-cast v0, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {p1, v0, p2}, Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/miui/video/player/service/media/IMediaPlayer;I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerBufferingUpdateListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getMExBufferingUpdateListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerBufferingUpdateListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getMExBufferingUpdateListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerBufferingUpdateListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    check-cast v0, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {p1, v0, p2}, Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/miui/video/player/service/media/IMediaPlayer;I)V

    :cond_3
    return-void
.end method
