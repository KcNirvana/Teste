.class public final Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;
.super Ljava/lang/Object;
.source "FakeVideoView.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/content/Context;)V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1",
        "Landroid/view/SurfaceHolder$Callback;",
        "surfaceChanged",
        "",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "format",
        "",
        "w",
        "h",
        "surfaceCreated",
        "surfaceDestroyed",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Inner SurfaceView changed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->isPlayingState()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->start()V

    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inner SurfaceView created mMeidaPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object v2, v2, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0, p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$setMSurfaceHolder$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$createMediaPlayer(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$setMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMSurfaceHolder$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMUri$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMUri$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$prepareMediaPlayer(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;Landroid/net/Uri;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$onMPPreparedAndSVCreated(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Inner SurfaceView destroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMSurfaceHolder$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    const/4 v0, 0x0

    check-cast v0, Landroid/view/SurfaceHolder;

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$setMSurfaceHolder$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$setMUri$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMMediaPlayer$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeMediaPlayer;->pause()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->asyncSaveHistory(Z)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->release()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "surfaceDestroyed done"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
