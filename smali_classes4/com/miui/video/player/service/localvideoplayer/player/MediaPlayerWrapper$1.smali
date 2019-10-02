.class Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$1;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z
    .locals 2

    const-string p1, "MediaPlayerWrapper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer#onInfo : what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->access$000(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->access$000(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;->getOnInfoListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-interface {p1, v0, p2, p3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->access$100(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->access$100(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-interface {p1, v0, p2, p3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
