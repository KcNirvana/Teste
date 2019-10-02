.class final Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerSizeChangedListener$1;
.super Ljava/lang/Object;
.source "FakeVideoView.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;


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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "mp",
        "Lcom/miui/video/player/service/media/IMediaPlayer;",
        "kotlin.jvm.PlatformType",
        "width",
        "",
        "height",
        "onVideoSizeChanged"
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

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerSizeChangedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Lcom/miui/video/player/service/media/IMediaPlayer;II)V
    .locals 4

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/miui/video/player/service/media/IMediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/miui/video/player/service/media/IMediaPlayer;->getVideoHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerSizeChangedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMSurfaceView$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/view/SurfaceView;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerSizeChangedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMSurfaceView$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/view/SurfaceView;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/16 v3, 0x440

    if-ne v1, v3, :cond_1

    const/16 v1, 0x438

    :cond_1
    invoke-interface {v2, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerSizeChangedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMOnVideoSizeChangedListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerSizeChangedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMOnVideoSizeChangedListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/miui/video/player/service/media/IMediaPlayer;II)V

    :cond_4
    return-void
.end method
