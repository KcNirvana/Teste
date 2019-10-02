.class Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$3;
.super Ljava/lang/Object;
.source "MiVideoView.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/miui/video/player/service/media/IMediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$900(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1000(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    :cond_0
    return-void
.end method
