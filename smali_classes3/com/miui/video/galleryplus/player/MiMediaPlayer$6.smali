.class Lcom/miui/video/galleryplus/player/MiMediaPlayer$6;
.super Ljava/lang/Object;
.source "MiMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/player/MiMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/player/MiMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MiMediaPlayer$6;->this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MiMediaPlayer$6;->this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MiMediaPlayer;->access$600(Lcom/miui/video/galleryplus/player/MiMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MiMediaPlayer$6;->this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MiMediaPlayer;->access$600(Lcom/miui/video/galleryplus/player/MiMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MiMediaPlayer$6;->this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-static {v0}, Lcom/miui/video/galleryplus/player/MiMediaPlayer;->access$700(Lcom/miui/video/galleryplus/player/MiMediaPlayer;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/player/MiMediaPlayer$6;->this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-static {v1}, Lcom/miui/video/galleryplus/player/MiMediaPlayer;->access$700(Lcom/miui/video/galleryplus/player/MiMediaPlayer;)F

    move-result v1

    invoke-interface {p1, v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MiMediaPlayer$6;->this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MiMediaPlayer;->access$800(Lcom/miui/video/galleryplus/player/MiMediaPlayer;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MiMediaPlayer$6;->this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MiMediaPlayer;->access$800(Lcom/miui/video/galleryplus/player/MiMediaPlayer;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MiMediaPlayer$6;->this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V

    :cond_1
    return-void
.end method
