.class Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$7;
.super Ljava/lang/Object;
.source "GalleryVideoView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;I)V
    .locals 3

    const-string v0, "GalleryVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferingUpdate: percent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v0, p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$1502(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;I)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$1600(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$1600(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;I)V

    :cond_0
    return-void
.end method
