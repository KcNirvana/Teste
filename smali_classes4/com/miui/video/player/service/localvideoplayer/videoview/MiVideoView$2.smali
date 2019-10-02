.class Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;
.super Ljava/lang/Object;
.source "MiVideoView.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lcom/miui/video/player/service/media/IMediaPlayer;II)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoHeight()I

    move-result v1

    const-string v2, "MiVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVideoSizeChanged: w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$700(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/view/SurfaceView;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$700(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/16 v3, 0x440

    if-ne v1, v3, :cond_0

    const/16 v1, 0x438

    :cond_0
    invoke-interface {v2, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$700(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$800(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$800(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/miui/video/player/service/media/IMediaPlayer;II)V

    :cond_2
    return-void
.end method
