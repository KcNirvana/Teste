.class Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;
.super Ljava/lang/Object;
.source "GalleryVideoView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V
    .locals 3

    const-string v0, "GalleryVideoView"

    const-string v1, "onPrepared: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$402(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;I)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$500(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$500(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;->onPrepared(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-interface {p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$602(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;I)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-interface {p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$702(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;I)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$800(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$800(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->accurateSeekTo(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$600(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)I

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$700(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$900(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$900(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$600(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$700(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;->setVideoSize(II)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$1000(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->start()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$1000(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->start()V

    :cond_3
    :goto_0
    return-void
.end method
