.class public final Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl$mInnerInfoListener$1;
.super Ljava/lang/Object;
.source "FakeMediaPlayer.kt"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;-><init>(Landroid/content/Context;)V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl$mInnerInfoListener$1",
        "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;",
        "onInfo",
        "",
        "mp",
        "Ltv/danmaku/ijk/media/player/IMediaPlayer;",
        "what",
        "",
        "extra",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl$mInnerInfoListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1
    .param p1    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl$mInnerInfoListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;->access$getMInfoListener$p(Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl$mInnerInfoListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;->access$getMInfoListener$p(Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl$mInnerInfoListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeMeidaPlayerImpl;

    check-cast v0, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {p1, v0, p2, p3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
