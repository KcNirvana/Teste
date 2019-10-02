.class Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V
    .locals 1

    const-string p1, "MediaPlayerWrapper"

    const-string v0, "MediaPlayer#onPrepared."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$800(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$402(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;I)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$000(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$000(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/galleryplus/player/OnMediaPlayerListener;->getOnPreparedListener()Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;->onPrepared(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$900(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$900(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;->onPrepared(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->access$500(Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper$5;->this$0:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->start()V

    :cond_2
    return-void
.end method
