.class Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$8;
.super Ljava/lang/Object;
.source "MiVideoView.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;


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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/miui/video/player/service/media/IMediaPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1700(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$1700(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/miui/video/player/service/media/IMediaPlayer;I)V

    :cond_0
    return-void
.end method
