.class final Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerErrorListener$1;
.super Ljava/lang/Object;
.source "FakeVideoView.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/fake/FakeVideoView;-><init>(Landroid/content/Context;)V
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
        "framework_err",
        "",
        "impl_err",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerErrorListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerErrorListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$handleOnError(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerErrorListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMOnErrorListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerErrorListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMOnErrorListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerErrorListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object v1

    check-cast v1, Lcom/miui/video/player/service/media/IMediaPlayer;

    invoke-interface {p1, v1, p2, p3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v0
.end method
