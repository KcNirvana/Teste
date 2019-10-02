.class Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$5;
.super Ljava/lang/Object;
.source "GalleryVideoView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;


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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V
    .locals 2

    const-string v0, "GalleryVideoView"

    const-string v1, "onSeekComplete: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V

    :cond_0
    return-void
.end method
