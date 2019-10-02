.class Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$2;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;


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

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$2;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;I)V
    .locals 2

    const-string p1, "MediaPlayerWrapper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer#onBufferingUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$2;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1, p2}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$202(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;I)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$2;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$000(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$2;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$000(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;->getOnBufferingUpdateListener()Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$2;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-interface {p1, v0, p2}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$2;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$300(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$2;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$300(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$2;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-interface {p1, v0, p2}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;I)V

    :cond_1
    return-void
.end method
