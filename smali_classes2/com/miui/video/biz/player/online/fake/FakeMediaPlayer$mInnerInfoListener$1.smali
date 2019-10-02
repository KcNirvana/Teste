.class final Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerInfoListener$1;
.super Ljava/lang/Object;
.source "FakeMediaPlayer.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;


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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerInfoListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer#onInfo : what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerInfoListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getMediaPlayerListener()Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerInfoListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getMediaPlayerListener()Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1}, Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;->getOnInfoListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerInfoListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    check-cast v0, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {p1, v0, p2, p3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerInfoListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getMExInfoListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerInfoListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getMExInfoListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerInfoListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    check-cast v0, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {p1, v0, p2, p3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
