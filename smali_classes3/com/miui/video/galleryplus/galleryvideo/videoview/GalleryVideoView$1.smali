.class Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;
.super Ljava/lang/Object;
.source "GalleryVideoView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;


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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V
    .locals 3

    const-string v0, "GalleryVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$102(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$200(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)V

    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V
    .locals 2

    const-string p1, "GalleryVideoView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$102(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$300(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;Z)V

    return-void
.end method
