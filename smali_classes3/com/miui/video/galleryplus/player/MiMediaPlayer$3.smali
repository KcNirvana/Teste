.class Lcom/miui/video/galleryplus/player/MiMediaPlayer$3;
.super Ljava/lang/Object;
.source "MiMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/MiMediaPlayer$3;->this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MiMediaPlayer$3;->this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MiMediaPlayer;->access$200(Lcom/miui/video/galleryplus/player/MiMediaPlayer;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/player/MiMediaPlayer$3;->this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/galleryplus/player/MiMediaPlayer;->access$200(Lcom/miui/video/galleryplus/player/MiMediaPlayer;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/MiMediaPlayer$3;->this$0:Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-interface {p1, v0, p2, p3}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
