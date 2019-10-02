.class Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$4;
.super Ljava/lang/Object;
.source "MiVideoView.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/miui/video/player/service/media/IMediaPlayer;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getDuration()I

    move-result p1

    int-to-long v0, p1

    const-string p1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->playEnd(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1100(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1100(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    :cond_0
    return-void
.end method
