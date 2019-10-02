.class Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;
.super Ljava/lang/Object;
.source "MiVideoView.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;


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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lcom/miui/video/player/service/media/IMediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1400(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1400(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1500(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1500(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->onVideoSeeked()V

    :cond_1
    return-void
.end method
