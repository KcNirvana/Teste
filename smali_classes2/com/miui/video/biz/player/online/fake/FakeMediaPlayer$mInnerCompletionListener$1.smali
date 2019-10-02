.class final Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerCompletionListener$1;
.super Ljava/lang/Object;
.source "FakeMediaPlayer.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;


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
        "it",
        "Lcom/miui/video/player/service/media/IMediaPlayer;",
        "kotlin.jvm.PlatformType",
        "onCompletion"
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

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerCompletionListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Lcom/miui/video/player/service/media/IMediaPlayer;)V
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer#onCompletion."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerCompletionListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;->getSTATE_PLAYBACK_COMPLETED()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$setCurrentState$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerCompletionListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    sget-object v0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;->getSTATE_PLAYBACK_COMPLETED()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$setMTargetState$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerCompletionListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getMediaPlayerListener()Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerCompletionListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getMediaPlayerListener()Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1}, Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;->getOnCompletionListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerCompletionListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    check-cast v0, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerCompletionListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getMExCompletionListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerCompletionListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getMExCompletionListener$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$mInnerCompletionListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    check-cast v0, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    :cond_3
    return-void
.end method
