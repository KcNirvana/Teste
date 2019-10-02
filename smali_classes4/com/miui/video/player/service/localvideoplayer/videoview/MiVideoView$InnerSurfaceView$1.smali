.class Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;
.super Ljava/lang/Object;
.source "MiVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "MiVideoView"

    const-string p2, "Inner SurfaceView changed"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isPlayingState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MiVideoView"

    const-string p2, "MiVideoView   #start  invoked in surfaceChanged "

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->start()V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string v0, "MiVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inner SurfaceView created mMeidaPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object v2, v2, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$902(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1800(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1202(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$900(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setScreenOnWhilePlaying(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1900(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object v1, v1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1900(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$2000(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1000(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string p1, "MiVideoView"

    const-string v0, "Inner SurfaceView destroyed"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$900(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$902(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object v1, v1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1902(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->pause()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->asyncSaveHistory(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->release()V

    const-string p1, "MiVideoView"

    const-string v0, "surfaceDestroyed done"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
