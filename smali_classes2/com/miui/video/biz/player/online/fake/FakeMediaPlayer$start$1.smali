.class final Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$start$1;
.super Ljava/lang/Object;
.source "FakeMediaPlayer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->start()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$start$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$start$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getMTargetState$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)I

    move-result v0

    sget-object v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;->getSTATE_PLAYING()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "do start on runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$start$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$getMPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/player/service/media/IMediaPlayer;->start()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$start$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    sget-object v1, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->Companion:Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer$Companion;->getSTATE_PLAYING()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->access$setCurrentState$p(Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;I)V

    :cond_1
    return-void
.end method
