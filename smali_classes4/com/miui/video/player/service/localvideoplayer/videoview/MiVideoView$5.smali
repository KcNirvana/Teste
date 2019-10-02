.class Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$5;
.super Ljava/lang/Object;
.source "MiVideoView.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;


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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1300(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1300(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
