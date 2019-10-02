.class Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$7;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$7;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;II)V
    .locals 2

    const-string p1, "MediaPlayerWrapper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer#onVideoSizeChanged: width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$7;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$000(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$7;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$000(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;->getOnVideoSizeChangedListener()Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$7;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-interface {p1, v0, p2, p3}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;II)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$7;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$1100(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$7;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$1100(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$7;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-interface {p1, v0, p2, p3}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;II)V

    :cond_1
    return-void
.end method
