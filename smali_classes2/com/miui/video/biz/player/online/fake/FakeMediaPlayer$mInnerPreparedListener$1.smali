.class final Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;
.super Ljava/lang/Object;
.source "FakeMediaPlayer.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;


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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "mp",
        "Lcom/miui/video/player/service/media/IMediaPlayer;",
        "kotlin.jvm.PlatformType",
        "onPrepared"
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

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Lcom/miui/video/player/service/media/IMediaPlayer;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer#onPrepared."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    sget-object v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;->getSTATE_PREPARED()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$setCurrentState$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getMediaPlayerListener()Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getMediaPlayerListener()Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;->getOnPreparedListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getMExPreparedListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getMExPreparedListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getMTargetState$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)I

    move-result v0

    sget-object v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;->getSTATE_PLAYING()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->start()V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    const-string v1, "mp"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/miui/video/player/service/media/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$setMVideoWidth$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-interface {p1}, Lcom/miui/video/player/service/media/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$setMVideoHeight$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;I)V

    return-void
.end method
