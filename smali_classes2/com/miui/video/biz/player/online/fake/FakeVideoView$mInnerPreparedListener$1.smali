.class final Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerPreparedListener$1;
.super Ljava/lang/Object;
.source "FakeVideoView.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;


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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Lcom/miui/video/player/service/media/IMediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMSurfaceHolder$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mInnerPreparedListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$onMPPreparedAndSVCreated(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V

    :cond_0
    return-void
.end method
